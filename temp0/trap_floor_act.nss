// This triggers traps for Lodor
#include "x0_i0_projtrap"
#include "x0_i0_spells"

void main()
{
    object oPC = GetEnteringObject();
    object oTrap = GetNearestObjectByTag("trap_object", oPC);
    object oArea = GetArea(oPC);
    int nSet = GetLocalInt(oTrap, "trapped");

    if (GetIsPC(oPC) == TRUE)
    {
        if ((nSet == 0) || (nSet == 2))
        {
            // Traps in Brakal's Tower
            if (GetTag(oArea) == "TowerOfBrakal")
            {
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_COLD, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    int nCasterLvl = 11;
                    int nDamage, nDamage2, nDamage3;
                    effect eExplode = EffectVisualEffect(VFX_FNF_ICESTORM);
                    effect eVis = EffectVisualEffect(VFX_IMP_FROST_S);
                    effect eDam, eDam2, eDam3;
                    float fDelay;
                    location lTarget = GetLocation(oPC);
                    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eExplode, lTarget);
                    object oTarget = GetFirstObjectInShape(
                        SHAPE_SPHERE,
                        RADIUS_SIZE_MEDIUM,
                        lTarget,
                        TRUE,
                        OBJECT_TYPE_CREATURE);
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
                        oTarget = GetNextObjectInShape(
                            SHAPE_SPHERE,
                            RADIUS_SIZE_MEDIUM,
                            lTarget,
                            TRUE,
                            OBJECT_TYPE_CREATURE);
                    }
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eExplode = EffectVisualEffect(VFX_FNF_ICESTORM);
                    effect eVis = EffectVisualEffect(VFX_IMP_FROST_S);
                    location lTarget = GetLocation(oPC);
                    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eExplode, lTarget);
                }
            }

            // Traps in Bruol Bugbears
            else if (GetTag(oArea) == "TheBruolBugbears")
            {
                int nST = ReflexSave(oPC, 10, SAVING_THROW_TYPE_TRAP, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    DoTrapSpike(d6(6));
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eVis = EffectVisualEffect(VFX_IMP_SPIKE_TRAP);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Drub's Den
            else if (GetTag(oArea) == "DenOfDrub")
            {
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_TRAP, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    DoTrapSpike(d6(10));
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eVis = EffectVisualEffect(VFX_IMP_SPIKE_TRAP);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Wrok's Lair
            else if (GetTag(oArea) == "WroksLair")
            {
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_TRAP, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    DoTrapSpike(d6(10));
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eVis = EffectVisualEffect(VFX_IMP_SPIKE_TRAP);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Drigdug's Lair
            else if (GetTag(oArea) == "DrigdugsLair")
            {
                int nST = ReflexSave(oPC, 10, SAVING_THROW_TYPE_TRAP, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    DoTrapSpike(d6(10));
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eVis = EffectVisualEffect(VFX_IMP_SPIKE_TRAP);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Gnoll Ruins
            else if (GetTag(oArea) == "KabardRuins")
            {
                int nST = ReflexSave(oPC, 10, SAVING_THROW_TYPE_TRAP, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    DoTrapSpike(d6(10));
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eVis = EffectVisualEffect(VFX_IMP_SPIKE_TRAP);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Zaltos' Fortress
            else if (GetStringLeft(GetTag(GetArea(oPC)), 16) == "FortressOfZaltos")
            {
                int nST = ReflexSave(oPC, 10, SAVING_THROW_TYPE_ELECTRICITY, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
                    int nDamage = d6(10);
                    effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
                    effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
                    effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Melagan Ruins
            else if (GetTag(oArea) == "MelaganRuins")
            {
                object oTarget = GetEnteringObject();
                effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_ACID);
                effect eVis = EffectVisualEffect(VFX_IMP_ACID_L);
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_ACID, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget);
                }
            }

            // Traps in Temple of Tears
            else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "TempleOfTears")
            {
                location lTarget = GetLocation(oPC);
                int nDamage = d6(10);
                effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_FIRE, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Daclor's Mountain
            else if (GetStringLeft(GetTag(GetArea(oPC)), 15) == "DaclorsMountain")
            {
                location lTarget = GetLocation(oPC);
                int nDamage = d6(12);
                effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
                int nST = ReflexSave(oPC, 18, SAVING_THROW_TYPE_FIRE, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Dedry Catacombs
            else if (GetTag(GetArea(oPC)) == "DedryCatacombs")
            {
                location lTarget = GetLocation(oPC);
                int nDamage = d6(5);
                effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
                int nST = ReflexSave(oPC, 5, SAVING_THROW_TYPE_FIRE, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Old City
            else if (GetTag(GetArea(oPC)) == "OldCity")
            {
                location lTarget = GetLocation(oPC);
                int nDamage = d6(5);
                effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
                int nST = ReflexSave(oPC, 5, SAVING_THROW_TYPE_FIRE, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in the Halls of Stone
            else if (GetTag(GetArea(oPC)) == "HallsOfStone")
            {
                location lTarget = GetLocation(oPC);
                effect eVis = EffectVisualEffect(VFX_IMP_POISON_S);
                effect ePoison = EffectPoison(POISON_DEATHBLADE);
                int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_POISON, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Glomarin's Fortress
            else if (GetStringLeft(GetTag(GetArea(oPC)), 18) == "FortressOfGlomarin")
            {
                effect eNeg = EffectNegativeLevel(1);
                effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
                eNeg = SupernaturalEffect(eNeg);
                effect eVis = EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE);
                int nST = ReflexSave(oPC, 25, SAVING_THROW_FORT, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eNeg, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Dracz's Palace
            else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "PalaceOfDracz")
            {
                effect eNeg = EffectNegativeLevel(1);
                effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
                eNeg = SupernaturalEffect(eNeg);
                effect eVis = EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE);
                int nST = ReflexSave(oPC, 25, SAVING_THROW_FORT, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eNeg, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                }
            }

            // Traps in Citadel Level 3
            else if (GetTag(GetArea(oPC)) == "CitadelLevelThree")
            {
                effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
                effect eVis1 = EffectVisualEffect(VFX_IMP_SLEEP);
                effect eVis2 = EffectVisualEffect(VFX_FNF_GAS_EXPLOSION_MIND);
                effect eSleep = EffectSleep();
                int nST = WillSave(oPC, 25, SAVING_THROW_TYPE_MIND_SPELLS, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    CreateObject(OBJECT_TYPE_CREATURE, "grave_digger", GetLocation(oPC), FALSE);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSleep, oPC, 10.0);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis1, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
                }
            }

            // Traps in Citadel Level 4
            else if (GetTag(GetArea(oPC)) == "CitadelLevelFour")
            {
                effect eDam = EffectDamage(d6(10), DAMAGE_TYPE_NEGATIVE);
                effect eVis1 = EffectVisualEffect(VFX_IMP_SLEEP);
                effect eVis2 = EffectVisualEffect(VFX_FNF_GAS_EXPLOSION_MIND);
                effect eSleep = EffectSleep();
                int nST = WillSave(oPC, 25, SAVING_THROW_TYPE_MIND_SPELLS, GetAreaOfEffectCreator());
                if (nST == 0)
                {
                    ExecuteScript("dj_not_invisible", oPC);
                    CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_drow", GetLocation(oPC), FALSE);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSleep, oPC, 10.0);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis1, oPC);
                }
                else if ((nST == 1) || (nST == 2))
                {
                    FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, oPC);
                }
            }

            //Set the variable manually for these ones below

            // Traps in the Secret Room
            else if (GetTag(oArea) == "secretroom1")
            {
                int nZowy = GetLocalInt(oTrap, "secret");
                if (nZowy == 1)
                {
                    int nST = ReflexSave(oPC, 15, SAVING_THROW_TYPE_ELECTRICITY, GetAreaOfEffectCreator());
                    if (nST == 0)
                    {
                        ExecuteScript("dj_not_invisible", oPC);
                        effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
                        int nDamage = d6(10);
                        effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
                        effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    }
                    else if ((nST == 1) || (nST == 2))
                    {
                        FloatingTextStringOnCreature("You barely escape the trap.", oPC, FALSE);
                        effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING, oPC, BODY_NODE_CHEST);
                        effect eVis = EffectVisualEffect(VFX_IMP_LIGHTNING_S);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    }
                }
            }

            // Web Trap For Shira
            else if (GetTag(OBJECT_SELF) == "web_shira")
            {
                effect eSlow = EffectSlow();
                effect eWeb = EffectVisualEffect(VFX_DUR_WEB_MASS);
                location lWeb = GetLocation(oPC);
                location lSelf = GetLocation(OBJECT_SELF);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSlow, oPC, 20.0);
                ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lWeb);
                DelayCommand(3.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                DelayCommand(6.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                DelayCommand(9.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                DelayCommand(12.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                DelayCommand(15.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                DelayCommand(18.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY, eWeb, lSelf));
                ExecuteScript("dj_not_invisible", oPC);
            }

            // Poison Geysers in Vile Bog
            else if (GetTag(OBJECT_SELF) == "poison_geyser")
            {
                if (GetIsPC(oPC) == TRUE)
                {
                    {
                        int nRandom = d4(1);
                        if (nRandom == 1)
                        {
                            effect ePoison = EffectPoison(POISON_DEATHBLADE);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oPC);
                        }
                        else if (nRandom == 2)
                        {
                            effect ePoison = EffectPoison(POISON_GIANT_WASP_POISON);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oPC);
                        }
                        else if (nRandom == 3)
                        {
                            effect ePoison = EffectPoison(POISON_DARK_REAVER_POWDER);
                            ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oPC);
                        }
                        else
                        {
                        }
                    }
                }
                else
                {
                }
            }

            else
            {
            }
        }

        // Lava Geyser
        else if (GetTag(OBJECT_SELF) == "lava_geyser")
        {
            ExecuteScript("dj_not_invisible", oPC);
            int nDamage = d6(10);
            effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
            effect eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oPC);
            FloatingTextStringOnCreature("OUCH!", oPC, TRUE);
        }


        else
        {
            FloatingTextStringOnCreature("You safely walk over a disabled trap.", oPC, FALSE);
        }
    }
}
