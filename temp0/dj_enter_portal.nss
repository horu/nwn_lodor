// Teleports The PC Into Lodor
#include "x2_inc_itemprop"

void main()
{
    object oPC = GetEnteringObject();
    int nDidit = GetLocalInt(oPC, "lodorport");

    if (nDidit == 0)
    {
        SetLocalInt(oPC, "lodorport", 1);
        object oWasHere = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
        if (GetTag(oWasHere) == "lodor_abilities")
        {
            ExecuteScript("dj_spawn_pnt", oPC);
            return;
        }

        FloatingTextStringOnCreature("Please wait while you enter the World of Lodor (Approx 30 Seconds).", oPC, FALSE);
        DelayCommand(3.0, ExecuteScript("dj_faction", OBJECT_SELF));
        DelayCommand(7.0, ExecuteScript("dj_faction_set", OBJECT_SELF));
        DelayCommand(12.0, ExecuteScript("dj_abilities", OBJECT_SELF));

        object oItem = GetFirstItemInInventory(oPC);
        //cycle through each item in the inventory, destroying each one
        do
        {
            DestroyObject(oItem);
            oItem = GetNextItemInInventory(oPC);
        }
        while (oItem != OBJECT_INVALID); // until none are left

        //get each item in the players equipment slots and destroy them
        oItem = GetItemInSlot(INVENTORY_SLOT_ARMS, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_ARROWS, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_BELT, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_BOLTS, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_BOOTS, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_BULLETS, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_CLOAK, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_NECK, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
        DestroyObject(oItem);
        oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);
        DestroyObject(oItem);

        //finally take all the players money and destroy it.
        int oGold = GetGold(oPC);
        AssignCommand(oPC, TakeGoldFromCreature(oGold, oPC, TRUE));
        if ((GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_REPTILIAN) ||
            (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_GOBLINOID))
        {
            GiveGoldToCreature(oPC, 20);
        }
        else { GiveGoldToCreature(oPC, 100); }


        //Dress the PC into the appropriate clothing for their class
        {
            if ((GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_REPTILIAN) ||
                (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_GOBLINOID) ||
                (GetRacialType(oPC) == RACIAL_TYPE_GIANT) ||
                (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS))
            {
            }
            else
            {
                if (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH015", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH015");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH021", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH021");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0)
                {
                    CreateItemOnObject("X2_CLOTH008", oPC, 1);
                    object oOutfit = GetObjectByTag("X2_CLOTH008");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_FIGHTER, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH025", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH025");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0)
                {
                    CreateItemOnObject("cloth008", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH007");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH016", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH016");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH010", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH010");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH001", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH001");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_ROGUE, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH004", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH004");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH008", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH008");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else if (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)
                {
                    CreateItemOnObject("NW_CLOTH005", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH005");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
                else
                {
                    CreateItemOnObject("NW_CLOTH025", oPC, 1);
                    object oOutfit = GetObjectByTag("NW_CLOTH025");
                    AssignCommand(oPC, ActionEquipItem(oOutfit, INVENTORY_SLOT_CHEST));
                }
            }
        }

        // Delete stuff on the ground so the PC can't keep it
        object oArea = GetArea(OBJECT_SELF);
        object oTreasure = GetFirstObjectInArea(oArea);
        while (GetIsObjectValid(oTreasure) == TRUE)
        {
            if (GetObjectType(oTreasure) == OBJECT_TYPE_ITEM)
            {
                DestroyObject(oTreasure);
            }
            oTreasure = GetNextObjectInArea(oArea);
        }
        {
            // Send the PC to there homeland and set there subrace, religion, map home

            // Make items for the PC
            object oBook = CreateItemOnObject("journal", oPC, 1); // Make A Journal
            object oFood = CreateItemOnObject("food_pouch", oPC, 1); // Make A Food Pouch
            object oWater = CreateItemOnObject("lodoc_waterem", oPC, 1); // Make A Water Pouch
            SetDroppableFlag(GetItemPossessedBy(oPC, "faction_report"), FALSE);
            SetDroppableFlag(GetItemPossessedBy(oPC, "food_pouch"), FALSE);
            SetDroppableFlag(GetItemPossessedBy(oPC, "lodoc_waterem"), FALSE);
            SetLocalInt(oFood, "food", 5);
            SetLocalInt(oWater, "water", 5);

            // Make the Creature Armor for the PC to add abilities later
            object oItem = CreateItemOnObject("lodor_abilities", oPC);
            SetIdentified(oItem, 1);
            DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CARMOUR)));
            DelayCommand(4.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CARMOUR)));
            DelayCommand(6.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CARMOUR)));
            DelayCommand(8.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CARMOUR)));

            if (GetRacialType(oPC) == RACIAL_TYPE_HALFLING)
            {
                SetSubRace(oPC, "");
                SetLocalInt(oWater, "map001", 1);
                DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_BRUSHWOOD"))));
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_DWARF)
            {
                if ((GetSubRace(oPC) == "Duergar") || (GetSubRace(oPC) == "duergar") || (GetSubRace(oPC) == "DUERGAR"))
                {
                    SetSubRace(oPC, "Duergar");
                    SetLocalInt(oWater, "map089", 1);
                    AssignCommand(oPC, ActionWait(1.0));
                    SetLocalInt(oBook, "mining", 25);
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_BORBAN"))));
                }
                else
                {
                    SetSubRace(oPC, "");
                    SetLocalInt(oWater, "map003", 1);
                    SetLocalInt(oBook, "mining", 25);
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_VEGMNT"))));
                }
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_ELF)
            {
                if ((GetSubRace(oPC) == "Drow") || (GetSubRace(oPC) == "drow") || (GetSubRace(oPC) == "DROW"))
                {
                    SetSubRace(oPC, "Drow");
                    SetLocalInt(oWater, "map004", 1);
                    AssignCommand(oPC, ActionWait(1.0));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_NILASMNT"))));
                }
                else if ((GetSubRace(oPC) == "Sylvan") || (GetSubRace(oPC) == "SYLVAN") || (GetSubRace(oPC) ==
                    "sylvan"))
                {
                    if ((GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_BLACKGUARD, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0)) { BootPC(oPC); }
                    SetLocalInt(oBook, "fishing", 50);
                    SetSubRace(oPC, "Sylvan");
                    AdjustAlignment(oPC, ALIGNMENT_NEUTRAL, 100);
                    SetLocalInt(oWater, "map109", 1);
                    SetLocalInt(oWater, "map012", 1);
                    AssignCommand(oPC, ActionWait(1.0));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_SYLVAN"))));
                }
                else
                {
                    SetSubRace(oPC, "");
                    SetLocalInt(oWater, "map048", 1);
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_FARALDOR"))));
                }
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_FEY)
            {
                if ((GetSubRace(oPC) == "Quickling") || (GetSubRace(oPC) == "quickling") || (GetSubRace(oPC) ==
                    "QUICKLING"))
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
                    SetSubRace(oPC, "Quickling");
                    AdjustAlignment(oPC, ALIGNMENT_EVIL, 100);
                    SetLocalInt(oWater, "map037", 1);
                    SetLocalInt(oWater, "map015", 1);
                    AssignCommand(oPC, ActionWait(1.0));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_QUICKLING"))));
                }
                else if ((GetSubRace(oPC) == "Sprite") || (GetSubRace(oPC) == "sprite") || (GetSubRace(oPC) ==
                    "SPRITE"))
                {
                    string sName = GetPCPlayerName(oPC);
                    string sSprite = "SPRITE";
                    string sDB = sName + sSprite;
                    int nQSprite = GetCampaignInt(sDB, "sprite");
                    int nQMNew = nQSprite - 1;
                    if (nQSprite == 0) { BootPC(oPC); }
                    else
                    {
                        if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0)) { BootPC(oPC); }
                        object oDust = CreateItemOnObject("ld_sprite_abil", oPC, 1); // Make Fairy Dust
                        itemproperty spriteSp1 = ItemPropertyCastSpell(
                            IP_CONST_CASTSPELL_CHARM_PERSON_2,
                            IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY);
                        itemproperty spriteSp2 = ItemPropertyCastSpell(
                            IP_CONST_CASTSPELL_SLEEP_2,
                            IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY);
                        IPSafeAddItemProperty(oDust, spriteSp1);
                        IPSafeAddItemProperty(oDust, spriteSp2);
                        SetSubRace(oPC, "Sprite");
                        AssignCommand(oPC, ActionWait(1.0));
                        DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_SPRITE"))));
                    }
                }
                else
                {
                    if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
                    {
                        AdjustAlignment(oPC, ALIGNMENT_GOOD, 100);
                    }
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
                    SetSubRace(oPC, "Brownie");
                    SetLocalInt(oWater, "map012", 1);
                    SetLocalInt(oWater, "map013", 1);
                    AssignCommand(oPC, ActionWait(1.0));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_HIDGROVE"))));
                }
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_GNOME)
            {
                SetSubRace(oPC, "");
                SetLocalInt(oWater, "map068", 1);
                DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_HAMLET"))));
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_HALFORC)
            {
                SetSubRace(oPC, "");
                SetLocalInt(oWater, "map060", 1);
                DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_GROGOR"))));
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_HUMAN)
            {
                SetSubRace(oPC, "");
                SetLocalInt(oWater, "map029", 1);
                DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_ALDUR"))));
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS)
            {
                string sName = GetPCPlayerName(oPC);
                string sMino = "MINOTAUR";
                string sDB = sName + sMino;
                int nQMino = GetCampaignInt(sDB, "minotaur");
                int nQMNew = nQMino - 1;
                if (nQMino == 0) { BootPC(oPC); }
                else
                {
                    SetCampaignInt(sDB, "minotaur", nQMNew);
                    SetSubRace(oPC, "Minotaur");
                    SetLocalInt(oWater, "map107", 1);
                    if ((GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_FIGHTER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0))
                    {
                        DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_MINOTAUR));
                    }
                    else { BootPC(oPC); }
                    DelayCommand(10.0, SetLocalInt(oBook, "raceApp", GetAppearanceType(oPC) + 1));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_MINOL"))));
                }
            }

            else if (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_REPTILIAN)
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
                else
                {
                    if (GetSubRace(oPC) == "Kobold")
                    {
                        if ((GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0))
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_KOBOLD_SHAMAN_A));
                        }
                        else if ((GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0))
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_KOBOLD_SHAMAN_B));
                        }
                        else { DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_KOBOLD_A)); }
                        SetLocalInt(oBook, "mining", 25);
                    }
                    else
                    {
                        SetSubRace(oPC, "Lizardman");
                        SetLocalInt(oBook, "fishing", 50);
                        if ((GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0))
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_LIZARDFOLK_SHAMAN_A));
                        }
                        else { DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_LIZARDFOLK_A)); }
                    }
                    DelayCommand(10.0, SetLocalInt(oBook, "raceApp", GetAppearanceType(oPC) + 1));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("P_SUBRACE_0"))));
                }
            }

            else if (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_GOBLINOID)
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
                else
                {
                    if (GetSubRace(oPC) == "Goblin")
                    {
                        if ((GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0))
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_GOBLIN_SHAMAN_B));
                        }
                        else { DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_GOBLIN_B)); }
                        SetLocalInt(oBook, "mining", 25);
                    }
                    else
                    {
                        SetSubRace(oPC, "Bugbear");
                        if ((GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0) ||
                            (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0))
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_BUGBEAR_SHAMAN_A));
                        }
                        else { DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_BUGBEAR_B)); }
                    }
                    DelayCommand(10.0, SetLocalInt(oBook, "raceApp", GetAppearanceType(oPC) + 1));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("P_SUBRACE_0"))));
                }
            }

            else if (GetRacialType(oPC) == RACIAL_TYPE_GIANT)
            {
                string sName = GetPCPlayerName(oPC);
                string sOgre = "OGRE";
                string sDB = sName + sOgre;
                int nQOgre = GetCampaignInt(sDB, "ogre");
                int nQMNew = nQOgre - 1;
                if (nQOgre == 0) { BootPC(oPC); }
                else
                {
                    SetCampaignInt(sDB, "ogre", nQMNew);
                    SetSubRace(oPC, "Ogre");
                    SetLocalInt(oWater, "map060", 1);
                    if ((GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_FIGHTER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0) ||
                        (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0))
                    {
                        if (d2(1) == 1)
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGRE));
                        }
                        else
                        {
                            DelayCommand(5.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_OGREB));
                        }
                    }
                    else { BootPC(oPC); }
                    DelayCommand(10.0, SetLocalInt(oBook, "raceApp", GetAppearanceType(oPC) + 1));
                    DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_GROGOR"))));
                }
            }
            else if (GetRacialType(oPC) == RACIAL_TYPE_HALFELF)
            {
                SetSubRace(oPC, "");
                {
                    int nRandom = d2(1);
                    if (nRandom == 1)
                    {
                        SetLocalInt(oBook, "bind_tree", 5); //Human
                        SetLocalInt(oWater, "map029", 1);
                        DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_ALDUR"))));
                    }
                    else if (nRandom == 2)
                    {
                        SetLocalInt(oBook, "bind_tree", 2); //Elf
                        SetLocalInt(oWater, "map048", 1);
                        DelayCommand(20.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("LOC_FARALDOR"))));
                    }
                }
            }
            else
            {
            }
        }
    }
    else
    {
    }
}
