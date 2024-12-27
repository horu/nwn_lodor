// Removes the PC from a good mapping position
#include "nw_i0_tool"

void main()
{
    object oPC = GetExitingObject();

    if (GetIsPC(oPC))
    {
        if ((!HasItem(oPC, "map_paper")) == FALSE)
        {
            SendMessageToPC(oPC, "You have left a good mapping position.");
            SetLocalInt(oPC, "mapallow", 0);
        }
        else
        {
            SetLocalInt(oPC, "mapallow", 0);
        }
    }
}
