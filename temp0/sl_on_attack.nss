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
    string msg = GetName(npc) + ": AB: " +
        IntToString(GetLocalInt(npc, "sl_target_" + GetName(pc))) + " AC: " +
        IntToString(GetLocalInt(npc, "sl_attacker_min_" + GetName(pc))) + " - " +
        IntToString(GetLocalInt(npc, "sl_attacker_max_" + GetName(pc)));
    SendMessageToPC(pc, msg);
}

void sl_calculate_ab_ac(object attacker, struct NWNX_Damage_AttackEventData attack_data)
{
    object target = attack_data.oTarget;
    int attack_value = attack_data.iToHitRoll + attack_data.iToHitModifier;
    int attack_mod = attack_data.iToHitModifier;

    if (GetIsPC(target))
    {
        object pc = target;
        object npc = attacker;
        string local_name = "sl_target_" + GetName(pc);
        if (GetLocalInt(npc, local_name) < attack_mod)
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
        string local_min = "sl_attacker_min_" + GetName(pc);
        string local_max = "sl_attacker_max_" + GetName(pc);

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
        if (attack_data.iAttackNumber == 1)
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
