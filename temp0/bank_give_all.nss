void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemPossessedBy(oPC, "faction_report");

    int nHave = GetGold(oPC);
    int nGold = GetLocalInt(oMoney, "sl_money");
    int nAdjust = nHave + nGold;

    if (nAdjust > 500000)
    {
        SendMessageToPC(oPC, "The bank can only hold a total of 500,000 gold for you.");
    }
    else
    {
        TakeGoldFromCreature(nHave, oPC, TRUE);
        SetLocalInt(oMoney, "sl_money", nAdjust);
    }
}
