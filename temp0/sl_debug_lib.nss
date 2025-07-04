#include "sl_array_lib"
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

const string sl_debug_aParsedArgs = "sl_debug_aParsedArgs";
void sl_debug_ParseCommand(string sMsg)
{
    sl_array_Clear(sl_debug_aParsedArgs);

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
        sl_array_PushbackStr(sl_debug_aParsedArgs, sValue);
        begin = 0;
    }
}

string sl_debug_GetArgStr(int nIndex)
{
    return sl_array_AtStr(sl_debug_aParsedArgs, nIndex);
}

int sl_debug_GetArgInt(int nIndex)
{
    return StringToInt(sl_debug_GetArgStr(nIndex));
}

string sl_debug_GetCommand()
{
    return sl_debug_GetArgStr(0);
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

    sl_debug_ParseCommand(sMsg);
    if (!sl_array_Size(sl_debug_aParsedArgs))
    {
        return;
    }

    string sCommand = sl_debug_GetCommand();
    if (sCommand == "test")
    {
        int i;
        for (i = 1; i < sl_array_Size(sl_debug_aParsedArgs); i++)
        {
            SendMessageToPC(oPC, sl_debug_GetArgStr(i));
        }
    }
    else if (sCommand == "debug")
    {
        object oFaction = GetItemPossessedBy(oPC, "faction_report");
        string sLogMsg = "[sl_debug] " + GetName(oPC);
        if (sl_debug_GetArgInt(1))
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

    if (sCommand == "set")
    {
        sCommand = sl_debug_GetArgStr(1);
        if (sCommand == "xp")
        {
            int nExp = sl_debug_GetArgInt(2);
            SetXP(oPC, nExp);
            FloatingTextStringOnCreature("Set xp " + IntToString(nExp), oPC);
        }
        else if (sCommand == "gold")
        {
            int nGold = sl_debug_GetArgInt(2);
            GiveGoldToCreature(oPC, nGold);
            FloatingTextStringOnCreature("Set gold " + IntToString(nGold), oPC);
        }
    }
    else if (sCommand == "reset")
    {
        sCommand = sl_debug_GetArgStr(1);
        if (sCommand == "inv")
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
        else if (sCommand == "storage")
        {
            sl_storage_Clear(oPC);
            FloatingTextStringOnCreature("Reset stor", oPC);
        }
    }
}
