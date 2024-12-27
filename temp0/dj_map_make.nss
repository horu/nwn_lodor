// Script to make a map of the current area.
// You need a blank piece of paper.
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    object oArea = GetArea(oPC);
    int oIntel = GetAbilityScore(oPC, ABILITY_INTELLIGENCE);

    if (GetSubRace(oPC) == "Vampire")
    {
        object oMap = GetItemPossessedBy(oPC, "vampire_bottle");

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        if (GetLocalInt(oPC, "mapallow") == 0)
        {
            if (GetStringLeft(GetTag(oArea), 8) == "TheAltar")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetStringLeft(GetTag(oArea), 6) == "LairOf")
            {
                FloatingTextStringOnCreature("The area is open enough that you don't need to map it.", oPC, FALSE);
            }
            else if (GetStringLeft(GetTag(oArea), 10) == "SecretRoom")
            {
                FloatingTextStringOnCreature("There is no reason to map this secret room.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TowerBrakal2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "KabardRuins2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "FrozenDepths")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "EnchantedSpring")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "FortressOfZaltos")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "NixiePond")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "CliffsOfTheFallen2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "DravebsTent")
            {
                FloatingTextStringOnCreature("There is no reason to map Draveb's tent.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheWinterJewel")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DarkArts")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BlackenedOre")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheFrozenForge")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "EnchantedHermit")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "FertileDeep")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TempleOfUronia")
            {
                FloatingTextStringOnCreature("There is no reason to map this temple.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "IslandOfAncientStone")
            {
                FloatingTextStringOnCreature("There is no reason to map this island.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BarbleysGoods")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheElvenArms")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "GnomesGuard")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DedrysGrown")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DedrySupplies")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "AldursHold")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BankOfFaraldor")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "MinersGold")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheDrowsVault")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheOrksSafe")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "MurvedsTower")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "FerTheJurney")
            {
                FloatingTextStringOnCreature("There is no reason to map this tent.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HilltopTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HairfootGoods")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HobbitsHerbs")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheDeepArcane")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DragrinsForge")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheForestsFriend")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheSunkenGarden")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheShamunsTowur")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "Mausoleum")
            {
                FloatingTextStringOnCreature("There is no reason to map this tomb.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "ThicketTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "RestfulInn")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheMountainHall")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "SouthernShore")
            {
                FloatingTextStringOnCreature("There is no reason to map this shoreline.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "StarshineTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheSturjsBlud")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DrunkenDepths")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TowerOfArcaneArts")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DragrinsMine")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "MountainOfPestilence")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "MiradirsGate")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "TreeTop")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "RuinedBuilding")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "UnderearthBank")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BrushwoodDocks")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "VrethamsTower")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }


            else
            {
                FloatingTextStringOnCreature("You need to get to a better area to make a good map.", oPC, FALSE);
            }
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        else if (GetLocalInt(oPC, "mapallow") == 1)
        {
            if ((!HasItem(oPC, "map_paper")) == FALSE)
            {
                DestroyObject(GetItemPossessedBy(oPC, "map_paper"));
                AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_READ));

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                if (GetTag(oArea) == "BrushwoodValley")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map001", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Brushwood Valley.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map001", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brushwood Valley.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map001", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brushwood Valley.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheShadedWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map002", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Clouded Veil.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map002", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clouded Veil.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map002", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clouded Veil.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map003", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Vegnar Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map003", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Vegnar Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map003", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Vegnar Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map004", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Nilas Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map004", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Nilas Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map004", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Nilas Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheUnderwood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map005", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map005", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map005", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ThePurgs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map006", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Purgs lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map006", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Purgs lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map006", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Purgs lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheVileBog")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map007", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map007", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map007", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheBruolBugbears")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map008", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Bruol Bugbear Lair.",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map008", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bruol Bugbear Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map008", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bruol Bugbear Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheStonesOfConfusion")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map009", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped this confusing maze.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map009", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped this confusing maze.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map009", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped this confusing maze.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasFields")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map010", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Nilas Fields.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map010", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nilas Fields.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map010", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nilas Fields.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheShiftingGrowth")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map011", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Shifting Growth.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map011", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shifting Growth.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map011", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shifting Growth.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheHiddenGrove")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map012", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hidden Grove.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map012", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hidden Grove.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map012", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hidden Grove.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheGreatOakVillage")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map013", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map013", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map013", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "MiradirsGate2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map014", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Miradir's Gate.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map014", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Gate.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map014", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Gate.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheWickedMarsh")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map015", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Wicked Marsh.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map015", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wicked Marsh.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map015", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wicked Marsh.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PathOfMiradir")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map016", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Path of Miradir.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map016", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Path of Miradir.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map016", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Path of Miradir.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "MiradirsCastle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map017", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Miradir's Castle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map017", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Castle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map017", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Castle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "SarylSwamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map018", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Saryl Swamp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map018", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Saryl Swamp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map018", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Saryl Swamp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheVileTower")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map019", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vile Tower.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map019", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vile Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map019", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vile Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PaelHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map020", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Prael Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map020", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map020", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PraelCliffs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map021", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Prael Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map021", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map021", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheShiveringWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map022", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Shivering Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map022", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shivering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map022", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shivering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheDig")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map023", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map023", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map023", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheTuranBattlefield")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map024", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Turan Battlefield.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map024", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Turan Battlefield.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map024", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Turan Battlefield.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DenOfDrub")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map025", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Drub's Den.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map025", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Drub's Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map025", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Drub's Den.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrozenTrail")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map026", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frozen Trail.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map026", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frozen Trail.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map026", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Frozen Trail.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfBrakal")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map027", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Brakal's Tower.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map027", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brakal's Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map027", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brakal's Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DaclorsCrossing")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map028", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Daclor's Crossing.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map028", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Daclor's Crossing.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map028", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Crossing.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VillageOfAldur")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map029", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map029", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map029", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrostbiteHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map030", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frostbite Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map030", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map030", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrostbiteMines")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map031", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frostbite Mines.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map031", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Mines.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map031", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Mines.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PitsOfFrost")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map032", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Pits of Frost.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map032", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Pits of Frost.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map032", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Pits of Frost.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NerodHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map033", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Nerod Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map033", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nerod Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map033", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nerod Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WroksLair")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map034", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map034", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map034", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WhisperingWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map035", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Whispering Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map035", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Whispering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map035", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Whispering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ClarionWoodlands")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map036", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Clarion Woodlands.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map036", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clarion Woodlands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map036", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clarion Woodlands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheTowerOfTheSilverOrder")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map037", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Tower of the Silver Order.",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map037", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Silver Order.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map037", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Silver Order.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }


                else if (GetTag(oArea) == "Basement")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map038", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map038", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map038", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GlowianForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map039", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Glowian Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map039", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Glowian Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map039", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Glowian Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPass")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map040", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map040", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map040", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DrigdugsLair")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map041", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Drigdug's Lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map041", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Drigdug's Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map041", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Drigdug's Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "KabardRuins")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map042", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map042", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map042", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CliffsOfTheFallen")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map043", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Fallen Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map043", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Fallen Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map043", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Fallen Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FortressOfZaltos2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map044", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Zaltos' Fortress.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map044", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Zaltos' Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map044", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Zaltos' Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPlains")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map045", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vegnar Plains.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map045", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Plains.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map045", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Plains.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BaolTribe")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map046", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map046", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map046", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HarpyCliffs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map047", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Harpy Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map047", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Harpy Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map047", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Harpy Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CityOfFaraldor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map048", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the City of Faraldor.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map048", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Faraldor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map048", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Faraldor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DelirForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map049", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Delir Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map049", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Delir Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map049", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Delir Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "SparklingWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map050", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sparkling Wood.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map050", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sparkling Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map050", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sparkling Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VrugarOrcTribe")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map051", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vrugar Orc Cave.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map051", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vrugar Orc Cave.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map051", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vrugar Orc Cave.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Sewers")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map052", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map052", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map052", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WalkwayOfWind")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map053", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Walkway of Wind.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map053", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Walkway of Wind.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map053", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Walkway of Wind.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map054", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map054", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map054", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FalcorNest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map055", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Falcor Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map055", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Falcor Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map055", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Falcor Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CursedGlades")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map056", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cursed Glades.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map056", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cursed Glades.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map056", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cursed Glades.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfRunes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map057", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Tower of Runes.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map057", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of Runes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map057", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of Runes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WebOfShira")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map058", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Shira's Web.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map058", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shira's Web.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map058", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shira's Web.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MelaganJungle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map059", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Melagan Jungle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map059", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map059", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VillageOfGrogor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map060", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Grogor Village.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map060", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grogor Village.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map060", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grogor Village.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WearyWay")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map061", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map061", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map061", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MelaganRuins")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map062", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Melagan Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map062", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map062", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RakshasaCamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map063", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Rakshasa Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map063", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Rakshasa Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map063", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Rakshasa Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ManticoreDen")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map064", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Manticore Den.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map064", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manticore Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map064", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manticore Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TempleOfTears")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map065", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Temple of Tears.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map065", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Temple of Tears.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map065", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Temple of Tears.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GrogorJungle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map066", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Grogor Jungle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map066", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Grogor Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map066", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Grogor Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VankCaves")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map067", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vank Caves.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map067", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vank Caves.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map067", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vank Caves.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryHamlet")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map068", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Hamlet.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map068", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Hamlet.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map068", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Hamlet.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryTunnels")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map069", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Tunnels.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map069", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Tunnels.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map069", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Tunnels.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PitOfDar")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map070", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map070", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map070", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Wastelands")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map071", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Wastelands.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map071", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wastelands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map071", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wastelands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NestOfManscorpions")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map072", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Manscorpion Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map072", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manscorpion Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map072", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manscorpion Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheHive")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map073", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map073", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map073", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "AridDunes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map074", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Arid Dunes.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map074", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Arid Dunes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map074", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Arid Dunes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RuinsOfBrodak")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map075", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Brodak Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map075", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brodak Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map075", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brodak Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Oasis")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map076", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map076", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map076", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPassageway")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map077", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vegnar Passageway.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map077", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Passageway.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map077", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Passageway.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DaclorsMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map078", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Daclor's Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map078", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map078", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FirebrandKeep")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map079", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Firebrand Keep.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map079", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Firebrand Keep.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map079", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Firebrand Keep.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryCemetery")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map080", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Cemetery.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map080", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Cemetery.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map080", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Cemetery.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map081", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map081", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map081", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BanditCamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map082", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Bandit Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map082", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bandit Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map082", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bandit Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryCatacombs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map083", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Catacombs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map083", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Catacombs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map083", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Catacombs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HorfiladManor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map084", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Horfilad Manor.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map084", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad Manor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map084", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad Manor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HorfiladsDungeon")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map085", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Horfilad's Dungeon.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map085", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad's Dungeon.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map085", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad's Dungeon.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TaraksFortress")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map086", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Tarak's Fortress.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map086", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Tarak's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map086", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Tarak's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BeetleNest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map087", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Beetle Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map087", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Beetle Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map087", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Beetle Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PiratesCove")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map088", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map088", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map088", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheBorbanPit")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map089", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Borban Pit.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map089", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Borban Pit.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map089", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Borban Pit.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HollowScreams")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map090", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hollow Screams.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map090", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hollow Screams.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map090", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hollow Screams.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "UnderPassage")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map091", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Under Passage.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map091", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Under Passage.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map091", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Under Passage.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Clouds")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map092", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cloud City", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map092", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cloud City.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map092", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cloud City.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "OldCity")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map093", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Old City", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map093", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Old City.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map093", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Old City.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HallsOfStone")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map094", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Halls of Stone", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map094", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Halls of Stone.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map094", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Halls of Stone.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CaveOfEyes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map095", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cave of Eyes", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map095", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cave of Eyes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map095", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cave of Eyes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FortressOfGlomarin")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map096", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Glomarin's Fortress", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map096", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Glomarin's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map096", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Glomarin's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WellOfSouls")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map097", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Well of Souls", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map097", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Well of Souls.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map097", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Well of Souls.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheScorn")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map098", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Scorn", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map098", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Scorn.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map098", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Scorn.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheCrypts")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map099", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Crypts", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map099", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Crypts.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map099", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Crypts.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheVault")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map100", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vault", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map100", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vault.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map100", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vault.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfTheDamned")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map101", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Tower of the Damned",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map101", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Damned.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map101", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Damned.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RuinsOfJarehar")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map102", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Jarehar Ruins", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map102", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Jarehar Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map102", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Jarehar Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FieldOfSilence")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map103", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Field of Silence", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map103", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Field of Silence.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map103", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Field of Silence.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PalaceOfDracz")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map104", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dracz's Palace", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map104", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dracz's Palace.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map104", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dracz's Palace.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CityOfThought2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map105", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the City of Thought", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map105", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Thought.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map105", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Thought.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CitadelLevelSeven")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map106", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Citadel", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map106", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Citadel.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map106", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Citadel.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GrandulsHold2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map108", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Grandul's Hold", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map108", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grandul's Hold.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map108", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grandul's Hold.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MapleWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map109", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Maple Wood", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map109", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Maple Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map109", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Maple Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GremlinHole")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map110", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Gremlin Hole", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map110", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Gremlin Hole.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map110", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Gremlin Hole.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "SapharalCoastline")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map111", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sapharal Coastline", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map111", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sapharal Coastline.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map111", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sapharal Coastline.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                else
                {
                    FloatingTextStringOnCreature(
                        "You decide not to map this area as it is too small to bother.",
                        oPC,
                        FALSE);
                    CreateItemOnObject("map_paper", oPC, 1);
                }
            }
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            else
            {
                FloatingTextStringOnCreature("You need blank map paper to map this area.", oPC, FALSE);
            }
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    else
    {
        object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        if (GetLocalInt(oPC, "mapallow") == 0)
        {
            if (GetStringLeft(GetTag(oArea), 8) == "TheAltar")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetStringLeft(GetTag(oArea), 6) == "LairOf")
            {
                FloatingTextStringOnCreature("The area is open enough that you don't need to map it.", oPC, FALSE);
            }
            else if (GetStringLeft(GetTag(oArea), 10) == "SecretRoom")
            {
                FloatingTextStringOnCreature("There is no reason to map this secret room.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TowerBrakal2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "KabardRuins2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "FrozenDepths")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "EnchantedSpring")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "FortressOfZaltos")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "NixiePond")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "CliffsOfTheFallen2")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "DravebsTent")
            {
                FloatingTextStringOnCreature("There is no reason to map Draveb's tent.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheWinterJewel")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DarkArts")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BlackenedOre")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheFrozenForge")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "EnchantedHermit")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "FertileDeep")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TempleOfUronia")
            {
                FloatingTextStringOnCreature("There is no reason to map this temple.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "IslandOfAncientStone")
            {
                FloatingTextStringOnCreature("There is no reason to map this island.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BarbleysGoods")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheElvenArms")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "GnomesGuard")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DedrysGrown")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DedrySupplies")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "AldursHold")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BankOfFaraldor")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "MinersGold")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheDrowsVault")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheOrksSafe")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "MurvedsTower")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "FerTheJurney")
            {
                FloatingTextStringOnCreature("There is no reason to map this tent.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HilltopTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HairfootGoods")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "HobbitsHerbs")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheDeepArcane")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DragrinsForge")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheForestsFriend")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheSunkenGarden")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheShamunsTowur")
            {
                FloatingTextStringOnCreature("There is no reason to map this shop.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "Mausoleum")
            {
                FloatingTextStringOnCreature("There is no reason to map this tomb.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "ThicketTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "RestfulInn")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheMountainHall")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "SouthernShore")
            {
                FloatingTextStringOnCreature("There is no reason to map this shoreline.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "StarshineTavern")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TheSturjsBlud")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DrunkenDepths")
            {
                FloatingTextStringOnCreature("There is no reason to map this tavern.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "TowerOfArcaneArts")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "DragrinsMine")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "MountainOfPestilence")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "MiradirsGate")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "TreeTop")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "RuinedBuilding")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "UnderearthBank")
            {
                FloatingTextStringOnCreature("There is no reason to map this bank.", oPC, FALSE);
            }
            else if (GetTag(oArea) == "BrushwoodDocks")
            {
                FloatingTextStringOnCreature(
                    "You decide not to map this area as it is too small to bother.",
                    oPC,
                    FALSE);
            }
            else if (GetTag(oArea) == "VrethamsTower")
            {
                FloatingTextStringOnCreature("There is no reason to map this tower.", oPC, FALSE);
            }


            else
            {
                FloatingTextStringOnCreature("You need to get to a better area to make a good map.", oPC, FALSE);
            }
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        else if (GetLocalInt(oPC, "mapallow") == 1)
        {
            if ((!HasItem(oPC, "map_paper")) == FALSE)
            {
                DestroyObject(GetItemPossessedBy(oPC, "map_paper"));
                AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_READ));

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                if (GetTag(oArea) == "BrushwoodValley")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map001", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Brushwood Valley.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map001", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brushwood Valley.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map001", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brushwood Valley.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheShadedWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map002", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Clouded Veil.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map002", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clouded Veil.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map002", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clouded Veil.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map003", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Vegnar Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map003", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Vegnar Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map003", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Vegnar Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map004", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Nilas Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map004", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Nilas Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map004", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Nilas Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheUnderwood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map005", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map005", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map005", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Underwood.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ThePurgs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map006", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Purgs lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map006", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Purgs lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map006", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Purgs lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheVileBog")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map007", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map007", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map007", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vile Bog.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheBruolBugbears")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map008", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Bruol Bugbear Lair.",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map008", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bruol Bugbear Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map008", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bruol Bugbear Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheStonesOfConfusion")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map009", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped this confusing maze.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map009", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped this confusing maze.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map009", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped this confusing maze.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasFields")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map010", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Nilas Fields.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map010", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nilas Fields.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map010", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nilas Fields.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheShiftingGrowth")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map011", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Shifting Growth.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map011", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shifting Growth.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map011", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shifting Growth.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheHiddenGrove")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map012", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hidden Grove.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map012", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hidden Grove.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map012", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hidden Grove.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheGreatOakVillage")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map013", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map013", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map013", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Great Oak.", oPC, FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "MiradirsGate2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map014", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Miradir's Gate.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map014", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Gate.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map014", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Gate.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheWickedMarsh")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map015", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Wicked Marsh.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map015", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wicked Marsh.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map015", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wicked Marsh.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PathOfMiradir")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map016", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Path of Miradir.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map016", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Path of Miradir.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map016", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Path of Miradir.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "MiradirsCastle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map017", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Miradir's Castle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map017", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Castle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map017", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Miradir's Castle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "SarylSwamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map018", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Saryl Swamp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map018", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Saryl Swamp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map018", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Saryl Swamp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheVileTower")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map019", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vile Tower.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map019", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vile Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map019", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vile Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PaelHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map020", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Prael Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map020", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map020", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "PraelCliffs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map021", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Prael Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map021", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map021", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Prael Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheShiveringWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map022", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Shivering Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map022", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shivering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map022", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shivering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }
                else if (GetTag(oArea) == "TheDig")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map023", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map023", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map023", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Dig.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheTuranBattlefield")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map024", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Turan Battlefield.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map024", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Turan Battlefield.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map024", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Turan Battlefield.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DenOfDrub")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map025", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Drub's Den.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map025", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Drub's Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map025", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Drub's Den.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrozenTrail")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map026", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frozen Trail.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map026", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frozen Trail.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map026", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Frozen Trail.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfBrakal")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map027", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Brakal's Tower.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map027", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brakal's Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map027", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Brakal's Tower.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DaclorsCrossing")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map028", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Daclor's Crossing.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map028", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Daclor's Crossing.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map028", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Crossing.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VillageOfAldur")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map029", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map029", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map029", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Aldur Village.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrostbiteHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map030", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frostbite Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map030", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map030", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FrostbiteMines")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map031", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Frostbite Mines.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map031", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Mines.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map031", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Frostbite Mines.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PitsOfFrost")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map032", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Pits of Frost.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map032", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Pits of Frost.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map032", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Pits of Frost.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NerodHills")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map033", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Nerod Hills.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map033", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nerod Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map033", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Nerod Hills.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WroksLair")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map034", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map034", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map034", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Wrok's Lair.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WhisperingWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map035", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Whispering Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map035", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Whispering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map035", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Whispering Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ClarionWoodlands")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map036", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Clarion Woodlands.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map036", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clarion Woodlands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map036", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Clarion Woodlands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheTowerOfTheSilverOrder")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map037", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Tower of the Silver Order.",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map037", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Silver Order.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map037", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Silver Order.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }


                else if (GetTag(oArea) == "Basement")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map038", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map038", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map038", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Basement.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GlowianForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map039", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Glowian Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map039", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Glowian Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map039", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Glowian Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPass")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map040", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map040", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map040", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Vegnar Pass.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DrigdugsLair")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map041", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Drigdug's Lair.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map041", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Drigdug's Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map041", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Drigdug's Lair.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "KabardRuins")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map042", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map042", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map042", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Kabard Ruins.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CliffsOfTheFallen")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map043", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Fallen Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map043", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Fallen Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map043", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Fallen Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FortressOfZaltos2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map044", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Zaltos' Fortress.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map044", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Zaltos' Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map044", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Zaltos' Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPlains")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map045", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vegnar Plains.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map045", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Plains.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map045", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Plains.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BaolTribe")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map046", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map046", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map046", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Baol's Camp.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HarpyCliffs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map047", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Harpy Cliffs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map047", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Harpy Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map047", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Harpy Cliffs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CityOfFaraldor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map048", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the City of Faraldor.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map048", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Faraldor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map048", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Faraldor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DelirForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map049", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Delir Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map049", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Delir Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map049", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Delir Forest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "SparklingWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map050", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sparkling Wood.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map050", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sparkling Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map050", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sparkling Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VrugarOrcTribe")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map051", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vrugar Orc Cave.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map051", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vrugar Orc Cave.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map051", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vrugar Orc Cave.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Sewers")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map052", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map052", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map052", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Sewers.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WalkwayOfWind")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map053", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Walkway of Wind.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map053", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Walkway of Wind.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map053", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Walkway of Wind.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NilasForest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map054", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map054", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map054", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Nilas Forest.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FalcorNest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map055", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Falcor Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map055", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Falcor Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map055", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Falcor Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CursedGlades")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map056", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cursed Glades.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map056", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cursed Glades.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map056", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cursed Glades.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfRunes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map057", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Tower of Runes.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map057", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of Runes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map057", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of Runes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WebOfShira")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map058", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Shira's Web.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map058", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shira's Web.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map058", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Shira's Web.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MelaganJungle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map059", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Melagan Jungle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map059", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map059", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VillageOfGrogor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map060", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Grogor Village.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map060", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grogor Village.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map060", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grogor Village.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WearyWay")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map061", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map061", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map061", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Weary Way.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MelaganRuins")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map062", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Melagan Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map062", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map062", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Melagan Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RakshasaCamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map063", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Rakshasa Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map063", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Rakshasa Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map063", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Rakshasa Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "ManticoreDen")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map064", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Manticore Den.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map064", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manticore Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map064", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manticore Den.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TempleOfTears")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map065", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Temple of Tears.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map065", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Temple of Tears.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map065", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Temple of Tears.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GrogorJungle")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map066", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Grogor Jungle.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map066", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Grogor Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map066", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Grogor Jungle.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VankCaves")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map067", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vank Caves.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map067", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vank Caves.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map067", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vank Caves.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryHamlet")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map068", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Hamlet.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map068", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Hamlet.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map068", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Hamlet.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryTunnels")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map069", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Tunnels.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map069", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Tunnels.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map069", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Tunnels.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PitOfDar")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map070", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map070", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map070", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Dar's Pit.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Wastelands")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map071", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Wastelands.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map071", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wastelands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map071", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Wastelands.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "NestOfManscorpions")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map072", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Manscorpion Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map072", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manscorpion Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map072", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Manscorpion Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheHive")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map073", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map073", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map073", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Hive.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "AridDunes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map074", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Arid Dunes.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map074", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Arid Dunes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map074", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Arid Dunes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RuinsOfBrodak")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map075", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Brodak Ruins.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map075", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brodak Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map075", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Brodak Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Oasis")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map076", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map076", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map076", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Oasis.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "VegnarPassageway")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map077", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vegnar Passageway.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map077", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Passageway.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map077", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Vegnar Passageway.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DaclorsMountain")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map078", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Daclor's Mountain.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map078", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map078", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Daclor's Mountain.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FirebrandKeep")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map079", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Firebrand Keep.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map079", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Firebrand Keep.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map079", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Firebrand Keep.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryCemetery")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map080", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Cemetery.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map080", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Cemetery.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map080", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Cemetery.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryWoods")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map081", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Woods.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map081", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map081", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Woods.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BanditCamp")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map082", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Bandit Camp.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map082", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bandit Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map082", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Bandit Camp.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "DedryCatacombs")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map083", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dedry Catacombs.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map083", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Catacombs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map083", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dedry Catacombs.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HorfiladManor")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map084", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Horfilad Manor.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map084", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad Manor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map084", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad Manor.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HorfiladsDungeon")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map085", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Horfilad's Dungeon.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map085", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad's Dungeon.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map085", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Horfilad's Dungeon.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TaraksFortress")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map086", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Tarak's Fortress.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map086", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Tarak's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map086", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Tarak's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "BeetleNest")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map087", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Beetle Nest.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map087", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Beetle Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map087", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Beetle Nest.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PiratesCove")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map088", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map088", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map088", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped Pirate's Cove.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheBorbanPit")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map089", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Borban Pit.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map089", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Borban Pit.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map089", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Borban Pit.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HollowScreams")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map090", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Hollow Screams.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map090", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hollow Screams.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map090", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Hollow Screams.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "UnderPassage")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map091", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Under Passage.", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map091", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Under Passage.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map091", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Under Passage.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "Clouds")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map092", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cloud City", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map092", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cloud City.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map092", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cloud City.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "OldCity")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map093", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Old City", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map093", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Old City.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map093", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Old City.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "HallsOfStone")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map094", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Halls of Stone", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map094", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Halls of Stone.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map094", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Halls of Stone.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CaveOfEyes")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map095", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Cave of Eyes", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map095", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cave of Eyes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map095", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Cave of Eyes.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FortressOfGlomarin")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map096", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Glomarin's Fortress", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map096", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Glomarin's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map096", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Glomarin's Fortress.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "WellOfSouls")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map097", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Well of Souls", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map097", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Well of Souls.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map097", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Well of Souls.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheScorn")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map098", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Scorn", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map098", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Scorn.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map098", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Scorn.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheCrypts")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map099", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Crypts", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map099", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Crypts.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map099", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Crypts.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TheVault")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map100", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Vault", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map100", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vault.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map100", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Vault.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "TowerOfTheDamned")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map101", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature(
                            "You have successfully mapped the Tower of the Damned",
                            oPC,
                            FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map101", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Damned.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map101", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Tower of the Damned.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "RuinsOfJarehar")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map102", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Jarehar Ruins", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map102", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Jarehar Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map102", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Jarehar Ruins.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "FieldOfSilence")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map103", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Field of Silence", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map103", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Field of Silence.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map103", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Field of Silence.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "PalaceOfDracz")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map104", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Dracz's Palace", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map104", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dracz's Palace.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map104", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Dracz's Palace.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CityOfThought2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map105", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the City of Thought", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map105", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Thought.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map105", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the City of Thought.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "CitadelLevelSeven")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map106", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Citadel", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map106", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Citadel.", oPC, FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map106", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature("You have successfully mapped the Citadel.", oPC, FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GrandulsHold2")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map108", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped Grandul's Hold", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map108", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grandul's Hold.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map108", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped Grandul's Hold.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "MapleWood")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map109", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Maple Wood", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map109", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Maple Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map109", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Maple Wood.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "GremlinHole")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map110", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Gremlin Hole", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map110", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Gremlin Hole.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map110", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Gremlin Hole.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                else if (GetTag(oArea) == "SapharalCoastline")
                {
                    if (oIntel >= 17)
                    {
                        SetLocalInt(oMap, "map111", 1);
                        ExploreAreaForPlayer(oArea, oPC);
                        FloatingTextStringOnCreature("You have successfully mapped the Sapharal Coastline", oPC, FALSE);
                    }
                    else if ((oIntel >= 12) && (oIntel <= 16))
                    {
                        {
                            int nRandom = d4(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map111", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sapharal Coastline.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                    else if (oIntel <= 11)
                    {
                        {
                            int nRandom = d2(1);
                            if (nRandom == 1)
                            {
                                FloatingTextStringOnCreature(
                                    "You failed to make a map.  The paper is ruined.",
                                    oPC,
                                    FALSE);
                            }
                            else
                            {
                                SetLocalInt(oMap, "map111", 1);
                                ExploreAreaForPlayer(oArea, oPC);
                                FloatingTextStringOnCreature(
                                    "You have successfully mapped the Sapharal Coastline.",
                                    oPC,
                                    FALSE);
                            }
                        }
                    }
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                else
                {
                    FloatingTextStringOnCreature(
                        "You decide not to map this area as it is too small to bother.",
                        oPC,
                        FALSE);
                    CreateItemOnObject("map_paper", oPC, 1);
                }
            }
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            else
            {
                FloatingTextStringOnCreature("You need blank map paper to map this area.", oPC, FALSE);
            }
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
