#include "sl_array_lib"

int sl_ench_GetWepListSize();
object sl_ench_CreateWep(object holder, int index);
int sl_ench_GetWepType(int index);

int sl_ench_GetArmListSize();
object sl_ench_CreateArm(object holder, int index);


/// Implementation
///
int sl_ench_IsItArmor(object item)
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

int sl_ench_GetApprType(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET || base_type == BASE_ITEM_ARMOR)
    {
        return ITEM_APPR_TYPE_ARMOR_MODEL;
    }
    if (sl_ench_IsItArmor(item))
    {
        return ITEM_APPR_TYPE_SIMPLE_MODEL;
    }
    // weapon
    return ITEM_APPR_TYPE_WEAPON_MODEL;
}

int sl_ench_GetRandomApprModel(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_ARMOR)
    {
        return Random(ITEM_APPR_ARMOR_NUM_MODELS);
    }
    if (sl_ench_IsItArmor(item))
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

int sl_ench_GetRandomAppr(object item)
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

void sl_ench_SortInventory(object holder)
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
object sl_ench_ModifyAppr(object item)
{
    int appr_type = sl_ench_GetApprType(item);
    int appr_model = sl_ench_GetRandomApprModel(item);

    int i = 0;
    while (i < 50)
    {
        i++;
        // Try set random appr for item and check supporting for this value
        int appr = sl_ench_GetRandomAppr(item);
        object new_item = CopyItemAndModify(item, appr_type, appr_model, appr);
        if (new_item != OBJECT_INVALID)
        {
            // Valid appr value found.
            //PrintString(IntToString(i) + " " + IntToString(appr_type) + " " + IntToString(appr_model) +" " + IntToString(appr));
            DestroyObject(item);
            item = new_item;
            break;
        }
    }
    return item;
}

// Creaute Enchanted Item with modificated appearance.
object sl_ench_CreateEnchItem(object holder, string item_tag)
{
    object temp_storage = GetObjectByTag("sl_ench_loot_storage");
    object item = CreateItemOnObject(item_tag, temp_storage, 1);
    item = sl_ench_ModifyAppr(item);
    object new_item = CopyItem(item, holder);
    DestroyObject(item);
    return new_item;
}

const string sl_ench_wep_list = "sl_ench_wep";
const string sl_ench_wep_type_list = "sl_ench_wep_type";

const string sl_ench_arm_list = "sl_ench_arm";

void sl_ench_CreateArmList()
{
    if (sl_array_Size(sl_ench_arm_list))
    {
        return;
    }
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

void sl_ench_CreateWepList()
{
    // Create ench wep list if empty
    if (sl_array_Size(sl_ench_wep_list))
    {
        return;
    }

    sl_array_PushbackStr(sl_ench_wep_list, "ench_bsword");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_sickl");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_haxe");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_baxe");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_dagger");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_gsword");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_lsword");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_katana");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_rapier");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_scim");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_ssword");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_halb");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_scyt");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_spear");
    sl_array_PushbackInt(sl_ench_wep_type_list, 4);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_kama");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_kukri");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_dmace");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_daxe");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_qstf");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_dsword");
    sl_array_PushbackInt(sl_ench_wep_type_list, 1);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_club");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_lflail");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_hflail");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_hamm");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_whamm");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_mace");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_mstar");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_gaxe");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_whip");
    sl_array_PushbackInt(sl_ench_wep_type_list, 5);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_sling");
    sl_array_PushbackInt(sl_ench_wep_type_list, 6);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_sbow");
    sl_array_PushbackInt(sl_ench_wep_type_list, 7);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_lbow");
    sl_array_PushbackInt(sl_ench_wep_type_list, 7);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_cbow");
    sl_array_PushbackInt(sl_ench_wep_type_list, 7);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_lcbow");
    sl_array_PushbackInt(sl_ench_wep_type_list, 7);

    sl_array_PushbackStr(sl_ench_wep_list, "sl_ench_gloves");
    sl_array_PushbackInt(sl_ench_wep_type_list, 2);

    sl_array_PushbackStr(sl_ench_wep_list, "ench_dwaxe");
    sl_array_PushbackInt(sl_ench_wep_type_list, 3);

    PrintString("[ench] Created ench wep list: " +
        IntToString(sl_array_Size(sl_ench_wep_list)) + "/" +
        IntToString(sl_array_Size(sl_ench_wep_type_list)));
}

int sl_ench_GetWepListSize()
{
    sl_ench_CreateWepList();
    return sl_array_Size(sl_ench_wep_list);
}

object sl_ench_CreateWep(object holder, int index)
{
    sl_ench_CreateWepList();

    string item_tag = sl_array_AtStr(sl_ench_wep_list, index);
    return sl_ench_CreateEnchItem(holder, item_tag);
}

int sl_ench_GetWepType(int index)
{
    sl_ench_CreateWepList();
    return sl_array_AtInt(sl_ench_wep_type_list, index);
}

int sl_ench_GetArmListSize()
{
    sl_ench_CreateArmList();
    return sl_array_Size(sl_ench_arm_list);
}

object sl_ench_CreateArm(object holder, int index)
{
    sl_ench_CreateArmList();

    string item_tag = sl_array_AtStr(sl_ench_arm_list, index);
    return sl_ench_CreateEnchItem(holder, item_tag);
}
