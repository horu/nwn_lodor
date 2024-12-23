// Removes any god granted powers if the PC is not worthy.
#include "nw_i0_plot"
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");

SetDeity(oPC, "");
SetLocalInt(oInfo, "godlove", 0);
SetLocalInt(oInfo, "preserve", 0);
DeleteLocalLocation(oInfo, "godmark");

object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetStringLeft(GetTag(oItem),3)=="REL"){
       DestroyObject(oItem,0.01);}
    oItem=GetNextItemInInventory(oPC);}

object oItem2 = GetFirstItemInInventory(oPC);
object oRingL = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
object oRingR = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);

  while(GetIsObjectValid(oItem2)) {
    if(GetStringLeft(GetTag(oItem2),8)=="POW_ring"){
       DestroyObject(oItem2,0.05);}
    oItem2=GetNextItemInInventory(oPC);
  }

if(GetStringLeft(GetTag(oRingL),8)=="POW_ring"){
DestroyObject(oRingL);
}
if(GetStringLeft(GetTag(oRingR),8)=="POW_ring"){
DestroyObject(oRingR);
}
}
