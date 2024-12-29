void main()
{
    string msg = GetPCChatMessage();
    object pc = GetPCChatSpeaker();
    SetLocalString(pc, "sl_pc_chat_msg", msg);
}
