#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    DestroyObject(GetItemPossessedBy(oPC, "dragon_whistle"));
}
