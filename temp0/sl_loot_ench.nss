// Generate random ench device.
#include "sl_loot_lib"

void main()
{
    object holder = OBJECT_SELF;
    object loot_opener = GetLocalObject(holder, "sl_loot_opener");

    SetLocalInt(holder, "sl_loot_level", sl_loot_GetLootLevel(holder));
    SetLocalInt(holder, "sl_loot_req_level", GetLocalInt(holder, "sl_loot_level"));
    SetLocalInt(holder, "sl_loot_chance", sl_loot_GetChance(holder));
    SetLocalInt(holder, "sl_loot_chance_roll", d100(1));
    if (GetLocalInt(holder, "sl_loot_boss"))
    {
        SetLocalInt(holder, "sl_loot_prop_chance", 60);
    }
    else
    {
        SetLocalInt(holder, "sl_loot_prop_chance", 20);
    }
    if (GetLocalInt(holder, "sl_loot_chance_roll") <= GetLocalInt(holder, "sl_loot_chance"))
    {
        if (!GetLocalInt(holder, "sl_loot_type"))
        {
            SetLocalInt(holder, "sl_loot_type", d2(1));
        }

        if (GetLocalInt(holder, "sl_loot_type") == 1)
        {
            sl_loot_CreateEnchWep(holder);
        }
        else
        {
            sl_loot_CreateEnchArm(holder);
        }
        SetLocalInt(loot_opener, "sl_loot_fail_count", 0);
        //sl_OverrideReqLevel(holder);
    }
    else
    {
        // Dinamic increase chance
        int fail_count = GetLocalInt(loot_opener, "sl_loot_fail_count");
        SetLocalInt(loot_opener, "sl_loot_fail_count", fail_count + 1);
    }
    sl_loot_PrintToLog(holder);
    sl_loot_ClearHolder(holder);
}
