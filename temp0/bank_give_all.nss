void main()
{
object oPC = GetPCSpeaker();
object oMoney = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

int nHave = GetGold(oPC);
int nGold = GetLocalInt(oMoney, "money");
int nAdjust = nHave + nGold;

if (nAdjust > 500000){
SendMessageToPC(oPC, "The bank can only hold a total of 500,000 gold for you.");}
else {
TakeGoldFromCreature(nHave, oPC, TRUE);
SetLocalInt(oMoney, "money", nAdjust);}
}
