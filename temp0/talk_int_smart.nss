// Say this if they are smart
int StartingConditional()
{
    if(!(GetAbilityScore(GetPCSpeaker(), ABILITY_INTELLIGENCE) > 8))
        return FALSE;

    return TRUE;
}
