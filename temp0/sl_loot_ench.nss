// Generate random ench device.
#include "sl_array_lib"
#include "nwnx_itemprop"
#include "nwnx_item"

int sl_is_it_armor(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET ||
        base_type == BASE_ITEM_ARMOR ||
        base_type == BASE_ITEM_CLOAK ||
        base_type == BASE_ITEM_AMULET ||
        base_type == BASE_ITEM_SMALLSHIELD ||
        base_type == BASE_ITEM_LARGESHIELD ||
        base_type == BASE_ITEM_TOWERSHIELD ||
        base_type == BASE_ITEM_BRACER ||
        base_type == BASE_ITEM_RING ||
        base_type == BASE_ITEM_BELT ||
        base_type == BASE_ITEM_BOOTS ||
        base_type == BASE_ITEM_GLOVES)
    {
        return TRUE;
    }
    return FALSE;
}

int sl_get_appr_type(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET || base_type == BASE_ITEM_ARMOR)
    {
        return ITEM_APPR_TYPE_ARMOR_MODEL;
    }
    if (sl_is_it_armor(item))
    {
        return ITEM_APPR_TYPE_SIMPLE_MODEL;
    }
    // weapon
    return ITEM_APPR_TYPE_WEAPON_MODEL;
}

int sl_get_random_appr_model(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_ARMOR)
    {
        return Random(ITEM_APPR_ARMOR_NUM_MODELS);
    }
    if (sl_is_it_armor(item))
    {
        return 0;
    }
    if (base_type == BASE_ITEM_WHIP)
    {
        return ITEM_APPR_WEAPON_MODEL_MIDDLE;
    }
    // weapon
    return Random(3);
}

int sl_get_random_appr(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET) { return Random(110); }
    if (base_type == BASE_ITEM_AMULET) { return Random(75); }
    if (base_type == BASE_ITEM_CLOAK) { return Random(60); }
    if (base_type == BASE_ITEM_ARMOR) { return Random(200); }
    if (base_type == BASE_ITEM_SMALLSHIELD) { return Random(90); }
    if (base_type == BASE_ITEM_LARGESHIELD) { return Random(200); }
    if (base_type == BASE_ITEM_TOWERSHIELD) { return Random(200); }
    if (base_type == BASE_ITEM_BRACER) { return Random(61); }
    if (base_type == BASE_ITEM_RING) { return Random(131); }
    if (base_type == BASE_ITEM_BELT) { return Random(60); }
    if (base_type == BASE_ITEM_BOOTS) { return Random(45); }
    if (base_type == BASE_ITEM_GLOVES) { return Random(63); }
    // weapon
    return Random(26);
}

void sl_sort_inventory(object holder)
{
    object item = GetFirstItemInInventory(holder);
    while (item != OBJECT_INVALID)
    {
        string name = GetName(item);
        //SendMessageToPC(GetFirstPC(), name);
        ActionGiveItem(item, holder);
        item = GetNextItemInInventory(holder);
    }
}

// Modifi item appearance. Return new item or the same, if modification was failed.
object sl_modify_appr(object item)
{
    int appr_type = sl_get_appr_type(item);
    int appr_model = sl_get_random_appr_model(item);

    int i = 0;
    while (i < 50)
    {
        i++;
        // Try set random appr for item and check supporting for this value
        int appr = sl_get_random_appr(item);
        object new_item = CopyItemAndModify(item, appr_type, appr_model, appr);
        if (new_item != OBJECT_INVALID)
        {
            // Valid appr value found.
            //SendMessageToPC(GetFirstPC(),IntToString(i) + " " + IntToString(appr_type) + " " + IntToString(appr_model) +" " + IntToString(appr));
            DestroyObject(item);
            item = new_item;
            break;
        }
    }
    return item;
}

// Creaute Enchanted Item with modificated appearance.
object sl_create_ench_item(object holder, string item_tag)
{
    object temp_storage = GetObjectByTag("sl_ench_loot_storage");
    object item = CreateItemOnObject(item_tag, temp_storage, 1);
    item = sl_modify_appr(item);
    object new_item = CopyItem(item, holder);
    DestroyObject(item);
    return new_item;
}

void sl_print_to_log(object holder)
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

void sl_clear_holder(object holder)
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

const string sl_ench_wep_list = "sl_ench_wep";
const string sl_ench_wep_type_list = "sl_ench_wep_type";

void sl_create_ench_wep(object holder)
{
    if (!sl_array_size(sl_ench_wep_list))
    {
        // Create ench wep list if empty
        sl_array_pushback_str(sl_ench_wep_list, "ench_bsword");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_sickl");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_haxe");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_baxe");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_dagger");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_gsword");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_lsword");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_katana");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_rapier");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_scim");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_ssword");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_halb");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_scyt");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_spear");
        sl_array_pushback_int(sl_ench_wep_type_list, 4);

        sl_array_pushback_str(sl_ench_wep_list, "ench_kama");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_kukri");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_dmace");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_daxe");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_qstf");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_dsword");
        sl_array_pushback_int(sl_ench_wep_type_list, 1);

        sl_array_pushback_str(sl_ench_wep_list, "ench_club");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_lflail");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_hflail");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_hamm");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_whamm");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_mace");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_mstar");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_gaxe");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        sl_array_pushback_str(sl_ench_wep_list, "ench_whip");
        sl_array_pushback_int(sl_ench_wep_type_list, 5);

        sl_array_pushback_str(sl_ench_wep_list, "ench_sling");
        sl_array_pushback_int(sl_ench_wep_type_list, 6);

        sl_array_pushback_str(sl_ench_wep_list, "ench_sbow");
        sl_array_pushback_int(sl_ench_wep_type_list, 7);

        sl_array_pushback_str(sl_ench_wep_list, "ench_lbow");
        sl_array_pushback_int(sl_ench_wep_type_list, 7);

        sl_array_pushback_str(sl_ench_wep_list, "ench_cbow");
        sl_array_pushback_int(sl_ench_wep_type_list, 7);

        sl_array_pushback_str(sl_ench_wep_list, "ench_lcbow");
        sl_array_pushback_int(sl_ench_wep_type_list, 7);

        sl_array_pushback_str(sl_ench_wep_list, "sl_ench_gloves");
        sl_array_pushback_int(sl_ench_wep_type_list, 2);

        sl_array_pushback_str(sl_ench_wep_list, "ench_dwaxe");
        sl_array_pushback_int(sl_ench_wep_type_list, 3);

        PrintString("[ench] Created ench wep list: " +
            IntToString(sl_array_size(sl_ench_wep_list)) + "/" +
            IntToString(sl_array_size(sl_ench_wep_type_list)));
    }

    int random = Random(sl_array_size(sl_ench_wep_list));

    string item_tag = sl_array_at_str(sl_ench_wep_list, random);
    object item = sl_create_ench_item(holder, item_tag);
    SetLocalString(holder, "enchant", item_tag);
    SetLocalInt(holder, "enchantwep", sl_array_at_int(sl_ench_wep_type_list, random));
    SetLocalObject(holder, "sl_loot_item", item);

    ExecuteScript("loot_ench_wep", holder);
}

const string sl_ench_arm_list = "sl_ench_arm";

void sl_create_ench_arm(object holder)
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
    if (!sl_array_size(sl_ench_arm_list))
    {
        sl_array_pushback_str(sl_ench_arm_list, "ench_helm1");
        sl_array_pushback_str(sl_ench_arm_list, "ench_tunic");
        sl_array_pushback_str(sl_ench_arm_list, "ench_scale");
        sl_array_pushback_str(sl_ench_arm_list, "ench_hide");
        sl_array_pushback_str(sl_ench_arm_list, "ench_chain");
        sl_array_pushback_str(sl_ench_arm_list, "ench_bplate");
        sl_array_pushback_str(sl_ench_arm_list, "ench_sleat");
        sl_array_pushback_str(sl_ench_arm_list, "ench_padd");
        sl_array_pushback_str(sl_ench_arm_list, "ench_leat");
        sl_array_pushback_str(sl_ench_arm_list, "ench_cshirt");
        sl_array_pushback_str(sl_ench_arm_list, "ench_smail");
        sl_array_pushback_str(sl_ench_arm_list, "ench_hplate");
        sl_array_pushback_str(sl_ench_arm_list, "ench_fplate");
        sl_array_pushback_str(sl_ench_arm_list, "ench_band");
        sl_array_pushback_str(sl_ench_arm_list, "ench_robe2");
        sl_array_pushback_str(sl_ench_arm_list, "ench_robe1");
        sl_array_pushback_str(sl_ench_arm_list, "ench_helm");
        sl_array_pushback_str(sl_ench_arm_list, "ench_tshield");
        sl_array_pushback_str(sl_ench_arm_list, "ench_shield");
        sl_array_pushback_str(sl_ench_arm_list, "ench_lshield");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_amulet");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_belt");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_boots");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_bracer");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_cloak");
        sl_array_pushback_str(sl_ench_arm_list, "sl_ench_ring");

        PrintString("[ench] Created ench arm list: " + IntToString(sl_array_size(sl_ench_arm_list)));
    }

    int random = Random(sl_array_size(sl_ench_arm_list));

    string item_tag = sl_array_at_str(sl_ench_arm_list, random);
    object item = sl_create_ench_item(holder, item_tag);
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

int sl_get_chance(object holder)
{
    int chance = GetLocalInt(holder, "sl_loot_chance");
    if (chance)
    {
        // For special loot
        return chance;
    }

    int level = GetLocalInt(holder, "sl_loot_level");
    if (GetLocalObject(holder, "sl_loot_opener") != OBJECT_INVALID)
    {
        // Container. Old value 2+2%
        return 24 - level / 2;
    }

    // Creature
    int race = GetRacialType(holder);
    if (race == RACIAL_TYPE_ANIMAL ||
        race == RACIAL_TYPE_BEAST ||
        race == RACIAL_TYPE_MAGICAL_BEAST ||
        race == RACIAL_TYPE_VERMIN ||
        race == RACIAL_TYPE_INVALID)
    {
        // Filter animals and others.
        return 0;
    }

    if (GetLocalInt(holder, "sl_loot_boss"))
    {
        return 50 - level;
    }

    return 3 - level / 15;
}

int sl_is_creature_loot(object holder)
{
    object opener = GetLocalObject(holder, "sl_loot_opener");
    return opener == OBJECT_INVALID;
}

int sl_get_level(object creature)
{
    int level = GetHitDice(creature);
    if (level > 40)
    {
        return 40;
    }
    return level;
}

int sl_get_loot_level(object holder)
{
    if (sl_is_creature_loot(holder))
    {
        // holder is creature, not container.
        return sl_get_level(holder);
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
    return sl_get_level(opener);
}

void sl_override_req_level(object holder)
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

    SetLocalInt(holder, "sl_loot_level", sl_get_loot_level(holder));
    SetLocalInt(holder, "sl_loot_req_level", GetLocalInt(holder, "sl_loot_level"));
    SetLocalInt(holder, "sl_loot_chance", sl_get_chance(holder));
    SetLocalInt(holder, "sl_loot_chance_roll", d100(1));
    if (GetLocalInt(holder, "sl_loot_chance_roll") <= GetLocalInt(holder, "sl_loot_chance"))
    {
        if (!GetLocalInt(holder, "sl_loot_type"))
        {
            SetLocalInt(holder, "sl_loot_type", d2(1));
        }

        if (GetLocalInt(holder, "sl_loot_type") == 1)
        {
            sl_create_ench_wep(holder);
        }
        else
        {
            sl_create_ench_arm(holder);
        }
        //sl_override_req_level(holder);
    }
    sl_print_to_log(holder);
    sl_clear_holder(holder);
}
