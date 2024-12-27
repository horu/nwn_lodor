// Script for Dragon Eggs
#include "nw_i0_tool"

void main()
{
    object oItem = GetItemActivated();
    object oPC = GetItemActivator();
    location lSpawn = GetLocation(oPC);
    object oHench = GetHenchman(oPC);
    object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");
    string sName = GetName(oPC);

    if (((!HasItem(oPC, "dragon_whistle")) == FALSE) || (GetSubRace(oPC) == "Vampire"))
    {
        FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
    }

    else
    {
        // Black Dragon Eggs
        if (GetTag(oItem) == "ld_deggs_black")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "X0_WYRMLING_BLK", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_blk", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_blk");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Copper Dragon Eggs
        if (GetTag(oItem) == "ld_deggs_cop")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "wyrmling_cop001", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_cop", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_cop");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Bronze Dragon Eggs
        if (GetTag(oItem) == "ld_deggs_brnz")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "wyrmling_brz001", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_brz", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_brz");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Blue Dragon Eggs
        if (GetTag(oItem) == "ld_deggs_blue")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "X0_WYRMLING_BLU", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_blu", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_blu");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Brass Dragon Eggs
        if (GetTag(oItem) == "ld_deggs_brass")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "wyrmling_brs001", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_brs", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_brs");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // White Dragon Eggs
        else if (GetTag(oItem) == "ld_deggs_white")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "X0_WYRMLING_WHT", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_wht", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_wht");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Red Dragon Eggs
        else if (GetTag(oItem) == "ld_deggs_red")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "X0_WYRMLING_RED", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_red", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_red");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Silver Dragon Eggs
        else if (GetTag(oItem) == "ld_deggs_silver")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "wyrmling_sil001", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_sil", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_sil");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Gold Dragon Eggs
        else if (GetTag(oItem) == "ld_deggs_gold")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "wyrmling_gld001", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_gld", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_gld");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }

        // Green Dragon Eggs
        else if (GetTag(oItem) == "ld_deggs_green")
        {
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 7))
                {
                    FloatingTextStringOnCreature("The eggs break open but no dragons survived.", oPC, FALSE);
                }
                else if ((nRandom > 6) && (nRandom < 10))
                {
                    CreateObject(OBJECT_TYPE_CREATURE, "X0_WYRMLING_GRN", lSpawn, FALSE);
                }
                else if (nRandom == 10)
                {
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, "ld_dragon_1_grn", lSpawn, FALSE);
                    object oBlow = CreateItemOnObject("dragon_whistle", oPC, 1);
                    SetLocalString(oBlow, "petdragon", "ld_dragon_1_grn");
                    SetLocalInt(oBlow, "petxp", 0);
                    SetLocalInt(oBlow, "petdead", 0);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                }
            }
        }
    }
    DestroyObject(oItem, 1.0);
}
