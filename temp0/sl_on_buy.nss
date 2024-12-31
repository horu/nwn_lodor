#include "nwnx_events"
#include "sl_storage_lib"

void main()
{
    object pc = OBJECT_SELF;
    object item = StringToObject(NWNX_Events_GetEventData("ITEM"));
    object store = StringToObject(NWNX_Events_GetEventData("STORE"));
    int result = StringToInt(NWNX_Events_GetEventData("RESULT"));

    if (GetStringLeft(GetTag(store), 10) == "sl_storage")
    {
        if (!result)
        {
            return;
        }

        int remove_result = sl_storage_remove_item(item, pc);
        if (!remove_result)
        {
            CopyItem(item, store, TRUE);
            DestroyObject(item);
            return;
        }
    }
}
