// Makes it able to cook next to a fire.
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC)){
    if((!HasItem(oPC, "lodoc_meat")) == FALSE){
        SendMessageToPC(oPC,"You could probably cook some food by this warm fire.");
        SetLocalInt(oPC,"cookallow",1);}
    else if((!HasItem(oPC, "lodoc_fishr")) == FALSE){
        SendMessageToPC(oPC,"You could probably cook some food by this warm fire.");
        SetLocalInt(oPC,"cookallow",1);}
    else {
        SetLocalInt(oPC,"cookallow",1);}}
}
