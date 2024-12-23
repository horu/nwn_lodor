//This is drop food and water so the PC can share with others.
void main()
{
object oPC = GetPCSpeaker();
object oPouch = GetItemPossessedBy(oPC, "food_pouch");
object oFlask = GetItemPossessedBy(oPC, "lodoc_waterem");
int nFood = GetLocalInt(oPouch, "food");
int nWater = GetLocalInt(oFlask, "water");
int nFoodN = nFood - 1;
int nWaterN = nWater - 1;

{
if (nFood > 0){
   SetLocalInt(oPouch, "food", nFoodN);
   CreateItemOnObject("lodoc_meat2", oPC, 1);
   FloatingTextStringOnCreature("You take some food from your pouch.", oPC, FALSE);}
else {
   FloatingTextStringOnCreature("There is no food in your pouch.", oPC, FALSE);}}

{
if (nWater > 0){
   SetLocalInt(oFlask, "water", nWaterN);
   CreateItemOnObject("lodoc_waterr", oPC, 1);
   FloatingTextStringOnCreature("You take some water from your flask.", oPC, FALSE);}
else {
   FloatingTextStringOnCreature("There is no water in your flask.", oPC, FALSE);}}
}
