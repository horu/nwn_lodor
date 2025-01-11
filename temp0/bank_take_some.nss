void main()
{
    object oPC = GetPCSpeaker();
    object oMoney = GetItemPossessedBy(oPC, "faction_report");
    int nBanker = StringToInt(GetLocalString(oPC, "sl_pc_chat_msg"));
    //int nBanker = GetLocalInt(oPC, "banker");
    int nGold = GetLocalInt(oMoney, "sl_money");
    int nChange = nGold - nBanker;
    if (nBanker == 0)
    {
        SendMessageToPC(oPC, "You must decide on an amount to transact. Speek how much.");
    }

    else
    {
        if (nGold == 0)
        {
            SendMessageToPC(oPC, "You have no gold in the bank.");
        }

        else
        {
            if (nBanker <= nGold)
            {
                GiveGoldToCreature(oPC, nBanker);
                SetLocalInt(oMoney, "sl_money", nChange);
            }

            else
            {
                SendMessageToPC(oPC, "You only have " + IntToString(nGold) + " available.");
            }
        }
    }
}
