// Gives a new ring to the PC if they have the
// Stone of Conquest
#include "nw_i0_tool"
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
string sGod = GetDeity(oPC);
int nLevel = GetHitDice(oPC);
string sAltar = GetTag(OBJECT_SELF);

// Set the PC INT for the level they are at
if ((nLevel >= 5) && (nLevel <= 9)){
   SetLocalInt(oPC, "god_level", 1);}
else if ((nLevel >= 10) && (nLevel <= 14)){
   SetLocalInt(oPC, "god_level", 2);}
else if ((nLevel >= 15) && (nLevel <= 19)){
   SetLocalInt(oPC, "god_level", 3);}
else if ((nLevel >= 20) && (nLevel <= 40)){
   SetLocalInt(oPC, "god_level", 4);}

// Set the altar
SetLocalString(oPC, "god_who", sAltar);

// Set the ring they will get
if ((sGod == "Calyril") && (sAltar == "altar_calyril") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_calyril1");}
else if ((sGod == "Calyril") && (sAltar == "altar_calyril") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_calyril2");}
else if ((sGod == "Calyril") && (sAltar == "altar_calyril") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_calyril3");}
else if ((sGod == "Calyril") && (sAltar == "altar_calyril") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_calyril4");}
else if ((sGod == "Fradoc") && (sAltar == "altar_fradoc") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_fradoc1");}
else if ((sGod == "Fradoc") && (sAltar == "altar_fradoc") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_fradoc2");}
else if ((sGod == "Fradoc") && (sAltar == "altar_fradoc") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_fradoc3");}
else if ((sGod == "Fradoc") && (sAltar == "altar_fradoc") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_fradoc4");}
else if ((sGod == "Shyvaa") && (sAltar == "altar_shyvaa") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_shyvaa1");}
else if ((sGod == "Shyvaa") && (sAltar == "altar_shyvaa") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_shyvaa2");}
else if ((sGod == "Shyvaa") && (sAltar == "altar_shyvaa") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_shyvaa3");}
else if ((sGod == "Shyvaa") && (sAltar == "altar_shyvaa") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_shyvaa4");}
else if ((sGod == "Somry") && (sAltar == "altar_somry") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_somry1");}
else if ((sGod == "Somry") && (sAltar == "altar_somry") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_somry2");}
else if ((sGod == "Somry") && (sAltar == "altar_somry") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_somry3");}
else if ((sGod == "Somry") && (sAltar == "altar_somry") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_somry4");}
else if ((sGod == "Oweodd") && (sAltar == "altar_oweodd") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_oweodd1");}
else if ((sGod == "Oweodd") && (sAltar == "altar_oweodd") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_oweodd2");}
else if ((sGod == "Oweodd") && (sAltar == "altar_oweodd") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_oweodd3");}
else if ((sGod == "Oweodd") && (sAltar == "altar_oweodd") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_oweodd4");}
else if ((sGod == "Unur") && (sAltar == "altar_unur") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_unur1");}
else if ((sGod == "Unur") && (sAltar == "altar_unur") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_unur2");}
else if ((sGod == "Unur") && (sAltar == "altar_unur") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_unur3");}
else if ((sGod == "Unur") && (sAltar == "altar_unur") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_unur4");}
else if ((sGod == "Torm") && (sAltar == "altar_torm") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_torm1");}
else if ((sGod == "Torm") && (sAltar == "altar_torm") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_torm2");}
else if ((sGod == "Torm") && (sAltar == "altar_torm") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_torm3");}
else if ((sGod == "Torm") && (sAltar == "altar_torm") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_torm4");}
else if ((sGod == "Malad") && (sAltar == "altar_malad") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_malad1");}
else if ((sGod == "Malad") && (sAltar == "altar_malad") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_malad2");}
else if ((sGod == "Malad") && (sAltar == "altar_malad") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_malad3");}
else if ((sGod == "Malad") && (sAltar == "altar_malad") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_malad4");}
else if ((sGod == "Belulas") && (sAltar == "altar_belulas") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_belulas1");}
else if ((sGod == "Belulas") && (sAltar == "altar_belulas") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_belulas2");}
else if ((sGod == "Belulas") && (sAltar == "altar_belulas") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_belulas3");}
else if ((sGod == "Belulas") && (sAltar == "altar_belulas") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_belulas4");}
else if ((sGod == "Puril") && (sAltar == "altar_puril") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_puril1");}
else if ((sGod == "Puril") && (sAltar == "altar_puril") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_puril2");}
else if ((sGod == "Puril") && (sAltar == "altar_puril") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_puril3");}
else if ((sGod == "Puril") && (sAltar == "altar_puril") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_puril4");}
else if ((sGod == "Rimyr") && (sAltar == "altar_rimyr") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_rimyr1");}
else if ((sGod == "Rimyr") && (sAltar == "altar_rimyr") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_rimyr2");}
else if ((sGod == "Rimyr") && (sAltar == "altar_rimyr") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_rimyr3");}
else if ((sGod == "Rimyr") && (sAltar == "altar_rimyr") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_rimyr4");}
else if ((sGod == "Uronia") && (sAltar == "altar_uronia") && (GetLocalInt(oPC, "god_level") == 1)){
   SetLocalString(oPC, "god_ring", "ring_uronia1");}
else if ((sGod == "Uronia") && (sAltar == "altar_uronia") && (GetLocalInt(oPC, "god_level") == 2)){
   SetLocalString(oPC, "god_ring", "ring_uronia2");}
else if ((sGod == "Uronia") && (sAltar == "altar_uronia") && (GetLocalInt(oPC, "god_level") == 3)){
   SetLocalString(oPC, "god_ring", "ring_uronia3");}
else if ((sGod == "Uronia") && (sAltar == "altar_uronia") && (GetLocalInt(oPC, "god_level") == 4)){
   SetLocalString(oPC, "god_ring", "ring_uronia4");}

if((!HasItem(oPC, "REL_Stone_Conquest")) == FALSE){

object oRingL = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
object oRingR = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);
object oItem2 = GetFirstItemInInventory(oPC);
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


object oItem3 = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem3)) {
    if(GetTag(oItem3)=="REL_Stone_Conquest"){
       DestroyObject(oItem3,0.05);}
    oItem3=GetNextItemInInventory(oPC);}

CreateItemOnObject(GetLocalString(oPC, "god_ring"), oPC, 1);
int nGod = GetLocalInt(oInfo, "godlove");
int nLove = nGod + 4;
SetLocalInt(oInfo, "godlove", nLove);
AssignCommand (oPC, ActionPlayAnimation (ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
string sSayThis = "You have been blessed. Take this ring and wear it. Never remove it from your hand.  Now go.";
SpeakString(sSayThis);
}

else {
    string sSayThis = "You do not possess the Stone of Conquest.";
    SpeakString(sSayThis);}
}
