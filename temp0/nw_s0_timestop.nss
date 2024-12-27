#include "NW_I0_GENERIC"
#include "X0_I0_SPELLS"

void main()
{
    //length of the time stop spell
    float nDuration = 20.0;
    //radius of the time stop spell
    float nRadius = 30.0;

    location lSpell = GetSpellTargetLocation();

    ApplyEffectToObject(
        DURATION_TYPE_INSTANT,
        EffectVisualEffect(VFX_FNF_TIME_STOP),
        OBJECT_SELF);

    // Only scan for creature objects, ignoring WPs, etc.
    object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, nRadius, lSpell, TRUE, OBJECT_TYPE_CREATURE);
    while (oTarget != OBJECT_INVALID)
    {
        if (GetHasEffect(EFFECT_TYPE_CUTSCENE_PARALYZE, oTarget) == FALSE &&
            oTarget != OBJECT_SELF)
        {
            ApplyEffectToObject(
                DURATION_TYPE_TEMPORARY,
                EffectVisualEffect(VFX_DUR_FREEZE_ANIMATION),
                oTarget,
                nDuration);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectCutsceneParalyze(), oTarget, nDuration);
        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, nRadius, lSpell, TRUE, OBJECT_TYPE_CREATURE);
    }
}
