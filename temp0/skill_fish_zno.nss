// Removes the ability to fish from the PC
#include "nw_i0_tool"
void main()
{
object oPC = GetExitingObject();

if (GetIsPC(oPC)){
    SetLocalInt(oPC,"fishallow",0);}
}
