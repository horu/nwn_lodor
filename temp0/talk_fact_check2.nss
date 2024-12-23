// If the NPC is neutral to the PC.
int StartingConditional()
{

object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 50) && (GetReputation(OBJECT_SELF, oPC) > 34))
        return TRUE;

    return FALSE;
}
