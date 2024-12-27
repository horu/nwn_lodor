// Lets NPC set an INT to the PC for doing certain things.
void main()
{
    object oPC = GetPCSpeaker();
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    object oFaction = GetItemPossessedBy(oPC, "faction_report");

    // Tavern Keeper In The Drunken Depths To See if they can enter the cellar.
    if ((GetTag(OBJECT_SELF) == "duergar_cit_9") && (GetLocalInt(oPC, "dug_cellar") < 3))
    {
        int nINT = GetLocalInt(oPC, "dug_cellar");
        int nINTnew = nINT + 1;
        SetLocalInt(oPC, "dug_cellar", nINTnew);
    }
    else if ((GetTag(OBJECT_SELF) == "duergar_cit_9") && (GetLocalInt(oPC, "dug_cellar") > 2))
    {
        object oDoor = GetObjectByTag("drunkdeep_spw");
        location lDoor = GetLocation(oDoor);
        CreateObject(OBJECT_TYPE_PLACEABLE, "drunkdeep_door", lDoor);
        DestroyObject(oDoor, 1.0);
        SetLocalInt(oPC, "dug_cellar", 0);
    }

    // Fountain In The Old City
    else if (GetTag(OBJECT_SELF) == "oldcit_fountain")
    {
        SetLocalInt(oPC, "old_water", 1);
    }

    // Fountain In The Citadel
    else if (GetTag(OBJECT_SELF) == "cit_fountain")
    {
        SetLocalInt(oPC, "fly_water", 1);
    }

    // QUEST 1G  --  +1 Weapon Quest
    if ((GetTag(OBJECT_SELF) == "brushwood_cit_11") ||
        (GetTag(OBJECT_SELF) == "vegnar_cit_2") ||
        (GetTag(OBJECT_SELF) == "faraldor_cit_hb") ||
        (GetTag(OBJECT_SELF) == "brownie_cit_19") ||
        (GetTag(OBJECT_SELF) == "dedry_cit_pot") ||
        (GetTag(OBJECT_SELF) == "quickling_cit_3") ||
        (GetTag(OBJECT_SELF) == "nilas_cit_6") ||
        (GetTag(OBJECT_SELF) == "grogor_cit_1") ||
        (GetTag(OBJECT_SELF) == "duergar_cit_3") ||
        (GetTag(OBJECT_SELF) == "aldur_cit_4"))
    {
        SetLocalInt(oQuest, "qs1g", 1);
    }

    // Quest For Advanced Craft
    else if (GetTag(OBJECT_SELF) == "firebrand_cit_nm")
    {
        SetLocalInt(oQuest, "qs1i", 1);
    }

    // Magic Boots
    else if (GetTag(OBJECT_SELF) == "qs1k_citizen")
    {
        SetLocalInt(oQuest, "qs1k", 1);
    }

    // Minotaur Quest
    else if (GetTag(OBJECT_SELF) == "LD_SPHINX_FR")
    {
        SetLocalInt(oQuest, "qs1l", 1);
    }

    // Ogre Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL")
    {
        AdjustReputation(oPC, OBJECT_SELF, -100);
        SetLocalInt(oFaction, "drgsilver", 0);
        DelayCommand(2.0, AssignCommand(OBJECT_SELF, ActionAttack(oPC, FALSE)));
        SetLocalInt(oQuest, "qs1m", 9);
    }

    // Sprite Quest
    else if (GetTag(OBJECT_SELF) == "qs1o_wizard")
    {
        SetLocalInt(oQuest, "qs1o", 1);
    }
}
