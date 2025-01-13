// This checks a number of variables to determine what store to open for the PC.

#include "nwnx_store"

int sl_GetMarkUp(int level)
{
    if (level < 3)
    {
        return 350 - level * 50;
    }
    return 275 - level * 25;
}

int sl_GetMarkDown(int level)
{
    if (level < 7)
    {
        return 15 + level * 5;
    }
    return level * 10 - 15;
}

int sl_GetMaxBuyPrice(int level)
{
    return 320 + level * 20;
}

object sl_CreateStore(string base_store_tag, int level)
{
    string store_tag = base_store_tag + IntToString(level);

    object base_store = GetObjectByTag(base_store_tag);
    if (base_store == OBJECT_INVALID)
    {
        PrintString("[store] Can not create base store: " + base_store_tag);
        return OBJECT_INVALID;
    }

    object store = CopyObject(base_store, GetLocation(base_store), OBJECT_INVALID, store_tag);
    NWNX_Store_SetMarkUp(store, sl_GetMarkUp(level));
    NWNX_Store_SetMarkDown(store, sl_GetMarkDown(level));
    SetStoreIdentifyCost(store, sl_GetMarkUp(level));
    SetStoreMaxBuyPrice(store, sl_GetMaxBuyPrice(level));

    PrintString("[store] Created store: " + store_tag + "."
        + " mark up: " + IntToString(NWNX_Store_GetMarkUp(store))
        + " mark down: " + IntToString(NWNX_Store_GetMarkDown(store))
        + " identify: " + IntToString(GetStoreIdentifyCost(store))
        + " max buy: " + IntToString(GetStoreMaxBuyPrice(store))
        );

    return store;
}

int sl_GetStoreLevel(int feel)
{
    if ((feel > 0) && (feel < 3)) { return 2; }
    else if ((feel > 2) && (feel < 5)) { return 3; }
    else if ((feel > 4) && (feel < 7)) { return 4; }
    else if ((feel > 6) && (feel < 9)) { return 5; }
    else if ((feel > 8) && (feel < 11)) { return 6; }
    else if ((feel > 10) && (feel < 13)) { return 7; }
    else if ((feel > 12) && (feel < 18)) { return 8; }
    else if (feel > 17) { return 9; }

    return 1;
}

object sl_GetStore(string base_store_tag, int feel)
{
    int level = sl_GetStoreLevel(feel);
    string store_tag = base_store_tag + IntToString(level);
    object store = GetObjectByTag(store_tag);
    if (store == OBJECT_INVALID)
    {
        store = sl_CreateStore(base_store_tag, level);
    }

    return store;
}

void main()
{
    object oPC = GetPCSpeaker();

    int nCheck1 = GetLocalInt(oPC, "nMood1");
    int nCheck2 = GetLocalInt(oPC, "nMood2");
    int nCheck3 = GetLocalInt(oPC, "nMood3");
    int nCheck4 = GetLocalInt(oPC, "nMood4");

    int nTotal = nCheck1 + nCheck2 + nCheck3 + nCheck4;

    // The start blacksmith is in Halfling town.
    // The start provisioner is in Halfling town.
    // The start herbalist is in Halfling town.
    // The start mage is in Brownie town.
    // The start tavern is in Halfling town.
    // The potion store is in the Path of Miradir.

    // This is for the Minotaurs Store
    if (GetTag(OBJECT_SELF) == "cit_minotaur_1")
    {
        object oStore = GetObjectByTag("minotaur_store");
        OpenStore(oStore, oPC);
    }

    // This is for the Minotaurs Store
    else if (GetTag(OBJECT_SELF) == "cit_minotaur_4")
    {
        object oStore = GetObjectByTag("MinoWizStore");
        OpenStore(oStore, oPC);
    }

    // This is for the Monster Starter Store
    else if (GetTag(OBJECT_SELF) == "st_mon_barrel")
    {
        object oStore = GetObjectByTag("MonsterStore");
        OpenStore(oStore, oPC);
    }

    // This is the Nixie Store
    else if (GetTag(OBJECT_SELF) == "DJ_NIXIE2")
    {
        if (nTotal == 0)
        {
            object oStore = GetObjectByTag("nixiestore1");
            OpenStore(oStore, oPC);
        }
        else if ((nTotal > 0) && (nTotal < 4))
        {
            object oStore = GetObjectByTag("nixiestore2");
            OpenStore(oStore, oPC);
        }
        else if ((nTotal > 3) && (nTotal < 7))
        {
            object oStore = GetObjectByTag("nixiestore3");
            OpenStore(oStore, oPC);
        }
        else if ((nTotal > 6) && (nTotal < 10))
        {
            object oStore = GetObjectByTag("nixiestore4");
            OpenStore(oStore, oPC);
        }
        else if ((nTotal > 9) && (nTotal < 15))
        {
            object oStore = GetObjectByTag("nixiestore5");
            OpenStore(oStore, oPC);
        }
        else if (nTotal > 14)
        {
            object oStore = GetObjectByTag("nixiestore6");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Provisioner in Brushwood
    else if (GetTag(OBJECT_SELF) == "brushwood_cit_2")
    {
        int nRace = GetLocalInt(oPC, "nHalfling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }


    // This is for A Hobbit's Herbs (Brushwood Store)
    else if (GetTag(OBJECT_SELF) == "brushwood_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nHalfling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for A Dragrin's Forge (Brushwood Store)
    else if (GetTag(OBJECT_SELF) == "brushwood_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nHalfling");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for the Thicket Tavern (Brushwood Store)
    else if (GetTag(OBJECT_SELF) == "brushwood_cit_9")
    {
        int nRace = GetLocalInt(oPC, "nHalfling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Potted Pixie (Brownie Store)
    else if (GetTag(OBJECT_SELF) == "brownie_cit_2")
    {
        int nRace = GetLocalInt(oPC, "nBrownie");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("feyforge1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("feyforge2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("feyforge3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("feyforge4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("feyforge5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("feyforge6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("feyforge7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("feyforge8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("feyforge9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Owlbear Tavern (Brownie Store)
    else if (GetTag(OBJECT_SELF) == "brownie_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nBrownie");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Oaken Trade (Brownie Store)
    else if (GetTag(OBJECT_SELF) == "brownie_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nBrownie");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }


    // This is for A Baswil's Herbs (Brownie Store)
    else if (GetTag(OBJECT_SELF) == "brownie_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nBrownie");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Enchanted Emporium (Brownie Store)
    else if (GetTag(OBJECT_SELF) == "brownie_cit_19")
    {
        int nRace = GetLocalInt(oPC, "nBrownie");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Gerad's Elixirs (Miradir Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_mir")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Winter Jewel (Aldur Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("AldurJewel9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("AldurJewel8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("AldurJewel7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("AldurJewel6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("AldurJewel5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("AldurJewel4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("AldurJewel3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("AldurJewel2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("AldurJewel1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Frozen Forge (Aldur Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for Barbley's Goods (Aldur Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Wizard Tower (Aldur Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_8")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Hilltop Tavern (Aldur Store)
    else if (GetTag(OBJECT_SELF) == "aldur_cit_9")
    {
        int nRace = GetLocalInt(oPC, "nHuman");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Wizard's Junk (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Alchemist (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_pt")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Whispering Spice (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_2")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Evil Edge (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_1")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("feyforge1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("feyforge2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("feyforge3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("feyforge4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("feyforge5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("feyforge6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("feyforge7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("feyforge8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("feyforge9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Wizard (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Quickling Tavern (Quickling Store)
    else if (GetTag(OBJECT_SELF) == "quickling_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nQuickling");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Mountain Store (Vegnar Store)
    else if (GetTag(OBJECT_SELF) == "vegnar_cit_2")
    {
        int nRace = GetLocalInt(oPC, "nDwarf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Druid's Drink (Vegnar Store)
    else if (GetTag(OBJECT_SELF) == "vegnar_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nDwarf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Dwarven Steel (Vegnar Store)
    else if (GetTag(OBJECT_SELF) == "vegnar_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nDwarf");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for The Druid's Drink (Vegnar Store)
    else if (GetTag(OBJECT_SELF) == "vegnar_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nDwarf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Tipsy Dwarf (Vegnar Store)
    else if (GetTag(OBJECT_SELF) == "vegnar_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nDwarf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Vrugar (Orc Store)
    else if (GetTag(OBJECT_SELF) == "LD_GAGORCM")
    {
        if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 34))
        {
            object oStore = GetObjectByTag("OrcStore2");
            OpenStore(oStore, oPC);
        }
        else if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79))
        {
            object oStore = GetObjectByTag("OrcStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Drogo (Hobbit Store)
    else if (GetTag(OBJECT_SELF) == "LD_HOBBIT")
    {
        if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 34))
        {
            object oStore = GetObjectByTag("HobbitStore2");
            OpenStore(oStore, oPC);
        }
        else if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79))
        {
            object oStore = GetObjectByTag("HobbitStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Dark Blade (Drow Store)
    else if ((GetTag(OBJECT_SELF) == "nilas_cit_1") && (GetRacialType(GetLastSpeaker()) != RACIAL_TYPE_FEY))
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel < 0)
        {
            string sSayThis = "Sorry little one.  My wares are too big for you to use.";
            SpeakString(sSayThis);
        }
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for the Provision Store (Drow Store)
    else if (GetTag(OBJECT_SELF) == "nilas_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Mountain Hall (Drow Store)
    else if (GetTag(OBJECT_SELF) == "nilas_cit_8")
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Wizard (Drow Store)
    else if (GetTag(OBJECT_SELF) == "nilas_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Deep Arcane (Drow Store)
    else if (GetTag(OBJECT_SELF) == "nilas_cit_pot")
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for The Sunken Garden (Drow Store)
    else if (GetTag(OBJECT_SELF) == "nilas_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nDrow");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Elven Arms (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_sm")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for Forest's Friend (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_pr")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Tower of Arcane Arts (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_pt")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Wizard (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_mgc")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Herbalist (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_hb")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Starshine Tavern (Faraldor Store)
    else if (GetTag(OBJECT_SELF) == "faraldor_cit_br")
    {
        int nRace = GetLocalInt(oPC, "nElf");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Provisioner in Grogor
    else if (GetTag(OBJECT_SELF) == "grogor_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nHalforc");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the armor store in Grogor
    else if (GetTag(OBJECT_SELF) == "grogor_cit_1")
    {
        int nRace = GetLocalInt(oPC, "nHalforc");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for the Grogor Tavern
    else if (GetTag(OBJECT_SELF) == "grogor_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nHalforc");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Shamuns Towur (Grogor Store)
    else if (GetTag(OBJECT_SELF) == "grogor_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nHalforc");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Provisioner in Firebrand Keep
    else if (GetTag(OBJECT_SELF) == "firebrand_cit_pr")
    {
        object oStore = GetObjectByTag("hairfootst1");
        OpenStore(oStore, oPC);
    }

    // This is for the Smith in Firebrand Keep
    else if (GetTag(OBJECT_SELF) == "firebrand_cit_nm")
    {
        object oStore = GetObjectByTag("dragforge1");
        OpenStore(oStore, oPC);
    }

    // This is for the Tavern in Firebrand Keep
    else if (GetTag(OBJECT_SELF) == "firebrand_cit_ba")
    {
        object oStore = GetObjectByTag("thicket1");
        OpenStore(oStore, oPC);
    }

    // This is for Provisioner in Dedry
    else if (GetTag(OBJECT_SELF) == "dedry_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Gnome Smith
    else if (GetTag(OBJECT_SELF) == "dedry_cit_7")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for the Dedry Herbalist
    else if (GetTag(OBJECT_SELF) == "dedry_cit_pot")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Dedry Mage
    else if (GetTag(OBJECT_SELF) == "dedry_cit_mage")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Dedry Potion Store
    else if (GetTag(OBJECT_SELF) == "dedry_cit_brew")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Gnome Tavern
    else if (GetTag(OBJECT_SELF) == "dedry_cit_bar")
    {
        int nRace = GetLocalInt(oPC, "nGnome");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Provisioner in Borban Pit
    else if (GetTag(OBJECT_SELF) == "duergar_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Herb Pit Store
    else if (GetTag(OBJECT_SELF) == "duergar_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Deugar Smith
    else if (GetTag(OBJECT_SELF) == "duergar_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for Duergar Mage
    else if (GetTag(OBJECT_SELF) == "duergar_cit_7")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Duergar Potion Store
    else if (GetTag(OBJECT_SELF) == "duergar_cit_6")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("PotionStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("PotionStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("PotionStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("PotionStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("PotionStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("PotionStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("PotionStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("PotionStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("PotionStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Duergar Tavern
    else if (GetTag(OBJECT_SELF) == "duergar_cit_9")
    {
        int nRace = GetLocalInt(oPC, "nDuergar");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("thicket1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("thicket2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("thicket3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("thicket4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("thicket5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("thicket6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("thicket7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("thicket8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("thicket9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for Provisioner in Maple Wood
    else if (GetTag(OBJECT_SELF) == "sylvan_cit_5")
    {
        int nRace = GetLocalInt(oPC, "nSylvan");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hairfootst1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hairfootst2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hairfootst3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hairfootst4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hairfootst5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hairfootst6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hairfootst7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hairfootst8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hairfootst9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Maple Wood Herbalist
    else if (GetTag(OBJECT_SELF) == "sylvan_cit_4")
    {
        int nRace = GetLocalInt(oPC, "nSylvan");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("hobbitherb1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("hobbitherb2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("hobbitherb3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("hobbitherb4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("hobbitherb5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("hobbitherb6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("hobbitherb7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("hobbitherb8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("hobbitherb9");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Maple Wood Smith
    else if (GetTag(OBJECT_SELF) == "sylvan_cit_2")
    {
        int nRace = GetLocalInt(oPC, "nSylvan");
        int nFeel = nRace + nTotal;
        object oStore = sl_GetStore("dragforge", nFeel);
        OpenStore(oStore, oPC);
    }

    // This is for the Sprite Mage Store
    else if (GetTag(OBJECT_SELF) == "sprite_cit_3")
    {
        int nRace = GetLocalInt(oPC, "nSprite");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("MageStore9");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("MageStore8");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("MageStore7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("MageStore6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("MageStore5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("MageStore4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("MageStore3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("MageStore2");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("MageStore1");
            OpenStore(oStore, oPC);
        }
    }

    // This is for the Sprite Armor/Weapons
    else if (GetTag(OBJECT_SELF) == "sprite_cit_1")
    {
        int nRace = GetLocalInt(oPC, "nSprite");
        int nFeel = nRace + nTotal;
        if (nFeel == 0)
        {
            object oStore = GetObjectByTag("feyforge1");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 0) && (nFeel < 3))
        {
            object oStore = GetObjectByTag("feyforge2");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 2) && (nFeel < 5))
        {
            object oStore = GetObjectByTag("feyforge3");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 4) && (nFeel < 7))
        {
            object oStore = GetObjectByTag("feyforge4");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 6) && (nFeel < 9))
        {
            object oStore = GetObjectByTag("feyforge5");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 8) && (nFeel < 11))
        {
            object oStore = GetObjectByTag("feyforge6");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 10) && (nFeel < 13))
        {
            object oStore = GetObjectByTag("feyforge7");
            OpenStore(oStore, oPC);
        }
        else if ((nFeel > 12) && (nFeel < 18))
        {
            object oStore = GetObjectByTag("feyforge8");
            OpenStore(oStore, oPC);
        }
        else if (nFeel > 17)
        {
            object oStore = GetObjectByTag("feyforge9");
            OpenStore(oStore, oPC);
        }
    }

    // Vampire Store
    else if (GetTag(OBJECT_SELF) == "LD_VAMPIRE")
    {
        object oStore = GetObjectByTag("VampireStore");
        OpenStore(oStore, oPC);
    }
}
