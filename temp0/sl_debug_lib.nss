#include "sl_json_lib"
#include "sl_storage_lib"

const int sl_debug_bAvailable = TRUE; // Globaly turn on/off debug abilities.

int sl_debug_Enabled(object oPC)
{
    if (!GetIsPC(oPC) || !sl_debug_bAvailable)
    {
        return FALSE;
    }

    object oFaction = GetItemPossessedBy(oPC, "faction_report");
    return GetLocalInt(oFaction, "sl_debug_bEnabled");
}

struct sl_json_Array sl_debug_ParseCommand(string sMsg)
{
    struct sl_json_Array aCommand = sl_json_CreateArray();

    int i;
    int begin = 0;
    sMsg += " "; // Add end of command
    for(i = 1; i < GetStringLength(sMsg); i++)
    {
        if (!begin)
        {
            begin = i;
        }
        if (GetSubString(sMsg, i, 1) != " ")
        {
            continue;
        }

        int nLen = i - begin;
        if (!nLen)
        {
            begin = 0;
            continue;
        }

        string sValue = GetSubString(sMsg, begin, i - begin);
        sl_json_PushbackStr(aCommand, sValue);
        begin = 0;
    }

    return aCommand;
}

string sl_debug_GetArgStr(struct sl_json_Array aCommand, int nIndex)
{
    return sl_json_AtStr(aCommand, nIndex);
}

int sl_debug_GetArgInt(struct sl_json_Array aCommand, int nIndex)
{
    return StringToInt(sl_debug_GetArgStr(aCommand, nIndex));
}

string sl_debug_GetCommandName(struct sl_json_Array aCommand)
{
    return sl_debug_GetArgStr(aCommand, 0);
}

void sl_debug_Command(object oPC, string sMsg)
{
    if (GetSubString(sMsg, 0, 1) != "/")
    {
        return;
    }
    if (!sl_debug_bAvailable)
    {
        return;
    }

    struct sl_json_Array aCommand = sl_debug_ParseCommand(sMsg);
    if (!sl_json_Size(aCommand))
    {
        return;
    }

    string sCommandName = sl_debug_GetCommandName(aCommand);
    if (sCommandName == "test")
    {
        int i;
        for (i = 1; i < sl_json_Size(aCommand); i++)
        {
            SendMessageToPC(oPC, sl_debug_GetArgStr(aCommand, i));
        }
    }
    else if (sCommandName == "debug")
    {
        object oFaction = GetItemPossessedBy(oPC, "faction_report");
        string sLogMsg = "[sl_debug] " + GetName(oPC);
        if (sl_debug_GetArgInt(aCommand, 1))
        {
            SetLocalInt(oFaction, "sl_debug_bEnabled", TRUE);
            sLogMsg += " -> ON";
        }
        else
        {
            SetLocalInt(oFaction, "sl_debug_bEnabled", FALSE);
            sLogMsg += " -> OFF";
        }
        PrintString(sLogMsg);
        FloatingTextStringOnCreature(sLogMsg, oPC);
    }

    if (!sl_debug_Enabled(oPC))
    {
        return;
    }

    if (sCommandName == "set")
    {
        sCommandName = sl_debug_GetArgStr(aCommand, 1);
        if (sCommandName == "xp")
        {
            int nExp = sl_debug_GetArgInt(aCommand, 2);
            SetXP(oPC, nExp);
            FloatingTextStringOnCreature("Set xp " + IntToString(nExp), oPC);
        }
        else if (sCommandName == "gold")
        {
            int nGold = sl_debug_GetArgInt(aCommand, 2);
            GiveGoldToCreature(oPC, nGold);
            FloatingTextStringOnCreature("Set gold " + IntToString(nGold), oPC);
        }
    }
    else if (sCommandName == "reset")
    {
        sCommandName = sl_debug_GetArgStr(aCommand, 1);
        if (sCommandName == "inv")
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
            FloatingTextStringOnCreature("Reset inv", oPC);
        }
        else if (sCommandName == "storage")
        {
            sl_storage_Clear(oPC);
            FloatingTextStringOnCreature("Reset stor", oPC);
        }
    }
}
