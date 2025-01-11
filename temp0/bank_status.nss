void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemPossessedBy(oPC, "faction_report");

    int nGold = GetLocalInt(oMoney, "sl_money");
    SendMessageToPC(oPC, "You currently have " + IntToString(nGold) + " gold in your account.");
}
