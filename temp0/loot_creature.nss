// Loot script for creatures
#include "x0_i0_treasure"

void sl_generate_lodor_loot(object creature)
{
    int race = GetRacialType(creature);
    int level = GetHitDice(creature);
    int loot_cap = 3 - level / 15;

    if (race == RACIAL_TYPE_ANIMAL ||
        race == RACIAL_TYPE_BEAST ||
        race == RACIAL_TYPE_INVALID ||
        race == RACIAL_TYPE_VERMIN ||
        d100(1) > loot_cap)
    {
        return;
    }

    SetLocalInt(creature, "sl_loot_level", level);

    if (d2(1) == 1)
    {
        ExecuteScript("loot_ench_arm", creature);
    }
    else
    {
        ExecuteScript("loot_ench_wep", creature);
    }
}


void main()
{
    // sl: add lodor loot for creatures
    sl_generate_lodor_loot(OBJECT_SELF);

    int nMinotaur = d10(1);

    // Maybe a reagent will spawn
    if ((GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ANIMAL) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_OOZE) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_VERMIN) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_BEAST) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ELEMENTAL) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_CONSTRUCT) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ABERRATION))
    {
    }
    else
    {
        if (d20(1) == 1)
        {
            SetLocalInt(OBJECT_SELF, "newloot2", 2); //Select a Reagent From
            ExecuteScript("loot_new_list", OBJECT_SELF);
        }
    } //Lodor Specific Items


    //Goblin (Old City
    if (GetTag(OBJECT_SELF) == "DJ_GOBLINL")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Goblin
    }
    else if (GetTag(OBJECT_SELF) == "DJ_GOBLINA")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Goblin Warrior
    }
    else if (GetTag(OBJECT_SELF) == "DJ_GOBLINEL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Goblin Shaman
    }
    else if (GetTag(OBJECT_SELF) == "DJ_GOBLINWIZ")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Gremlin
    }
    else if (GetTag(OBJECT_SELF) == "LD_GREMLIN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);

        //Magicians
    }
    else if (GetTag(OBJECT_SELF) == "LD_MAGICIAN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Nixie
    }
    else if (GetTag(OBJECT_SELF) == "DJ_NIXIE")
    {
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("x2_it_lightgem001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("x2_it_lightgem002", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("x2_it_lightgem003", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("x2_it_lightgem004", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("x2_it_lightgem005", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("x2_it_lightgem006", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("x2_it_lightgem007", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Nixie Leader
    }
    else if (GetTag(OBJECT_SELF) == "DJ_NIXIE2")
    {
        {
            int nRandom = d8(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("x2_it_lightgem001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("x2_it_lightgem002", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("x2_it_lightgem003", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("x2_it_lightgem004", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("x2_it_lightgem005", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("x2_it_lightgem006", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("x2_it_lightgem007", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Bugbear
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARA")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bugbear Warrior
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARW")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 15);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bugbear Burlop
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARW1")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 15);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bugbear Shaman
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARS")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 13);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Ogrillion
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_OGRILLON")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 26);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Lizardman (Saryl Swamp)
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_SARLIZ")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Lizardman Priest (Saryl Swamp)
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_SARLIZMAG")
    {
        GenerateLowTreasure(OBJECT_SELF);

        //Lizardman Champion (Saryl Swamp)
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_SARLIZLORD")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 26);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }


        //Minotaur
    }
    else if (GetTag(OBJECT_SELF) == "DJ_MINOTAURA")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 61);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Minotaur Warrior
    }
    else if (GetTag(OBJECT_SELF) == "DJ_MINOTAURW")
    {
        GenerateLowTreasure(OBJECT_SELF);
        if (nMinotaur == 1) { GenerateMediumTreasure(OBJECT_SELF); }
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Minotaur Shaman
    }
    else if (GetTag(OBJECT_SELF) == "DJ_MINOTAURS")
    {
        GenerateLowTreasure(OBJECT_SELF);
        if (nMinotaur == 1) { GenerateMediumTreasure(OBJECT_SELF); }
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 54);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Vile Skull
    }
    else if (GetTag(OBJECT_SELF) == "LD_VILESKULL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Skeleton & Other Creatures
    }
    else if ((GetTag(OBJECT_SELF) == "LD_SKELETON") ||
        (GetTag(OBJECT_SELF) == "LD_SKELBRUTE") ||
        (GetTag(OBJECT_SELF) == "LD_GRANDULOY") ||
        (GetTag(OBJECT_SELF) == "LD_LIZMAN"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Turan Warrior
    }
    else if (GetTag(OBJECT_SELF) == "LD_TURANWAR")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 6);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Turan
    }
    else if (GetTag(OBJECT_SELF) == "LD_TURAN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Wisp
    }
    else if (GetTag(OBJECT_SELF) == "LD_WILLOWISP")
    {
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 23);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("wisp_corpse", OBJECT_SELF, 1);
            }
            else
            {
            }
        }
        //Mountain Giant
    }
    else if (GetTag(OBJECT_SELF) == "LD_GIANTMNT")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 13);

        //Ettin
    }
    else if (GetTag(OBJECT_SELF) == "LD_GIANTETN")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WPLSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Ogre
    }
    else if (GetTag(OBJECT_SELF) == "LD_OGRE")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);

        //Ogre Warrior
    }
    else if (GetTag(OBJECT_SELF) == "LD_OGRECHIEF")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
        }

        //Ogre Lord
    }
    else if (GetTag(OBJECT_SELF) == "LD_OGRELORD")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 23);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WDBAX001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("NW_WDBAX001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WDBMAX002", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("x2_it_bmt_stors2", OBJECT_SELF, 1);
                CreateItemOnObject("NW_WDBMAX002", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Iron Bull
    }
    else if (GetTag(OBJECT_SELF) == "LD_CONSTRUCTMG")
    {
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Frost Giant (Male)
    }
    else if (GetTag(OBJECT_SELF) == "LD_GIANT_FRSTM")
    {
        {
            int nRandom = d100(1);
            if (nRandom < 3)
            {
                CreateItemOnObject("lodor_ice_slam", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 24);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 28);
                GenerateLowTreasure(OBJECT_SELF);
            }
        }

        //Cyclops
    }
    else if (GetTag(OBJECT_SELF) == "ld_cyclops")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 18);
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d100(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("staff_storm", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Frost Giant (Female)
    }
    else if (GetTag(OBJECT_SELF) == "LD_GIANT_FRSTF")
    {
        {
            int nRandom = d100(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_ice_slam", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 20);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 24);
                GenerateLowTreasure(OBJECT_SELF);
            }
        }

        //Boar Beastman
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BOARBEAST")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Kobolds
    }
    else if ((GetTag(OBJECT_SELF) == "LD_FRSTKOBLD") || (GetTag(OBJECT_SELF) == "LD_VANKKBLD"))
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Frostbite Kobold Warrior
    }
    else if ((GetTag(OBJECT_SELF) == "LD_FRSTKOBLDW") || (GetTag(OBJECT_SELF) == "LD_VANKKBLDW"))
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 6);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Frost Demon
    }
    else if (GetTag(OBJECT_SELF) == "ld_frstdemon")
    {
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
            }
            else if (nRandom == 2)
            {
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
            }
        }

        //Hill Giant
    }
    else if (GetTag(OBJECT_SELF) == "LD_GNTHILL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 21);
        {
            int nRandom = d6(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXGR001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WSWGS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WPLSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLHW001", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Thrall
    }
    else if (GetTag(OBJECT_SELF) == "ld_thrall")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 21);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d100(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_thrall_robe", OBJECT_SELF, 1);
            }
            else if (nRandom == 50)
            {
                CreateItemOnObject("ld_thrall_robe", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WPLSC001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Fallen Knight
    }
    else if (GetTag(OBJECT_SELF) == "LD_DOOMKGHT")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 22);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d100(1);
            if (nRandom < 71)
            {
                CreateItemOnObject("NW_AARCL006", OBJECT_SELF, 1);
            } //Half Plate
            else if ((nRandom > 70) || (nRandom < 90))
            {
                CreateItemOnObject("NW_MAARCL052", OBJECT_SELF, 1);
            } //Half Plate +1
            else if (nRandom > 89)
            {
                CreateItemOnObject("NW_MAARCL069", OBJECT_SELF, 1);
            }
        } //Half Plate +2
        {
            int nRandom = d100(1);
            if (nRandom < 71)
            {
                CreateItemOnObject("NW_WSWGS001", OBJECT_SELF, 1);
            } //Great Sword
            else if ((nRandom > 70) || (nRandom < 90))
            {
                CreateItemOnObject("NW_WSWMGS002", OBJECT_SELF, 1);
            } //Great Sword +1
            else if (nRandom > 89)
            {
                CreateItemOnObject("NW_WSWMGS011", OBJECT_SELF, 1);
            }
        } //Great Sword +2

        //Fallen Captain
    }
    else if (GetTag(OBJECT_SELF) == "LD_FALLENCP")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_AARCL006", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WSWGS001", OBJECT_SELF, 1);
            }
        }

        //Fallen Warrior
    }
    else if (GetTag(OBJECT_SELF) == "LD_FALLENWA")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_AARCL006", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WSWGS001", OBJECT_SELF, 1);
            }
        }

        //Fallen Sage
    }
    else if (GetTag(OBJECT_SELF) == "LD_FALLENSA")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 19);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 24);
                GenerateLowTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 28);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateLowTreasure(OBJECT_SELF);
            }
        }

        //Mummy
    }
    else if ((GetTag(OBJECT_SELF) == "LD_WMUMMY") || (GetTag(OBJECT_SELF) == "LD_PULTOK"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 1);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 15);
                GenerateLowTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 19);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF);
            }
        } //Lodor Specific Items

        //Shadow Hound
    }
    else if (GetTag(OBJECT_SELF) == "LD_SHADHOUND")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_shound_pelt", OBJECT_SELF, 1);
            }
        }

        //Malar Panther
    }
    else if (GetTag(OBJECT_SELF) == "LD_MALAR")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_mpanther_hd", OBJECT_SELF, 1);
            }
        }

        //Winter Wolf
    }
    else if (GetTag(OBJECT_SELF) == "LD_WOLFWINT")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_wwolf_pelt", OBJECT_SELF, 1);
            }
        }

        //Demonflesh Golem
    }
    else if (GetTag(OBJECT_SELF) == "ld_golemdem")
    {
        {
            int nRandom = d6(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("demon_skin", OBJECT_SELF, 1);
            }
        }

        //Gorgon
    }
    else if (GetTag(OBJECT_SELF) == "LD_WOLFWINT")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_wwolf_pelt", OBJECT_SELF, 1);
            }
        }

        //Basilisk
    }
    else if (GetTag(OBJECT_SELF) == "LD_GORGON")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_gorgon_pl", OBJECT_SELF, 1);
            }
        }

        //Hell Hound
    }
    else if (GetTag(OBJECT_SELF) == "LD_HELLHOUND")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_hellhnd_skin", OBJECT_SELF, 1);
            }
        }

        //Grymp
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_GRYMP")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d8(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Troll
    }
    else if (GetTag(OBJECT_SELF) == "LD_TROLL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_troll_blood", OBJECT_SELF, 1);
            }
        }

        //Gnoll
    }
    else if (GetTag(OBJECT_SELF) == "LD_GNOLL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Hobgoblin
    }
    else if (GetTag(OBJECT_SELF) == "LD_HOBGOBLIN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 3);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Hobgoblin Warrior
    }
    else if ((GetTag(OBJECT_SELF) == "LD_HOBGOBLINW") || (GetTag(OBJECT_SELF) == "LD_HOBGOBLINB"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 16);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Harpy
    }
    else if (GetTag(OBJECT_SELF) == "LD_HARPY")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("harpy_egg", OBJECT_SELF, 1);
            }
        }

        //Vrugar Orc
    }
    else if ((GetTag(OBJECT_SELF) == "LD_GAGORC") || (GetTag(OBJECT_SELF) == "LD_GAGORC2"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 3);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Vrugar Orc Warrior
    }
    else if (GetTag(OBJECT_SELF) == "LD_GAGORCW")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Vrugar
    }
    else if (GetTag(OBJECT_SELF) == "LD_GAGORCM")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Pixie
    }
    else if (GetTag(OBJECT_SELF) == "LD_PIXIE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_MSMLMISC19", OBJECT_SELF, 1);
            }
        }

        //Gelatinous Cube
        if (GetTag(OBJECT_SELF) == "LD_GELCUBE")
        {
            {
                int nRandom = d2(1);
                if (nRandom == 1)
                {
                    CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 6);
                }
            }
            {
                int nRandom = d2(1);
                if (nRandom == 1)
                {
                    CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
                }
            }
        }

        //Rat Man
    }
    else if (GetTag(OBJECT_SELF) == "LD_RATMAN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 4);

        //Rat Man Mage
    }
    else if (GetTag(OBJECT_SELF) == "LD_RATMANM")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);

        //Hobbit
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_HOBBIT")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Falcor Warrior
    }
    else if (GetTag(OBJECT_SELF) == "LD_FALCOR")
    {
        {
            int nRandom = d100(1);
            if (nRandom < 3)
            {
                CreateItemOnObject("ld_falc_talon", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 65);
                GenerateHighTreasure(OBJECT_SELF);
            }
            else
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 54);
                GenerateMediumTreasure(OBJECT_SELF);
            }
        }

        //Melagan Warrior
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_MELAGAN")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Tarak Shaman
    }
    else if (GetTag(OBJECT_SELF) == "LD_TARAKLIZS")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 18);

        //Tarak Warrior
    }
    else if ((GetTag(OBJECT_SELF) == "LD_TARAKLIZ") || (GetTag(OBJECT_SELF) == "LD_TARAKLIZC"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 18);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Brute
    }
    else if (GetTag(OBJECT_SELF) == "LD_BRUTE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Yuan Ti
    }
    else if (GetTag(OBJECT_SELF) == "LD_YUAN_TI")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 20);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Rakshasa
    }
    else if (GetTag(OBJECT_SELF) == "LD_RAKSHASA")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 10)
            {
                object oItem = CreateItemOnObject("x2_it_firebomb", OBJECT_SELF, 50);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Mephits
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_MEPHIT")
    {
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("reagnt_mephit", OBJECT_SELF, 1);
            }
        }

        //Manscorpion
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_MANSCRP")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Hive
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_HIVE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 4);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Fire Giants
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_GNTFIRE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        {
            int nRandom = d100(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lava_axe", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("lava_blade", OBJECT_SELF, 1);
            }
            else if ((nRandom > 2) && (nRandom < 26))
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if ((nRandom > 25) && (nRandom < 51))
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if ((nRandom > 50) && (nRandom < 76))
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("lava_axe", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
                AssignCommand(OBJECT_SELF, ActionEquipItem(oItem, INVENTORY_SLOT_CWEAPON_R));
            }
            else if (nRandom > 75)
            {
                CreateItemOnObject("NW_WSWGS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("lava_blade", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
                AssignCommand(OBJECT_SELF, ActionEquipItem(oItem, INVENTORY_SLOT_CWEAPON_R));
            }
        }

        //Firebrand Citizen (IMP)
    }
    else if (GetTag(OBJECT_SELF) == "firebrand_citimp")
    {
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);

        //Sea Hag
    }
    else if (GetTag(OBJECT_SELF) == "LD_SEAHAG")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);

        //Drider
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_DRIDER")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 16);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);

        //Firebrand Citizen
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "firebrand_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 15);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bandit
    }
    else if (GetTag(OBJECT_SELF) == "LD_BANDIT")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bandit Archer
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BANDIT")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WBWLN001", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Undead Pirates
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "ld_pirate_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 2);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWDG001", OBJECT_SELF, 1);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WSWSS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WBLHL001", OBJECT_SELF, 1);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WBLML001", OBJECT_SELF, 1);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
            }
            else if (nRandom == 11)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
            else if (nRandom == 12)
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }


        //Black Dragon (Veeslath)  (H x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLK")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_black", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_HIGH, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_HIGH, 2);
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Sirine
    }
    else if (GetTag(OBJECT_SELF) == "LD_SIRINE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 1);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF);
            }
        } //Lodor Specific Items

        //Medusa
    }
    else if ((GetTag(OBJECT_SELF) == "LD_MEDUSA") || (GetTag(OBJECT_SELF) == "LD_MEDUSA2"))
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 13);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("medusa_eye", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Elder Gazer
    }
    else if (GetTag(OBJECT_SELF) == "LD_GAZER")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 35);
        CreatePotion(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("gazer_eye", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                GenerateMediumTreasure(OBJECT_SELF);
            }
        }
        {
            int nRandom = d6(1);
            if (nRandom == 1)
            {
                CreatePotion(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 3)
            {
                CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW);
            }
        }

        //Gazer
    }
    else if (GetTag(OBJECT_SELF) == "LD_GAZER1")
    {
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("gazer_eye", OBJECT_SELF, 1);
            }
        }

        //Succubus
    }
    else if (GetTag(OBJECT_SELF) == "LD_SUCCUBUS")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        GenerateLowTreasure(OBJECT_SELF);

        //Collector Of Souls
    }
    else if (GetTag(OBJECT_SELF) == "LD_COLLECT")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 4);
        GenerateLowTreasure(OBJECT_SELF);

        //Balor
    }
    else if (GetTag(OBJECT_SELF) == "LD_BALOR")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d100(1);
            if (nRandom < 3)
            {
                CreateItemOnObject("NW_IT_CREWSW001", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Lich
    }
    else if ((GetTag(OBJECT_SELF) == "LD_LICH") || (GetTag(OBJECT_SELF) == "LD_LICH2"))
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        GenerateLowTreasure(OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d8(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("cryptz_key", OBJECT_SELF, 1);
            }
        }

        //Scorn Fighters
    }
    else if (GetTag(OBJECT_SELF) == "LD_SCORN")
    {
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else
            {
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Ogres (The Vault)
    }
    else if (GetTag(OBJECT_SELF) == "LD_VAULTOGRE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 4);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 10)
            {
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Gargoyle
    }
    else if (GetTag(OBJECT_SELF) == "LD_GARGOYLE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);

        //Vampires
    }
    else if (GetTag(OBJECT_SELF) == "LD_VAMPIRE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 10);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Mind Flayers
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "LD_MINDFLAYER2")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 1);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        SetLocalInt(OBJECT_SELF, "newloot1", 1);
        SetLocalInt(OBJECT_SELF, "newloot2", 1);
        ExecuteScript("loot_new_list", OBJECT_SELF);

        //Hellions (Citadel)
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_HELLION")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 10)
            {
                object oItem = CreateItemOnObject("x2_it_firebomb", OBJECT_SELF, 50);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Skeletal Knights (Citadel)
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "ld_skel_knight")
    {
        CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WAXHN001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMHN010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_WAXBT001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WAXMBT010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_WSWBS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMBS009", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_WSWLS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMLS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 5)
            {
                CreateItemOnObject("NW_WBLFL001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMFL010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 6)
            {
                CreateItemOnObject("NW_WBLMS001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WBLMMS010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 7)
            {
                CreateItemOnObject("NW_WSWKA001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMKA010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 8)
            {
                CreateItemOnObject("NW_WSWRP001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMRP010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 9)
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
            else if (nRandom == 10)
            {
                CreateItemOnObject("NW_WSWSC001", OBJECT_SELF, 1);
                object oItem = CreateItemOnObject("NW_WSWMSC010", OBJECT_SELF, 1);
                SetDroppableFlag(oItem, FALSE);
            }
        }

        //Citadel Warrior
    }
    else if (GetTag(OBJECT_SELF) == "ld_citwarrior")
    {
        {
            int nRandom = d100(1);
            if (nRandom < 3)
            {
                CreateItemOnObject("blade_pain", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 65);
                GenerateHighTreasure(OBJECT_SELF);
            }
            else
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 54);
                GenerateMediumTreasure(OBJECT_SELF);
            }
        }
    }
    else
    {
    }
}
