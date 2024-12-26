#include "nwnx_damage"

int sl_is_hit(struct NWNX_Damage_AttackEventData attack_data)
{
    if (attack_data.iToHitRoll == 20)
    {
        // Maybe critical success
        return FALSE;
    }

    switch (attack_data.iAttackResult)
    {
        case 1: // hit
        case 3: // critical hit
        case 5: // resisted
        //case 7: // automatic hit
            return TRUE;
    }
    return FALSE;
}

int sl_is_miss(struct NWNX_Damage_AttackEventData attack_data)
{
    return attack_data.iAttackResult == 4 && attack_data.iToHitRoll != 1;
}

void sl_print_info(object npc, object pc)
{
    string ab_msg = "";
    int i;
    for (i = 1; i <= 10; i++)
    {
        int ab = GetLocalInt(npc, "sl_ab_" + IntToString(i) + GetName(pc));
        if (!ab)
        {
            if (ab_msg == "")
            {
                ab_msg = "0";
            }
            break;
        }
        if (ab_msg != "")
        {
            ab_msg += "/";
        }
        ab_msg += IntToString(ab);
    }

    string msg = GetName(npc) + ": AB: " +
        ab_msg + "   AC: " +
        IntToString(GetLocalInt(npc, "sl_ac_min_" + GetName(pc))) + "-" +
        IntToString(GetLocalInt(npc, "sl_ac_max_" + GetName(pc)));
    SendMessageToPC(pc, msg);
}

void sl_calculate_ab_ac(object attacker, struct NWNX_Damage_AttackEventData attack_data)
{
    object target = attack_data.oTarget;
    int attack_value = attack_data.iToHitRoll + attack_data.iToHitModifier;
    int attack_mod = attack_data.iToHitModifier;
    int attack_num = attack_data.iAttackNumber;

    if (GetIsPC(target))
    {
        object pc = target;
        object npc = attacker;
        string local_name = "sl_ab_" + IntToString(attack_num) + GetName(pc);
        int ab = GetLocalInt(npc, local_name);
        if (!ab || ab < attack_mod)
        {
            SetLocalInt(npc, local_name, attack_mod);
            sl_print_info(npc, pc);
            return;
        }
    }
    else if (GetIsPC(attacker))
    {
        object pc = attacker;
        object npc = target;
        string local_min = "sl_ac_min_" + GetName(pc);
        string local_max = "sl_ac_max_" + GetName(pc);

        if (sl_is_hit(attack_data))
        {
            int max_ac = GetLocalInt(npc, local_max);
            if (!max_ac || max_ac > attack_value)
            {
                SetLocalInt(npc, local_max, attack_value);
                sl_print_info(npc, pc);
                return;
            }
        }
        else if (sl_is_miss(attack_data))
        {
            if (GetLocalInt(npc, local_min) < attack_value + 1)
            {
                SetLocalInt(npc, local_min, attack_value + 1);
                sl_print_info(npc, pc);
                return;
            }
        }

        // Print every round
        if (attack_num == 1)
        {
            sl_print_info(npc, pc);
        }
    }
}

void main()
{
    struct NWNX_Damage_AttackEventData attack_data = NWNX_Damage_GetAttackEventData();

    object attacker = OBJECT_SELF;
    sl_calculate_ab_ac(attacker, attack_data);
}
