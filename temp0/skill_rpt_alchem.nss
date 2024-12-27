// This runs a report of the current Alchemy skill for the PC
void main()
{
    object oPC = GetPCSpeaker();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    int nalchemy = GetLocalInt(oBook, "alchemy");
    int oBonus = 20 + nalchemy;

    {
        if (GetHasFeat(FEAT_BREW_POTION, oPC))
        {
            SendMessageToPC(oPC, "Your skill in Alchemy is " + IntToString(oBonus) + ".");
        }

        else
        {
            SendMessageToPC(oPC, "Your skill in Alchemy is " + IntToString(nalchemy) + ".");
        }
    }
}
