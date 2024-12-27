//This is for the mining skill report
void main()
{
    object oPC = GetPCSpeaker();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    int nFishing = GetLocalInt(oBook, "mining");
    SendMessageToPC(oPC, "Your skill in Mining is " + IntToString(nFishing) + ".");
}
