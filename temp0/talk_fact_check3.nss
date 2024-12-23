// If the NPC likes the PC.
int StartingConditional()
{

object oPC = GetPCSpeaker();

    if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 49))
        return TRUE;

    return FALSE;
}
