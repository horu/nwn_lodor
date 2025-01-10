#include "nw_i0_plot"
// * Applies an XP and GP penalty
// * to the player respawning
void ApplyPenalty(object oDead)
{
    int nXP = GetXP(oDead);
    int nPenalty = 50 * GetHitDice(oDead);

    int nHD = GetHitDice(oDead);
    // * You can not lose a level with this respawning
    int nMin = ((nHD * (nHD - 1)) / 2) * 1000;

    int nNewXP = nXP - nPenalty;
    if (nNewXP < nMin)
        nNewXP = nMin;
    SetXP(oDead, nNewXP);
    DelayCommand(5.0, FloatingTextStringOnCreature("XP Loss", oDead, FALSE));
}

void main()
{
    // DEBUG
    object oPC = GetLastRespawnButtonPresser();
    //object oPC = OBJECT_SELF;

    if (GetSubRace(oPC) == "Vampire")
    {
        ExecuteScript("dj_respawn_vamp", oPC);
    }
    else
    {
        location lDead = GetLocation(oPC);
        object oInfo = GetItemPossessedBy(oPC, "faction_report");
        SetLocalInt(oInfo, "ijustdied", 0);

        if (GetHitDice(oPC) > 3)
        {
            string sGrave1 = GetPCPlayerName(oPC);
            string sGrave2 = RandomName();
            string sGrave3 = sGrave1 + sGrave2;
            object oTomb = CreateObject(OBJECT_TYPE_PLACEABLE, "player_tomb", lDead, FALSE, sGrave3);
            SetLocalString(oPC, "whodied", sGrave3);
            ExecuteScript("dj_death_loss", oPC);
        }

        //If the PC drank a Potion of Preservation or is Preserved from their god
        if (GetLocalInt(oInfo, "preserve") == 1)
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(oPC)), oPC);
            RemoveEffects(oPC);
            SetLocalInt(oInfo, "preserve", 0);
            ExecuteScript("dj_spawn_pnt", oPC);
        }
        else
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(oPC)), oPC);
            RemoveEffects(oPC);
            if (GetHitDice(oPC) > 3) { ApplyPenalty(oPC); }
            ExecuteScript("dj_spawn_pnt", oPC);
        }
    }
}
