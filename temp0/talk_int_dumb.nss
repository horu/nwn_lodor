// Say this if they are dumb
int StartingConditional()
{
    if (!(GetAbilityScore(GetPCSpeaker(), ABILITY_INTELLIGENCE) < 9))
        return FALSE;

    return TRUE;
}
