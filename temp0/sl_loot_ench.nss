// Generate random ench device.
#include "sl_array_lib"
#include "sl_ench_lib"
#include "nwnx_itemprop"
#include "nwnx_item"

void sl_PrintToLog(object holder)
{
    object item = GetLocalObject(holder, "sl_loot_item");
    object opener = GetLocalObject(holder, "sl_loot_opener");
    string msg = "[ench] " + IntToString(item != OBJECT_INVALID);

    msg += ": hold " + GetTag(holder);
    msg += ", race " + IntToString(GetRacialType(holder));
    if (item != OBJECT_INVALID)
    {
        msg += ", item " + GetTag(item);
    }
    else
    {
        msg += ", item OI";
    }
    msg += ", lvl " + IntToString(GetLocalInt(holder, "sl_loot_level"));
    //msg += ", req " + IntToString(GetLocalInt(holder, "sl_loot_req_level"));
    msg += ", ch " + IntToString(GetLocalInt(holder, "sl_loot_chance_roll"));
    msg += "/" + IntToString(GetLocalInt(holder, "sl_loot_chance"));
    msg += ", type " + IntToString(GetLocalInt(holder, "sl_loot_type"));
    msg += ", boss " + IntToString(GetLocalInt(holder, "sl_loot_boss"));
    if (opener != OBJECT_INVALID)
    {
        string name = GetName(opener);
        msg += ", open " + name;
    }
    else
    {
        msg += ", open OI";
    }

    msg += ", prop:";

    itemproperty prop = GetFirstItemProperty(item);
    while (GetIsItemPropertyValid(prop))
    {
        struct NWNX_IPUnpacked unpacked = NWNX_ItemProperty_UnpackIP(prop);
        msg += " " + unpacked.sID;

        prop = GetNextItemProperty(item);
    }
    PrintString(msg);
}

void sl_ClearHolder(object holder)
{
    DeleteLocalObject(holder, "sl_loot_item");
    DeleteLocalObject(holder, "sl_loot_opener");
    DeleteLocalInt(holder, "sl_loot_level");
    DeleteLocalInt(holder, "sl_loot_req_level");
    DeleteLocalInt(holder, "sl_loot_chance_roll");
    DeleteLocalInt(holder, "sl_loot_chance");
    DeleteLocalInt(holder, "sl_loot_type");
    DeleteLocalInt(holder, "sl_loot_boss");
}

void sl_CreateEnchWep(object holder)
{
    int random = Random(sl_ench_GetWepListSize());

    object item = sl_ench_CreateWep(holder, random);
    SetLocalString(holder, "enchant", GetTag(item));
    SetLocalObject(holder, "sl_loot_item", item);

    ExecuteScript("loot_ench_wep", holder);
}

void sl_CreateEnchArm(object holder)
{
    int random = Random(sl_ench_GetArmListSize());

    object item = sl_ench_CreateArm(holder, random);
    SetLocalString(holder, "enchant", GetTag(item));
    SetLocalObject(holder, "sl_loot_item", item);

    // Decrease lvl
    int base_type = GetBaseItemType(item);
    if (base_type != BASE_ITEM_HELMET &&
        base_type != BASE_ITEM_ARMOR &&
        base_type != BASE_ITEM_SMALLSHIELD &&
        base_type != BASE_ITEM_LARGESHIELD &&
        base_type != BASE_ITEM_TOWERSHIELD)
    {
        SetLocalInt(holder, "sl_loot_level", GetLocalInt(holder, "sl_loot_level") / 2);
    }

    ExecuteScript("loot_ench_arm", holder);
}

int sl_GetChance(object holder)
{
    int chance = GetLocalInt(holder, "sl_loot_chance");
    if (chance)
    {
        // For special loot
        return chance;
    }

    int level = GetLocalInt(holder, "sl_loot_level");
    object loot_opener = GetLocalObject(holder, "sl_loot_opener");
    if (loot_opener != OBJECT_INVALID)
    {
        // Container. Old value 2+2%
        int fail_count = GetLocalInt(loot_opener, "sl_loot_fail_count");
        //return fail_count + 24 - level / 2;
        return fail_count + 24 - level / 4;
    }

    // Creature
    int race = GetRacialType(holder);
    if (race == RACIAL_TYPE_ANIMAL ||
        race == RACIAL_TYPE_BEAST ||
        race == RACIAL_TYPE_MAGICAL_BEAST ||
        race == RACIAL_TYPE_VERMIN ||
        race == RACIAL_TYPE_OUTSIDER ||
        race == RACIAL_TYPE_INVALID)
    {
        // Filter animals and others.
        return 0;
    }

    if (GetLocalInt(holder, "sl_loot_boss"))
    {
        //return 50 - level;
        return 50 - level / 2;
    }

    //return 3 - level / 15;
    return 4;
}

int sl_IsCreatureLoot(object holder)
{
    object opener = GetLocalObject(holder, "sl_loot_opener");
    return opener == OBJECT_INVALID;
}

int sl_GetLevel(object creature)
{
    int level = GetHitDice(creature);
    if (level > 40)
    {
        return 40;
    }
    return level;
}

int sl_GetLootLevel(object holder)
{
    if (sl_IsCreatureLoot(holder))
    {
        // holder is creature, not container.
        return sl_GetLevel(holder);
    }

    // Container. Set max level by mobs.
    object area = GetArea(holder);
    int area_level_sum = GetLocalInt(area, "sl_loot_level_sum");
    int area_level_count = GetLocalInt(area, "sl_loot_level_count");
    if (area_level_count)
    {
        return area_level_sum / area_level_count;
    }

    object opener = GetLocalObject(holder, "sl_loot_opener");
    return sl_GetLevel(opener);
}

void sl_OverrideReqLevel(object holder)
{
    object item = GetLocalObject(holder, "sl_loot_item");
    int req_level = GetLocalInt(holder, "sl_loot_req_level");

    itemproperty prop = GetFirstItemProperty(item);
    while (GetIsItemPropertyValid(prop))
    {
        req_level += 1;
        prop = GetNextItemProperty(item);
    }

    SetLocalInt(holder, "sl_loot_req_level", req_level);
    NWNX_Item_SetMinEquipLevelOverride(item, req_level);
}

void main()
{
    object holder = OBJECT_SELF;
    object loot_opener = GetLocalObject(holder, "sl_loot_opener");

    SetLocalInt(holder, "sl_loot_level", sl_GetLootLevel(holder));
    SetLocalInt(holder, "sl_loot_req_level", GetLocalInt(holder, "sl_loot_level"));
    SetLocalInt(holder, "sl_loot_chance", sl_GetChance(holder));
    SetLocalInt(holder, "sl_loot_chance_roll", d100(1));
    if (GetLocalInt(holder, "sl_loot_chance_roll") <= GetLocalInt(holder, "sl_loot_chance"))
    {
        if (!GetLocalInt(holder, "sl_loot_type"))
        {
            SetLocalInt(holder, "sl_loot_type", d2(1));
        }

        if (GetLocalInt(holder, "sl_loot_type") == 1)
        {
            sl_CreateEnchWep(holder);
        }
        else
        {
            sl_CreateEnchArm(holder);
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
    sl_PrintToLog(holder);
    sl_ClearHolder(holder);
}
