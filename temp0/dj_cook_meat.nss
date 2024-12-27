//Let's you cook meat next to the campfire
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    if ((!HasItem(oPC, "lodoc_meat")) == FALSE)
    {
        DestroyObject(GetItemPossessedBy(oPC, "lodoc_meat"));
        CreateItemOnObject("lodoc_meat2", oPC, 1);
        FloatingTextStringOnCreature("You have cooked the meat over the fire.", oPC, FALSE);
    }
    else
    {
        FloatingTextStringOnCreature("You have no meat to cook.", oPC, FALSE);
    }
}
