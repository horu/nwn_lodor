// This triggers traps for Lodor if failed to disarm
#include "x0_i0_projtrap"
#include "x0_i0_spells"

void main()
{
    object oTrap = OBJECT_SELF;
    object oPC = GetPCSpeaker();
    object oArea = GetArea(oPC);
    ExecuteScript("dj_not_invisible", oPC);

    // Traps in Brakal's Tower
    if (GetTag(oArea) == "TowerOfBrakal")
    {
        int nCasterLvl = 11;
        int nDamage, nDamage2, nDamage3;
        effect eExplode = EffectVisualEffect(VFX_FNF_ICESTORM);
        effect eVis = EffectVisualEffect(VFX_IMP_FROST_S);
        effect eDam, eDam2, eDam3;
        float fDelay;
        location lTarget = GetLocation(oPC);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eExplode, lTarget);
        object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, RADIUS_SIZE_MEDIUM, lTarget, TRUE, OBJECT_TYPE_CREATURE);
        while (GetIsObjectValid(oTarget))
        {
            fDelay = GetRandomDelay(0.75, 2.25);
            nDamage = d6(3);
            nDamage2 = d6(2);
            nDamage3 = d6(nCasterLvl);
            eDam = EffectDamage(nDamage, DAMAGE_TYPE_BLUDGEONING);
            eDam2 = EffectDamage(nDamage2, DAMAGE_TYPE_COLD);
            eDam3 = EffectDamage(nDamage3, DAMAGE_TYPE_COLD);
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam2, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam3, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, RADIUS_SIZE_MEDIUM, lTarget, TRUE, OBJECT_TYPE_CREATURE);
        }
    }

    // Traps in Bruol Bugbears
    else if (GetTag(oArea) == "TheBruolBugbears")
    {
        effect eVis = EffectVisualEffect(253);
        int nDamage = d6(6);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oPC));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Drub's Den
    else if (GetTag(oArea) == "DenOfDrub")
    {
        effect eVis = EffectVisualEffect(253);
        int nDamage = d6(10);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oPC));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Wrok's Lair
    else if (GetTag(oArea) == "WroksLair")
    {
        effect eVis = EffectVisualEffect(253);
        int nDamage = d6(10);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oPC));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Drigdug's Lair
    else if (GetTag(oArea) == "DrigdugsLair")
    {
        effect eVis = EffectVisualEffect(253);
        int nDamage = d6(7);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oPC));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Gnoll Ruins
    else if (GetTag(oArea) == "KabardRuins")
    {
        effect eVis = EffectVisualEffect(253);
        int nDamage = d6(7);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_PIERCING);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oPC));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Zaltos' Fortress
    else if (GetStringLeft(GetTag(GetArea(oPC)), 16) == "FortressOfZaltos")
    {
        effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
        int nDamage = d6(10);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
        effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    }

    // Traps in Melagan Ruins
    else if (GetTag(oArea) == "MelaganRuins")
    {
        int nDamage = d6(10);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_ACID);
        effect eVis = EffectVisualEffect(VFX_IMP_ACID_L);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    }

    // Traps in Temple of Tears
    else if (GetStringLeft(GetTag(oArea), 13) == "TempleOfTears")
    {
        int nDamage = d6(10);
        effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Daclor's Mountain
    else if (GetStringLeft(GetTag(GetArea(oPC)), 15) == "DaclorsMountain")
    {
        int nDamage = d6(12);
        effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in Dedry Catacombs
    else if (GetTag(GetArea(oPC)) == "DedryCatacombs")
    {
        int nDamage = d6(5);
        effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in the Old City
    else if (GetTag(GetArea(oPC)) == "OldCity")
    {
        int nDamage = d6(5);
        effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
    }

    // Traps in the Halls of Stone
    else if (GetTag(GetArea(oPC)) == "HallsOfStone")
    {
        location lTarget = GetLocation(oPC);
        effect eVis = EffectVisualEffect(VFX_IMP_POISON_S);
        effect ePoison = EffectPoison(POISON_DEATHBLADE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oPC);
    }

    // Traps in Glomarin's Fortress
    else if (GetStringLeft(GetTag(GetArea(oPC)), 18) == "FortressOfGlomarin")
    {
        effect eNeg = EffectNegativeLevel(1);
        effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
        eNeg = SupernaturalEffect(eNeg);
        effect eVis = EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eNeg, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    }

    // Traps in Dracz's Palace
    else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "PalaceOfDracz")
    {
        effect eNeg = EffectNegativeLevel(1);
        effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
        eNeg = SupernaturalEffect(eNeg);
        effect eVis = EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eNeg, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    }

    // Traps in Citadel Level 3
    else if (GetTag(GetArea(oPC)) == "CitadelLevelThree")
    {
        effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
        effect eVis1 = EffectVisualEffect(VFX_IMP_SLEEP);
        effect eVis2 = EffectVisualEffect(VFX_FNF_GAS_EXPLOSION_MIND);
        effect eSleep = EffectSleep();
        CreateObject(OBJECT_TYPE_CREATURE, "grave_digger", GetLocation(oPC), FALSE);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSleep, oPC, 10.0);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis1, oPC);
    }

    // Traps in Citadel Level 4
    else if (GetTag(GetArea(oPC)) == "CitadelLevelFour")
    {
        effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
        effect eVis1 = EffectVisualEffect(VFX_IMP_SLEEP);
        effect eVis2 = EffectVisualEffect(VFX_FNF_GAS_EXPLOSION_MIND);
        effect eSleep = EffectSleep();
        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_drow", GetLocation(oPC), FALSE);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSleep, oPC, 10.0);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis1, oPC);
    }


    // Traps in the Secret Room

    int nZowy = GetLocalInt(oTrap, "secret");
    if (nZowy == 1)
    {
        effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
        int nDamage = d6(10);
        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
        effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
    }
}
