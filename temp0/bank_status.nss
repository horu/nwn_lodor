void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    int nGold = GetLocalInt(oMoney, "money");
    SendMessageToPC(oPC, "You currently have " + IntToString(nGold) + " gold in your account.");
}
