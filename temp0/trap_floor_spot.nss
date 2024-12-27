void main()
{
    object oPC = GetEnteringObject();
    object oTrap = GetNearestObjectByTag("trap_object", oPC);
    object oArea = GetArea(oPC);
    int nSkill = GetSkillRank(SKILL_SEARCH, oPC);
    int nSet = GetLocalInt(oTrap, "trapped");
    int nFound = GetLocalInt(oPC, "trapfind");
    int nDC1 = 5;
    int nDC2 = 10;
    int nDC3 = 15;
    int nDC4 = 20;
    int nDC5 = 25;
    int nDC6 = 12;
    int nDC7 = 17;
    int nDC8 = 22;

    if (GetIsPC(oPC) == TRUE)
    {
        // Traps In Brakal's Tower
        if (GetTag(oArea) == "TowerOfBrakal")
        {
            if ((d20(1) + nSkill) >= nDC3)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 40);
                SetLocalString(oTrap, "type", "Ice Avalanche Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Bruol Bugbears
        else if (GetTag(oArea) == "TheBruolBugbears")
        {
            if ((d20(1) + nSkill) >= nDC6)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 24);
                SetLocalString(oTrap, "type", "Floor Spike Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Drub's Den
        else if (GetTag(oArea) == "DenOfDrub")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 40);
                SetLocalString(oTrap, "type", "Floor Spike Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Wrok's Lair
        else if (GetTag(oArea) == "WroksLair")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 40);
                SetLocalString(oTrap, "type", "Floor Spike Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Drigdug's Lair
        else if (GetTag(oArea) == "DrigdugsLair")
        {
            if ((d20(1) + nSkill) >= nDC6)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 24);
                SetLocalString(oTrap, "type", "Floor Spike Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Gnoll Ruins
        else if (GetTag(oArea) == "KabardRuins")
        {
            if ((d20(1) + nSkill) >= nDC6)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 24);
                SetLocalString(oTrap, "type", "Floor Spike Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Zaltos' Fortress
        else if (GetStringLeft(GetTag(GetArea(oPC)), 16) == "FortressOfZaltos")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 42);
                SetLocalString(oTrap, "type", "Electrical Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in the Melagan Ruins
        else if (GetTag(oArea) == "MelaganRuins")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 38);
                SetLocalString(oTrap, "type", "Scalding Acid Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Temple of Tears
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "TempleOfTears")
        {
            if ((d20(1) + nSkill) >= nDC7)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 36);
                SetLocalString(oTrap, "type", "Scalding Fire Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Daclor's Mountain
        else if (GetStringLeft(GetTag(GetArea(oPC)), 15) == "DaclorsMountain")
        {
            if ((d20(1) + nSkill) >= nDC5)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 50);
                SetLocalString(oTrap, "type", "Lava Flame Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Dedry Catacombs
        else if (GetTag(GetArea(oPC)) == "DedryCatacombs")
        {
            if ((d20(1) + nSkill) >= nDC2)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 20);
                SetLocalString(oTrap, "type", "Crypt Fire Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in the Old City
        else if (GetTag(GetArea(oPC)) == "OldCity")
        {
            if ((d20(1) + nSkill) >= nDC2)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 20);
                SetLocalString(oTrap, "type", "recently set Fire Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Halls of Stone
        else if (GetTag(GetArea(oPC)) == "HallsOfStone")
        {
            if ((d20(1) + nSkill) >= nDC7)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 36);
                SetLocalString(oTrap, "type", "Poison Cloud Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Glomarin's Fortress
        else if (GetStringLeft(GetTag(GetArea(oPC)), 18) == "FortressOfGlomarin")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 40);
                SetLocalString(oTrap, "type", "Magical Energy Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Dracz's Palace
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "PalaceOfDracz")
        {
            if ((d20(1) + nSkill) >= nDC4)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 40);
                SetLocalString(oTrap, "type", "Magical Energy Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }

        // Traps in Citadel Level 3 & 4
        else if ((GetTag(GetArea(oPC)) == "CitadelLevelThree") || (GetTag(GetArea(oPC)) == "CitadelLevelFour"))
        {
            if ((d20(1) + nSkill) >= nDC8)
            {
                if (nSet == 0)
                {
                    FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                }
                if (nSet == 1)
                {
                    FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                }
                if (nSet == 2)
                {
                    FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                }
                SetLocalInt(oTrap, "level", 45);
                SetLocalString(oTrap, "type", "Knockout Gas Trap");
                SetLocalInt(oPC, "trapfind", 1);
            }
        }


        // Traps in the Secret Room
        else if (GetTag(oArea) == "SecretRoom1")
        {
            int nZowy = GetLocalInt(oTrap, "secret");
            if (nZowy == 1)
            {
                if ((d20(1) + nSkill) >= nDC4)
                {
                    if (nSet == 0)
                    {
                        FloatingTextStringOnCreature("You detect a trap nearby.", oPC, FALSE);
                    }
                    if (nSet == 1)
                    {
                        FloatingTextStringOnCreature("You detect a disabled trap nearby.", oPC, FALSE);
                    }
                    if (nSet == 2)
                    {
                        FloatingTextStringOnCreature("You detect a tampered trap nearby.", oPC, FALSE);
                    }
                    SetLocalInt(oTrap, "level", 42);
                    SetLocalString(oTrap, "type", "Electrical Trap");
                    SetLocalInt(oPC, "trapfind", 1);
                }
            }
        }
    }
    else
    {
    }
}
