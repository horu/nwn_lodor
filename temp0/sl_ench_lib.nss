#include "sl_array_lib"

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
            //PrintString(IntToString(i) + " " + IntToString(appr_type) + " " + IntToString(appr_model) +" " + IntToString(appr));
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

const string sl_ench_wep_list = "sl_ench_wep";
const string sl_ench_wep_type_list = "sl_ench_wep_type";

void _sl_ench_create_wep_list()
{
    if (sl_array_size(sl_ench_wep_list))
    {
        return;
    }

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

int sl_ench_get_wep_list_size()
{
    _sl_ench_create_wep_list();
    return sl_array_size(sl_ench_wep_list);
}

object sl_ench_create_wep(object holder, int index)
{
    _sl_ench_create_wep_list();

    string item_tag = sl_array_at_str(sl_ench_wep_list, index);
    object item = sl_create_ench_item(holder, item_tag);
    return item;
}

string sl_ench_get_wep_tag(int index)
{
    _sl_ench_create_wep_list();
    return sl_array_at_str(sl_ench_wep_list, index);
}

int sl_ench_get_wep_type(int index)
{
    _sl_ench_create_wep_list();
    return sl_array_at_int(sl_ench_wep_type_list, index);
}
