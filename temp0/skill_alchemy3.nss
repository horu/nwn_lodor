// Display the current potion to make.
void main()
{
    object oPC = GetPCSpeaker();
    int nBrew = GetLocalInt(oPC, "alch_pick");

    if (nBrew == 1)
    {
        SendMessageToPC(oPC, "Potion of Aid [Trampul Herb]");
    }

    else if (nBrew == 2)
    {
        SendMessageToPC(oPC, "Potion of Antidote [Trampul Herb]");
    }

    else if (nBrew == 3)
    {
        SendMessageToPC(oPC, "Potion of Barkskin [Deru Branch]");
    }

    else if (nBrew == 4)
    {
        SendMessageToPC(oPC, "Potion of Bless [Trampul Herb]");
    }

    else if (nBrew == 5)
    {
        SendMessageToPC(oPC, "Potion of Bull's Strength [Belan Flower]");
    }

    else if (nBrew == 6)
    {
        SendMessageToPC(oPC, "Potion of Cat's Grace [Belan Flower]");
    }

    else if (nBrew == 7)
    {
        SendMessageToPC(oPC, "Potion of Clarity [Gazer Eye]");
    }

    else if (nBrew == 8)
    {
        SendMessageToPC(oPC, "Potion of Cure Light Wounds [Garlic]");
    }

    else if (nBrew == 9)
    {
        SendMessageToPC(oPC, "Potion of Cure Moderate Wounds [Garlic]");
    }

    else if (nBrew == 10)
    {
        SendMessageToPC(oPC, "Potion of Cure Serious Wounds [Garlic]");
    }

    else if (nBrew == 11)
    {
        SendMessageToPC(oPC, "Potion of Cure Critical Wounds [Garlic]");
    }

    else if (nBrew == 12)
    {
        SendMessageToPC(oPC, "Potion of Cure All Wounds [Troll Blood]");
    }

    else if (nBrew == 13)
    {
        SendMessageToPC(oPC, "Potion of Death Armor [Lava Rock]");
    }

    else if (nBrew == 14)
    {
        SendMessageToPC(oPC, "Potion of Eagle's Splendor [Belan Flower]");
    }

    else if (nBrew == 15)
    {
        SendMessageToPC(oPC, "Potion of Endurance [Belan Flower]");
    }

    else if (nBrew == 16)
    {
        SendMessageToPC(oPC, "Potion of Fire Field [Lava Rock]");
    }

    else if (nBrew == 17)
    {
        SendMessageToPC(oPC, "Potion of Fox Cunning [Belan Flower]");
    }

    else if (nBrew == 18)
    {
        SendMessageToPC(oPC, "Potion of Heal [Trampul Herb]");
    }

    else if (nBrew == 19)
    {
        SendMessageToPC(oPC, "Potion of Invisibility [Fairy Dust]");
    }

    else if (nBrew == 20)
    {
        SendMessageToPC(oPC, "Potion of Ironguts [Balisite Ore]");
    }

    else if (nBrew == 21)
    {
        SendMessageToPC(oPC, "Potion of Lore [Belan Flower]");
    }

    else if (nBrew == 22)
    {
        SendMessageToPC(oPC, "Potion of Medicine [Trampul Herb]");
    }

    else if (nBrew == 23)
    {
        SendMessageToPC(oPC, "Potion of Nightsight [Bat Wing]");
    }

    else if (nBrew == 24)
    {
        SendMessageToPC(oPC, "Potion of Owl's Wisdom [Belan Flower]");
    }

    else if (nBrew == 25)
    {
        SendMessageToPC(oPC, "Potion of Polymorph [Fairy Dust]");
    }

    else if (nBrew == 26)
    {
        SendMessageToPC(oPC, "Potion of Preservation [Dragon Blood]");
    }

    else if (nBrew == 27)
    {
        SendMessageToPC(oPC, "Potion of Rage [Harpy Egg]");
    }

    else if (nBrew == 28)
    {
        SendMessageToPC(oPC, "Potion of Lesser Restoration [Piece of Mephit Wing]");
    }

    else if (nBrew == 29)
    {
        SendMessageToPC(oPC, "Potion of Greater Restoration [Piece of Mephit Wing]");
    }

    else if (nBrew == 30)
    {
        SendMessageToPC(oPC, "Potion of Shape Change [Mushroom Spores]");
    }

    else if (nBrew == 31)
    {
        SendMessageToPC(oPC, "Potion of Speed [Bat Wing]");
    }

    else if (nBrew == 32)
    {
        SendMessageToPC(oPC, "Potion of Stoneskin [Balisite Ore]");
    }

    else if (nBrew == 33)
    {
        SendMessageToPC(oPC, "Potion of Greater Stoneskin [Medusa Eye]");
    }

    //////////////////////////////////////////////////////////////////////////
    //////////////             THROWING WEAPONS              /////////////////
    //////////////////////////////////////////////////////////////////////////

    else if (nBrew == 34)
    {
        SendMessageToPC(oPC, "Acid Bomb [Burning Liquid]");
    }

    else if (nBrew == 35)
    {
        SendMessageToPC(oPC, "Acid Flask [Burning Liquid]");
    }

    else if (nBrew == 36)
    {
        SendMessageToPC(oPC, "Alchemist's Fire [Burning Liquid]");
    }

    else if (nBrew == 37)
    {
        SendMessageToPC(oPC, "Caltops [Metal Shards]");
    }

    else if (nBrew == 38)
    {
        SendMessageToPC(oPC, "Choking Powder [Treant Powder]");
    }

    else if (nBrew == 39)
    {
        SendMessageToPC(oPC, "Fire Bomb [Burning Liquid]");
    }

    else if (nBrew == 40)
    {
        SendMessageToPC(oPC, "Holy Water [Water]");
    }

    else if (nBrew == 41)
    {
        SendMessageToPC(oPC, "Tanglefoot Bag [Treant Powder]");
    }

    else if (nBrew == 42)
    {
        SendMessageToPC(oPC, "Thunderstone [Treant Powder]");
    }

    //////////////////////////////////////////////////////////////////////////
    //////////////                 POISONS                   /////////////////
    //////////////////////////////////////////////////////////////////////////

    else if (nBrew == 43)
    {
        SendMessageToPC(oPC, "Centipede Poison [Centipede Venom Sack]");
    }

    else if (nBrew == 44)
    {
        SendMessageToPC(oPC, "Giant Bee Poison [Giant Bee Stinger]");
    }

    else if (nBrew == 45)
    {
        SendMessageToPC(oPC, "Spider Poison [Spider Venom Sack]");
    }

    else
    {
        SendMessageToPC(oPC, "No Recipe Selected");
    }
}
