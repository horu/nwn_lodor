// If the NPC loves the PC.
int StartingConditional()
{

object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79))
        return TRUE;

    return FALSE;
}
