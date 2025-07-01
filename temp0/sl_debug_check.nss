#include "sl_debug_lib"

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    return sl_debug_Enabled(oPC);
}