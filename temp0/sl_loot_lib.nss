// Generate random ench device.
#include "sl_array_lib"
#include "sl_ench_lib"
#include "sl_ench_wep_lib"
#include "sl_ench_arm_lib"
#include "nwnx_itemprop"
#include "nwnx_item"

void sl_loot_PrintToLog(object holder)
{
    object item = GetLocalObject(holder, "sl_loot_item");
    object opener = GetLocalObject(holder, "sl_loot_opener");
    string msg = "[sl_ench] " + IntToString(item != OBJECT_INVALID);

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
    msg += ", p_ch " + IntToString(GetLocalInt(holder, "sl_loot_prop_chance"));
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

void sl_loot_ClearHolder(object holder)
{
    DeleteLocalObject(holder, "sl_loot_item");
    DeleteLocalObject(holder, "sl_loot_opener");
    DeleteLocalInt(holder, "sl_loot_level");
    DeleteLocalInt(holder, "sl_loot_req_level");
    DeleteLocalInt(holder, "sl_loot_chance_roll");
    DeleteLocalInt(holder, "sl_loot_chance");
    DeleteLocalInt(holder, "sl_loot_type");
    DeleteLocalInt(holder, "sl_loot_boss");
    DeleteLocalInt(holder, "sl_loot_prop_chance");
}

void sl_loot_AddWeaponProperties(object weapon, int level, int chance)
{
    int has_on_hit = 0;
    int has_regen = 0;
    int has_special = 0;
    int has_ench = 0;
    int index;
    for (index = 0; index < sl_ench_wep_GetWeaponPropertyTypeListSize(); index++)
    {
        if (chance < d100(1))
        {
            continue;
        }

        int property_type = sl_ench_wep_GetWeaponPropertyType(index);
        if (property_type == ITEM_PROPERTY_ON_HIT_PROPERTIES || property_type == ITEM_PROPERTY_ONHITCASTSPELL)
        {
            if (25 < d100(1) || has_on_hit)
            {
                continue;
            }
            has_on_hit = 1;
        }

        if (property_type == ITEM_PROPERTY_REGENERATION || property_type == ITEM_PROPERTY_REGENERATION_VAMPIRIC)
        {
            if (has_regen)
            {
                continue;
            }
            has_regen = 1;
        }

        if (sl_ench_wep_IsWeaponSpecialBonus(property_type) || property_type == ITEM_PROPERTY_CAST_SPELL)
        {
            if (has_special)
            {
                continue;
            }
            has_special = 1;
        }

        if (property_type == ITEM_PROPERTY_ATTACK_BONUS || property_type == ITEM_PROPERTY_ENHANCEMENT_BONUS)
        {
            if (has_ench)
            {
                continue;
            }
            has_ench = 1;
        }

        sl_ench_wep_AddItemProperty(weapon, property_type, level);
    }

    if (!GetIsItemPropertyValid(GetFirstItemProperty(weapon)))
    {
        //If no properties are added...add an attack modifier
        int att_level = Random(level) + 1;
        sl_ench_wep_AddItemProperty(weapon, ITEM_PROPERTY_ATTACK_BONUS, att_level);
    }

    SetIdentified(weapon, FALSE);
    SetLocalInt(weapon, "req_level", level);
}

void sl_loot_CreateEnchWep(object holder)
{
    int random = Random(sl_ench_GetWepListSize());

    object item = sl_ench_CreateWep(holder, random);
    SetLocalObject(holder, "sl_loot_item", item);

    sl_loot_AddWeaponProperties(item, GetLocalInt(holder, "sl_loot_level"), GetLocalInt(holder, "sl_loot_prop_chance"));
}

void sl_loot_CreateEnchArm(object holder)
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

    sl_ench_AddArmorProperties(item, GetLocalInt(holder, "sl_loot_level"));
}

int sl_loot_GetChance(object holder)
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

int sl_loot_IsCreatureLoot(object holder)
{
    object opener = GetLocalObject(holder, "sl_loot_opener");
    return opener == OBJECT_INVALID;
}

int sl_loot_GetLevel(object creature)
{
    int level = GetHitDice(creature);
    if (level > 40)
    {
        return 40;
    }
    return level;
}

int sl_loot_GetLootLevel(object holder)
{
    if (sl_loot_IsCreatureLoot(holder))
    {
        // holder is creature, not container.
        return sl_loot_GetLevel(holder);
    }

    // Container. Set max level by mobs.
    object area = GetArea(holder);
    int area_level_sum = GetLocalInt(area, "sl_loot_level_sum");
    int area_level_count = GetLocalInt(area, "sl_loot_level_count");
    if (area_level_count)
    {
        return area_level_sum / area_level_count;
    }

    // Use random level.
    object opener = GetLocalObject(holder, "sl_loot_opener");
    int opener_level = sl_loot_GetLevel(opener);
    return opener_level - Random(opener_level);
}

void sl_loot_OverrideReqLevel(object holder)
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


object sl_loot_ImproveWeapon(object holder, object item, int level, int prop_chance)
{
    //TODO:
    item = sl_ench_ModifyAppr(item);
    sl_loot_AddWeaponProperties(item, level, prop_chance);
    SetLocalObject(holder, "sl_loot_item", item);
    SetLocalInt(holder, "sl_loot_level", level);
    SetLocalInt(holder, "sl_loot_prop_chance", prop_chance);
    sl_loot_PrintToLog(holder);
    sl_loot_ClearHolder(holder);
    return item;
}
