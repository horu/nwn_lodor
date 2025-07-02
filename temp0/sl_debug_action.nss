#include "sl_debug_lib"
#include "sl_storage_lib"

void main()
{
    object oPC = GetPCSpeaker();
    if (!sl_debug_Enabled(oPC))
    {
        return;
    }

    if (GetScriptParam("sl_forge_sAction") == "set_xp")
    {
        string msg = GetLocalString(oPC, "sl_pc_chat_msg");
        int xp = StringToInt(msg);
        SetXP(oPC, xp);
    }
    else if (GetScriptParam("sl_forge_sAction") == "set_gold")
    {
        string msg = GetLocalString(oPC, "sl_pc_chat_msg");
        int gold = StringToInt(msg);
        GiveGoldToCreature(oPC, gold);
    }
    else if (GetScriptParam("sl_forge_sAction") == "reset_inv")
    {
        object oItem = GetFirstItemInInventory(oPC);
        while (GetIsObjectValid(oItem))
        {
            if (!GetItemCursedFlag(oItem) && !GetPlotFlag(oItem))
            {
                DestroyObject(oItem);
            }
            oItem = GetNextItemInInventory(oPC);
        }
        sl_storage_Clear(oPC);
    }
}
