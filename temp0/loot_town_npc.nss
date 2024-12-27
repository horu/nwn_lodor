// Loot script for town NPCs
#include "x0_i0_treasure"

void main()
{
    //Brushwood Citizens
    if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "brushwood_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 5);

        //Faraldor Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 13) == "faraldor_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Sprite Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "sprite_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Minotaur Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 13) == "cit_minotaur_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Nilas Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "nilas_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Sylvan Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "sylvan_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 14);

        //Aldur Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "aldur_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 10);

        //Vegnar Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "vegnar_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Brownie Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "brownie_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Quickling Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "quickling_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Duergar Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "duergar_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Dedry Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "dedry_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);

        //Grogor Citizens
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "grogor_cit_")
    {
        GenerateLowTreasure(OBJECT_SELF);
        GenerateLowTreasure(OBJECT_SELF);
        CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 8);
    }
    else
    {
    }
}
