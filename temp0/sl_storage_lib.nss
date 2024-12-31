#include "nwnx_store"
#include "nwnx_object"
#include "nwnx_item"
#include "nwnx_creature"
#include "sl_common_lib"

// TODO: Add/remove items from sl_item_storage on transactions to prevent copy and lost on disconnects.
// TODO: remove cost.

// Special variable prefix for storage variables.
const string sl_storage_array = "sl_item_storage";
// Special item in player inventory to store variables.
const string sl_storage_item_tag = "faction_report";

void sl_storate_log(object pc, string msg)
{
    string name = GetName(pc);
    PrintString("[sl_storage] [" + name + "] " + msg);
}

void sl_storate_log_error(object pc, string msg)
{
    sl_storate_log(pc, msg);
    FloatingTextStringOnCreature("Storage error.", pc, FALSE);
}

void sl_storage_restore(object storage, object pc)
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
            sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Deserialize error.");
            continue;
        }

        object restored_item = CopyItem(item, storage, TRUE);
        if (restored_item == OBJECT_INVALID)
        {
            sl_storate_log_error(pc, "<" + GetTag(item) + "> CopyItem error.");
            continue;
        }

        items_log += " " + GetTag(item);
        DestroyObject(item);

        // NWNX_Item_SetBaseGoldPieceValue(restored_item, 0);
        // NWNX_Item_SetAddGoldPieceValue(restored_item, 0);
    }
    sl_storate_log(pc, "Restore storage items " + IntToString(storage_size) + ": " + items_log);
}

int sl_storage_add(object item, object pc)
{
    if (!GetIdentified(item))
    {
        FloatingTextStringOnCreature("You can not store unidentified items.", pc, FALSE);
        return FALSE;
    }

    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);
    string str_item = NWNX_Object_Serialize(item);
    if (str_item == "")
    {
        sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Serialize error.");
        return FALSE;
    }

    sl_array_pushback_str(sl_storage_array, str_item, storage_item);
    int storage_size = sl_array_size(sl_storage_array, storage_item);
    sl_storate_log(pc, "Add storage item " + IntToString(storage_size) + ": " + GetTag(item));
    return TRUE;
}

void sl_storage_save(object storage, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    sl_array_clear(sl_storage_array, storage_item);
    string items_log;
    object item = GetFirstItemInInventory(storage);
    while (GetIsObjectValid(item))
    {
        string str_item = NWNX_Object_Serialize(item);
        if (str_item == "")
        {
            sl_storate_log_error(pc, "<" + GetTag(item) + "> NWNX_Object_Serialize error.");
            continue;
        }

        sl_array_pushback_str(sl_storage_array, str_item, storage_item);
        items_log += " " + GetTag(item);
        DestroyObject(item);
        item = GetNextItemInInventory(storage);
    }
    int storage_size = sl_array_size(sl_storage_array, storage_item);
    sl_storate_log(pc, "Save storage items " + IntToString(storage_size) + ": " + items_log);
}

object sl_storage_create(object pc, string base_storage_tag)
{
    string storage_tag = base_storage_tag + "_" + GetName(pc);
    object storage = GetObjectByTag(storage_tag);
    if (storage == OBJECT_INVALID)
    {
        sl_storate_log(pc, "Create storage: " + storage_tag);
        object base_storage = GetObjectByTag(base_storage_tag);
        if (base_storage == OBJECT_INVALID)
        {
            sl_storate_log_error(pc, "Can not create base storage: " + base_storage_tag);
            return OBJECT_INVALID;
        }
        object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);
        if (storage_item == OBJECT_INVALID)
        {
            sl_storate_log_error(pc, "Not found storage item for pc: " + sl_storage_item_tag);
            return OBJECT_INVALID;
        }

        storage = CopyObject(base_storage, GetLocation(base_storage), OBJECT_INVALID, storage_tag);
        NWNX_Store_SetBlackMarketMarkDown(storage, 0);
        NWNX_Store_SetMarkDown(storage, 0);
        NWNX_Store_SetMarkUp(storage, 1);
        NWNX_Creature_SetMaxSellToStorePriceOverride(pc, storage, 0);
        FloatingTextStringOnCreature("Paid storage. You will have to pay to get items back.", pc, FALSE);
    }

    return storage;
}
