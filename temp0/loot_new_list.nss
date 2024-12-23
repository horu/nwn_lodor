// This is a loot list for the Djeryv Specific Items
//#include "x0_i0_treasure"
void main()
{
int nRun1 = GetLocalInt(OBJECT_SELF, "newloot1");
int nRun2 = GetLocalInt(OBJECT_SELF, "newloot2");
int nRun3 = GetLocalInt(OBJECT_SELF, "newloot3");

// Potions
if (nRun1 == 1){
{int nRandom = d12(1);
if (nRandom == 1){CreateItemOnObject("lodoc_cureall", OBJECT_SELF, 1);}             //Cure All              1320GP
else if (nRandom == 2){CreateItemOnObject("lodoc_ffield", OBJECT_SELF, 1);}         //Fire Field             960GP
else if (nRandom == 3){CreateItemOnObject("lodoc_grestore", OBJECT_SELF, 1);}       //Greater Restoration   1821GP
else if (nRandom == 4){CreateItemOnObject("lodoc_stoneskin2", OBJECT_SELF, 1);}     //Greater Stoneskin     1320GP
else if (nRandom == 5){CreateItemOnObject("lodoc_medicine", OBJECT_SELF, 1);}       //Medicine               200GP
else if (nRandom == 6){CreateItemOnObject("lodoc_lightp", OBJECT_SELF, 1);}         //Nightsight              50GP
else if (nRandom == 7){CreateItemOnObject("lodoc_polymph", OBJECT_SELF, 1);}        //Polymorph              560GP
else if (nRandom == 8){CreateItemOnObject("lodoc_rage", OBJECT_SELF, 1);}           //Rage                   120GP
else if (nRandom == 9){CreateItemOnObject("lodoc_shpchng", OBJECT_SELF, 1);}        //Shape Change          3061GP
else if (nRandom == 10){CreateItemOnObject("lodoc_stoneskin", OBJECT_SELF, 1);}     //Stoneskin              560GP
else if (nRandom == 11){CreateItemOnObject("lodoc_preserve", OBJECT_SELF, 1);}      //Preservation          5976GP
}}

// Reagents
if (nRun2 == 1){
{int nRandom = d20(2);
if ((nRandom == 2) || (nRandom == 3)){CreateItemOnObject("reagnt_bsore", OBJECT_SELF, 1);}             //Balisite Ore
else if ((nRandom == 4) || (nRandom == 5)){CreateItemOnObject("reagnt_bflow", OBJECT_SELF, 1);}        //Belan Flower
else if ((nRandom == 6) || (nRandom == 7)){CreateItemOnObject("lodoc_bottle", OBJECT_SELF, 1);}        //Bottle
else if ((nRandom == 8) || (nRandom == 9)){CreateItemOnObject("reagnt_bliquid", OBJECT_SELF, 1);}      //Burning Liquid
else if ((nRandom == 10) || (nRandom == 11)){CreateItemOnObject("reagnt_dbranch", OBJECT_SELF, 1);}    //Deru Branch
else if ((nRandom == 12) || (nRandom == 13)){CreateItemOnObject("reagnt_glic", OBJECT_SELF, 1);}       //Garlic
else if ((nRandom == 14) || (nRandom == 15)){CreateItemOnObject("reagnt_mshards", OBJECT_SELF, 1);}    //Metal Shards
else if ((nRandom == 16) || (nRandom == 17)){CreateItemOnObject("lodoc_pwdbag", OBJECT_SELF, 1);}      //Powder Bag
else if ((nRandom == 18) || (nRandom == 19)){CreateItemOnObject("reagnt_therb", OBJECT_SELF, 1);}      //Trampul Herb
else if ((nRandom == 20) || (nRandom == 21)){CreateItemOnObject("reagnt_tntpwdr", OBJECT_SELF, 1);}    //Treant Powder
else if ((nRandom == 22) || (nRandom == 23)){CreateItemOnObject("reagnt_batwing", OBJECT_SELF, 1);}    //Bat Wing
else if ((nRandom == 24) || (nRandom == 25)){CreateItemOnObject("gazer_eye", OBJECT_SELF, 1);}         //Gazer Eye
else if ((nRandom == 26) || (nRandom == 27)){CreateItemOnObject("harpy_egg", OBJECT_SELF, 1);}         //Harpy Egg
else if ((nRandom == 28) || (nRandom == 29)){CreateItemOnObject("reagnt_lavarock", OBJECT_SELF, 1);}   //Lava Rock
else if ((nRandom == 30) || (nRandom == 31)){CreateItemOnObject("ld_mush_spore", OBJECT_SELF, 1);}     //Mushroom Spore
else if ((nRandom == 32) || (nRandom == 33)){CreateItemOnObject("reagnt_mephit", OBJECT_SELF, 1);}     //Mephit Wing
else if (nRandom == 34){CreateItemOnObject("ld_dragon_tooth", OBJECT_SELF, 1);}                        //Dragon Tooth
else if (nRandom == 35){CreateItemOnObject("medusa_eye", OBJECT_SELF, 1);}                             //Medusa Eye
else if (nRandom == 36){CreateItemOnObject("ld_troll_blood", OBJECT_SELF, 1);}                         //Troll Blood
else if (nRandom == 37){CreateItemOnObject("wisp_corpse", OBJECT_SELF, 1);}                            //Wisp Corpse
else if (nRandom == 38){CreateItemOnObject("NW_IT_MSMLMISC17", OBJECT_SELF, 1);}                       //Dragon Blood
else if (nRandom == 39){CreateItemOnObject("NW_IT_MSMLMISC19", OBJECT_SELF, 1);}                       //Fairy Dust
else if (nRandom == 40){CreateItemOnObject("lodoc_waterr", OBJECT_SELF, 1);}                           //Water
else if ((nRandom > 1) && (nRandom < 34)){CreateItemOnObject("x2_it_cfm_pbottl", OBJECT_SELF, 1);}     //Empty Potion Bottle
}}

// Misc Items
if (nRun3 == 1){
{int nRandom = d20(1);
if (nRandom == 1){CreateItemOnObject("alchemy_bowl", OBJECT_SELF, 1);}             //Alchemist Mixing Bowl
else if (nRandom == 2){CreateItemOnObject("map_paper", OBJECT_SELF, 1);}           //Blank Map Paper
else if (nRandom == 3){CreateItemOnObject("climbing_rope", OBJECT_SELF, 1);}       //Climbing Rope
else if (nRandom == 4){CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);}        //Broken Weapon
else if (nRandom == 5){CreateItemOnObject("emotewand", OBJECT_SELF, 1);}           //Mood Stone
else if (nRandom == 6){CreateItemOnObject("shovel", OBJECT_SELF, 1);}              //Shovel
else if (nRandom == 7){CreateItemOnObject("smokepipe", OBJECT_SELF, 1);}           //Smoking Pipe
else if (nRandom == 8){CreateItemOnObject("x2_it_cmat_cloth", OBJECT_SELF, 1);}    //Bolt of Cloth
else if (nRandom == 9){CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);}        //Broken Weapon
else if (nRandom == 10){CreateItemOnObject("fishing_spear", OBJECT_SELF, 1);}      //Fishing Spear
else if (nRandom == 11){CreateItemOnObject("x2_it_lightgem001", OBJECT_SELF, 1);}  //Blue Light Gem
else if (nRandom == 12){CreateItemOnObject("x2_it_lightgem002", OBJECT_SELF, 1);}  //Yellow Light Gem
else if (nRandom == 13){CreateItemOnObject("x2_it_lightgem003", OBJECT_SELF, 1);}  //Purple Light Gem
else if (nRandom == 14){CreateItemOnObject("x2_it_lightgem004", OBJECT_SELF, 1);}  //Red Light Gem
else if (nRandom == 15){CreateItemOnObject("x2_it_lightgem005", OBJECT_SELF, 1);}  //Green Light Gem
else if (nRandom == 16){CreateItemOnObject("x2_it_lightgem006", OBJECT_SELF, 1);}  //Orange Light Gem
else if (nRandom == 17){CreateItemOnObject("x2_it_lightgem007", OBJECT_SELF, 1);}  //White Light Gem
}}

// Low Reagents
if (nRun2 == 2){
{int nRandom = d20(2);
if ((nRandom == 2) || (nRandom == 3)){CreateItemOnObject("reagnt_bsore", OBJECT_SELF, 1);}             //Balisite Ore
else if ((nRandom == 4) || (nRandom == 5)){CreateItemOnObject("reagnt_bflow", OBJECT_SELF, 1);}        //Belan Flower
else if ((nRandom == 6) || (nRandom == 7)){CreateItemOnObject("lodoc_bottle", OBJECT_SELF, 1);}        //Bottle
else if ((nRandom == 8) || (nRandom == 9)){CreateItemOnObject("reagnt_bliquid", OBJECT_SELF, 1);}      //Burning Liquid
else if ((nRandom == 10) || (nRandom == 11)){CreateItemOnObject("reagnt_dbranch", OBJECT_SELF, 1);}    //Deru Branch
else if ((nRandom == 12) || (nRandom == 13)){CreateItemOnObject("reagnt_glic", OBJECT_SELF, 1);}       //Garlic
else if ((nRandom == 14) || (nRandom == 15)){CreateItemOnObject("reagnt_mshards", OBJECT_SELF, 1);}    //Metal Shards
else if ((nRandom == 16) || (nRandom == 17)){CreateItemOnObject("lodoc_pwdbag", OBJECT_SELF, 1);}      //Powder Bag
else if ((nRandom == 18) || (nRandom == 19)){CreateItemOnObject("reagnt_therb", OBJECT_SELF, 1);}      //Trampul Herb
else if ((nRandom == 20) || (nRandom == 21)){CreateItemOnObject("reagnt_tntpwdr", OBJECT_SELF, 1);}    //Treant Powder
else if ((nRandom == 22) || (nRandom == 23)){CreateItemOnObject("reagnt_batwing", OBJECT_SELF, 1);}    //Bat Wing
else if ((nRandom == 24) || (nRandom == 25)){CreateItemOnObject("gazer_eye", OBJECT_SELF, 1);}         //Gazer Eye
else if ((nRandom == 26) || (nRandom == 27)){CreateItemOnObject("harpy_egg", OBJECT_SELF, 1);}         //Harpy Egg
else if ((nRandom == 28) || (nRandom == 29)){CreateItemOnObject("reagnt_lavarock", OBJECT_SELF, 1);}   //Lava Rock
else if ((nRandom == 30) || (nRandom == 31)){CreateItemOnObject("ld_mush_spore", OBJECT_SELF, 1);}     //Mushroom Spore
else if ((nRandom == 32) || (nRandom == 33)){CreateItemOnObject("reagnt_mephit", OBJECT_SELF, 1);}     //Mephit Wing                      //Fairy Dust
else if (nRandom > 33){CreateItemOnObject("lodoc_waterr", OBJECT_SELF, 1);}                           //Water
else if ((nRandom > 1) && (nRandom < 34)){CreateItemOnObject("x2_it_cfm_pbottl", OBJECT_SELF, 1);}     //Empty Potion Bottle
}}
/*
// Djeryv Magic Items
else if (nRandom == 53){CreateItemOnObject("harp", OBJECT_SELF, 1);}               //Harp
else if (nRandom == 54){CreateItemOnObject("horn", OBJECT_SELF, 1);}               //Horn
else if (nRandom == 55){CreateItemOnObject("mandolin", OBJECT_SELF, 1);}           //Mandolin
else if (nRandom == 56){CreateItemOnObject("pipes", OBJECT_SELF, 1);}              //Pipes
else if (nRandom == 57){CreateItemOnObject("drum", OBJECT_SELF, 1);}               //Sheet Music
*/

//else {GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
}
