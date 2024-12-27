// Moves The PC To The Location they were last in
#include "nw_i0_tool"
#include "x2_inc_itemprop"

void main()
{
    object oPC = GetEnteringObject();
    object oInfo = GetItemPossessedBy(oPC, "faction_report");
    object oWasHere = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    location lZone = GetLocalLocation(oInfo, "iamhere");
    string sZone = GetLocalString(oInfo, "iamherea");
    int nSaved = GetLocalInt(oInfo, "bind_tree");
    object oPlace = GetObjectByTag(sZone);
    vector vPlace = GetPositionFromLocation(lZone);
    float fPlace = GetFacingFromLocation(lZone);
    location lGo = Location(oPlace, vPlace, fPlace);

    if (GetTag(oWasHere) == "lodor_abilities")
    {
        if (oPlace == OBJECT_INVALID)
        {
            ExecuteScript("dj_faction_set", OBJECT_SELF);

            if (GetSubRace(oPC) == "Quickling")
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SHIFTER, oPC) > 0)) { BootPC(oPC); }
            }

            else if (GetSubRace(oPC) == "Sprite")
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0)) { BootPC(oPC); }
            }

            else if (GetSubRace(oPC) == "Brownie")
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BLACKGUARD, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)) { BootPC(oPC); }
            }

            else if (GetSubRace(oPC) == "Sylvan")
            {
                if ((GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BLACKGUARD, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)) { BootPC(oPC); }
            }

            else if (GetSubRace(oPC) == "Minotaur")
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_ASSASSIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_ROGUE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SHADOWDANCER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)) { BootPC(oPC); }
            }

            else if (GetSubRace(oPC) == "Ogre")
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_ASSASSIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_ROGUE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SHADOWDANCER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0)) { BootPC(oPC); }
            }

            else if ((GetSubRace(oPC) == "Goblin") ||
                (GetSubRace(oPC) == "Kobold") ||
                (GetSubRace(oPC) == "Bugbear") ||
                (GetSubRace(oPC) == "Lizardman"))
            {
                if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DIVINE_CHAMPION, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGON_DISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVEN_DEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALE_MASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                    (GetLevelByClass(CLASS_TYPE_SHIFTER, oPC) > 0)) { BootPC(oPC); }
            }

            if (GetLocalInt(oInfo, "bind_tree") == 1)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_hobbit")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 2)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_elf")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 3)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_gnome")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 4)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_drow")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 5)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_human")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 6)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_orc")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 7)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_dwarf")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 8)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_brownie")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 9)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_quickling")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 10)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_duergar")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 11)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_daclor")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 12)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_scorn")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 13)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_tower")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 14)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_fall")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 15)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_cata")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 16)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_ruin")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 17)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_crypt")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 18)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_citdel")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 19)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_mino")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 20)
            {
                AssignCommand(oPC, JumpToObject(GetObjectByTag("VAMPIRE_DEAD")));
            }
            // For New Monster Races (Lizardman, Goblin, Bugbear, & Kobold)
            else if (GetLocalInt(oInfo, "bind_tree") == 21)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_1")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 22)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_2")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 23)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_3")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 24)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_4")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 25)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_5")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 26)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_6")));
            }
            else if (GetLocalInt(oInfo, "bind_tree") == 27)
            {
                AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_7")));
            }
            else
            {
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
                        if (nSaved == 5)
                        {
                            AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_human")));
                        }
                        else
                        {
                            AssignCommand(oPC, JumpToObject(GetObjectByTag("tree_bind_elf")));
                        }
                    }
                    else
                    {
                        AssignCommand(oPC, JumpToObject(GetWaypointByTag("P_SUBRACE_0")));
                    }
                }
            }
        }

        else
        {
            ExecuteScript("dj_faction_set", OBJECT_SELF);
            AssignCommand(oPC, JumpToLocation(lGo));
        }
    }

    else
    {
    }
}
