void main()
{
    object oPC = GetClickingObject();
    int nRoll = d20(1);
    object oBook = GetItemPossessedBy(oPC, "faction_report");

    if ((nRoll == 1) || (nRoll == 2) || (nRoll == 3))
    {
        // Clouded Veil
        SetLocalInt(oBook, "bind_tree", 21);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_1")));
    }
    else if ((nRoll == 4) || (nRoll == 5) || (nRoll == 6))
    {
        // Dedry Woods
        SetLocalInt(oBook, "bind_tree", 22);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_2")));
    }
    else if ((nRoll == 7) || (nRoll == 8) || (nRoll == 9))
    {
        // Delir Forest
        SetLocalInt(oBook, "bind_tree", 23);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_3")));
    }
    else if ((nRoll == 10) || (nRoll == 11) || (nRoll == 12))
    {
        // Frostbite Hills
        SetLocalInt(oBook, "bind_tree", 24);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_4")));
    }
    else if ((nRoll == 13) || (nRoll == 14) || (nRoll == 15))
    {
        // Grogor Jungle
        SetLocalInt(oBook, "bind_tree", 25);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_5")));
    }
    else if ((nRoll == 16) || (nRoll == 17) || (nRoll == 18))
    {
        // Nilas Forest
        SetLocalInt(oBook, "bind_tree", 26);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_6")));
    }
    else
    {
        // Vegnar Plains
        SetLocalInt(oBook, "bind_tree", 27);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_7")));
    }
}
