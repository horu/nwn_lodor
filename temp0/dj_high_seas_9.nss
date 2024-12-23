// This is for High Seas Travel
void main()
{
object oPC = GetPCSpeaker();
int nGold = GetGold(oPC);
int nLevel = GetHitDice(oPC);
int nCost = nLevel * 50;

if ((GetIsPC(oPC) == TRUE) && (nGold >= nCost)){
  AssignCommand(oPC, TakeGoldFromCreature(nCost, oPC, TRUE));
  AssignCommand(oPC, JumpToObject(GetWaypointByTag("docks_brush")));}

else {
  string sSayThis = "You do not possess enough gold.";
  SpeakString(sSayThis);}
}
