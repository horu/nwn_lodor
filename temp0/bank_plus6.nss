void main()
{
    object oPC = GetPCSpeaker();
    int nBanker = GetLocalInt(oPC, "banker");
    int nAmount = nBanker + 100000;
    if (nAmount > 500000)
    {
        SetLocalInt(oPC, "banker", 500000);
        SendMessageToPC(oPC, "Only 500,000 gold can be stored in the bank.");
    }

    else
    {
        SetLocalInt(oPC, "banker", nAmount);
        SendMessageToPC(oPC, "Current gold amount is set at " + IntToString(nAmount) + ".");
    }
}
