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
    //msg += ", item_wep_type " + IntToString(GetLocalInt(holder, "enchantwep"));
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
    SetLocalString(holder, "enchant", sl_ench_GetWepTag(random));
    SetLocalInt(holder, "enchantwep", sl_ench_GetWepType(random));
    SetLocalObject(holder, "sl_loot_item", item);

    ExecuteScript("loot_ench_wep", holder);
}

const string sl_ench_arm_list = "sl_ench_arm";

void sl_CreateEnchArm(object holder)
{
    // if (GetIsPC(oPC) && GetSubRace(oPC) == "Minotaur")
    // {
    //     {
    //         int nRandom = d10(1);
    //         if (nRandom == 1) { SetLocalString(oPC, "enchant", "eq_mino_medm"); }
    //         else if (nRandom == 2) { SetLocalString(oPC, "enchant", "eq_mino_litm1"); }
    //         else if (nRandom == 3) { SetLocalString(oPC, "enchant", "eq_mino_hevm"); }
    //         else if (nRandom == 4) { SetLocalString(oPC, "enchant", "eq_mino_litm2"); }
    //         else if (nRandom == 5) { SetLocalString(oPC, "enchant", "eq_mino_robm"); }
    //         else if (nRandom == 6) { SetLocalString(oPC, "enchant", "eq_mino_robm"); }
    //         else if (nRandom == 7) { SetLocalString(oPC, "enchant", "eq_mino_medm"); }
    //         else if (nRandom == 8) { SetLocalString(oPC, "enchant", "eq_mino_litm1"); }
    //         else if (nRandom == 9) { SetLocalString(oPC, "enchant", "eq_mino_hevm"); }
    //         else if (nRandom == 10) { SetLocalString(oPC, "enchant", "eq_mino_litm2"); }
    //     }
    // }
    //
    // else if (GetIsPC(oPC) && GetSubRace(oPC) == "Ogre")
    // {
    //     {
    //         int nRandom = d10(1);
    //         if (nRandom == 1) { SetLocalString(oPC, "enchant", "eq_ogre_medm"); }
    //         else if (nRandom == 2) { SetLocalString(oPC, "enchant", "eq_ogre_litm1"); }
    //         else if (nRandom == 3) { SetLocalString(oPC, "enchant", "eq_ogre_hevm"); }
    //         else if (nRandom == 4) { SetLocalString(oPC, "enchant", "eq_ogre_litm2"); }
    //         else if (nRandom == 5) { SetLocalString(oPC, "enchant", "eq_ogre_ro1m"); }
    //         else if (nRandom == 6) { SetLocalString(oPC, "enchant", "eq_ogre_ro2m"); }
    //         else if (nRandom == 7) { SetLocalString(oPC, "enchant", "eq_ogre_medm"); }
    //         else if (nRandom == 8) { SetLocalString(oPC, "enchant", "eq_ogre_hevm"); }
    //         else if (nRandom == 9) { SetLocalString(oPC, "enchant", "eq_ogre_litm1"); }
    //         else if (nRandom == 10) { SetLocalString(oPC, "enchant", "eq_ogre_litm2"); }
    //     }
    // }
    if (!sl_array_Size(sl_ench_arm_list))
    {
        sl_array_PushbackStr(sl_ench_arm_list, "ench_helm1");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_tunic");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_scale");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_hide");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_chain");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_bplate");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_sleat");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_padd");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_leat");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_cshirt");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_smail");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_hplate");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_fplate");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_band");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_robe2");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_robe1");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_helm");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_tshield");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_shield");
        sl_array_PushbackStr(sl_ench_arm_list, "ench_lshield");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_amulet");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_belt");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_boots");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_bracer");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_cloak");
        sl_array_PushbackStr(sl_ench_arm_list, "sl_ench_ring");

        PrintString("[ench] Created ench arm list: " + IntToString(sl_array_Size(sl_ench_arm_list)));
    }

    int random = Random(sl_array_Size(sl_ench_arm_list));

    string item_tag = sl_array_AtStr(sl_ench_arm_list, random);
    object item = sl_ench_CreateEnchItem(holder, item_tag);
    SetLocalString(holder, "enchant", item_tag);
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
