void main()
{
    string msg = GetPCChatMessage();
    SetLocalString(GetModule(), "sl_pc_chat_msg", msg);
}
