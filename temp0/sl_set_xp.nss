void main()
{
    object oPC = GetPCSpeaker();
    string msg = GetLocalString(oPC, "sl_pc_chat_msg");
    int xp = StringToInt(msg);
    SetXP(oPC, xp);
}
