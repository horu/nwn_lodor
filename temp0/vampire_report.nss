//This does a vampire blood report
void main()
{
object oPC = GetPCSpeaker();
object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
int nBlood = GetLocalInt(oBottle, "blood");
SendMessageToPC(oPC, "You currently have " + IntToString(nBlood) + " units of blood.");
}
