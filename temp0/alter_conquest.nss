// Check for the Stone of Conquest on the PC
#include "nw_i0_tool"
int StartingConditional()
{
    if(!HasItem(GetPCSpeaker(), "REL_Stone_Conquest"))
        return FALSE;

    return TRUE;
}
