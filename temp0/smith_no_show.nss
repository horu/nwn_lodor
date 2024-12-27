int StartingConditional()
{
    if (GetRacialType(GetPCSpeaker()) == RACIAL_TYPE_HUMANOID_MONSTROUS)
        return FALSE;
    if (GetRacialType(GetPCSpeaker()) == RACIAL_TYPE_GIANT)
        return FALSE;

    return TRUE;
}
