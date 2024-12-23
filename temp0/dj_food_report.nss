//This is for the food report
void main()
{
object oPC = GetPCSpeaker();
object oPouch = GetItemPossessedBy(oPC, "food_pouch");
object oFlask = GetItemPossessedBy(oPC, "lodoc_waterem");
int nFood = GetLocalInt(oPouch, "food");
int nWater = GetLocalInt(oFlask, "water");
SendMessageToPC(oPC, "You have " + IntToString(nFood) + " food in your pouch.");
SendMessageToPC(oPC, "You have " + IntToString(nWater) + " water in your flask.");
}
