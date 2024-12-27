// A Healing script good for attaching to Fountains and Kegs.
void main()
{
    object oUser = GetLastUsedBy();

    // If a Vampire and this is a blood pool
    if (GetTag(OBJECT_SELF) == "ld_blud_pool")
    {
        if (GetSubRace(oUser) == "Vampire")
        {
            int nMaxHitPoints = GetMaxHitPoints(oUser);
            int nCurrentHitPoints = GetCurrentHitPoints(oUser);
            effect eHeal = EffectHeal(nMaxHitPoints - nCurrentHitPoints);
            effect eHealVis = EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE);
            if (nCurrentHitPoints < nMaxHitPoints)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oUser);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eHealVis, oUser);
            }
            else
            {
                FloatingTextStringOnCreature("I am in no need of blood.", oUser, FALSE);
            }
        }
        else
        {
            FloatingTextStringOnCreature("Yuck!", oUser, FALSE);
        }
    }

    // If this is just a regular fountain
    else
    {
        if (GetSubRace(oUser) == "Vampire")
        {
            FloatingTextStringOnCreature("I no longer need water.", oUser, FALSE);
        }
        else
        {
            int nMaxHitPoints = GetMaxHitPoints(oUser);
            int nCurrentHitPoints = GetCurrentHitPoints(oUser);
            effect eHeal = EffectHeal(nMaxHitPoints - nCurrentHitPoints);
            effect eHealVis = EffectVisualEffect(VFX_IMP_HEALING_S);
            if (nCurrentHitPoints < nMaxHitPoints)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oUser);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eHealVis, oUser);
            }
        }
    }
}
