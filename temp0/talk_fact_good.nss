//::///////////////////////////////////////////////
//:: FileName talk_fact_good
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/27/2004 2:17:57 PM
//:://////////////////////////////////////////////
int StartingConditional()
{
    // Restrict based on the player's alignment
    if (GetAlignmentGoodEvil(GetPCSpeaker()) != ALIGNMENT_GOOD)
        return FALSE;

    return TRUE;
}
