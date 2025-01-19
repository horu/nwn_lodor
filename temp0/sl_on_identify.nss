#include "nwnx_events"
#include "nwnx_item"

void main()
{
    object pc = OBJECT_SELF;
    object item = StringToObject(NWNX_Events_GetEventData("ITEM"));

    if (NWNX_Item_GetMinEquipLevel(item) > 40)
    {
        NWNX_Item_SetMinEquipLevelOverride(item, 40);
    }
}
