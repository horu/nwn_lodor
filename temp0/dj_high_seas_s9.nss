//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    // Hidden Grove to Brushwood
    if (GetTag(OBJECT_SELF) == "ship_sylvan")
    {
        return TRUE;
    }

    else { return FALSE; }
}
