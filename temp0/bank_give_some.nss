void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemPossessedBy(oPC, "faction_report");

    int nHave = StringToInt(GetLocalString(oPC, "sl_pc_chat_msg"));
    //int nHave = GetLocalInt(oPC, "banker");
    int nGold = GetLocalInt(oMoney, "sl_money");
    int nAdjust = nHave + nGold;
    int nReal = GetGold(oPC);

    if (nHave == 0)
    {
        SendMessageToPC(oPC, "You must decide on an amount to transact. Speek how much.");
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
                SetLocalInt(oMoney, "sl_money", nAdjust);
            }
        }

        else
        {
            SendMessageToPC(oPC, "You don't have that much gold.");
        }
    }
}
