void main()
{
    object oPC = GetPCSpeaker();
    object oInfo = GetItemPossessedBy(oPC, "faction_report");

    int iSaveXP = GetXP(oPC);
    int iLevel = GetHitDice(oPC) - 1;
    int iXPBack = (iLevel * (iLevel - 1) * 500);
    int iXPMove = iXPBack + 1;
    // DEBUG
    //SetXP(oPC, iXPMove);


    if (GetSubRace(oPC) == "Vampire")
    {
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_VAMPIRE")));
    }
    else
    {
        if (GetRacialType(oPC) == RACIAL_TYPE_HALFLING)
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_BRUSHWOOD")));
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_GNOME)
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_HAMLET")));
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_HALFORC)
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_GROGOR")));
        }
        else if (GetRacialType(oPC) == IP_CONST_RACIALTYPE_GIANT)
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_GROGOR")));
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS)
        {
            int nFaction = GetLocalInt(oInfo, "minotaur");
            if (nFaction < 11)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("mino_outpp")));
            }
            else
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_MINOL")));
            }
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_HUMAN)
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_ALDUR")));
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_FEY)
        {
            if (GetSubRace(oPC) == "Brownie")
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_HIDGROVE")));
            }
            else if (GetSubRace(oPC) == "Sprite")
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_SPRITE")));
            }
            else
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_QUICKLING")));
            }
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_ELF)
        {
            if (GetSubRace(oPC) == "Drow")
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_NILASMNT")));
            }
            else if (GetSubRace(oPC) == "Sylvan")
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_SYLVAN")));
            }
            else
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_FARALDOR")));
            }
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_DWARF)
        {
            if (GetSubRace(oPC) == "Duergar")
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_BORBAN")));
            }
            else
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_VEGMNT")));
            }
        }
        else if (GetRacialType(oPC) == RACIAL_TYPE_HALFELF)
        {
            AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_elf")));
        }
        else
        {
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_0")));
        }
    }
}
