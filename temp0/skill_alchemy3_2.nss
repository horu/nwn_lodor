// Display the current potion to make.
void main()
{
    object oPC = GetPCSpeaker();
    int nBrew = GetLocalInt(oPC, "alch_pick2");

    if (nBrew == 1)
    {
        SendMessageToPC(oPC, "Pouch of Acid Crystals [Greenstone]");
    }

    else if (nBrew == 2)
    {
        SendMessageToPC(oPC, "Pouch of Confusing Crystals [Malachite]");
    }

    else if (nBrew == 3)
    {
        SendMessageToPC(oPC, "Pouch of Resist Crystals [Garnet]");
    }

    else if (nBrew == 4)
    {
        SendMessageToPC(oPC, "Pouch of Shadow Crystals [Phenalope]");
    }

    else if (nBrew == 5)
    {
        SendMessageToPC(oPC, "Pouch of Spell Protection Crystals [Aventurine]");
    }

    else if (nBrew == 6)
    {
        SendMessageToPC(oPC, "Pouch of Amnesia Crystals [Amethyst]");
    }

    else if (nBrew == 7)
    {
        SendMessageToPC(oPC, "Pouch of Magic Dispel Crystals [Fluorspar]");
    }

    else if (nBrew == 8)
    {
        SendMessageToPC(oPC, "Pouch of Shield Crystals [Alexandrite]");
    }

    else if (nBrew == 9)
    {
        SendMessageToPC(oPC, "Pouch of Burning Crystals [Fire Agate]");
    }

    else if (nBrew == 10)
    {
        SendMessageToPC(oPC, "Pouch of Flame Crystals [Fire Opal]");
    }

    else if (nBrew == 11)
    {
        SendMessageToPC(oPC, "Pouch of Tangle Crystals [Sapphire]");
    }

    else if (nBrew == 12)
    {
        SendMessageToPC(oPC, "Pouch of Implosion Crystals [Topaz]");
    }

    else if (nBrew == 13)
    {
        SendMessageToPC(oPC, "Pouch of Sharp Crystals [Diamond]");
    }

    else if (nBrew == 14)
    {
        SendMessageToPC(oPC, "Pouch of Fire Crystals [Ruby]");
    }

    else if (nBrew == 15)
    {
        SendMessageToPC(oPC, "Pouch of Control Crystals [Emerald]");
    }

    else if (nBrew == 16)
    {
        SendMessageToPC(oPC, "Pouch of Blinding Crystals [Blue Light Gem]");
    }

    else if (nBrew == 17)
    {
        SendMessageToPC(oPC, "Pouch of Chameleon Crystals [Green Light Gem]");
    }

    else if (nBrew == 18)
    {
        SendMessageToPC(oPC, "Pouch of Charm Crystals [Orange Light Gem]");
    }

    else if (nBrew == 19)
    {
        SendMessageToPC(oPC, "Pouch of Speed Crystals [Purple Light Gem]");
    }

    else if (nBrew == 20)
    {
        SendMessageToPC(oPC, "Pouch of Healing Crystals [Red Light Gem]");
    }

    else if (nBrew == 21)
    {
        SendMessageToPC(oPC, "Pouch of Meteor Crystals [White Light Gem]");
    }

    else if (nBrew == 22)
    {
        SendMessageToPC(oPC, "Pouch of Resurrection Crystals [Yellow Light Gem]");
    }

    else if (nBrew == 23)
    {
        SendMessageToPC(oPC, "Pouch of Ice Crystals [Frost Crystal]");
    }

    else if (nBrew == 24)
    {
        SendMessageToPC(oPC, "Pouch of Dragon Crystals [Dragon Tooth]");
    }

    else if (nBrew == 25)
    {
        SendMessageToPC(oPC, "Pouch of Wisp Dust Crystals [Wisp Corpse]");
    }

    else
    {
        SendMessageToPC(oPC, "No Crystal Recipe Selected");
    }
}
