//This is for the fishing skill report
void main()
{
object oPC = GetPCSpeaker();
object oBook = GetItemPossessedBy(oPC, "faction_report");
int nFishing = GetLocalInt(oBook, "fishing");
SendMessageToPC(oPC, "Your skill in Fishing is " + IntToString(nFishing) + ".");
}
