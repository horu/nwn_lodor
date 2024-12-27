void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    int nGold = GetLocalInt(oMoney, "money");

    if (nGold == 0)
    {
        SendMessageToPC(oPC, "I have no gold in the bank.");
    }

    else
    {
        GiveGoldToCreature(oPC, nGold);
        SetLocalInt(oMoney, "money", 0);
    }
}
