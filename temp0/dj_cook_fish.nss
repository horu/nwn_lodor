//Let's you cook fish next to the campfire
#include "nw_i0_tool"
void main()
{
object oPC = GetPCSpeaker();
if((!HasItem(oPC, "lodoc_fishr")) == FALSE){
    DestroyObject(GetItemPossessedBy(oPC, "lodoc_fishr"));
    CreateItemOnObject("lodoc_fish", oPC, 1);
    FloatingTextStringOnCreature("You have cooked the fish over the fire.", oPC, FALSE);}
else {
    FloatingTextStringOnCreature("You have no fish to cook.", oPC, FALSE);}
}
