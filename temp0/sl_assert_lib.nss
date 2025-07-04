#include "sl_debug_lib"

void sl_debug_Assert(int bCondition, string sMessage)
{
    if (bCondition || !sl_debug_bAvailable)
    {
        return;
    }

    string sAssert = "[sl_debug] ASSERT: " + sMessage;
    SendMessageToAllDMs(sAssert);
    object oPC = GetFirstPC();
    while (GetIsObjectValid(oPC))
    {
        SendMessageToPC(oPC, sAssert);
        oPC = GetNextPC();
    }
    PrintString(sAssert);
}
