// Sets the faction integers for the PC
void main()
{
    object oPC = GetEnteringObject();
    object oFaction = GetItemPossessedBy(oPC, "faction_report");

    if (GetRacialType(oPC) == RACIAL_TYPE_HALFLING)
    {
        SetLocalInt(oFaction, "brownie", 30);
        SetLocalInt(oFaction, "quickling", 0);
        SetLocalInt(oFaction, "duergar", 0);
        SetLocalInt(oFaction, "pixie", 30);
        SetLocalInt(oFaction, "nixie", 30);
        SetLocalInt(oFaction, "sprite", 30);
        SetLocalInt(oFaction, "brushwood", 50);
        SetLocalInt(oFaction, "vegnar", 30);
        SetLocalInt(oFaction, "faraldor", 30);
        SetLocalInt(oFaction, "grogor", 0);
        SetLocalInt(oFaction, "dedry", 30);
        SetLocalInt(oFaction, "nilas", 0);
        SetLocalInt(oFaction, "aldur", 30);
        SetLocalInt(oFaction, "orcs", 0);
        SetLocalInt(oFaction, "drogo", 30);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 30);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }

    if ((GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_GOBLINOID) ||
        (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_REPTILIAN))
    {
        SetLocalInt(oFaction, "brownie", 0);
        SetLocalInt(oFaction, "quickling", 0);
        SetLocalInt(oFaction, "duergar", 0);
        SetLocalInt(oFaction, "pixie", 0);
        SetLocalInt(oFaction, "nixie", 0);
        SetLocalInt(oFaction, "sprite", 0);
        SetLocalInt(oFaction, "brushwood", 0);
        SetLocalInt(oFaction, "vegnar", 0);
        SetLocalInt(oFaction, "faraldor", 0);
        SetLocalInt(oFaction, "grogor", 0);
        SetLocalInt(oFaction, "dedry", 0);
        SetLocalInt(oFaction, "nilas", 0);
        SetLocalInt(oFaction, "aldur", 0);
        SetLocalInt(oFaction, "orcs", 0);
        SetLocalInt(oFaction, "drogo", 0);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 0);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }

    else if (GetRacialType(oPC) == RACIAL_TYPE_GIANT)
    {
        if (GetSubRace(oPC) == "Ogre")
        {
            SetLocalInt(oFaction, "brownie", 0);
            SetLocalInt(oFaction, "quickling", 15);
            SetLocalInt(oFaction, "duergar", 15);
            SetLocalInt(oFaction, "pixie", 0);
            SetLocalInt(oFaction, "nixie", 0);
            SetLocalInt(oFaction, "sprite", 0);
            SetLocalInt(oFaction, "brushwood", 0);
            SetLocalInt(oFaction, "vegnar", 0);
            SetLocalInt(oFaction, "faraldor", 0);
            SetLocalInt(oFaction, "grogor", 35);
            SetLocalInt(oFaction, "dedry", 0);
            SetLocalInt(oFaction, "nilas", 15);
            SetLocalInt(oFaction, "aldur", 0);
            SetLocalInt(oFaction, "orcs", 15);
            SetLocalInt(oFaction, "drogo", 0);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 0);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS)
    {
        if (GetSubRace(oPC) == "Minotaur")
        {
            SetLocalInt(oFaction, "brownie", 0);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 0);
            SetLocalInt(oFaction, "nixie", 0);
            SetLocalInt(oFaction, "sprite", 0);
            SetLocalInt(oFaction, "brushwood", 0);
            SetLocalInt(oFaction, "vegnar", 0);
            SetLocalInt(oFaction, "faraldor", 0);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 0);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 0);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 0);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "minotaur", 50);
            SetLocalInt(oFaction, "sylvan", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_DWARF)
    {
        if (GetSubRace(oPC) == "Duergar")
        {
            SetLocalInt(oFaction, "brownie", 0);
            SetLocalInt(oFaction, "quickling", 15);
            SetLocalInt(oFaction, "duergar", 50);
            SetLocalInt(oFaction, "pixie", 0);
            SetLocalInt(oFaction, "nixie", 0);
            SetLocalInt(oFaction, "sprite", 0);
            SetLocalInt(oFaction, "brushwood", 0);
            SetLocalInt(oFaction, "vegnar", 0);
            SetLocalInt(oFaction, "faraldor", 0);
            SetLocalInt(oFaction, "grogor", 15);
            SetLocalInt(oFaction, "dedry", 0);
            SetLocalInt(oFaction, "nilas", 35);
            SetLocalInt(oFaction, "aldur", 0);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 0);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 0);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
        else
        {
            SetLocalInt(oFaction, "brownie", 30);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 30);
            SetLocalInt(oFaction, "nixie", 30);
            SetLocalInt(oFaction, "sprite", 30);
            SetLocalInt(oFaction, "brushwood", 30);
            SetLocalInt(oFaction, "vegnar", 50);
            SetLocalInt(oFaction, "faraldor", 30);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 30);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 30);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 30);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 30);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_ELF)
    {
        if (GetSubRace(oPC) == "Drow")
        {
            SetLocalInt(oFaction, "brownie", 0);
            SetLocalInt(oFaction, "quickling", 30);
            SetLocalInt(oFaction, "duergar", 30);
            SetLocalInt(oFaction, "pixie", 0);
            SetLocalInt(oFaction, "nixie", 0);
            SetLocalInt(oFaction, "sprite", 0);
            SetLocalInt(oFaction, "brushwood", 0);
            SetLocalInt(oFaction, "vegnar", 0);
            SetLocalInt(oFaction, "faraldor", 0);
            SetLocalInt(oFaction, "grogor", 30);
            SetLocalInt(oFaction, "dedry", 0);
            SetLocalInt(oFaction, "nilas", 50);
            SetLocalInt(oFaction, "aldur", 0);
            SetLocalInt(oFaction, "orcs", 30);
            SetLocalInt(oFaction, "drogo", 0);
            SetLocalInt(oFaction, "driders", 30);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 0);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
        else if (GetSubRace(oPC) == "Sylvan")
        {
            SetLocalInt(oFaction, "brownie", 50);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 50);
            SetLocalInt(oFaction, "nixie", 50);
            SetLocalInt(oFaction, "sprite", 50);
            SetLocalInt(oFaction, "brushwood", 30);
            SetLocalInt(oFaction, "vegnar", 30);
            SetLocalInt(oFaction, "faraldor", 30);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 30);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 30);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 30);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 50);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
        else
        {
            SetLocalInt(oFaction, "brownie", 30);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 30);
            SetLocalInt(oFaction, "nixie", 30);
            SetLocalInt(oFaction, "sprite", 30);
            SetLocalInt(oFaction, "brushwood", 30);
            SetLocalInt(oFaction, "vegnar", 30);
            SetLocalInt(oFaction, "faraldor", 50);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 30);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 30);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 30);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 30);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_GNOME)
    {
        SetLocalInt(oFaction, "brownie", 30);
        SetLocalInt(oFaction, "quickling", 0);
        SetLocalInt(oFaction, "duergar", 0);
        SetLocalInt(oFaction, "pixie", 30);
        SetLocalInt(oFaction, "nixie", 30);
        SetLocalInt(oFaction, "sprite", 30);
        SetLocalInt(oFaction, "brushwood", 30);
        SetLocalInt(oFaction, "vegnar", 30);
        SetLocalInt(oFaction, "faraldor", 30);
        SetLocalInt(oFaction, "grogor", 0);
        SetLocalInt(oFaction, "dedry", 50);
        SetLocalInt(oFaction, "nilas", 0);
        SetLocalInt(oFaction, "aldur", 30);
        SetLocalInt(oFaction, "orcs", 0);
        SetLocalInt(oFaction, "drogo", 30);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 30);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_HALFORC)
    {
        SetLocalInt(oFaction, "brownie", 0);
        SetLocalInt(oFaction, "quickling", 15);
        SetLocalInt(oFaction, "duergar", 15);
        SetLocalInt(oFaction, "pixie", 0);
        SetLocalInt(oFaction, "nixie", 0);
        SetLocalInt(oFaction, "sprite", 0);
        SetLocalInt(oFaction, "brushwood", 0);
        SetLocalInt(oFaction, "vegnar", 0);
        SetLocalInt(oFaction, "faraldor", 0);
        SetLocalInt(oFaction, "grogor", 50);
        SetLocalInt(oFaction, "dedry", 0);
        SetLocalInt(oFaction, "nilas", 30);
        SetLocalInt(oFaction, "aldur", 30);
        SetLocalInt(oFaction, "orcs", 50);
        SetLocalInt(oFaction, "drogo", 0);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 0);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_HUMAN)
    {
        SetLocalInt(oFaction, "brownie", 30);
        SetLocalInt(oFaction, "quickling", 0);
        SetLocalInt(oFaction, "duergar", 0);
        SetLocalInt(oFaction, "pixie", 30);
        SetLocalInt(oFaction, "nixie", 30);
        SetLocalInt(oFaction, "sprite", 30);
        SetLocalInt(oFaction, "brushwood", 30);
        SetLocalInt(oFaction, "vegnar", 30);
        SetLocalInt(oFaction, "faraldor", 30);
        SetLocalInt(oFaction, "grogor", 0);
        SetLocalInt(oFaction, "dedry", 30);
        SetLocalInt(oFaction, "nilas", 0);
        SetLocalInt(oFaction, "aldur", 50);
        SetLocalInt(oFaction, "orcs", 0);
        SetLocalInt(oFaction, "drogo", 30);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 30);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_HALFELF)
    {
        SetLocalInt(oFaction, "brownie", 30);
        SetLocalInt(oFaction, "quickling", 0);
        SetLocalInt(oFaction, "duergar", 0);
        SetLocalInt(oFaction, "pixie", 30);
        SetLocalInt(oFaction, "nixie", 30);
        SetLocalInt(oFaction, "sprite", 30);
        SetLocalInt(oFaction, "brushwood", 30);
        SetLocalInt(oFaction, "vegnar", 30);
        SetLocalInt(oFaction, "faraldor", 35);
        SetLocalInt(oFaction, "grogor", 0);
        SetLocalInt(oFaction, "dedry", 30);
        SetLocalInt(oFaction, "nilas", 0);
        SetLocalInt(oFaction, "aldur", 35);
        SetLocalInt(oFaction, "orcs", 0);
        SetLocalInt(oFaction, "drogo", 30);
        SetLocalInt(oFaction, "driders", 0);
        SetLocalInt(oFaction, "firebrand", 0);
        SetLocalInt(oFaction, "sphinx", 30);
        SetLocalInt(oFaction, "sylvan", 30);
        SetLocalInt(oFaction, "minotaur", 0);
        SetLocalInt(oFaction, "vampire", 0);
        SetLocalInt(oFaction, "drgred", 0);
        SetLocalInt(oFaction, "drgwhite", 0);
        SetLocalInt(oFaction, "drgblack", 0);
        SetLocalInt(oFaction, "drgblue", 0);
        SetLocalInt(oFaction, "drggreen", 0);
        SetLocalInt(oFaction, "drgshadow", 0);
        SetLocalInt(oFaction, "drgbrass", 35);
        SetLocalInt(oFaction, "drgcopper", 35);
        SetLocalInt(oFaction, "drgsilver", 35);
        SetLocalInt(oFaction, "drggold", 35);
        SetLocalInt(oFaction, "drgbronze", 35);
        SetLocalInt(oFaction, "drgprism", 35);
    }
    else if (GetRacialType(oPC) == RACIAL_TYPE_FEY)
    {
        if (GetSubRace(oPC) == "Quickling")
        {
            SetLocalInt(oFaction, "brownie", 0);
            SetLocalInt(oFaction, "quickling", 50);
            SetLocalInt(oFaction, "duergar", 30);
            SetLocalInt(oFaction, "pixie", 0);
            SetLocalInt(oFaction, "nixie", 0);
            SetLocalInt(oFaction, "sprite", 0);
            SetLocalInt(oFaction, "brushwood", 0);
            SetLocalInt(oFaction, "vegnar", 0);
            SetLocalInt(oFaction, "faraldor", 0);
            SetLocalInt(oFaction, "grogor", 15);
            SetLocalInt(oFaction, "dedry", 0);
            SetLocalInt(oFaction, "nilas", 35);
            SetLocalInt(oFaction, "aldur", 0);
            SetLocalInt(oFaction, "orcs", 15);
            SetLocalInt(oFaction, "drogo", 0);
            SetLocalInt(oFaction, "driders", 30);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 0);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
        else if (GetSubRace(oPC) == "Sprite")
        {
            SetLocalInt(oFaction, "brownie", 50);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 30);
            SetLocalInt(oFaction, "nixie", 30);
            SetLocalInt(oFaction, "sprite", 50);
            SetLocalInt(oFaction, "brushwood", 30);
            SetLocalInt(oFaction, "vegnar", 30);
            SetLocalInt(oFaction, "faraldor", 30);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 30);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 30);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 30);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 50);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
        else
        {
            SetLocalInt(oFaction, "brownie", 50);
            SetLocalInt(oFaction, "quickling", 0);
            SetLocalInt(oFaction, "duergar", 0);
            SetLocalInt(oFaction, "pixie", 30);
            SetLocalInt(oFaction, "nixie", 30);
            SetLocalInt(oFaction, "sprite", 30);
            SetLocalInt(oFaction, "brushwood", 30);
            SetLocalInt(oFaction, "vegnar", 30);
            SetLocalInt(oFaction, "faraldor", 30);
            SetLocalInt(oFaction, "grogor", 0);
            SetLocalInt(oFaction, "dedry", 30);
            SetLocalInt(oFaction, "nilas", 0);
            SetLocalInt(oFaction, "aldur", 30);
            SetLocalInt(oFaction, "orcs", 0);
            SetLocalInt(oFaction, "drogo", 30);
            SetLocalInt(oFaction, "driders", 0);
            SetLocalInt(oFaction, "firebrand", 0);
            SetLocalInt(oFaction, "sphinx", 30);
            SetLocalInt(oFaction, "sylvan", 50);
            SetLocalInt(oFaction, "minotaur", 0);
            SetLocalInt(oFaction, "vampire", 0);
            SetLocalInt(oFaction, "drgred", 0);
            SetLocalInt(oFaction, "drgwhite", 0);
            SetLocalInt(oFaction, "drgblack", 0);
            SetLocalInt(oFaction, "drgblue", 0);
            SetLocalInt(oFaction, "drggreen", 0);
            SetLocalInt(oFaction, "drgshadow", 0);
            SetLocalInt(oFaction, "drgbrass", 35);
            SetLocalInt(oFaction, "drgcopper", 35);
            SetLocalInt(oFaction, "drgsilver", 35);
            SetLocalInt(oFaction, "drggold", 35);
            SetLocalInt(oFaction, "drgbronze", 35);
            SetLocalInt(oFaction, "drgprism", 35);
        }
    }

    else
    {
    }
}
