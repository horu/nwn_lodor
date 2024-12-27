// This tells the PC how their deity feels about them.
void main()
{
    object oPC = GetPCSpeaker();
    object oInfo = GetItemPossessedBy(oPC, "faction_report");

    int nLove = GetLocalInt(oInfo, "godlove");
    int nPreserve = GetLocalInt(oInfo, "preserve");

    if ((nLove > 0) && (nLove < 10))
    {
        SendMessageToPC(oPC, "Your deity tolerates you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 10) && (nLove < 20))
    {
        SendMessageToPC(oPC, "Your deity accepts you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 20) && (nLove < 30))
    {
        SendMessageToPC(oPC, "You are notable to your deity (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 30) && (nLove < 40))
    {
        SendMessageToPC(oPC, "You are prominent to your deity (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 40) && (nLove < 50))
    {
        SendMessageToPC(oPC, "Your deity is pleased with you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 50) && (nLove < 60))
    {
        SendMessageToPC(oPC, "Your deity honors you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 60) && (nLove < 70))
    {
        SendMessageToPC(oPC, "Your deity is very pleased with you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 70) && (nLove < 80))
    {
        SendMessageToPC(oPC, "Your deity watches over you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 80) && (nLove < 90))
    {
        SendMessageToPC(oPC, "Your deity admires you (Rank of " + IntToString(nLove) + ").");
    }
    else if ((nLove >= 90) && (nLove < 100))
    {
        SendMessageToPC(oPC, "Your deity thinks greatly of you (Rank of " + IntToString(nLove) + ").");
    }
    else if (nLove == 100)
    {
        SendMessageToPC(oPC, "Your deity protects you (Rank of " + IntToString(nLove) + ").");
    }


    if (nPreserve == 1)
    {
        SendMessageToPC(oPC, "You are currently blessed with Preservation.");
    }
}
