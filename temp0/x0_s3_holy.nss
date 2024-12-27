void DoGrenadeLD(
    int nDirectDamage,
    int nSplashDamage,
    int vSmallHit,
    int vRingHit,
    int nDamageType,
    float fExplosionRadius,
    int nObjectFilter,
    string sSubRace = "Vampire");
//::///////////////////////////////////////////////
//:: Holy Water
//:: x0_s3_holy
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Grenade.
    Fires at a target. If hit, the target takes
    direct damage. If missed, all enemies within
    an area of effect take splash damage.

    HOWTO:
    - If target is valid attempt a hit
       - If miss then MISS
       - If hit then direct damage
    - If target is invalid or MISS
       - have area of effect near target
       - everyone in area takes splash damage
*/
//:://////////////////////////////////////////////
//:: Created By: Brent
//:: Created On: September 10, 2002
//:://////////////////////////////////////////////

#include "X0_I0_SPELLS"

void main()
{
    DoGrenade(
        d4(2),
        1,
        VFX_IMP_HEAD_HOLY,
        VFX_FNF_LOS_NORMAL_20,
        DAMAGE_TYPE_DIVINE,
        RADIUS_SIZE_HUGE,
        OBJECT_TYPE_CREATURE | OBJECT_TYPE_DOOR | OBJECT_TYPE_PLACEABLE,
        RACIAL_TYPE_UNDEAD);
    DoGrenadeLD(
        d4(2),
        1,
        VFX_IMP_HEAD_HOLY,
        VFX_FNF_LOS_NORMAL_20,
        DAMAGE_TYPE_DIVINE,
        RADIUS_SIZE_HUGE,
        OBJECT_TYPE_CREATURE,
        "Vampire");
}

void DoGrenadeLD(
    int nDirectDamage,
    int nSplashDamage,
    int vSmallHit,
    int vRingHit,
    int nDamageType,
    float fExplosionRadius,
    int nObjectFilter,
    string sSubRace = "Vampire")
{
    object oTarget = GetSpellTargetObject();
    int nCasterLvl = GetCasterLevel(OBJECT_SELF);
    int nDamage = 0;
    int nMetaMagic = GetMetaMagicFeat();
    int nCnt;
    effect eMissile;
    effect eVis = EffectVisualEffect(vSmallHit);
    location lTarget = GetSpellTargetLocation();

    float fDist = GetDistanceBetween(OBJECT_SELF, oTarget);
    int nTouch;

    if (GetIsObjectValid(oTarget) == TRUE)
    {
        nTouch = TouchAttackRanged(oTarget);
    }
    else
    {
        nTouch = -1;
    }
    if (nTouch >= 1)
    {
        int nDam = nDirectDamage;
        if (nTouch == 2)
        {
            nDam *= 2;
        }

        effect eDam = EffectDamage(nDam, nDamageType);

        if (GetSubRace(oTarget) == "Vampire")
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId()));
        }
    }

    {
        effect eExplode = EffectVisualEffect(vRingHit);

        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eExplode, lTarget);
        object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, fExplosionRadius, lTarget, TRUE, nObjectFilter);
        while (GetIsObjectValid(oTarget))
        {
            float fDelay = GetDistanceBetweenLocations(lTarget, GetLocation(oTarget)) / 20;
            nDamage = nSplashDamage;
            effect eDam = EffectDamage(nDamage, nDamageType);
            if (nDamage > 0)
            {
                if (GetSubRace(oTarget) == "Vampire")
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
                    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId()));
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, fExplosionRadius, lTarget, TRUE, nObjectFilter);
        }
    }
}
