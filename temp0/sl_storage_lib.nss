#include "nwnx_store"
#include "nwnx_item"
#include "nwnx_creature"
#include "sl_array_lib"

// Special item in player inventory to store variables.
const string sl_storage_item_tag = "faction_report";

// Base storage
int sl_storage_AddItem(object item, object pc);
int sl_storage_RemoveItem(object item, object pc);
int sl_storage_GetSize(object pc);
// Return OBJECT_INVALID when index >= size or error. Copy item to inventory and remove it.
object sl_storage_GetItem(int index, object pc);
void sl_storage_Clear(object pc);

// Store storage
object sl_storage_CreateStore(object pc, string base_store_tag);
void sl_storage_RestoreStore(object store, object pc);
// NWNX_ON_STORE_REQUEST_SELL_BEFORE handler. NWNX_Events_SkipEvent after call.
void sl_storage_SellToStore(object store, object pc, object item);
// NWNX_ON_STORE_REQUEST_BUY_BEFORE handler. NWNX_Events_SkipEvent after call.
void sl_storage_BuyFromStore(object store, object pc, object item);
void sl_storage_SaveStore(object store, object pc);


/// Implementation

// Private

// Special variable prefix for storage variables.
const string sl_storage_array = "sl_storage";

void sl_storage_Log(object pc, string msg)
{
    string name = GetName(pc);
    PrintString("[sl_storage] [" + name + "] " + msg);
}

void sl_storage_Log_error(object pc, string msg)
{
    sl_storage_Log(pc, msg);
    FloatingTextStringOnCreature("Storage error.", pc, FALSE);
}

// Public

int sl_storage_AddItem(object item, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    sl_array_PushbackObj(sl_storage_array, item, storage_item);
    int storage_size = sl_array_Size(sl_storage_array, storage_item);
    sl_storage_Log(pc, "Add storage item " + IntToString(storage_size) + ": " + GetTag(item));
    return TRUE;
}

int sl_storage_RemoveItem(object item, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    int index = sl_array_FindObj(sl_storage_array, item, storage_item);
    if (index == -1)
    {
        sl_storage_Log_error(pc, "<" + GetTag(item) + "> Item not found to remove.");
        return FALSE;
    }

    sl_array_Erase(sl_storage_array, index, storage_item);
    int storage_size = sl_array_Size(sl_storage_array, storage_item);
    sl_storage_Log(pc, "Remove storage item " + IntToString(storage_size) + ": " + GetTag(item));
    return TRUE;
}

int sl_storage_GetSize(object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    return sl_array_Size(sl_storage_array, storage_item);
}

object sl_storage_GetItem(int index, object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);

    return sl_array_AtObj(sl_storage_array, index, storage_item);
}

void sl_storage_Clear(object pc)
{
    object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);
    sl_array_Clear(sl_storage_array, storage_item);
}


void sl_storage_ClearStore(object store)
{
    object item = GetFirstItemInInventory(store);
    while (GetIsObjectValid(item))
    {
        DestroyObject(item);
        item = GetNextItemInInventory(store);
    }
}

object sl_storage_CreateStore(object pc, string base_store_tag)
{
    string store_tag = base_store_tag + "_" + GetName(pc);
    object store = GetObjectByTag(store_tag);
    if (store == OBJECT_INVALID)
    {
        sl_storage_Log(pc, "Create store: " + store_tag);
        object base_store = GetObjectByTag(base_store_tag);
        if (base_store == OBJECT_INVALID)
        {
            sl_storage_Log_error(pc, "Can not create base store: " + base_store_tag);
            return OBJECT_INVALID;
        }
        object storage_item = GetItemPossessedBy(pc, sl_storage_item_tag);
        if (storage_item == OBJECT_INVALID)
        {
            sl_storage_Log_error(pc, "Not found storage item for pc: " + sl_storage_item_tag);
            return OBJECT_INVALID;
        }

        store = CopyObject(base_store, GetLocation(base_store), OBJECT_INVALID, store_tag);
        NWNX_Store_SetBlackMarketMarkDown(store, 0);
        NWNX_Store_SetMarkDown(store, 0);
        NWNX_Store_SetMarkUp(store, 1);
        NWNX_Creature_SetMaxSellToStorePriceOverride(pc, store, 0);
        FloatingTextStringOnCreature("It is free to use storage.", pc, FALSE);
    }
    sl_storage_ClearStore(store);

    return store;
}

void sl_storage_RestoreStore(object store, object pc)
{
    int storage_size = sl_storage_GetSize(pc);
    string items_log;
    int i;
    for (i = 0; i < storage_size; i++)
    {
        object item = sl_storage_GetItem(i, pc);
        if (item == OBJECT_INVALID)
        {
            // Error was printed. Ignore.
            continue;
        }

        object restored_item = CopyItem(item, store, TRUE);
        if (restored_item == OBJECT_INVALID)
        {
            sl_storage_Log_error(pc, "<" + GetTag(item) + "> CopyItem error.");
        }
        else
        {
            items_log += " " + GetTag(restored_item);
        }

        DestroyObject(item);
    }
    sl_storage_Log(pc, "Restore storage items " + IntToString(storage_size) + ": " + items_log);
}

void sl_storage_SellToStore(object store, object pc, object item)
{
    if (!GetIdentified(item))
    {
        FloatingTextStringOnCreature("You can not store unidentified items.", pc, FALSE);
        return;
    }

    if (!GetDroppableFlag(item) || GetItemCursedFlag(item) || GetPlotFlag(item))
    {
        FloatingTextStringOnCreature("You can not store special items.", pc, FALSE);
        return;
    }

    int item_type = GetBaseItemType(item);
    if (item_type == BASE_ITEM_INVALID || item_type == BASE_ITEM_LARGEBOX)
    {
        return;
    }

    int add_result = sl_storage_AddItem(item, pc);
    if (add_result)
    {
        CopyItem(item, store, TRUE);
        DestroyObject(item);
    }
}

void sl_storage_BuyFromStore(object store, object pc, object item)
{
    int remove_result = sl_storage_RemoveItem(item, pc);
    if (remove_result)
    {
        CopyItem(item, pc, TRUE);
        DestroyObject(item);
    }
}

void sl_storage_SaveStore(object store, object pc)
{
    sl_storage_Clear(pc);
    string items_log;
    object item = GetFirstItemInInventory(store);
    while (GetIsObjectValid(item))
    {
        int add_result = sl_storage_AddItem(item, pc);
        if (!add_result)
        {
            // Error was printed. Ignore.
            continue;
        }

        items_log += " " + GetTag(item);
        DestroyObject(item);
        item = GetNextItemInInventory(store);
    }
    int storage_size = sl_storage_GetSize(pc);
    sl_storage_Log(pc, "Save storage items " + IntToString(storage_size) + ": " + items_log);
}
