void main()
{
    object oItem = GetPCItemLastEquipped();
    object oPC = GetPCItemLastEquippedBy();
    object oItem2 = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
    int nWeight = GetWeight(oItem2);
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    int nReal = GetLocalInt(oBook, "raceApp");

    if (GetSubRace(oPC) == "Minotaur")
    {
        // Check to see if enchanted to too high level
        int nLevel = GetHitDice(oPC);
        string sName = GetName(oItem);
        int nGood = GetLocalInt(oItem, "req_level");
        int nNeed = nGood - 4;
        if (nNeed > nLevel)
        {
            AssignCommand(oPC, ActionUnequipItem(oItem));
            SendMessageToPC(oPC, "The " + sName + " is to powerful for you to use.");
        }

        // Make sure they are wearing the right stuff
        if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 8) != "eq_mino_") &&
            (GetItemInSlot(INVENTORY_SLOT_CHEST, oPC) != OBJECT_INVALID))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)));
            FloatingTextStringOnCreature("This item does not fit your chest.", oPC, FALSE);
        }
        else if ((GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)) == BASE_ITEM_SHORTBOW) ||
            (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)) == BASE_ITEM_LONGBOW))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)));
            FloatingTextStringOnCreature("Your hands are too big to use a bow.", oPC, FALSE);
        }
        else if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_HEAD, oPC)), 8) != "eq_mino_") &&
            (GetItemInSlot(INVENTORY_SLOT_HEAD, oPC) != OBJECT_INVALID))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_HEAD, oPC)));
            FloatingTextStringOnCreature("This item does not fit your head.", oPC, FALSE);
        }
        else if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)), 8) != "eq_mino_") &&
            (GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC) != OBJECT_INVALID))
        {
            if ((GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_SMALLSHIELD) ||
                (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_TOWERSHIELD) ||
                (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_LARGESHIELD))
            {
                AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)));
                FloatingTextStringOnCreature("This item does not fit in your hand well.", oPC, FALSE);
            }
            else
            {
                AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)));
                FloatingTextStringOnCreature("You are too clumsy to use your left hand for that.", oPC, FALSE);
            }
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_mino_lit")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_MINOTAUR_CHIEFTAIN));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_mino_med")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_MINOTAUR_CHIEFTAIN));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_mino_hev")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_MINOGON));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_mino_rob")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_MINOTAUR_SHAMAN));
        }
    }

    else if (GetSubRace(oPC) == "Ogre")
    {
        // Check to see if enchanted to too high level
        int nLevel = GetHitDice(oPC);
        string sName = GetName(oItem);
        int nGood = GetLocalInt(oItem, "req_level");
        int nNeed = nGood - 4;
        if (nNeed > nLevel)
        {
            AssignCommand(oPC, ActionUnequipItem(oItem));
            SendMessageToPC(oPC, "The " + sName + " is to powerful for you to use.");
        }

        // Make sure they are wearing the right stuff
        if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 8) != "eq_ogre_") &&
            (GetItemInSlot(INVENTORY_SLOT_CHEST, oPC) != OBJECT_INVALID))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)));
            FloatingTextStringOnCreature("This item does not fit your chest.", oPC, FALSE);
        }
        else if ((GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)) == BASE_ITEM_SHORTBOW) ||
            (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)) == BASE_ITEM_LONGBOW))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC)));
            FloatingTextStringOnCreature("Your hands are too big to use a bow.", oPC, FALSE);
        }
        else if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_HEAD, oPC)), 8) != "eq_ogre_") &&
            (GetItemInSlot(INVENTORY_SLOT_HEAD, oPC) != OBJECT_INVALID))
        {
            AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_HEAD, oPC)));
            FloatingTextStringOnCreature("This item does not fit your head.", oPC, FALSE);
        }
        else if ((GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)), 8) != "eq_ogre_") &&
            (GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC) != OBJECT_INVALID))
        {
            if ((GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_SMALLSHIELD) ||
                (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_TOWERSHIELD) ||
                (GetBaseItemType(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)) == BASE_ITEM_LARGESHIELD))
            {
                AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)));
                FloatingTextStringOnCreature("This item does not fit in your hand well.", oPC, FALSE);
            }
            else
            {
                AssignCommand(oPC, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC)));
                FloatingTextStringOnCreature("You are too clumsy to use your left hand for that.", oPC, FALSE);
            }
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_ogre_lit")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE_CHIEFTAIN));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_ogre_med")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE_CHIEFTAIN));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_ogre_hev")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE_CHIEFTAINB));
        }
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_ogre_ro1")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE_MAGEB));
        } // Blue
        else if (GetStringLeft(GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC)), 11) == "eq_ogre_ro2")
        {
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE_MAGE));
        }
    } // Purple

    else if ((GetStringLeft(GetTag(oItem), 5) == "ench_") ||
        (GetStringLeft(GetTag(oItem), 8) == "eq_ogre_") ||
        (GetStringLeft(GetTag(oItem), 8) == "eq_mino_"))
    {
        int nLevel = GetHitDice(oPC);
        string sName = GetName(oItem);
        int nGood = GetLocalInt(oItem, "req_level");
        int nNeed = nGood - 4;
        if (nNeed > nLevel)
        {
            AssignCommand(oPC, ActionUnequipItem(oItem));
            SendMessageToPC(oPC, "The " + sName + " is to powerful for you to use.");
        }
    }

    else
    {
        int nLevel = GetHitDice(oPC);
        string sName = GetName(oItem);
        int nGood = GetLocalInt(oItem, "req_level");
        int nNeed = nGood - 4;
        if (nNeed > nLevel)
        {
            AssignCommand(oPC, ActionUnequipItem(oItem));
            SendMessageToPC(oPC, "The " + sName + " is to powerful for you to use.");
        }
    }

    if (GetSubRace(oPC) == "Kobold")
    {
        if (oItem == oItem2)
        {
            if (nWeight < 11)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, nReal - 1));
            }
            else if ((nWeight > 10) && (nWeight < 29))
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_KOBOLD_A));
            }
            else if (nWeight > 28)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_KOBOLD_CHIEF_A));
            }
        }
    }

    if (GetSubRace(oPC) == "Goblin")
    {
        if (oItem == oItem2)
        {
            if (nWeight < 11)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, nReal - 1));
            }
            else if ((nWeight > 10) && (nWeight < 29))
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_GOBLIN_B));
            }
            else if (nWeight > 28)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_GOBLIN_CHIEF_B));
            }
        }
    }

    if (GetSubRace(oPC) == "Lizardman")
    {
        if (oItem == oItem2)
        {
            if (nWeight < 11)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, nReal - 1));
            }
            else if ((nWeight > 10) && (nWeight < 29))
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_LIZARDFOLK_A));
            }
            else if (nWeight > 28)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_LIZARDFOLK_WARRIOR_A));
            }
        }
    }

    if (GetSubRace(oPC) == "Bugbear")
    {
        if (oItem == oItem2)
        {
            if (nWeight < 11)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, nReal - 1));
            }
            else if ((nWeight > 10) && (nWeight < 29))
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_BUGBEAR_B));
            }
            else if (nWeight > 28)
            {
                DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_BUGBEAR_CHIEFTAIN_B));
            }
        }
    }
}
