// This OnRest script checks to see if you have any food
// before it will let you rest.
// It will also check to see if you hate sunlight.
void main()
{
object oResting = GetLastPCRested();
object oPouch = GetItemPossessedBy(oResting, "food_pouch");
object oFlask = GetItemPossessedBy(oResting, "lodoc_waterem");
int nFood = GetLocalInt(oPouch, "food");
int nNew = nFood - 1;
int nWater = GetLocalInt(oFlask, "water");
int nNewW = nWater - 1;

object oArea = GetArea(oResting);
int iAllow = GetLocalInt(oResting,"restallow");

object oPC = GetLastPCRested(), oItem1, oItem2, oItem3, oItem4, oItem5, oItem6;
if (!(GetIsPC(oPC))) return;
int iRestType = GetLastRestEventType();
if (iRestType != REST_EVENTTYPE_REST_STARTED)return;

SendMessageToPC(oResting, "You have " + IntToString(nFood) + " food in your pouch.");
SendMessageToPC(oResting, "You have " + IntToString(nWater) + " water in your flask.");

string sItem1, sItem2, sItem3, sItem4, sItem5, sItem6;
sItem1 = "lodoc_fish";
oItem1 = GetItemPossessedBy(oPC, sItem1);
sItem2 = "lodoc_meat2";
oItem2 = GetItemPossessedBy(oPC, sItem2);

if (GetSubRace(oResting) != "Vampire"){

if ((!(GetIsObjectValid(oItem1))) && (!(GetIsObjectValid(oItem2))) && (nFood < 1)){
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("You have no food to rest!", oPC, FALSE);
        return;}
else {
sItem3 = "lodoc_waterr";
oItem3 = GetItemPossessedBy(oPC, sItem3);
sItem4 = "NW_IT_MPOTION021";
oItem4 = GetItemPossessedBy(oPC, sItem4);
sItem5 = "NW_IT_MPOTION022";
oItem5 = GetItemPossessedBy(oPC, sItem5);
sItem6 = "NW_IT_MPOTION023";
oItem6 = GetItemPossessedBy(oPC, sItem6);

if (((GetIsAreaAboveGround(oArea) == AREA_ABOVEGROUND) && (GetIsDay() == TRUE)) && ((GetSubRace(oResting) == "Duergar") || (GetSubRace(oResting) == "Drow"))){
   AssignCommand(oResting, ClearAllActions());
   FloatingTextStringOnCreature("The daylight makes it too uncomfortable to rest outdoors.", oResting, FALSE);
   return;}

else if ((!(GetIsObjectValid(oItem3))) && (!(GetIsObjectValid(oItem4))) && (!(GetIsObjectValid(oItem5))) && (!(GetIsObjectValid(oItem6))) && (nWater < 1)){
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("You have no drink to rest!", oPC, FALSE);
        return;}
else
if (GetIsObjectValid(oItem1)){DestroyObject(oItem1);}
else if (GetIsObjectValid(oItem2)){DestroyObject(oItem2);}
else {SetLocalInt(oPouch, "food", nNew);}
if (GetIsObjectValid(oItem3)){
        DestroyObject(oItem3);
        DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
        ActionRest();
        return;}
else if (GetIsObjectValid(oItem4)){
        int nCount = GetItemStackSize(oItem4);
        int nNewR = nCount - 1;
        if (nCount > 1){
            SetItemStackSize(oItem4, nNewR);}
        else {
            DestroyObject(oItem4);}
        DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
        ActionRest();
        return;}
else if (GetIsObjectValid(oItem5)){
        int nCount = GetItemStackSize(oItem5);
        int nNewR = nCount - 1;
        if (nCount > 1){
            SetItemStackSize(oItem5, nNewR);}
        else {
            DestroyObject(oItem5);}
        DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
        ActionRest();
        return;}
else if (GetIsObjectValid(oItem6)){
        int nCount = GetItemStackSize(oItem6);
        int nNewR = nCount - 1;
        if (nCount > 1){
            SetItemStackSize(oItem6, nNewR);}
        else {
            DestroyObject(oItem6);}
        DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
        ActionRest();
        return;}
else{
        SetLocalInt(oFlask, "water", nNewW);
        DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
        ActionRest();
        return;}}}

// THIS IS RESTING FOR VAMPIRES //
else {

// FOR VAMPIRE RESTING - THEY NEED BLOOD TO REST, NOT FOOD
object oBottle = GetItemPossessedBy(oResting, "vampire_bottle");
int nBlood = GetLocalInt(oBottle, "blood");
int nNewB = nBlood - 3;

if (nBlood < 3){
        FloatingTextStringOnCreature("You do not have enough blood to rest!", oPC, FALSE);
        return;}
else {

if (((GetIsAreaAboveGround(oArea) == AREA_ABOVEGROUND) && (GetIsDay() == TRUE)) && ((GetSubRace(oResting) == "Vampire"))){
   AssignCommand(oResting, ClearAllActions());
   FloatingTextStringOnCreature("The daylight makes it too uncomfortable to rest outdoors.", oResting, FALSE);
   return;}

else {
   FloatingTextStringOnCreature("Ahhhh...the blood of my victims is so sweet.", oPC, FALSE);
   SetLocalInt(oBottle, "blood", nNewB);
   DelayCommand(2.0, ExecuteScript("dj_bad_rest", OBJECT_SELF));
   ActionRest();
   return;}}}
}
