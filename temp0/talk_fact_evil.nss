//::///////////////////////////////////////////////
//:: FileName talk_fact_evil
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/27/2004 2:18:36 PM
//:://////////////////////////////////////////////
int StartingConditional()
{
    // Restrict based on the player's alignment
    if (GetAlignmentGoodEvil(GetPCSpeaker()) != ALIGNMENT_EVIL)
        return FALSE;

    return TRUE;
}
