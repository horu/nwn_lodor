int StartingConditional()
{
    // Henchmen only say this to non-masters
    int iPassed = 0;
    if (GetHenchman(GetPCSpeaker()) == OBJECT_SELF)
        iPassed = 0;
    if (iPassed == 0)
        return FALSE;

    return TRUE;
}
