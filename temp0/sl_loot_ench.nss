// Generate random ench device.
#include "nwnx_data"
#include "nwnx_itemprop"

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
object sl_create_ench_item(object holder, string templ)
{
    object temp_storage = GetObjectByTag("sl_ench_loot_storage");
    object item = CreateItemOnObject(templ, temp_storage, 1);
    item = sl_modify_appr(item);
    object new_item = CopyItem(item, holder);
    DestroyObject(item);
    return new_item;
}

void sl_print_to_log(object holder)
{
    object item = GetLocalObject(holder, "sl_loot_item");
    string msg;

    if (item != OBJECT_INVALID)
    {
        msg += "1 ench";
    }
    else
    {
        msg += "0 ench";
    }

    msg += ": ho " + GetTag(holder);
    msg += ", it " + GetTag(item);
    //msg += ", item_wep_type " + IntToString(GetLocalInt(holder, "enchantwep"));
    msg += ", lvl " + IntToString(GetLocalInt(holder, "sl_loot_level"));
    msg += ", ch " + IntToString(GetLocalInt(holder, "sl_loot_chance_roll"));
    msg += "/" + IntToString(GetLocalInt(holder, "sl_loot_chance"));
    msg += ", t " + IntToString(GetLocalInt(holder, "sl_loot_type"));
    msg += ", b " + IntToString(GetLocalInt(holder, "sl_loot_boss"));
    if (GetLocalObject(holder, "sl_loot_opener") != OBJECT_INVALID)
    {
        string name = GetName(GetLocalObject(holder, "sl_loot_opener"));
        msg += ", o " + name;
    }
    else
    {
        msg += ", o OI";
    }

    msg += ", pr:";

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
    DeleteLocalInt(holder, "sl_loot_chance_roll");
    DeleteLocalInt(holder, "sl_loot_chance");
    DeleteLocalInt(holder, "sl_loot_type");
    DeleteLocalInt(holder, "sl_loot_boss");
}

const string sl_ench_wep_list = "sl_ench_wep_list";
const string sl_ench_wep_type_list = "sl_ench_wep_type_list";

void sl_create_ench_wep(object holder)
{
    if (!Array_Size(sl_ench_wep_list))
    {
        // Create ench wep list if empty
        Array_PushBack_Str(sl_ench_wep_list, "ench_bsword");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_sickl");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_haxe");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_baxe");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_dagger");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_gsword");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_lsword");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_katana");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_rapier");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_scim");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_ssword");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_halb");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_scyt");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_spear");
        Array_PushBack_Int(sl_ench_wep_type_list, 4);

        Array_PushBack_Str(sl_ench_wep_list, "ench_kama");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_kukri");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_dmace");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_daxe");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_qstf");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_dsword");
        Array_PushBack_Int(sl_ench_wep_type_list, 1);

        Array_PushBack_Str(sl_ench_wep_list, "ench_club");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_lflail");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_hflail");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_hamm");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_whamm");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_mace");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_mstar");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_gaxe");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        Array_PushBack_Str(sl_ench_wep_list, "ench_whip");
        Array_PushBack_Int(sl_ench_wep_type_list, 5);

        Array_PushBack_Str(sl_ench_wep_list, "ench_sling");
        Array_PushBack_Int(sl_ench_wep_type_list, 6);

        Array_PushBack_Str(sl_ench_wep_list, "ench_sbow");
        Array_PushBack_Int(sl_ench_wep_type_list, 7);

        Array_PushBack_Str(sl_ench_wep_list, "ench_lbow");
        Array_PushBack_Int(sl_ench_wep_type_list, 7);

        Array_PushBack_Str(sl_ench_wep_list, "ench_cbow");
        Array_PushBack_Int(sl_ench_wep_type_list, 7);

        Array_PushBack_Str(sl_ench_wep_list, "ench_lcbow");
        Array_PushBack_Int(sl_ench_wep_type_list, 7);

        Array_PushBack_Str(sl_ench_wep_list, "sl_ench_gloves");
        Array_PushBack_Int(sl_ench_wep_type_list, 2);

        Array_PushBack_Str(sl_ench_wep_list, "ench_dwaxe");
        Array_PushBack_Int(sl_ench_wep_type_list, 3);

        PrintString("Created ench wep list: " +
            IntToString(Array_Size(sl_ench_wep_list)) + "/" +
            IntToString(Array_Size(sl_ench_wep_type_list)));
    }

    int random = Random(Array_Size(sl_ench_wep_list));

    object item = sl_create_ench_item(holder, Array_At_Str(sl_ench_wep_list, random));
    SetLocalString(holder, "enchant", Array_At_Str(sl_ench_wep_list, random));
    SetLocalInt(holder, "enchantwep", Array_At_Int(sl_ench_wep_type_list, random));
    SetLocalObject(holder, "sl_loot_item", item);

    ExecuteScript("loot_ench_wep", holder);
    sl_print_to_log(holder);
    sl_clear_holder(holder);
}

const string sl_ench_arm_list = "sl_ench_arm_list";

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
    if (!Array_Size(sl_ench_arm_list))
    {
        Array_PushBack_Str(sl_ench_arm_list, "ench_helm1");
        Array_PushBack_Str(sl_ench_arm_list, "ench_tunic");
        Array_PushBack_Str(sl_ench_arm_list, "ench_scale");
        Array_PushBack_Str(sl_ench_arm_list, "ench_hide");
        Array_PushBack_Str(sl_ench_arm_list, "ench_chain");
        Array_PushBack_Str(sl_ench_arm_list, "ench_bplate");
        Array_PushBack_Str(sl_ench_arm_list, "ench_sleat");
        Array_PushBack_Str(sl_ench_arm_list, "ench_padd");
        Array_PushBack_Str(sl_ench_arm_list, "ench_leat");
        Array_PushBack_Str(sl_ench_arm_list, "ench_cshirt");
        Array_PushBack_Str(sl_ench_arm_list, "ench_smail");
        Array_PushBack_Str(sl_ench_arm_list, "ench_hplate");
        Array_PushBack_Str(sl_ench_arm_list, "ench_fplate");
        Array_PushBack_Str(sl_ench_arm_list, "ench_band");
        Array_PushBack_Str(sl_ench_arm_list, "ench_robe2");
        Array_PushBack_Str(sl_ench_arm_list, "ench_robe1");
        Array_PushBack_Str(sl_ench_arm_list, "ench_helm");
        Array_PushBack_Str(sl_ench_arm_list, "ench_tshield");
        Array_PushBack_Str(sl_ench_arm_list, "ench_shield");
        Array_PushBack_Str(sl_ench_arm_list, "ench_lshield");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_amulet");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_belt");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_boots");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_bracer");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_cloak");
        Array_PushBack_Str(sl_ench_arm_list, "sl_ench_ring");

        PrintString("Created ench arm list: " + IntToString(Array_Size(sl_ench_arm_list)));
    }

    int random = Random(Array_Size(sl_ench_arm_list));

    object item = sl_create_ench_item(holder, Array_At_Str(sl_ench_arm_list, random));
    SetLocalString(holder, "enchant", Array_At_Str(sl_ench_arm_list, random));
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
    sl_print_to_log(holder);
    sl_clear_holder(holder);
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


void main()
{
    object holder = OBJECT_SELF;
    object opener = GetLocalObject(holder, "sl_loot_opener");
    if (opener == OBJECT_INVALID)
    {
        // holder is creature, not container.
        SetLocalInt(holder, "sl_loot_level", GetHitDice(holder));
    }
    else
    {
        SetLocalInt(holder, "sl_loot_level", GetHitDice(opener));
    }

    SetLocalInt(holder, "sl_loot_chance", sl_get_chance(holder));
    SetLocalInt(holder, "sl_loot_chance_roll", d100(1));
    if (GetLocalInt(holder, "sl_loot_chance_roll") > GetLocalInt(holder, "sl_loot_chance"))
    {
        sl_print_to_log(holder);
        sl_clear_holder(holder);
        return;
    }

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
}
