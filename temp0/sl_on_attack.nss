#include "nwnx_damage"

void main()
{
    struct NWNX_Damage_AttackEventData attack_data = NWNX_Damage_GetAttackEventData();

    object target = attack_data.oTarget;
    object attacker = OBJECT_SELF;
    int attack_value = attack_data.iToHitRoll + attack_data.iToHitModifier;
    int attack_mod = attack_data.iToHitModifier;

    if (GetIsPC(target))
    {
        string local_name = "sl_target_" + GetName(target);
        if (GetLocalInt(attacker, local_name) < attack_mod)
        {
            SetLocalInt(attacker, local_name, attack_mod);
            SendMessageToPC(target, GetName(attacker) + " AB: " + IntToString(attack_mod));
        }

        //SendMessageToPC(GetFirstPC(), local_name);
    }
    else
    {
        //SendMessageToPC(GetFirstPC(), GetName(attacker) + " " + GetName(target));
    }


    //if (attack_data.oTarget

    //object oBook = GetItemPossessedBy(oKiller, "faction_report");
    //SetLocalInt(oBook, "nilas", iNilas);

    //SendMessageToPC(GetFirstPC(), IntToString(attack_data.iToHitRoll));
    //SendMessageToPC(GetFirstPC(), IntToString(attack_data.iToHitModifier));
}
