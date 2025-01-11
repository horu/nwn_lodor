void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemPossessedBy(oPC, "faction_report");

    int nGold = GetLocalInt(oMoney, "sl_money");

    if (nGold == 0)
    {
        SendMessageToPC(oPC, "I have no gold in the bank.");
    }

    else
    {
        GiveGoldToCreature(oPC, nGold);
        SetLocalInt(oMoney, "sl_money", 0);
    }
}
