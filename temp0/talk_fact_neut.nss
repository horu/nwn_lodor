//::///////////////////////////////////////////////
//:: FileName talk_fact_neut
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/27/2004 2:18:19 PM
//:://////////////////////////////////////////////
int StartingConditional()
{
    // Restrict based on the player's alignment
    if (GetAlignmentGoodEvil(GetPCSpeaker()) != ALIGNMENT_NEUTRAL)
        return FALSE;

    return TRUE;
}
