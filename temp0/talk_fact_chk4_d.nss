// If the NPC loves the PC.
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79) && (GetAbilityScore(
        oPC,
        ABILITY_INTELLIGENCE) < 9))
        return TRUE;

    return FALSE;
}
