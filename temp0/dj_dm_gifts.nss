#include "x0_i0_treasure"

void main()
{
    object oPC = GetPCSpeaker();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");

    if (GetPCPlayerName(oPC) == "Djeryv")
    {
        SetLocalInt(oBook, "mining", 100);
        SetLocalInt(oBook, "fishing", 100);
        SetLocalInt(oBook, "alchemy", 100);
        GiveGoldToCreature(oPC, 500000);
        GiveXPToCreature(oPC, 500000);

        // Give Reagents
        CreateItemOnObject("reagnt_bsore", oPC, 1); //Balisite Ore
        CreateItemOnObject("reagnt_bflow", oPC, 1); //Belan Flower
        CreateItemOnObject("lodoc_bottle", oPC, 1); //Bottle
        CreateItemOnObject("reagnt_bliquid", oPC, 1); //Burning Liquid
        CreateItemOnObject("reagnt_dbranch", oPC, 1); //Deru Branch
        CreateItemOnObject("reagnt_glic", oPC, 1); //Garlic
        CreateItemOnObject("reagnt_mshards", oPC, 1); //Metal Shards
        CreateItemOnObject("lodoc_pwdbag", oPC, 1); //Powder Bag
        CreateItemOnObject("reagnt_therb", oPC, 1); //Trampul Herb
        CreateItemOnObject("reagnt_tntpwdr", oPC, 1); //Treant Powder
        CreateItemOnObject("x2_it_cfm_pbottl", oPC, 1); //Empty Potion Bottle
        CreateItemOnObject("reagnt_bsore", oPC, 1); //Balisite Ore
        CreateItemOnObject("reagnt_bflow", oPC, 1); //Belan Flower
        CreateItemOnObject("lodoc_bottle", oPC, 1); //Bottle
        CreateItemOnObject("reagnt_bliquid", oPC, 1); //Burning Liquid
        CreateItemOnObject("reagnt_dbranch", oPC, 1); //Deru Branch
        CreateItemOnObject("reagnt_glic", oPC, 1); //Garlic
        CreateItemOnObject("reagnt_mshards", oPC, 1); //Metal Shards
        CreateItemOnObject("lodoc_pwdbag", oPC, 1); //Powder Bag
        CreateItemOnObject("reagnt_therb", oPC, 1); //Trampul Herb
        CreateItemOnObject("reagnt_tntpwdr", oPC, 1); //Treant Powder
        CreateItemOnObject("x2_it_cfm_pbottl", oPC, 1); //Empty Potion Bottle
        CreateItemOnObject("reagnt_bsore", oPC, 1); //Balisite Ore
        CreateItemOnObject("reagnt_bflow", oPC, 1); //Belan Flower
        CreateItemOnObject("lodoc_bottle", oPC, 1); //Bottle
        CreateItemOnObject("reagnt_bliquid", oPC, 1); //Burning Liquid
        CreateItemOnObject("reagnt_dbranch", oPC, 1); //Deru Branch
        CreateItemOnObject("reagnt_glic", oPC, 1); //Garlic
        CreateItemOnObject("reagnt_mshards", oPC, 1); //Metal Shards
        CreateItemOnObject("lodoc_pwdbag", oPC, 1); //Powder Bag
        CreateItemOnObject("reagnt_therb", oPC, 1); //Trampul Herb
        CreateItemOnObject("reagnt_tntpwdr", oPC, 1); //Treant Powder
        CreateItemOnObject("x2_it_cfm_pbottl", oPC, 1); //Empty Potion Bottle
        CreateItemOnObject("reagnt_bsore", oPC, 1); //Balisite Ore
        CreateItemOnObject("reagnt_bflow", oPC, 1); //Belan Flower
        CreateItemOnObject("lodoc_bottle", oPC, 1); //Bottle
        CreateItemOnObject("reagnt_bliquid", oPC, 1); //Burning Liquid
        CreateItemOnObject("reagnt_dbranch", oPC, 1); //Deru Branch
        CreateItemOnObject("reagnt_glic", oPC, 1); //Garlic
        CreateItemOnObject("reagnt_mshards", oPC, 1); //Metal Shards
        CreateItemOnObject("lodoc_pwdbag", oPC, 1); //Powder Bag
        CreateItemOnObject("reagnt_therb", oPC, 1); //Trampul Herb
        CreateItemOnObject("reagnt_tntpwdr", oPC, 1); //Treant Powder
        CreateItemOnObject("x2_it_cfm_pbottl", oPC, 1); //Empty Potion Bottle
        CreateItemOnObject("reagnt_bsore", oPC, 1); //Balisite Ore
        CreateItemOnObject("reagnt_bflow", oPC, 1); //Belan Flower
        CreateItemOnObject("lodoc_bottle", oPC, 1); //Bottle
        CreateItemOnObject("reagnt_bliquid", oPC, 1); //Burning Liquid
        CreateItemOnObject("reagnt_dbranch", oPC, 1); //Deru Branch
        CreateItemOnObject("reagnt_glic", oPC, 1); //Garlic
        CreateItemOnObject("reagnt_mshards", oPC, 1); //Metal Shards
        CreateItemOnObject("lodoc_pwdbag", oPC, 1); //Powder Bag
        CreateItemOnObject("reagnt_therb", oPC, 1); //Trampul Herb
        CreateItemOnObject("reagnt_tntpwdr", oPC, 1); //Treant Powder
        CreateItemOnObject("x2_it_cfm_pbottl", oPC, 1); //Empty Potion Bottle

        // Give some good loot
        CreateItemOnObject("X2_MAARCL036", oPC, 1); //Scale Mail +7
        CreateItemOnObject("X2_MAARCL030", oPC, 1); //Studded Leather +7
        CreateItemOnObject("X2_ASHMLW004", oPC, 1); //Large Shield +7
        CreateItemOnObject("NW_MCLOTH013", oPC, 1); //Mage's Battle Robe
        CreateItemOnObject("X0_ARMHE011", oPC, 1); //Headband of Intellect
        CreateItemOnObject("lodoc_cureall", oPC, 10); //Potion of Cure All Wounds
        CreateItemOnObject("NW_IT_MPOTION008", oPC, 10); //Potion of Invisibility
        CreateItemOnObject("lodoc_meat2", oPC, 1); //Meat
        CreateItemOnObject("lodoc_waterr", oPC, 1); //Water
        CreateItemOnObject("lodoc_meat2", oPC, 1); //Meat
        CreateItemOnObject("lodoc_waterr", oPC, 1); //Water
        CreateItemOnObject("lodoc_meat2", oPC, 1); //Meat
        CreateItemOnObject("lodoc_waterr", oPC, 1); //Water
        CreateItemOnObject("lodoc_meat2", oPC, 1); //Meat
        CreateItemOnObject("lodoc_waterr", oPC, 1); //Water
        CreateItemOnObject("lodoc_meat2", oPC, 1); //Meat
        CreateItemOnObject("lodoc_waterr", oPC, 1); //Water
        CreateItemOnObject("X2_WAXMBT004", oPC, 1); //Battle Axe +7
        CreateItemOnObject("NW_WMGST003", oPC, 1); //Staff Of The Magi
        CreateItemOnObject("X2_WBLMML004", oPC, 1); //Mace +7
        CreateItemOnObject("X2_WBLMHW004", oPC, 1); //Warhammer +7
        CreateItemOnObject("X2_WSWMLS004", oPC, 1); //Longsword +7
        CreateItemOnObject("X2_WSWMSS004", oPC, 1); //Shortsword +7
        CreateItemOnObject("X2_WSWMGS004", oPC, 1); //Greatsword +7
        CreateItemOnObject("NW_IT_MBOOTS005", oPC, 1); //Boots Of Speed
        CreateItemOnObject("NW_IT_MBELT002", oPC, 1); //Belt Of Hill Giant Strength
        CreateItemOnObject("X2_IT_MBRACER005", oPC, 1); //Bracers Of Armor +10
        CreateItemOnObject("X0_MAARCL029", oPC, 1); //Cloak Of Resistance +5
        CreateItemOnObject("NW_IT_MBRACER013", oPC, 1); //Guantlets Of Ogre Power
        CreateItemOnObject("ld_armur_spac", oPC, 1); //Shadow Pack
        CreateItemOnObject("ld_armur_spac", oPC, 1); //Shadow Pack
        CreateItemOnObject("ld_armur_spac", oPC, 1); //Shadow Pack
        CreateItemOnObject("alchemy_bowl", oPC, 1); //Mixing Bowl

        // Map all the areas
        SetLocalInt(oMap, "map001", 1);
        SetLocalInt(oMap, "map002", 1);
        SetLocalInt(oMap, "map003", 1);
        SetLocalInt(oMap, "map004", 1);
        SetLocalInt(oMap, "map004", 1);
        SetLocalInt(oMap, "map005", 1);
        SetLocalInt(oMap, "map006", 1);
        SetLocalInt(oMap, "map007", 1);
        SetLocalInt(oMap, "map008", 1);
        SetLocalInt(oMap, "map009", 1);
        SetLocalInt(oMap, "map010", 1);
        SetLocalInt(oMap, "map011", 1);
        SetLocalInt(oMap, "map012", 1);
        SetLocalInt(oMap, "map013", 1);
        SetLocalInt(oMap, "map014", 1);
        SetLocalInt(oMap, "map015", 1);
        SetLocalInt(oMap, "map016", 1);
        SetLocalInt(oMap, "map017", 1);
        SetLocalInt(oMap, "map018", 1);
        SetLocalInt(oMap, "map019", 1);
        SetLocalInt(oMap, "map020", 1);
        SetLocalInt(oMap, "map021", 1);
        SetLocalInt(oMap, "map022", 1);
        SetLocalInt(oMap, "map023", 1);
        SetLocalInt(oMap, "map024", 1);
        SetLocalInt(oMap, "map025", 1);
        SetLocalInt(oMap, "map026", 1);
        SetLocalInt(oMap, "map027", 1);
        SetLocalInt(oMap, "map028", 1);
        SetLocalInt(oMap, "map029", 1);
        SetLocalInt(oMap, "map030", 1);
        SetLocalInt(oMap, "map031", 1);
        SetLocalInt(oMap, "map032", 1);
        SetLocalInt(oMap, "map033", 1);
        SetLocalInt(oMap, "map034", 1);
        SetLocalInt(oMap, "map035", 1);
        SetLocalInt(oMap, "map036", 1);
        SetLocalInt(oMap, "map037", 1);
        SetLocalInt(oMap, "map038", 1);
        SetLocalInt(oMap, "map039", 1);
        SetLocalInt(oMap, "map040", 1);
        SetLocalInt(oMap, "map041", 1);
        SetLocalInt(oMap, "map042", 1);
        SetLocalInt(oMap, "map043", 1);
        SetLocalInt(oMap, "map044", 1);
        SetLocalInt(oMap, "map045", 1);
        SetLocalInt(oMap, "map046", 1);
        SetLocalInt(oMap, "map047", 1);
        SetLocalInt(oMap, "map048", 1);
        SetLocalInt(oMap, "map049", 1);
        SetLocalInt(oMap, "map050", 1);
        SetLocalInt(oMap, "map051", 1);
        SetLocalInt(oMap, "map052", 1);
        SetLocalInt(oMap, "map053", 1);
        SetLocalInt(oMap, "map054", 1);
        SetLocalInt(oMap, "map055", 1);
        SetLocalInt(oMap, "map056", 1);
        SetLocalInt(oMap, "map057", 1);
        SetLocalInt(oMap, "map058", 1);
        SetLocalInt(oMap, "map059", 1);
        SetLocalInt(oMap, "map060", 1);
        SetLocalInt(oMap, "map061", 1);
        SetLocalInt(oMap, "map062", 1);
        SetLocalInt(oMap, "map063", 1);
        SetLocalInt(oMap, "map064", 1);
        SetLocalInt(oMap, "map065", 1);
        SetLocalInt(oMap, "map066", 1);
        SetLocalInt(oMap, "map067", 1);
        SetLocalInt(oMap, "map068", 1);
        SetLocalInt(oMap, "map069", 1);
        SetLocalInt(oMap, "map070", 1);
        SetLocalInt(oMap, "map071", 1);
        SetLocalInt(oMap, "map072", 1);
        SetLocalInt(oMap, "map073", 1);
        SetLocalInt(oMap, "map074", 1);
        SetLocalInt(oMap, "map075", 1);
        SetLocalInt(oMap, "map076", 1);
        SetLocalInt(oMap, "map077", 1);
        SetLocalInt(oMap, "map078", 1);
        SetLocalInt(oMap, "map079", 1);
        SetLocalInt(oMap, "map080", 1);
        SetLocalInt(oMap, "map081", 1);
        SetLocalInt(oMap, "map082", 1);
        SetLocalInt(oMap, "map083", 1);
        SetLocalInt(oMap, "map084", 1);
        SetLocalInt(oMap, "map085", 1);
        SetLocalInt(oMap, "map086", 1);
        SetLocalInt(oMap, "map087", 1);
        SetLocalInt(oMap, "map088", 1);
        SetLocalInt(oMap, "map089", 1);
        SetLocalInt(oMap, "map090", 1);
        SetLocalInt(oMap, "map091", 1);
        SetLocalInt(oMap, "map092", 1);
        SetLocalInt(oMap, "map093", 1);
        SetLocalInt(oMap, "map094", 1);
        SetLocalInt(oMap, "map095", 1);
        SetLocalInt(oMap, "map096", 1);
        SetLocalInt(oMap, "map097", 1);
        SetLocalInt(oMap, "map098", 1);
        SetLocalInt(oMap, "map099", 1);
        SetLocalInt(oMap, "map100", 1);
        SetLocalInt(oMap, "map101", 1);
        SetLocalInt(oMap, "map102", 1);
        SetLocalInt(oMap, "map103", 1);
        SetLocalInt(oMap, "map104", 1);
        SetLocalInt(oMap, "map105", 1);
        SetLocalInt(oMap, "map106", 1);
        SetLocalInt(oMap, "map107", 1);
        SetLocalInt(oMap, "map108", 1);
        SetLocalInt(oMap, "map109", 1);
        SetLocalInt(oMap, "map110", 1);
        SetLocalInt(oMap, "map111", 1);
    }
}
