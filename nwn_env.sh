#!/bin/bash

print_log() {
    echo -e "\n ==================== $1";
}

current_sens=$(defaults read -g com.apple.trackpad.scaling)
set_sens() {
    local sens=$1
    if [ $sens == $current_sens ]; then
        return 0
    fi
    print_log "$(date) set sens $sens"
    defaults write -g com.apple.trackpad.scaling $sens
    /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
    current_sens=$sens
}

nwn_dir="$(realpath ~/Documents/nwn)"
print_log "$(date) nwn dir: $nwn_dir"

module_file="$nwn_dir/modules/lodor.mod"
current_module_mtime=$(stat -f %m $module_file)
check_iterations=0
check_module_mtime() {
    local mtime=$(stat -f %m $module_file)
    if [ $mtime != $current_module_mtime ]; then
        current_module_mtime=$mtime
        check_iterations=15
        print_log "$(date) module changed"
    fi

    if [ $check_iterations -ge 1 ]; then
        check_iterations=$(($check_iterations-1))
        if [ $check_iterations -eq 0 ]; then
            return 1
        fi
    fi

    return 0
}

start_nwserver() {
    print_log "$(date) nwserver starting..."

    if [ "$(docker ps | grep nwserver)" != "" ]; then
        print_log "$(date) nwserver already started"
        return 0
    fi

    docker run --rm \
        -e NWNX_CORE_SKIP_ALL=y \
        -e NWNX_CORE_SKIP=n \
        -e NWNX_WEAPON_SKIP=n \
        -e NWNX_UTIL_SKIP=n \
        -e NWNX_TWEAKS_SKIP=n \
        -e NWNX_PLAYER_SKIP=n \
        -e NWNX_OBJECT_SKIP=n \
        -e NWNX_ITEMPROPERTY_SKIP=n \
        -e NWNX_ITEM_SKIP=n \
        -e NWNX_EVENTS_SKIP=n \
        -e NWNX_DAMAGE_SKIP=n \
        -e NWNX_CREATURE_SKIP=n \
        -e NWNX_STORE_SKIP=n \
        -e NWNX_SERVERLOGREDIRECTOR_SKIP=n \
        -e NWNX_TWEAKS_DISPLAY_NUM_ATTACKS_OVERRIDE_IN_CHARACTER_SHEET=y \
        -e NWN_MAXCLIENTS=10 \
        -e NWN_PAUSEANDPLAY=0 \
        -e NWN_ILR=1 \
        -e NWN_PUBLICSERVER=1 \
        -e NWN_ADMINPASSWORD=kolobok1 \
        -e NWN_DMPASSWORD=kolobok1 \
        -e NWN_DIFFICULTY=3 \
        -e NWN_SERVERNAME=Lodor \
        -e NWN_MODULE=lodor \
        -v $nwn_dir:/nwn/home \
        -p 5121:5121/udp \
        --name nwserver \
        --platform=linux/amd64 \
        -d \
        ghcr.io/nwnxee/unified:0efe7e6
    print_log "$(date) nwserver started"
}

stop_nwserver() {
    print_log "$(date) nwserver stopping..."
    docker stop nwserver
    print_log "$(date) nwserver stopped"
}

auto_commit_servervault() {
    cd $nwn_dir/servervault
    if [ "$(git diff)" != "" ]; then
        print_log "$(date) auto commit"
        git add .
        git commit -m "AUTO $(date)"
    fi
}

print_logs() {
    while true; do
        docker logs -f nwserver | sed 's/\[ServerLogRedirector.cpp:29\]//g';
        sleep 1;
    done
}

print_pid=0
trap "print_log $print_pid; kill $print_pid; exit" SIGINT SIGTERM EXIT

for arg in "$@"; do
    if [ "$arg" == "--restart" ]; then
        current_module_mtime=0
    elif [ "$arg" == "--stop" ]; then
        stop_nwserver
        exit 0
    elif [ "$arg" == "--logs" ]; then
        print_logs &
        print_pid=$!
    fi
done

start_nwserver
while true; do
    # Change trackpad sens when resolution is changed
    is_native=$(screenresolution get 2>&1 | grep Display | grep 1512x982x32)
    if [ "$is_native" != "" ]; then
        #print_log "$(date) native"
        set_sens "1"
    else
        #print_log "$(date) no native"
        set_sens "2.5"
    fi

    # Restart nwmain docker when module is changed
    check_module_mtime
    if [ $? -eq 1 ]; then
        stop_nwserver
        start_nwserver
    fi

    # Auto git commit when characters are changed
    auto_commit_servervault

    sleep 0.2;
done
    
