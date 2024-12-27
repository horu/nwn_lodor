void main()
{
    object oPC = GetPCSpeaker();
    SetLocalInt(oPC, "holyman", 0);
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    int nAlchemy = GetLocalInt(oBook, "alchemy");
    SetLocalInt(oBook, "poison_int", 0);

    // If they have Brew Potion, they get a bonus
    if (GetHasFeat(FEAT_BREW_POTION, oPC))
    {
        int nSkill = nAlchemy + 20;
        SetLocalInt(oPC, "alchemy_s", nSkill);
    }
    else
    {
        SetLocalInt(oPC, "alchemy_s", nAlchemy);
    }

    // Potion Of Aid
    if (GetLocalInt(oPC, "alch_pick") == 1)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_therb");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION016");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Trampul Herb");
        SetLocalString(oPC, "alchemy_m2", "Potion of Aid");
    }

    // Potion Of Antidote
    if (GetLocalInt(oPC, "alch_pick") == 2)
    {
        SetLocalInt(oPC, "alchemy_n", 69);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_therb");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION006");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Trampul Herb");
        SetLocalString(oPC, "alchemy_m2", "Antidote Potion");
    }

    // Potion Of Barkskin
    if (GetLocalInt(oPC, "alch_pick") == 3)
    {
        SetLocalInt(oPC, "alchemy_n", 29);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_dbranch");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION005");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Deru Branch");
        SetLocalString(oPC, "alchemy_m2", "Potion of Barkskin");
    }

    // Potion Of Bless
    if (GetLocalInt(oPC, "alch_pick") == 4)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_therb");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION009");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Trampul Herb");
        SetLocalString(oPC, "alchemy_m2", "Potion of Bless");
    }

    // Potion Of Bull's Strength
    if (GetLocalInt(oPC, "alch_pick") == 5)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION015");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Bull's Strength");
    }

    // Potion Of Cat's Grace
    if (GetLocalInt(oPC, "alch_pick") == 6)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION014");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cat's Grace");
    }

    // Potion Of Clarity
    if (GetLocalInt(oPC, "alch_pick") == 7)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "gazer_eye");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION007");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Gazer Eye");
        SetLocalString(oPC, "alchemy_m2", "Potion of Clarity");
    }

    // Potion Of Cure Light Wounds
    if (GetLocalInt(oPC, "alch_pick") == 8)
    {
        SetLocalInt(oPC, "alchemy_n", 9);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_glic");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION001");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Garlic");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cure Light Wounds");
    }

    // Potion Of Cure Moderate Wounds
    if (GetLocalInt(oPC, "alch_pick") == 9)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_glic");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION020");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Garlic");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cure Moderate Wounds");
    }

    // Potion Of Cure Serious Wounds
    if (GetLocalInt(oPC, "alch_pick") == 10)
    {
        SetLocalInt(oPC, "alchemy_n", 29);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_glic");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION002");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Garlic");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cure Serious Wounds");
    }

    // Potion Of Cure Critical Wounds
    if (GetLocalInt(oPC, "alch_pick") == 11)
    {
        SetLocalInt(oPC, "alchemy_n", 69);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_glic");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION003");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Garlic");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cure Critical Wounds");
    }

    // Potion Of Cure All Wounds
    if (GetLocalInt(oPC, "alch_pick") == 12)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "ld_troll_blood");
        SetLocalString(oPC, "alchemy_m", "lodoc_cureall");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Troll Blood");
        SetLocalString(oPC, "alchemy_m2", "Potion of Cure All Wounds");
    }

    // Potion Of Death Armor
    if (GetLocalInt(oPC, "alch_pick") == 13)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_lavarock");
        SetLocalString(oPC, "alchemy_m", "X2_IT_MPOTION002");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Lava Rock");
        SetLocalString(oPC, "alchemy_m2", "Potion of Death Armor");
    }

    // Potion Of Eagle's Splendor
    if (GetLocalInt(oPC, "alch_pick") == 14)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION010");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Eagle's Splendor");
    }

    // Potion Of Endurance
    if (GetLocalInt(oPC, "alch_pick") == 15)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION013");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Endurance");
    }

    // Potion Of Fire Field
    if (GetLocalInt(oPC, "alch_pick") == 16)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_lavarock");
        SetLocalString(oPC, "alchemy_m", "lodoc_ffield");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Lava Rock");
        SetLocalString(oPC, "alchemy_m2", "Potion of Fire Field");
    }

    // Potion Of Fox Cunning
    if (GetLocalInt(oPC, "alch_pick") == 17)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION017");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Fox Cunning");
    }

    // Potion Of Heal
    if (GetLocalInt(oPC, "alch_pick") == 18)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_therb");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION012");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Trampul Herb");
        SetLocalString(oPC, "alchemy_m2", "Potion of Heal");
    }

    // Potion Of Invisibility
    if (GetLocalInt(oPC, "alch_pick") == 19)
    {
        SetLocalInt(oPC, "alchemy_n", 59);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "NW_IT_MSMLMISC19");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION008");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Fairy Dust");
        SetLocalString(oPC, "alchemy_m2", "Potion of Invisibility");
    }

    // Potion Of Ironguts
    if (GetLocalInt(oPC, "alch_pick") == 20)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bsore");
        SetLocalString(oPC, "alchemy_m", "X2_IT_MPOTION001");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Balisite Ore");
        SetLocalString(oPC, "alchemy_m2", "Potion of Ironguts");
    }

    // Potion Of Lore
    if (GetLocalInt(oPC, "alch_pick") == 21)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION019");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Lore");
    }

    // Potion Of Medicine
    if (GetLocalInt(oPC, "alch_pick") == 22)
    {
        SetLocalInt(oPC, "alchemy_n", 59);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_therb");
        SetLocalString(oPC, "alchemy_m", "lodoc_medicine");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Trampul Herb");
        SetLocalString(oPC, "alchemy_m2", "Potion of Medicine");
    }

    // Potion Of Nightsight
    if (GetLocalInt(oPC, "alch_pick") == 23)
    {
        SetLocalInt(oPC, "alchemy_n", 29);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_batwing");
        SetLocalString(oPC, "alchemy_m", "lodoc_lightp");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Bat Wing");
        SetLocalString(oPC, "alchemy_m2", "Potion of Nightsight");
    }

    // Potion Of Owl's Wisdom
    if (GetLocalInt(oPC, "alch_pick") == 24)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bflow");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION018");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Belan Flower");
        SetLocalString(oPC, "alchemy_m2", "Potion of Owl's Wisdom");
    }

    // Potion Of Polymorph
    if (GetLocalInt(oPC, "alch_pick") == 25)
    {
        SetLocalInt(oPC, "alchemy_n", 49);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "NW_IT_MSMLMISC19");
        SetLocalString(oPC, "alchemy_m", "lodoc_polymph");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Fairy Dust");
        SetLocalString(oPC, "alchemy_m2", "Potion of Polymorph");
    }

    // Potion Of Preservation
    if (GetLocalInt(oPC, "alch_pick") == 26)
    {
        SetLocalInt(oPC, "alchemy_n", 119);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "NW_IT_MSMLMISC17");
        SetLocalString(oPC, "alchemy_m", "lodoc_preserve");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Dragon Blood");
        SetLocalString(oPC, "alchemy_m2", "Potion of Preservation");
    }

    // Potion Of Rage
    if (GetLocalInt(oPC, "alch_pick") == 27)
    {
        SetLocalInt(oPC, "alchemy_n", 59);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "harpy_egg");
        SetLocalString(oPC, "alchemy_m", "lodoc_rage");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Harpy Egg");
        SetLocalString(oPC, "alchemy_m2", "Potion of Rage");
    }

    // Potion Of Lesser Restoration
    if (GetLocalInt(oPC, "alch_pick") == 28)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_mephit");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION011");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Piece of Mephit Wing");
        SetLocalString(oPC, "alchemy_m2", "Potion of Lesser Restoration");
    }

    // Potion Of Greater Restoration
    if (GetLocalInt(oPC, "alch_pick") == 29)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_mephit");
        SetLocalString(oPC, "alchemy_m", "lodoc_grestore");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Piece of Mephit Wing");
        SetLocalString(oPC, "alchemy_m2", "Potion of Greater Restoration");
    }

    // Potion Of Shape Change
    if (GetLocalInt(oPC, "alch_pick") == 30)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "ld_mush_spore");
        SetLocalString(oPC, "alchemy_m", "lodoc_shpchng");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Mushroom Spores");
        SetLocalString(oPC, "alchemy_m2", "Potion of Shape Change");
    }

    // Potion Of Speed
    if (GetLocalInt(oPC, "alch_pick") == 31)
    {
        SetLocalInt(oPC, "alchemy_n", 69);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_batwing");
        SetLocalString(oPC, "alchemy_m", "NW_IT_MPOTION004");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Bat Wing");
        SetLocalString(oPC, "alchemy_m2", "Potion of Speed");
    }

    // Potion Of Stoneskin
    if (GetLocalInt(oPC, "alch_pick") == 32)
    {
        SetLocalInt(oPC, "alchemy_n", 79);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bsore");
        SetLocalString(oPC, "alchemy_m", "lodoc_stoneskin");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Balisite Ore");
        SetLocalString(oPC, "alchemy_m2", "Potion of Stoneskin");
    }

    // Potion Of Greater Stoneskin
    if (GetLocalInt(oPC, "alch_pick") == 33)
    {
        SetLocalInt(oPC, "alchemy_n", 99);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "medusa_eye");
        SetLocalString(oPC, "alchemy_m", "lodoc_stoneskin2");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Medusa Eye");
        SetLocalString(oPC, "alchemy_m2", "Potion of Greater Stoneskin");
    }

    //////////////////////////////////////////////////////////////////////////
    //////////////             THROWING WEAPONS              /////////////////
    //////////////////////////////////////////////////////////////////////////

    // Acid Bomb
    if (GetLocalInt(oPC, "alch_pick") == 34)
    {
        SetLocalInt(oPC, "alchemy_n", 79);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bliquid");
        SetLocalString(oPC, "alchemy_m", "x2_it_acidbomb");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Burning Liquid");
        SetLocalString(oPC, "alchemy_m2", "Acid Bomb");
    }

    // Acid Flask
    if (GetLocalInt(oPC, "alch_pick") == 35)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bliquid");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE001");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Burning Liquid");
        SetLocalString(oPC, "alchemy_m2", "Acid Flask");
    }

    // Alchemist's Fire
    if (GetLocalInt(oPC, "alch_pick") == 36)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_bliquid");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE002");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Burning Liquid");
        SetLocalString(oPC, "alchemy_m2", "Alchemist's Fire");
    }

    // Caltrops
    if (GetLocalInt(oPC, "alch_pick") == 37)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
        SetLocalString(oPC, "alchemy_r", "reagnt_mshards");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE003");
        SetLocalString(oPC, "alchemy_b2", "Powder Bag");
        SetLocalString(oPC, "alchemy_r2", "Metal Shards");
        SetLocalString(oPC, "alchemy_m2", "Caltops");
    }

    // Choking Powder
    if (GetLocalInt(oPC, "alch_pick") == 38)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
        SetLocalString(oPC, "alchemy_r", "reagnt_tntpwdr");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE004");
        SetLocalString(oPC, "alchemy_b2", "Powder Bag");
        SetLocalString(oPC, "alchemy_r2", "Treant Powder");
        SetLocalString(oPC, "alchemy_m2", "Choking Powder");
    }

    // Fire Bomb
    if (GetLocalInt(oPC, "alch_pick") == 39)
    {
        SetLocalInt(oPC, "alchemy_n", 79);
        SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
        SetLocalString(oPC, "alchemy_r", "reagnt_bliquid");
        SetLocalString(oPC, "alchemy_m", "x2_it_firebomb");
        SetLocalString(oPC, "alchemy_b2", "Powder Bag");
        SetLocalString(oPC, "alchemy_r2", "Burning Liquid");
        SetLocalString(oPC, "alchemy_m2", "Fire Bomb");
    }

    // Holy Water
    if (GetLocalInt(oPC, "alch_pick") == 40)
    {
        SetLocalInt(oPC, "alchemy_n", 29);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "lodoc_waterr");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE005");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Water");
        SetLocalString(oPC, "alchemy_m2", "Holy Water");
        if (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) >= 1) { SetLocalInt(oPC, "holyman", 1); }
    }

    // Thunderstone
    if (GetLocalInt(oPC, "alch_pick") == 41)
    {
        SetLocalInt(oPC, "alchemy_n", 59);
        SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
        SetLocalString(oPC, "alchemy_r", "reagnt_tntpwdr");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE006");
        SetLocalString(oPC, "alchemy_b2", "Powder Bag");
        SetLocalString(oPC, "alchemy_r2", "Treant Powder");
        SetLocalString(oPC, "alchemy_m2", "Tanglefoot Bag");
    }

    // Thunderstone
    if (GetLocalInt(oPC, "alch_pick") == 42)
    {
        SetLocalInt(oPC, "alchemy_n", 39);
        SetLocalString(oPC, "alchemy_b", "reagnt_bsore");
        SetLocalString(oPC, "alchemy_r", "reagnt_tntpwdr");
        SetLocalString(oPC, "alchemy_m", "X1_WMGRENADE007");
        SetLocalString(oPC, "alchemy_b2", "Balisite Ore");
        SetLocalString(oPC, "alchemy_r2", "Treant Powder");
        SetLocalString(oPC, "alchemy_m2", "Thunderstone");
    }

    //////////////////////////////////////////////////////////////////////////
    //////////////                 POISONS                   /////////////////
    //////////////////////////////////////////////////////////////////////////

    // Centipede Venom
    if (GetLocalInt(oPC, "alch_pick") == 43)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalInt(oPC, "poison_int", 14);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_csack");
        SetLocalString(oPC, "alchemy_m", "x2_it_poison0");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Centipede Venom Sack");
        SetLocalString(oPC, "alchemy_m2", "Centipede Poison");
    }

    // Giant Bee Venom
    if (GetLocalInt(oPC, "alch_pick") == 44)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalInt(oPC, "poison_int", 15);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_stinger");
        SetLocalString(oPC, "alchemy_m", "x2_it_poison0");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Giant Bee Stinger");
        SetLocalString(oPC, "alchemy_m2", "Giant Bee Poison");
    }

    // Spider Venom
    if (GetLocalInt(oPC, "alch_pick") == 45)
    {
        SetLocalInt(oPC, "alchemy_n", 19);
        SetLocalInt(oPC, "poison_int", 13);
        SetLocalString(oPC, "alchemy_b", "x2_it_cfm_pbottl");
        SetLocalString(oPC, "alchemy_r", "reagnt_spider");
        SetLocalString(oPC, "alchemy_m", "x2_it_poison0");
        SetLocalString(oPC, "alchemy_b2", "Empty Bottle");
        SetLocalString(oPC, "alchemy_r2", "Spider Venom Sack");
        SetLocalString(oPC, "alchemy_m2", "Spider Poison");
    }

    ExecuteScript("skill_alchemy", oPC);
}
