// Makes it able to fill flasks next to rivers and wells.
#include "nw_i0_tool"

void main()
{
    object oPC = GetEnteringObject();

    if (GetIsPC(oPC))
    {
        if ((!HasItem(oPC, "lodoc_waterem")) == FALSE)
        {
            SendMessageToPC(oPC, "You could fill your water flask here if you wanted to.");
            SetLocalInt(oPC, "wetallow", 1);
        }
        else
        {
            SetLocalInt(oPC, "wetallow", 1);
        }
    }
}
