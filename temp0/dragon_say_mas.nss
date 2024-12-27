int StartingConditional()
{
    // Henchmen only talks to master
    int iPassed = 0;
    if (GetHenchman(GetPCSpeaker()) == OBJECT_SELF)
        iPassed = 1;
    if (iPassed == 0)
        return FALSE;

    return TRUE;
}
