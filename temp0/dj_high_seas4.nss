//Set the price for a boat ride
void main()
{
object oPC = GetPCSpeaker();
int nLevel = GetHitDice(oPC);
int nCost = nLevel * 50;

SetCustomToken(141,IntToString(nCost));

}
