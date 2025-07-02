
const int sl_debug_available = TRUE;

void sl_debug_Command(object pc, string msg)
{
    if (!sl_debug_available)
    {
        return;
    }

    object oFaction = GetItemPossessedBy(pc, "faction_report");
    string log_msg = "[sl_debug] " + GetName(pc);

    if (msg == "sl_debug_on")
    {
        SetLocalInt(oFaction, "sl_debug", TRUE);
        log_msg += " -> ON";
    }
    else if (msg == "sl_debug_off")
    {
        SetLocalInt(oFaction, "sl_debug", FALSE);
        log_msg += " -> OFF";
    }
    else
    {
        return;
    }

    PrintString(log_msg);
    FloatingTextStringOnCreature(log_msg, pc);
}

int sl_debug_Enabled(object pc)
{
    if (!GetIsPC(pc) || !sl_debug_available)
    {
        return FALSE;
    }

    object oFaction = GetItemPossessedBy(pc, "faction_report");
    return GetLocalInt(oFaction, "sl_debug");
}