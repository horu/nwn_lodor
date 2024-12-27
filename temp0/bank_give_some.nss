void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    int nHave = GetLocalInt(oPC, "banker");
    int nGold = GetLocalInt(oMoney, "money");
    int nAdjust = nHave + nGold;
    int nReal = GetGold(oPC);

    if (nHave == 0)
    {
        SendMessageToPC(oPC, "You must decide on an amount to transact.");
    }

    else
    {
        if (nReal >= nHave)
        {
            if (nAdjust > 500000)
            {
                SendMessageToPC(oPC, "The bank can only hold a total of 50,000 gold for you.");
            }
            else
            {
                TakeGoldFromCreature(nHave, oPC, TRUE);
                SetLocalInt(oMoney, "money", nAdjust);
            }
        }

        else
        {
            SendMessageToPC(oPC, "You don't have that much gold.");
        }
    }
}
