//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    // Grogor Docks
    if ((GetTag(OBJECT_SELF) == "ship_grogor") || (GetTag(OBJECT_SELF) == "ship_borban"))
    {
        return TRUE;
    }

    else { return FALSE; }
}
