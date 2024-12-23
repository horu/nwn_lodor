// If the NPC loves the PC.
int StartingConditional()
{

object oPC = GetPCSpeaker();

    if (GetReputation(OBJECT_SELF, oPC) > 99)
        return TRUE;

    return FALSE;
}
