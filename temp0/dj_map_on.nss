// Removes the PC from a good mapping position
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC)){
    if((!HasItem(oPC, "map_paper")) == FALSE){
        SendMessageToPC(oPC,"You are in a good position to map this region.");
        SetLocalInt(oPC,"mapallow",1);}
    else {
        SetLocalInt(oPC,"mapallow",1);}}
}
