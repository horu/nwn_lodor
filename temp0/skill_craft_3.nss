// Display the current item to make.
void main()
{
    object oPC = GetPCSpeaker();
    int nCraft = GetLocalInt(oPC, "skil_craft");

    if (nCraft == 1)
    {
        SendMessageToPC(oPC, "Black Dragon Scales");
    }

    else if (nCraft == 2)
    {
        SendMessageToPC(oPC, "Blue Dragon Scales");
    }

    else if (nCraft == 3)
    {
        SendMessageToPC(oPC, "Brass Dragon Scales");
    }

    else if (nCraft == 4)
    {
        SendMessageToPC(oPC, "Bronze Dragon Scales");
    }

    else if (nCraft == 5)
    {
        SendMessageToPC(oPC, "Copper Dragon Scales");
    }

    else if (nCraft == 6)
    {
        SendMessageToPC(oPC, "Gold Dragon Scales");
    }

    else if (nCraft == 7)
    {
        SendMessageToPC(oPC, "Green Dragon Scales");
    }

    else if (nCraft == 8)
    {
        SendMessageToPC(oPC, "Prismatic Dragon Scales");
    }

    else if (nCraft == 9)
    {
        SendMessageToPC(oPC, "Red Dragon Scales");
    }

    else if (nCraft == 10)
    {
        SendMessageToPC(oPC, "Shadow Dragon Scales");
    }

    else if (nCraft == 11)
    {
        SendMessageToPC(oPC, "Silver Dragon Scales");
    }

    else if (nCraft == 12)
    {
        SendMessageToPC(oPC, "White Dragon Scales");
    }

    else if (nCraft == 13)
    {
        SendMessageToPC(oPC, "Basilisk Armor");
    }

    else if (nCraft == 14)
    {
        SendMessageToPC(oPC, "Hell Hound Armor");
    }

    else if (nCraft == 15)
    {
        SendMessageToPC(oPC, "Malar Panther Armor");
    }

    else if (nCraft == 16)
    {
        SendMessageToPC(oPC, "Shadow Hound Armor");
    }

    else if (nCraft == 17)
    {
        SendMessageToPC(oPC, "Winter Wolf Armor");
    }

    else if (nCraft == 18)
    {
        SendMessageToPC(oPC, "Demon Mail");
    }

    else if (nCraft == 19)
    {
        SendMessageToPC(oPC, "Gorgon Mail");
    }

    else if (nCraft == 20)
    {
        SendMessageToPC(oPC, "Shadow Pack");
    }

    else
    {
        SendMessageToPC(oPC, "No Item Selected");
    }
}
