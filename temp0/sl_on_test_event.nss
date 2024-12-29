#include "nwnx_events"
#include "nwnx_item"

void main()
{
    string data = NWNX_Events_GetEventData("ITEM");
    object item = StringToObject(data);

    PrintString(GetName(item) + " " + GetTag(item));

    // if (GetTag(item) == "ench_robe2")
    // {
    //     NWNX_Item_SetMinEquipLevelOverride(item, 13);
    // }
    // if (GetTag(item) == "ench_gaxe")
    // {
    //     NWNX_Item_SetMinEquipLevelOverride(item, 14);
    // }
    // if (GetTag(item) == "ench_tunic")
    // {
    //     NWNX_Item_SetMinEquipLevelOverride(item, 14);
    // }
}
