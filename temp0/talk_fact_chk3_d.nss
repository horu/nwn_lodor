// If the NPC likes the PC.
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 49) && (GetAbilityScore(
        oPC,
        ABILITY_INTELLIGENCE) < 9))
        return TRUE;

    return FALSE;
}
