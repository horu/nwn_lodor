int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if (GetReputation(OBJECT_SELF, oPC) > 34)
        return TRUE;

    return FALSE;
}
