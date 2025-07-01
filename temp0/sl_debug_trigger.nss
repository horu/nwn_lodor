#include "sl_debug_lib"

void main()
{
    object pc = GetEnteringObject();

    if (!sl_debug_Enabled(pc))
    {
        return;
    }

    object oArea = GetArea(OBJECT_SELF);
    object obj = GetFirstObjectInArea(oArea);
    while (GetIsObjectValid(obj))
    {
        if (GetTag(obj) == "sl_debug_chest_1")
        {
            return;
        }
        obj = GetNextObjectInArea(oArea);
    }

    location lPlace = GetLocation(OBJECT_SELF);
    object chest = CreateObject(OBJECT_TYPE_PLACEABLE, "sl_debug_chest", lPlace, FALSE, "sl_debug_chest_1");
    PrintString("[sl_debug] Create chest " + IntToString(GetIsObjectValid(chest)));
}