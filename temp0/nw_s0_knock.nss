#include "nw_i0_spells"
#include "x2_inc_spellhook"

void main()
{
    if (!X2PreSpellCastCode())
    {
        return;
    }

    object oTarget;
    effect eVis = EffectVisualEffect(VFX_IMP_KNOCK);
    oTarget = GetFirstObjectInShape(
        SHAPE_SPHERE,
        50.0,
        GetLocation(OBJECT_SELF),
        FALSE,
        OBJECT_TYPE_DOOR | OBJECT_TYPE_PLACEABLE);
    float fDelay;
    int nResist;

    while (GetIsObjectValid(oTarget))
    {
        if (GetLocked(oTarget))
        {
            string sSayThis = "*CLICK*";
            AssignCommand(oTarget, SpeakString(sSayThis));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
            SetLocked(oTarget, FALSE);
        }
        oTarget = GetNextObjectInShape(
            SHAPE_SPHERE,
            50.0,
            GetLocation(OBJECT_SELF),
            FALSE,
            OBJECT_TYPE_DOOR | OBJECT_TYPE_PLACEABLE);
    }
}
