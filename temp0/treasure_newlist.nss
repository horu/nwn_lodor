// This is a loot list for the Djeryv Specific Items
#include "x0_i0_treasure"

void main()
{
    object oLastOpener = GetLastOpenedBy();
    {
        int nRandom = d100(1);

        // Potions
        if (nRandom == 1) { CreateItemOnObject("lodoc_cureall", OBJECT_SELF, 1); } //Cure All              1320GP
        else if (nRandom == 2) { CreateItemOnObject("lodoc_ffield", OBJECT_SELF, 1); } //Fire Field             960GP
        else if (nRandom == 3) { CreateItemOnObject("lodoc_grestore", OBJECT_SELF, 1); } //Greater Restoration   1821GP
        else if (nRandom == 3) { CreateItemOnObject("lodoc_stoneskin2", OBJECT_SELF, 1); }
        //Greater Stoneskin     1320GP
        else if (nRandom == 4) { CreateItemOnObject("lodoc_medicine", OBJECT_SELF, 1); } //Medicine               200GP
        else if (nRandom == 5) { CreateItemOnObject("lodoc_lightp", OBJECT_SELF, 1); } //Nightsight              50GP
        else if (nRandom == 6) { CreateItemOnObject("lodoc_polymph", OBJECT_SELF, 1); } //Polymorph              560GP
        else if (nRandom == 7) { CreateItemOnObject("lodoc_rage", OBJECT_SELF, 1); } //Rage                   120GP
        else if (nRandom == 8) { CreateItemOnObject("lodoc_shpchng", OBJECT_SELF, 1); } //Shape Change          3061GP
        else if (nRandom == 9) { CreateItemOnObject("lodoc_stoneskin", OBJECT_SELF, 1); } //Stoneskin              560GP
        else if (nRandom == 9) { CreateItemOnObject("lodoc_preserve", OBJECT_SELF, 1); } //Preservation          5976GP

        // Reagents
        else if (nRandom == 10) { CreateItemOnObject("reagnt_bsore", OBJECT_SELF, 1); } //Balisite Ore
        else if (nRandom == 11) { CreateItemOnObject("reagnt_bflow", OBJECT_SELF, 1); } //Belan Flower
        else if (nRandom == 12) { CreateItemOnObject("lodoc_bottle", OBJECT_SELF, 1); } //Bottle
        else if (nRandom == 13) { CreateItemOnObject("reagnt_bliquid", OBJECT_SELF, 1); } //Burning Liquid
        else if (nRandom == 14) { CreateItemOnObject("reagnt_dbranch", OBJECT_SELF, 1); } //Deru Branch
        else if (nRandom == 15) { CreateItemOnObject("reagnt_glic", OBJECT_SELF, 1); } //Garlic
        else if (nRandom == 16) { CreateItemOnObject("reagnt_mshards", OBJECT_SELF, 1); } //Metal Shards
        else if (nRandom == 17) { CreateItemOnObject("lodoc_pwdbag", OBJECT_SELF, 1); } //Powder Bag
        else if (nRandom == 18) { CreateItemOnObject("reagnt_therb", OBJECT_SELF, 1); } //Trampul Herb
        else if (nRandom == 19) { CreateItemOnObject("reagnt_tntpwdr", OBJECT_SELF, 1); } //Treant Powder
        else if (nRandom == 20) { CreateItemOnObject("reagnt_bsore", OBJECT_SELF, 1); } //Balisite Ore
        else if (nRandom == 21) { CreateItemOnObject("reagnt_bflow", OBJECT_SELF, 1); } //Belan Flower
        else if (nRandom == 22) { CreateItemOnObject("lodoc_bottle", OBJECT_SELF, 1); } //Bottle
        else if (nRandom == 23) { CreateItemOnObject("reagnt_bliquid", OBJECT_SELF, 1); } //Burning Liquid
        else if (nRandom == 24) { CreateItemOnObject("reagnt_dbranch", OBJECT_SELF, 1); } //Deru Branch
        else if (nRandom == 25) { CreateItemOnObject("reagnt_glic", OBJECT_SELF, 1); } //Garlic
        else if (nRandom == 26) { CreateItemOnObject("reagnt_mshards", OBJECT_SELF, 1); } //Metal Shards
        else if (nRandom == 27) { CreateItemOnObject("lodoc_pwdbag", OBJECT_SELF, 1); } //Powder Bag
        else if (nRandom == 28) { CreateItemOnObject("reagnt_therb", OBJECT_SELF, 1); } //Trampul Herb
        else if (nRandom == 29) { CreateItemOnObject("reagnt_tntpwdr", OBJECT_SELF, 1); } //Treant Powder
        else if (nRandom == 30) { CreateItemOnObject("reagnt_bsore", OBJECT_SELF, 1); } //Balisite Ore
        else if (nRandom == 31) { CreateItemOnObject("reagnt_bflow", OBJECT_SELF, 1); } //Belan Flower
        else if (nRandom == 32) { CreateItemOnObject("lodoc_bottle", OBJECT_SELF, 1); } //Bottle
        else if (nRandom == 33) { CreateItemOnObject("reagnt_bliquid", OBJECT_SELF, 1); } //Burning Liquid
        else if (nRandom == 34) { CreateItemOnObject("reagnt_dbranch", OBJECT_SELF, 1); } //Deru Branch
        else if (nRandom == 35) { CreateItemOnObject("reagnt_glic", OBJECT_SELF, 1); } //Garlic
        else if (nRandom == 36) { CreateItemOnObject("reagnt_mshards", OBJECT_SELF, 1); } //Metal Shards
        else if (nRandom == 37) { CreateItemOnObject("lodoc_pwdbag", OBJECT_SELF, 1); } //Powder Bag
        else if (nRandom == 38) { CreateItemOnObject("reagnt_therb", OBJECT_SELF, 1); } //Trampul Herb
        else if (nRandom == 39) { CreateItemOnObject("reagnt_tntpwdr", OBJECT_SELF, 1); } //Treant Powder
        else if (nRandom == 40) { CreateItemOnObject("x2_it_cfm_pbottl", OBJECT_SELF, 1); } //Empty Potion Bottle
        else if (nRandom == 41) { CreateItemOnObject("x2_it_cfm_pbottl", OBJECT_SELF, 1); } //Empty Potion Bottle
        else if (nRandom == 42) { CreateItemOnObject("x2_it_cfm_pbottl", OBJECT_SELF, 1); } //Empty Potion Bottle

        // Treasure Maps
        // FILL THIS IN

        // Misc Items
        else if (nRandom == 43) { CreateItemOnObject("alchemy_bowl", OBJECT_SELF, 1); } //Alchemist Mixing Bowl
        else if (nRandom == 43) { CreateItemOnObject("map_paper", OBJECT_SELF, 1); } //Blank Map Paper
        else if (nRandom == 43) { CreateItemOnObject("climbing_rope", OBJECT_SELF, 1); } //Climbing Rope
        else if (nRandom == 43) { CreateItemOnObject("brokenweapon", OBJECT_SELF, 1); } //Broken Weapon
        else if (nRandom == 43) { CreateItemOnObject("emotewand", OBJECT_SELF, 1); } //Mood Stone
        else if (nRandom == 43) { CreateItemOnObject("shovel", OBJECT_SELF, 1); } //Shovel
        else if (nRandom == 43) { CreateItemOnObject("smokepipe", OBJECT_SELF, 1); } //Smoking Pipe
        else if (nRandom == 43) { CreateItemOnObject("x2_it_cmat_cloth", OBJECT_SELF, 1); } //Bolt of Cloth
        else if (nRandom == 44) { CreateItemOnObject("brokenweapon", OBJECT_SELF, 1); } //Broken Weapon
        else if (nRandom == 45) { CreateItemOnObject("fishing_spear", OBJECT_SELF, 1); } //Fishing Spear
        else if (nRandom == 46) { CreateItemOnObject("x2_it_lightgem001", OBJECT_SELF, 1); } //Blue Light Gem
        else if (nRandom == 47) { CreateItemOnObject("x2_it_lightgem002", OBJECT_SELF, 1); } //Yellow Light Gem
        else if (nRandom == 48) { CreateItemOnObject("x2_it_lightgem003", OBJECT_SELF, 1); } //Purple Light Gem
        else if (nRandom == 49) { CreateItemOnObject("x2_it_lightgem004", OBJECT_SELF, 1); } //Red Light Gem
        else if (nRandom == 50) { CreateItemOnObject("x2_it_lightgem005", OBJECT_SELF, 1); } //Green Light Gem
        else if (nRandom == 51) { CreateItemOnObject("x2_it_lightgem006", OBJECT_SELF, 1); } //Orange Light Gem
        else if (nRandom == 52) { CreateItemOnObject("x2_it_lightgem007", OBJECT_SELF, 1); } //White Light Gem

        // Djeryv Magic Items
        else if (nRandom == 53) { CreateItemOnObject("harp", OBJECT_SELF, 1); } //Harp
        else if (nRandom == 54) { CreateItemOnObject("horn", OBJECT_SELF, 1); } //Horn
        else if (nRandom == 55) { CreateItemOnObject("mandolin", OBJECT_SELF, 1); } //Mandolin
        else if (nRandom == 56) { CreateItemOnObject("pipes", OBJECT_SELF, 1); } //Pipes
        else if (nRandom == 57) { CreateItemOnObject("drum", OBJECT_SELF, 1); } //Sheet Music

        else { GenerateLowTreasure(oLastOpener, OBJECT_SELF); }
    }
}
