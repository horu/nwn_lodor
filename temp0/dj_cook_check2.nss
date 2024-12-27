//::///////////////////////////////////////////////
//:: FileName dj_cook_check2
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/27/2004 1:44:48 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{
    // Make sure the PC speaker has these items in their inventory
    if (!HasItem(GetPCSpeaker(), "lodoc_fishr"))
        return FALSE;

    return TRUE;
}
