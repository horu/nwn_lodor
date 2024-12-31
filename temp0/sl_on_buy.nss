#include "nwnx_events"
#include "sl_storage_lib"

void main()
{
    object pc = OBJECT_SELF;
    object item = StringToObject(NWNX_Events_GetEventData("ITEM"));
    object store = StringToObject(NWNX_Events_GetEventData("STORE"));

    if (GetStringLeft(GetTag(store), 10) == "sl_storage")
    {
        sl_storage_buy_from_store(store, pc, item);
        NWNX_Events_SkipEvent();
        return;
    }
}
