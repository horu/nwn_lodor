#include "nw_i0_tool"
int StartingConditional()
{
object oPC = GetPCSpeaker();

    object oItem = GetItemInSlot(INVENTORY_SLOT_CLOAK, oPC);
    if(oItem == OBJECT_INVALID)
        return FALSE;

    return TRUE;
}
