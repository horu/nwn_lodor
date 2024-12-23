void main()
{
SetMaxHenchmen(1);

// Put the Bosses & Special Creatures on the Map.
CreateObject(OBJECT_TYPE_CREATURE, "ld_drub", GetLocation(GetWaypointByTag("drub_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "dracz", GetLocation(GetWaypointByTag("dracz_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_vasestra", GetLocation(GetWaypointByTag("vastr_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_jarehar", GetLocation(GetWaypointByTag("jareh_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_collect", GetLocation(GetWaypointByTag("demon_portal1")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_zaltos", GetLocation(GetWaypointByTag("zaltos_spawnp")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_lastrow", GetLocation(GetWaypointByTag("lastrow_spawnp")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_glomarin", GetLocation(GetWaypointByTag("glom_spawnpnt1")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_sapelek", GetLocation(GetWaypointByTag("sapelek_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "bugbearboss001", GetLocation(GetWaypointByTag("bruol_spawn")));
        {int nRandom = d4(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_falcormg", GetLocation(GetWaypointByTag("falcor_spwn1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_falcormg", GetLocation(GetWaypointByTag("falcor_spwn2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_falcormg", GetLocation(GetWaypointByTag("falcor_spwn3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_falcormg", GetLocation(GetWaypointByTag("falcor_spwn4")));}}
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa002", GetLocation(GetWaypointByTag("burlop_spawn6")));}}
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm1", GetLocation(GetWaypointByTag("frstkey_spwn6")));}}
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2k", GetLocation(GetWaypointByTag("flayerkeyp6")));}}
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitwq", GetLocation(GetWaypointByTag("glfam_spwn6")));}}
CreateObject(OBJECT_TYPE_CREATURE, "ld_bartuzol", GetLocation(GetWaypointByTag("bartuzol_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ice_queen", GetLocation(GetWaypointByTag("witchi_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "witch_earth", GetLocation(GetWaypointByTag("valestra_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "witch_water", GetLocation(GetWaypointByTag("wterwich_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "witch_air", GetLocation(GetWaypointByTag("air_witchspwn")));
CreateObject(OBJECT_TYPE_CREATURE, "witch_fire", GetLocation(GetWaypointByTag("fire_witchspwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_brakal", GetLocation(GetWaypointByTag("brakal_spwnpnt")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_horfilad", GetLocation(GetWaypointByTag("horfilad_spawner")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_cyclops1", GetLocation(GetWaypointByTag("cyclops_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_tarak", GetLocation(GetWaypointByTag("tarak_spawner")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_daclor", GetLocation(GetWaypointByTag("daclor_spawnp")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_ketryl", GetLocation(GetWaypointByTag("ketryl_spwnpnt")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_doroxt", GetLocation(GetWaypointByTag("doroxt_spwnpon")));
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_kblkvilth", GetLocation(GetWaypointByTag("kobold_boss_6")));}}
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp6")));}}
CreateObject(OBJECT_TYPE_CREATURE, "ld_warpek", GetLocation(GetWaypointByTag("warpek_spwnpnt")));
        {int nRandom = d6(1);
            if (nRandom == 1){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp1")));}
            else if (nRandom == 2){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp2")));}
            else if (nRandom == 3){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp3")));}
            else if (nRandom == 4){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp4")));}
            else if (nRandom == 5){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp5")));}
            else if (nRandom == 6){
        CreateObject(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp6")));}}
CreateObject(OBJECT_TYPE_CREATURE, "ld_taresa", GetLocation(GetWaypointByTag("taresa_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_reanimde", GetLocation(GetWaypointByTag("reanimde_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_wrok", GetLocation(GetWaypointByTag("spawn_wrok")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_marculos", GetLocation(GetWaypointByTag("marculos_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_wht", GetLocation(GetWaypointByTag("spwn_whtdrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_blk", GetLocation(GetWaypointByTag("spwn_blkdrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_cop", GetLocation(GetWaypointByTag("copwpspwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_psm", GetLocation(GetWaypointByTag("spwn_prism")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_brz", GetLocation(GetWaypointByTag("spwn_brzdrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_shd", GetLocation(GetWaypointByTag("zalk_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_red", GetLocation(GetWaypointByTag("spwn_reddrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_blu", GetLocation(GetWaypointByTag("spwn_bludrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_sil", GetLocation(GetWaypointByTag("spwn_sildrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_brs", GetLocation(GetWaypointByTag("spwn_brsdrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_lich", GetLocation(GetWaypointByTag("dracolich_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_gld", GetLocation(GetWaypointByTag("spwn_glddrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_grn", GetLocation(GetWaypointByTag("spwn_grndrg")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_trollb", GetLocation(GetWaypointByTag("spwn_drigdugs")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_gnollb", GetLocation(GetWaypointByTag("spwn_garvsp")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_shira", GetLocation(GetWaypointByTag("shira_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_melaruler", GetLocation(GetWaypointByTag("melgn_spawnpt")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_maharajah", GetLocation(GetWaypointByTag("mahraj_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_trasaa", GetLocation(GetWaypointByTag("trasaa_spwnp")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_dar", GetLocation(GetWaypointByTag("dar_spawner")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_hivemoth", GetLocation(GetWaypointByTag("hivemom_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_quascar", GetLocation(GetWaypointByTag("manqua_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_hvqueen", GetLocation(GetWaypointByTag("hvqueen_spwn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_ghoullord", GetLocation(GetWaypointByTag("yarbek_spawn")));
CreateObject(OBJECT_TYPE_CREATURE, "ld_olarius", GetLocation(GetWaypointByTag("olarius_spw")));
}
