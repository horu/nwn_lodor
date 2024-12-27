// If the NPC does not like the PC.
int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 35) && (GetReputation(OBJECT_SELF, oPC) > 9) && (GetAbilityScore(
        oPC,
        ABILITY_INTELLIGENCE) < 9))
        return TRUE;

    return FALSE;
}
