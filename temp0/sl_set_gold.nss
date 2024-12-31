void main()
{
    object oPC = GetPCSpeaker();
    string msg = GetLocalString(oPC, "sl_pc_chat_msg");
    int gold = StringToInt(msg);
    GiveGoldToCreature(oPC, gold);
}
