#include "nwnx_events"

void main()
{
    object pc = OBJECT_SELF;
    object item = StringToObject(NWNX_Events_GetEventData("ITEM"));
    object store = StringToObject(NWNX_Events_GetEventData("STORE"));

    if (GetStringLeft(GetTag(store), 10) != "sl_storage")
    {
        return;
    }

    if (GetIdentified(item))
    {
        return;
    }

    FloatingTextStringOnCreature("You can not store unidentified items.", pc, TRUE);
    object copy_item = CopyItem(item, pc, TRUE);
    SetIdentified(copy_item, FALSE);
    DestroyObject(item);
}
