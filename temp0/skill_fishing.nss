//This is for the fishing skill
#include "nw_i0_tool"
void main()
{
object oPC = GetItemActivator();
object oBook = GetItemPossessedBy(oPC, "faction_report");
object oArea = GetNearestObjectByTag("trg_fishing", oPC);
int nFishing = GetLocalInt(oBook, "fishing");
int nRoll = d100(1);
int nFishable = GetLocalInt(oArea, "fishable");
int nFishmod = nFishable + 1;

AssignCommand(oPC, PlaySound("as_cv_gutterspl1"));

if (nFishable < 10){

if ((nFishing >=0) && (nFishing <= 9)){
    SetLocalInt(oArea, "fishable", nFishmod);
    {int nRandom = d12(1);
        if (nRandom == 1){
            CreateItemOnObject("lodoc_fishr", oPC, 1);
            DelayCommand(2.0, FloatingTextStringOnCreature("You caught a fish and put it in your pack.", oPC, FALSE));
            int nCurrent = GetLocalInt(oBook, "fish_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "fish_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nFishing + 1;
                    SetLocalInt(oBook, "fish_raise", 1);
                    SendMessageToPC(oPC, "Your Fishing skill has improved.");
                    SetLocalInt(oBook, "fishing", nSkill);}
                else {}}
        else {
            DelayCommand(2.0, FloatingTextStringOnCreature("You failed to catch a fish.", oPC, FALSE));}}}

else if ((nFishing >=10) && (nFishing <= 99)){
    SetLocalInt(oArea, "fishable", nFishmod);
    if (nFishing > nRoll){
            CreateItemOnObject("lodoc_fishr", oPC, 1);
            DelayCommand(2.0, FloatingTextStringOnCreature("You caught a fish and put it in your pack.", oPC, FALSE));
            int nCurrent = GetLocalInt(oBook, "fish_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "fish_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nFishing + 1;
                    SetLocalInt(oBook, "fish_raise", 1);
                    SendMessageToPC(oPC, "Your Fishing skill has improved.");
                    SetLocalInt(oBook, "fishing", nSkill);}
                else {}}
    else {
        DelayCommand(2.0, FloatingTextStringOnCreature("You failed to catch a fish.", oPC, FALSE));}}

else if (nFishing >=100){
    SetLocalInt(oArea, "fishable", nFishmod);
    if (nFishing > nRoll){
        CreateItemOnObject("lodoc_fishr", oPC, 1);
        DelayCommand(2.0, FloatingTextStringOnCreature("You caught a fish and put it in your pack.", oPC, FALSE));}
    else {
        DelayCommand(2.0, FloatingTextStringOnCreature("You failed to catch a fish.", oPC, FALSE));}}
else {}}

else {
    SetLocalInt(oArea, "fishset", 1);
    DelayCommand(2.0, FloatingTextStringOnCreature("You have scared all the fish away.", oPC, FALSE));}
}
