#include "NW_O2_CONINCLUDE"
#include "x0_i0_treasure"

void main()
{
    object oPC = GetLastKiller();
    location lSpot = GetLocation(OBJECT_SELF);

    // Spider Cocoons
    if (GetTag(OBJECT_SELF) == "ld_cocoon")
    {
        GenerateLowTreasure(oPC, oPC);
        CreateItemOnObject("NW_IT_GOLD001", oPC, 149);
        CreateGem(oPC, oPC, TREASURE_TYPE_LOW, 1);
        CreateGem(oPC, oPC, TREASURE_TYPE_LOW, 1);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_cocoon");
    }

    // Miradir's Key Bag 1
    else if (GetTag(OBJECT_SELF) == "miradir_bag1")
    {
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradirbg1");
        DestroyObject(OBJECT_SELF, 1.0);
    }

    // Miradir's Key Bag 2
    else if (GetTag(OBJECT_SELF) == "miradir_bag2")
    {
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradirbg2");
        DestroyObject(OBJECT_SELF, 1.0);
    }

    // Cave In Rocks
    else if (GetTag(OBJECT_SELF) == "sewer_bag")
    {
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_sewerbag");
        DestroyObject(OBJECT_SELF, 1.0);
    }

    // Sewer Key Bag
    else if (GetTag(OBJECT_SELF) == "ld_medusa_ci")
    {
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_cavein");
    }

    // Crypt Key Bag
    else if (GetTag(OBJECT_SELF) == "fallen_bag")
    {
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_fallenbag");
        DestroyObject(OBJECT_SELF, 1.0);
    }

    // Spider Cocoon For Sewers
    if (GetTag(OBJECT_SELF) == "ld_cocoonbie")
    {
        GenerateLowTreasure(oPC, oPC);
        GenerateLowTreasure(oPC, oPC);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_cocoonbie");
    }
}
