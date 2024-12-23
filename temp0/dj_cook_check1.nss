//::///////////////////////////////////////////////
//:: FileName dj_cook_check1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/27/2004 1:44:27 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!HasItem(GetPCSpeaker(), "lodoc_meat"))
		return FALSE;

	return TRUE;
}
