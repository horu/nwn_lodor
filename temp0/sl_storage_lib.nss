#include "nwnx_store"
#include "nwnx_object"
#include "nwnx_item"
#include "nwnx_creature"
#include "sl_common_lib"

// Special variable prefix for storage variables.
const string sl_storage_array = "sl_storage";
// Special item in player inventory to store variables.
const string sl_storage_item_tag = "faction_report";

void _sl_storate_log(object pc, string msg)
{
    string name = GetName(pc);
    PrintString("[sl_storage] [" + name + "] " + msg);
}

void _sl_storate_log_error(object pc, string msg)
{
    _sl_storate_log(pc, msg);
    FloatingTextStringOnCreature("Storage error.", pc, FALSE);
}

// Base storage

int sl_storage_add_item(object item, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    string str_item = NWNX_Object_Serialize(item);
    if (str_item == "")
    {
        _sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Serialize error.");
        return FALSE;
    }

    sl_array_pushback_str(sl_storage_array, str_item, storage_item);
    int storage_size = sl_array_size(sl_storage_array, storage_item);
    _sl_storate_log(pc, "Add storage item " + IntToString(storage_size) + ": " + GetTag(item));
    return TRUE;
}

int sl_storage_remove_item(object item, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    string str_item = NWNX_Object_Serialize(item);
    int index = sl_array_find_str(sl_storage_array, str_item, storage_item);
    if (index == -1)
    {
        _sl_storate_log_error(pc, "<" + GetTag(item) + "> Item not found to remove.");
        return FALSE;
    }

    sl_array_erase_str(sl_storage_array, index, storage_item);
    int storage_size = sl_array_size(sl_storage_array, storage_item);
    _sl_storate_log(pc, "Remove storage item " + IntToString(storage_size) + ": " + GetTag(item));
    return TRUE;
}

// Store storage

void sl_storage_clear_store(object store)
{
    object item = GetFirstItemInInventory(store);
    while (GetIsObjectValid(item))
    {
        DestroyObject(item);
        item = GetNextItemInInventory(store);
    }
}

object sl_storage_create_store(object pc, string base_store_tag)
{
    string store_tag = base_store_tag + "_" + GetName(pc);
    object store = GetObjectByTag(store_tag);
    if (store == OBJECT_INVALID)
    {
        _sl_storate_log(pc, "Create store: " + store_tag);
        object base_store = GetObjectByTag(base_store_tag);
        if (base_store == OBJECT_INVALID)
        {
            _sl_storate_log_error(pc, "Can not create base store: " + base_store_tag);
            return OBJECT_INVALID;
        }
        object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);
        if (storage_item == OBJECT_INVALID)
        {
            _sl_storate_log_error(pc, "Not found storage item for pc: " + sl_storage_item_tag);
            return OBJECT_INVALID;
        }

        store = CopyObject(base_store, GetLocation(base_store), OBJECT_INVALID, store_tag);
        NWNX_Store_SetBlackMarketMarkDown(store, 0);
        NWNX_Store_SetMarkDown(store, 0);
        NWNX_Store_SetMarkUp(store, 1);
        NWNX_Creature_SetMaxSellToStorePriceOverride(pc, store, 0);
        FloatingTextStringOnCreature("It is free to use storage.", pc, FALSE);
    }
    sl_storage_clear_store(store);

    return store;
}

void sl_storage_restore_store(object store, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    int storage_size = sl_array_size(sl_storage_array, storage_item);
    string items_log;
    int i;
    for (i = 0; i < storage_size; i++)
    {
        string str_item = sl_array_at_str(sl_storage_array, i, storage_item);
        object item = NWNX_Object_Deserialize(str_item);
        if (item == OBJECT_INVALID)
        {
            _sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Deserialize error.");
            continue;
        }

        object restored_item = CopyItem(item, store, TRUE);
        if (restored_item == OBJECT_INVALID)
        {
            _sl_storate_log_error(pc, "<" + GetTag(item) + "> CopyItem error.");
            continue;
        }

        items_log += " " + GetTag(item);
        DestroyObject(item);

        // NWNX_Item_SetBaseGoldPieceValue(restored_item, 0);
        // NWNX_Item_SetAddGoldPieceValue(restored_item, 0);
    }
    _sl_storate_log(pc, "Restore storage items " + IntToString(storage_size) + ": " + items_log);
}

// NWNX_ON_STORE_REQUEST_SELL_BEFORE handler. NWNX_Events_SkipEvent after call.
void sl_storage_sell_to_store(object store, object pc, object item)
{
    if (!GetIdentified(item))
    {
        FloatingTextStringOnCreature("You can not store unidentified items.", pc, FALSE);
        return;
    }

    if (!GetDroppableFlag(item))
    {
        return;
    }

    int item_type = GetBaseItemType(item);
    if (item_type == BASE_ITEM_INVALID || item_type == BASE_ITEM_LARGEBOX)
    {
        return;
    }

    int add_result = sl_storage_add_item(item, pc);
    if (add_result)
    {
        CopyItem(item, store, TRUE);
        DestroyObject(item);
    }
}

// NWNX_ON_STORE_REQUEST_BUY_BEFORE handler. NWNX_Events_SkipEvent after call.
void sl_storage_buy_from_store(object store, object pc, object item)
{
    int remove_result = sl_storage_remove_item(item, pc);
    if (remove_result)
    {
        CopyItem(item, pc, TRUE);
        DestroyObject(item);
    }
}

void sl_storage_save_store(object store, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    sl_array_clear(sl_storage_array, storage_item);
    string items_log;
    object item = GetFirstItemInInventory(store);
    while (GetIsObjectValid(item))
    {
        string str_item = NWNX_Object_Serialize(item);
        if (str_item == "")
        {
            _sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Serialize error.");
            continue;
        }

        sl_array_pushback_str(sl_storage_array, str_item, storage_item);
        items_log += " " + GetTag(item);
        DestroyObject(item);
        item = GetNextItemInInventory(store);
    }
    int storage_size = sl_array_size(sl_storage_array, storage_item);
    _sl_storate_log(pc, "Save storage items " + IntToString(storage_size) + ": " + items_log);
}
