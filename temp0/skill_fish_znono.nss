// Let's the PC fish if they have a fishing spear
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC)){
    SetLocalInt(oPC,"fishallow",2);}
}
