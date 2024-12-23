// If the NPC is neutral to the PC.
int StartingConditional()
{

object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 50) && (GetReputation(OBJECT_SELF, oPC) > 34) && (GetAbilityScore(oPC, ABILITY_INTELLIGENCE) > 8))
        return TRUE;

    return FALSE;
}
