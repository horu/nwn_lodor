// Loot script for med level humanoids
#include "x0_i0_treasure"
#include "sl_loot_lib"

void main()
{
    sl_loot_CreateRandomItemBoss(OBJECT_SELF);

    int nMinotaur = d10(1);

    //WITCH SECTION
    //Ice Witch (Samtharia)
    if (GetTag(OBJECT_SELF) == "WITCH_ICE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_samth_staf", OBJECT_SELF, 1);
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
                CreateItemOnObject("lodor_samth_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Fire Witch (Samtharia)
    }
    else if (GetTag(OBJECT_SELF) == "WITCH_FIRE")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_taras_staf", OBJECT_SELF, 1);
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
                CreateItemOnObject("lodor_tara_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Air Witch (Parletas)
    }
    else if (GetTag(OBJECT_SELF) == "WITCH_AIR")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_parletas_staf", OBJECT_SELF, 1);
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
                CreateItemOnObject("lodor_parlet_rob", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Water Witch (Raquela)
    }
    else if (GetTag(OBJECT_SELF) == "WITCH_WATER")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_raqu_staf", OBJECT_SELF, 1);
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
                CreateItemOnObject("lodor_raqu_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Earth Witch (Valestra)
    }
    else if (GetTag(OBJECT_SELF) == "WITCH_EARTH")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_veles_staf", OBJECT_SELF, 1);
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
                CreateItemOnObject("lodor_vale_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Dragon Section////////////////////////////////////////////////////////////////

        //Dragon Hide
        //Dragon Teeth
        //Dragon Blood

        //Omeraz
    }
    else if (GetTag(OBJECT_SELF) == "LD_OMERAZ")
    {
        GenerateHighTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF, 2);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_HIGH, 3);
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
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
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

        //White Dragon (Drennyuth)  (E, O, Sx3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_WHT")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_white", OBJECT_SELF, 1);
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
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Red Dragon (Rauget)  (H, S, Tx3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_RED")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_gold", OBJECT_SELF, 1);
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
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                GenerateMediumTreasure(OBJECT_SELF);
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Bronze Dragon (Chimnazth)  (H, S, Tx3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BRZ")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_brnz", OBJECT_SELF, 1);
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
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                GenerateMediumTreasure(OBJECT_SELF);
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Silver Dragon (Acleoth)  (H, Rx2)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_silver", OBJECT_SELF, 1);
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

        //Gold Dragon (Rhaizhizth)  (H, R, Tx3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_GLD")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_silver", OBJECT_SELF, 1);
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

        //Green Dragon (Eubraith)  (H x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_GRN")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_green", OBJECT_SELF, 1);
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

        //Brass Dragon (Jebbeyth)  (H x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BRS")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_brass", OBJECT_SELF, 1);
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

        //Blue Dragon (Aabohz)  (H, S x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLU")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_blue", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Copper Dragon (Aabohz)  (H, S x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_COP")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_deggs_cop", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Shadow Dragon (Zalkotroth)  (H, S x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SHD")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Prismatic Dragon (Bhoothirth)  (H x 2, S x 3)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_PSM")
    {
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF, 2);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Dracolich (Trandugar)  (B, H, S, T)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_LICH")
    {
        GenerateHighTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF, 3);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 340);
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 398);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 453);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateMediumTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 489);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Goblin Boss (Purg Hobbitcruncher)
    }
    else if (GetTag(OBJECT_SELF) == "DJ_GOBLINBOSS")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("NW_WSWMSS002", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Bugbear Boss (Bruol)
    }
    else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARB")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 26);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodoc_bruol", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Minotaur Boss (Tempest)
    }
    else if (GetTag(OBJECT_SELF) == "DJ_MINOTAURB")
    {
        GenerateLowTreasure(OBJECT_SELF);
        if (nMinotaur == 1) { GenerateHighTreasure(OBJECT_SELF); }
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 294);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("waxgr002", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Gorpath the Lich of the Vile Bog
    }
    else if (GetTag(OBJECT_SELF) == "LD_Gorpath")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 342);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_gorpath_stf", OBJECT_SELF, 1);
            }
            else if ((nRandom > 1) && (nRandom < 7))
            {
                CreateItemOnObject("NW_WDBMQS002", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_WDBQS001", OBJECT_SELF, 1);
            }
        }

        //Drub the Ogre of the Prael Ogres
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRUB")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 214);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_drubclub", OBJECT_SELF, 1);
            }
            else if ((nRandom > 1) && (nRandom < 7))
            {
                CreateItemOnObject("NW_WBLMCL002", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_WBLCL001", OBJECT_SELF, 1);
            }
        }

        //Turan Priest (Boss)
    }
    else if (GetTag(OBJECT_SELF) == "LD_TURANPRST")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 65);
        {
            int nRandom = d12(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_handshyvaa", OBJECT_SELF, 1);
            }
            else if ((nRandom > 1) && (nRandom < 4))
            {
                CreateItemOnObject("NW_WBLMHW002", OBJECT_SELF, 1);
            }
            else if ((nRandom > 3) && (nRandom < 10))
            {
                CreateItemOnObject("NW_WBLHW001", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Brakal (Frost Giant King)
    }
    else if (GetTag(OBJECT_SELF) == "LD_BRAKAL")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 120);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_brakcuter", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d6(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_brakhelm", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Daclor (Fire Giant King)
    }
    else if (GetTag(OBJECT_SELF) == "ld_daclor")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 120);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("dac_avalanche", OBJECT_SELF, 1);
            }
            else if ((nRandom > 1) && (nRandom < 18))
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Warpek (Ice Dwarf in Pits of Frost)
    }
    else if (GetTag(OBJECT_SELF) == "ld_warpek")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_warp_helm", OBJECT_SELF, 1);
            }
            else
            {
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_warpek_pl", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_AARCL007", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lodor_teeth_warp", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Wrok (Hill Giant King)
    }
    else if (GetTag(OBJECT_SELF) == "ld_wrok")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 58);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("wrok_morningst", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Medusa Queen
    }
    else if (GetTag(OBJECT_SELF) == "ld_sapelek")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 11);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("snake_dagger", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Frostbite Kobold (Vilith)
    }
    else if (GetTag(OBJECT_SELF) == "LD_KBLKVILTH")
    {
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 12);
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);

        //Drigdug (Troll King)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRIGDUG")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 45);

        //Glomarin Golem
    }
    else if (GetTag(OBJECT_SELF) == "glorm_golem")
    {
        GenerateHighTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);

        //Glomarin
    }
    else if (GetTag(OBJECT_SELF) == "ld_glomarin")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 49);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("glom_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("glom_wand", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Garv (Gnoll King)
    }
    else if (GetTag(OBJECT_SELF) == "ld_gnollb")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 49);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_gnoll_flail", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Doroxt (Cliffs Fallen)
    }
    else if (GetTag(OBJECT_SELF) == "LD_DOROXT")
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
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 68);
            }
            else if (nRandom == 2)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 70);
            }
            else if (nRandom == 3)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 72);
                GenerateLowTreasure(OBJECT_SELF);
            }
            else if (nRandom == 4)
            {
                CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 74);
                SetLocalInt(OBJECT_SELF, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                GenerateLowTreasure(OBJECT_SELF);
            }
        }

        //Ketryl (Fallen Cliffs)
    }
    else if (GetTag(OBJECT_SELF) == "ld_ketryl")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 53);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_ketryl_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH007", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_torch_bane", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Lastrow (Tower of Runes)
    }
    else if (GetTag(OBJECT_SELF) == "LD_LASTROW")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("lastrow_rune", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH012", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("sling_ertharrow", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Zaltos
    }
    else if (GetTag(OBJECT_SELF) == "ld_zaltos")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 52);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_velv_sun", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH012", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_kn_storm", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Hawtral (Falcor Shaman)
    }
    else if (GetTag(OBJECT_SELF) == "LD_FALCORMG")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 142);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("hatral_wrath", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Marculos (Mad Scientist In Citadel Level Three)
    }
    else if (GetTag(OBJECT_SELF) == "LD_MARCULOS")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 56);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //Shira
    }
    else if (GetTag(OBJECT_SELF) == "LD_SHIRA")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 42);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("staff_of_shira", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Melagan (Lizard King)
    }
    else if (GetTag(OBJECT_SELF) == "ld_melaruler")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 67);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("melagan_hate", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Horfilad
    }
    else if (GetTag(OBJECT_SELF) == "LD_HORFILAD")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 15);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_stf_missle", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Maharajah
    }
    else if (GetTag(OBJECT_SELF) == "ld_maharajah")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 86);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("sun_devourer", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Tarak
    }
    else if (GetTag(OBJECT_SELF) == "LD_TARAK")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateHighTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 46);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("poison_pick", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Trasaa (Yuan-Ti - Temple of Tears)
    }
    else if (GetTag(OBJECT_SELF) == "ld_trasaa")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 3);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 54);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("storm_summonbow", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Dar (Pit of Dar)
    }
    else if (GetTag(OBJECT_SELF) == "ld_dar")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 23);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("ld_dar_rod", OBJECT_SELF, 1);
            }
            else
            {
            }
        }

        //Quascar (Manscorpion)
    }
    else if (GetTag(OBJECT_SELF) == "ld_quascar")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 23);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("desert_snare", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Hive Queen
    }
    else if (GetTag(OBJECT_SELF) == "LD_HVQUEEN")
    {
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 23);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("stf_oweodd", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Yarbek (Ghoul Lord in Dedry Catacombs)
    }
    else if (GetTag(OBJECT_SELF) == "LD_YARBEK")
    {
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("yarbek_crown", OBJECT_SELF, 1);
            }
            else
            {
            }
        }


        //Drider
    }
    else if (GetTag(OBJECT_SELF) == "LD_OLARIUS")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        {
            int nRandom = d20(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("olarius_bow", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);
            }
        }

        //Xor
    }
    else if (GetTag(OBJECT_SELF) == "ld_xor")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 47);
        CreatePotion(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                GenerateHighTreasure(OBJECT_SELF);
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

        //Radhael (Well of Souls)
    }
    else if (GetTag(OBJECT_SELF) == "ld_radhael")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 47);
        CreatePotion(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                GenerateHighTreasure(OBJECT_SELF);
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

        //Bartuzol (DemiLich)(Crypts)
    }
    else if (GetTag(OBJECT_SELF) == "ld_bartuzol")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        GenerateHighTreasure(OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("skull_bart", OBJECT_SELF, 1);
            }
        }

        //Jarehar (Vampire Mage)
    }
    else if (GetTag(OBJECT_SELF) == "ld_jarehar")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("soul_cutter", OBJECT_SELF, 1);
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
                CreateItemOnObject("jarehar_robe", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Vasestra (Vampire Queen)
    }
    else if (GetTag(OBJECT_SELF) == "ld_vasestra")
    {
        GenerateHighTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("vampire_bite", OBJECT_SELF, 1);
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
                CreateItemOnObject("robe_vampire", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Dracz
    }
    else if (GetTag(OBJECT_SELF) == "LD_DRACZ")
    {
        GenerateHighTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("dracz_bracer", OBJECT_SELF, 1);
            }
        }
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                CreateItemOnObject("dracz_cloth", OBJECT_SELF, 1);
            }
            else
            {
                CreateItemOnObject("NW_CLOTH005", OBJECT_SELF, 1);
            }
        }

        //Taresa (Little Girl on 4th Floor Citadel
    }
    else if (GetTag(OBJECT_SELF) == "ld_taresa")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateMediumTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 34);
        {
            int nRandom = d10(1);
            if (nRandom == 1)
            {
                GenerateHighTreasure(OBJECT_SELF);
            }
        }

        //DemiLich Lord (Citadel)
    }
    else if (GetTag(OBJECT_SELF) == "LD_LICHLORD")
    {
        GenerateMediumTreasure(OBJECT_SELF);
        CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 2);
        GenerateHighTreasure(OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
        CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
    }
    else
    {
    }
}
