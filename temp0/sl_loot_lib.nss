// Generate random ench device.
#include "sl_array_lib"
#include "sl_ench_lib"
#include "sl_ench_wep_lib"
#include "sl_ench_arm_lib"
#include "nwnx_itemprop"
#include "nwnx_item"

const int sl_loot_ITEM_TYPE_RANDOM = 0;
const int sl_loot_ITEM_TYPE_WEP = 1;
const int sl_loot_ITEM_TYPE_ARM = 2;

struct sl_loot_CreateParams
{
    object holder;
    object loot_opener;
    int item_type;
    int chance;
    int prop_chance;
    int loot_level;
};

void sl_loot_CreateRandomItemBoss(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM);

void sl_loot_CreateRandomItemNormal(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM);

void sl_loot_CreateRandomItemSpecial(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM,
    int chance = 100);


//Impl

void sl_loot_PrintToLog(struct sl_loot_CreateParams params, object item, int chance_roll)
{
    string msg = "[sl_loot] " + IntToString(item != OBJECT_INVALID);

    msg += ": hold " + GetTag(params.holder);
    msg += ", race " + IntToString(GetRacialType(params.holder));
    if (item != OBJECT_INVALID)
    {
        msg += ", item " + GetTag(item);
    }
    else
    {
        msg += ", item OI";
    }
    msg += ", lvl " + IntToString(params.loot_level);
    msg += ", ch " + IntToString(chance_roll);
    msg += "/" + IntToString(params.chance);
    msg += ", type " + IntToString(params.item_type);
    msg += ", p_ch " + IntToString(params.prop_chance);
    if (params.loot_opener != OBJECT_INVALID)
    {
        msg += ", open " + GetName(params.loot_opener);
    }
    else
    {
        msg += ", open OI";
    }

    msg += ", prop: " + sl_ench_wep_ItemPropertiesToString(item);

    PrintString(msg);
}

void sl_loot_AddWeaponProperties(object weapon, int level, int prop_chance)
{
    int has_on_hit = 0;
    int has_regen = 0;
    int has_special = 0;
    int has_ench = 0;
    int index;
    for (index = 0; index < sl_ench_wep_GetWeaponPropertyTypeListSize(); index++)
    {
        if (prop_chance < d100(1))
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

    SetLocalInt(weapon, "req_level", level);
}

object sl_loot_CreateEnchWep(object holder, int loot_level, int prop_chance)
{
    int random = Random(sl_ench_GetWepListSize());

    object item = sl_ench_CreateWep(holder, random);

    sl_loot_AddWeaponProperties(item, loot_level, prop_chance);
    SetIdentified(item, FALSE);
    return item;
}

object sl_loot_CreateEnchArm(object holder, int loot_level)
{
    int random = Random(sl_ench_GetArmListSize());

    object item = sl_ench_CreateArm(holder, random);
    SetLocalString(holder, "enchant", GetTag(item));

    // Decrease lvl
    int base_type = GetBaseItemType(item);
    if (base_type != BASE_ITEM_HELMET &&
        base_type != BASE_ITEM_ARMOR &&
        base_type != BASE_ITEM_SMALLSHIELD &&
        base_type != BASE_ITEM_LARGESHIELD &&
        base_type != BASE_ITEM_TOWERSHIELD)
    {
        loot_level = loot_level / 2;
    }

    sl_ench_AddArmorProperties(item, loot_level);
    return item;
}

int sl_loot_GetChance(object holder, object loot_opener, int level, int boss)
{
    if (loot_opener != OBJECT_INVALID)
    {
        // Container. Old value 2+2%
        int fail_count = GetLocalInt(loot_opener, "sl_loot_fail_count");
        //return fail_count + 24 - level / 2;
        return fail_count + 24 - level / 4;
    }

    if (boss)
    {
        return 50 - level / 2;
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

    //return 3 - level / 15;
    return 4;
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

int sl_loot_GetLootLevel(object holder, object loot_opener)
{
    if (loot_opener == OBJECT_INVALID)
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
    int opener_level = sl_loot_GetLevel(loot_opener);
    return opener_level - Random(opener_level);
}

void sl_loot_OverrideReqLevel(object item, int level)
{
    int req_level = level;

    itemproperty prop = GetFirstItemProperty(item);
    while (GetIsItemPropertyValid(prop))
    {
        req_level += 1;
        prop = GetNextItemProperty(item);
    }

    NWNX_Item_SetMinEquipLevelOverride(item, req_level);
}

object sl_loot_ImproveWeapon(object holder, object item, int level, int prop_chance)
{
    //TODO:
    item = sl_ench_ModifyAppr(item);
    sl_loot_AddWeaponProperties(item, level, prop_chance);
    return item;
}

void sl_loot_CreateRandomItem(struct sl_loot_CreateParams params)
{
    int chance_roll = d100(1);
    object item = OBJECT_INVALID;
    if (chance_roll <= params.chance)
    {
        if (params.item_type == sl_loot_ITEM_TYPE_RANDOM)
        {
            params.item_type = d2(1);
        }

        if (params.item_type == sl_loot_ITEM_TYPE_WEP)
        {
            item = sl_loot_CreateEnchWep(params.holder, params.loot_level, params.prop_chance);
        }
        else
        {
            item = sl_loot_CreateEnchArm(params.holder, params.loot_level);
        }
        SetLocalInt(params.loot_opener, "sl_loot_fail_count", 0);
        //sl_loot_OverrideReqLevel(holder);
    }
    else
    {
        // Dinamic increase chance
        int fail_count = GetLocalInt(params.loot_opener, "sl_loot_fail_count");
        SetLocalInt(params.loot_opener, "sl_loot_fail_count", fail_count + 1);
    }

    sl_loot_PrintToLog(params, item, chance_roll);
}

void sl_loot_CreateRandomItemBoss(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM)
{
    struct sl_loot_CreateParams params;
    params.holder = holder;
    params.loot_opener = loot_opener;
    params.item_type = item_type;
    params.loot_level = sl_loot_GetLootLevel(holder, loot_opener);
    params.chance = sl_loot_GetChance(holder, loot_opener, params.loot_level, TRUE);
    params.prop_chance = 30;

    sl_loot_CreateRandomItem(params);
}

void sl_loot_CreateRandomItemNormal(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM)
{
    struct sl_loot_CreateParams params;
    params.holder = holder;
    params.loot_opener = loot_opener;
    params.item_type = item_type;
    params.loot_level = sl_loot_GetLootLevel(holder, loot_opener);
    params.chance = sl_loot_GetChance(holder, loot_opener, params.loot_level, FALSE);
    params.prop_chance = 15;

    sl_loot_CreateRandomItem(params);
}

void sl_loot_CreateRandomItemSpecial(
    object holder,
    object loot_opener = OBJECT_INVALID,
    int item_type = sl_loot_ITEM_TYPE_RANDOM,
    int chance = 100)
{
    struct sl_loot_CreateParams params;
    params.holder = holder;
    params.loot_opener = loot_opener;
    params.item_type = item_type;
    params.loot_level = sl_loot_GetLootLevel(holder, loot_opener);
    params.chance = chance;
    params.prop_chance = 15;

    sl_loot_CreateRandomItem(params);
}
