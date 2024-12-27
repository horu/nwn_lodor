void main()
{
    object oPC = GetPCSpeaker();

    object oBook = GetItemPossessedBy(oPC, "faction_report");

    if (GetLocalInt(oBook, "bind_tree") == 0)
    {
        SendMessageToPC(oPC, "You are not currently bound anywhere.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 1)
    {
        SendMessageToPC(oPC, "You are currently bound in the Underwood.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 2)
    {
        SendMessageToPC(oPC, "You are currently bound in the Delir Forest.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 3)
    {
        SendMessageToPC(oPC, "You are currently bound in the Dedry Woods.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 4)
    {
        SendMessageToPC(oPC, "You are currently bound in the Nilas Forest.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 5)
    {
        SendMessageToPC(oPC, "You are currently bound in the Shivering Woods.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 6)
    {
        SendMessageToPC(oPC, "You are currently bound in the Grogor Jungle.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 7)
    {
        SendMessageToPC(oPC, "You are currently bound in the Vegnar Plains.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 8)
    {
        SendMessageToPC(oPC, "You are currently bound in the Hidden Grove.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 9)
    {
        SendMessageToPC(oPC, "You are currently bound in the Wicked Marsh.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 11)
    {
        SendMessageToPC(oPC, "You are currently bound in Daclor's Crossing.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 12)
    {
        SendMessageToPC(oPC, "You are currently bound in the Scorn.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 13)
    {
        SendMessageToPC(oPC, "Your grave is in the Tower of the Damned.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 14)
    {
        SendMessageToPC(oPC, "Your grave is in the Cliffs of the Fallen.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 15)
    {
        SendMessageToPC(oPC, "Your grave is in the Dedry Catacombs.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 16)
    {
        SendMessageToPC(oPC, "Your grave is in the Ruins of Jarehar.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 17)
    {
        SendMessageToPC(oPC, "Your grave is in the Crypts.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 18)
    {
        SendMessageToPC(oPC, "Your grave is in the Citadel.");
    }
    else if (GetLocalInt(oBook, "bind_tree") == 19)
    {
        SendMessageToPC(oPC, "You are currently bound in the Grandul Ruins.");
    }
}
