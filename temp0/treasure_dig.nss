//This is for digging up treasure
#include "nw_i0_tool"
void main()
{
object oPC = GetItemActivator();

if (GetTag(GetArea(oPC)) == "TheShadedWood"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 7){
       SetLocalInt(oPC, "treasureup", 7);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "TheUnderwood"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 2){
       SetLocalInt(oPC, "treasureup", 2);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "TheShiftingGrowth"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 5){
       SetLocalInt(oPC, "treasureup", 5);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "SarylSwamp"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 6){
       SetLocalInt(oPC, "treasureup", 6);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "PaelHills"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 4){
       SetLocalInt(oPC, "treasureup", 4);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "TheShiveringWoods"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 3){
       SetLocalInt(oPC, "treasureup", 3);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "NerodHills"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 19){
       SetLocalInt(oPC, "treasureup", 19);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "WhisperingWoods"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 18){
       SetLocalInt(oPC, "treasureup", 18);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "ClarionWoodlands"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 17){
       SetLocalInt(oPC, "treasureup", 17);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "GlowianForest"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 20){
       SetLocalInt(oPC, "treasureup", 20);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "VegnarPlains"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 1){
       SetLocalInt(oPC, "treasureup", 1);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "DelirForest"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 16){
       SetLocalInt(oPC, "treasureup", 16);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "NilasForest"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 10){
       SetLocalInt(oPC, "treasureup", 10);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "CursedGlades"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 9){
       SetLocalInt(oPC, "treasureup", 9);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "MelaganJungle"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 11){
       SetLocalInt(oPC, "treasureup", 11);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "WearyWay"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 8){
       SetLocalInt(oPC, "treasureup", 8);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "GrogorJungle"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 12){
       SetLocalInt(oPC, "treasureup", 12);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "Wastelands"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 14){
       SetLocalInt(oPC, "treasureup", 14);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "AridDunes"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 13){
       SetLocalInt(oPC, "treasureup", 13);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else if (GetTag(GetArea(oPC)) == "DedryWoods"){
object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetLocalInt(oItem, "treasure") == 15){
       SetLocalInt(oPC, "treasureup", 15);
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }
   DelayCommand(2.0, ExecuteScript("treasure_dig2", oPC));}

else {
FloatingTextStringOnCreature("There is nothing to dig here.", oPC, FALSE);}
}
