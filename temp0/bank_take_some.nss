void main()
{
object oPC = GetPCSpeaker();
object oMoney = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
int nBanker = GetLocalInt(oPC, "banker");
int nGold = GetLocalInt(oMoney, "money");
int nChange = nGold - nBanker;
if (nBanker == 0){
SendMessageToPC(oPC, "You must decide on an amount to transact.");}

else {
if (nGold == 0){
SendMessageToPC(oPC, "You have no gold in the bank.");}

else {
if (nBanker <= nGold){
GiveGoldToCreature(oPC, nBanker);
SetLocalInt(oMoney, "money", nChange);}

else {
SendMessageToPC(oPC, "You only have " + IntToString(nGold) + " available.");}}}
}
