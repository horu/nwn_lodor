void main()
{
object oPC = GetPCSpeaker();
int nBanker = GetLocalInt(oPC, "banker");
int nAmount = nBanker - 100;
if (nAmount < 0){
SetLocalInt(oPC, "banker", 0);
SendMessageToPC(oPC, "Current gold amount is set at 0.");}

else {
SetLocalInt(oPC, "banker", nAmount);
SendMessageToPC(oPC, "Current gold amount is set at " + IntToString(nAmount) + ".");}
}
