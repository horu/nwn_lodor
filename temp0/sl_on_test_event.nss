#include "nwnx_events"
#include "nwnx_item"

void main()
{
    string data = NWNX_Events_GetEventData("ITEM");
    object item = StringToObject(data);

    PrintString(GetName(item) + " " + GetTag(item));
}
