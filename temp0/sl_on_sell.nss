#include "nwnx_events"
#include "sl_storage_lib"

void main()
{
    object pc = OBJECT_SELF;
    object item = StringToObject(NWNX_Events_GetEventData("ITEM"));
    object store = StringToObject(NWNX_Events_GetEventData("STORE"));

    if (GetStringLeft(GetTag(store), 10) == "sl_storage")
    {
        int result = sl_storage_add(item, pc);
        if (!result)
        {
            CopyItem(item, pc, TRUE);
            DestroyObject(item);
            NWNX_Events_SetEventResult("0");
            return;
        }
    }
}
