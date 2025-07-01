#include "sl_debug_lib"

void main()
{
    string msg = GetPCChatMessage();
    object pc = GetPCChatSpeaker();
    SetLocalString(pc, "sl_pc_chat_msg", msg);

    sl_debug_Command(pc, msg);
}
