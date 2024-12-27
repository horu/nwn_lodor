//This is the answer to the NPC is yes or some other option
#include "x2_inc_itemprop"
#include "nw_i0_plot"

void main()
{
    object oPC = GetPCSpeaker();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    object oVampire = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    string jQuest = GetLocalString(oQuest, "qs1jpart3");
    string jQuest2 = GetLocalString(oQuest, "qs1jpart6");
    string jQuest3 = GetLocalString(oQuest, "qs1jpart7");
    int nLevel = GetHitDice(oPC);
    int nXP = GetXP(oPC);

    // QUEST 1B  --  The Vampire Quest
    if (GetTag(OBJECT_SELF) == "ld_vasestra")
    {
        // ADJUST THE FACTIONS //
        AdjustReputation(oPC, GetObjectByTag("fac_brown"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_quick"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_duergar"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_pixie"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_nixie"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_brushwood"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_vegnar"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_faraldor"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_grogor"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_dedry"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_nilas"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_aldur"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_orcs"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_drogo"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_driders"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_flayers"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_firebrand"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_sphinx"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_sylvan"), -100);
        AdjustReputation(oPC, GetObjectByTag("fac_vampire"), 100);
        SetLocalInt(oBook, "brownie", 0);
        SetLocalInt(oBook, "quickling", 0);
        SetLocalInt(oBook, "duergar", 0);
        SetLocalInt(oBook, "pixie", 0);
        SetLocalInt(oBook, "nixie", 0);
        SetLocalInt(oBook, "brushwood", 0);
        SetLocalInt(oBook, "sylvan", 0);
        SetLocalInt(oBook, "vegnar", 0);
        SetLocalInt(oBook, "faraldor", 0);
        SetLocalInt(oBook, "grogor", 0);
        SetLocalInt(oBook, "dedry", 0);
        SetLocalInt(oBook, "nilas", 0);
        SetLocalInt(oBook, "aldur", 0);
        SetLocalInt(oBook, "orcs", 0);
        SetLocalInt(oBook, "drogo", 0);
        SetLocalInt(oBook, "driders", 0);
        SetLocalInt(oBook, "flayers", 0);
        SetLocalInt(oBook, "firebrand", 0);
        SetLocalInt(oBook, "sphinx", 0);
        SetLocalInt(oBook, "vampire", 100);
        // SET THE QUEST INT TO 5
        SetLocalInt(oVampire, "qs1b", 5);
        // CREATE A VAMPIRE BOTTLE //
        object oBottle = CreateItemOnObject("vampire_bottle", oPC, 1);
        SetLocalInt(oBottle, "blood", 20);
        // THEY DON'T NEED FOOD
        DestroyObject(GetItemPossessedBy(oPC, "food_pouch"));
        DelayCommand(1.0, ExecuteScript("dj_map_vamp", OBJECT_SELF));
        // THROW AWAY THE DRAGON WHISTLE
        DestroyObject(GetItemPossessedBy(oPC, "dragon_whistle"));
        // SET THE SUBRACE //
        SetSubRace(oPC, "Vampire");
        // SET THE BIND POINT //
        SetLocalInt(oBook, "bind_tree", 13);
        // ADJUST ALIGNMENT //
        AdjustAlignment(oPC, ALIGNMENT_CHAOTIC, 100);
        AdjustAlignment(oPC, ALIGNMENT_EVIL, 100);
        // VASESTRA SAYS THIS //
        string sText = "Sacrifice your living self to me, and become one of us.";
        ActionSpeakString(sText, TALKVOLUME_TALK);
        // BLOOD FLIES FROM THE PC //
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        // REMOVE THE GOD IF ANY //
        SetDeity(oPC, "Vardolos");
        {
            object oItem2 = GetFirstItemInInventory(oPC);
            object oRingL = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
            object oRingR = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);
            while (GetIsObjectValid(oItem2))
            {
                if (GetStringLeft(GetTag(oItem2), 8) == "POW_ring")
                {
                    DestroyObject(oItem2, 0.05);
                }
                oItem2 = GetNextItemInInventory(oPC);
            }
            if (GetStringLeft(GetTag(oRingL), 8) == "POW_ring")
            {
                DestroyObject(oRingL);
            }
            if (GetStringLeft(GetTag(oRingR), 8) == "POW_ring")
            {
                DestroyObject(oRingR);
            }
        }
        // Add the vampire abilities
        itemproperty vampireAbil1 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_BRIGHT, IP_CONST_LIGHTCOLOR_RED);
        itemproperty vampireAbil2 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_STR, 2);
        itemproperty vampireAbil3 = ItemPropertyBonusFeat(FEAT_DODGE);
        itemproperty vampireAbil5 = ItemPropertyBonusFeat(FEAT_MOBILITY);
        itemproperty vampireAbil6 = ItemPropertyReducedSavingThrowVsX(IP_CONST_SAVEVS_POSITIVE, 2);
        itemproperty vampireAbil7 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_CRITICAL_HITS);
        itemproperty vampireAbil8 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_DEATH_MAGIC);
        itemproperty vampireAbil9 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_DISEASE);
        itemproperty vampireAbil10 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_LEVEL_ABIL_DRAIN);
        itemproperty vampireAbil11 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_MINDSPELLS);
        itemproperty vampireAbil12 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_POISON);
        itemproperty vampireAbil13 = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_BACKSTAB);
        itemproperty vampireAbil14 = ItemPropertyDamageVulnerability(
            IP_CONST_DAMAGETYPE_FIRE,
            IP_CONST_DAMAGEVULNERABILITY_50_PERCENT);
        itemproperty vampireAbil15 = ItemPropertyDamageVulnerability(
            IP_CONST_DAMAGETYPE_POSITIVE,
            IP_CONST_DAMAGEVULNERABILITY_75_PERCENT);
        itemproperty vampireAbil16 = ItemPropertyDamageReduction(IP_CONST_DAMAGEREDUCTION_1, IP_CONST_DAMAGESOAK_15_HP);
        itemproperty vampireAbil17 = ItemPropertyDamageResistance(IP_CONST_DAMAGETYPE_COLD, IP_CONST_DAMAGERESIST_20);
        itemproperty vampireAbil18 = ItemPropertyDamageResistance(
            IP_CONST_DAMAGETYPE_ELECTRICAL,
            IP_CONST_DAMAGERESIST_20);
        itemproperty vampireAbil19 = ItemPropertyRegeneration(3);
        IPSafeAddItemProperty(oVampire, vampireAbil1);
        IPSafeAddItemProperty(oVampire, vampireAbil2);
        IPSafeAddItemProperty(oVampire, vampireAbil3);
        IPSafeAddItemProperty(oVampire, vampireAbil5);
        IPSafeAddItemProperty(oVampire, vampireAbil6);
        IPSafeAddItemProperty(oVampire, vampireAbil7);
        IPSafeAddItemProperty(oVampire, vampireAbil8);
        IPSafeAddItemProperty(oVampire, vampireAbil9);
        IPSafeAddItemProperty(oVampire, vampireAbil10);
        IPSafeAddItemProperty(oVampire, vampireAbil11);
        IPSafeAddItemProperty(oVampire, vampireAbil12);
        IPSafeAddItemProperty(oVampire, vampireAbil13);
        IPSafeAddItemProperty(oVampire, vampireAbil14);
        IPSafeAddItemProperty(oVampire, vampireAbil15);
        IPSafeAddItemProperty(oVampire, vampireAbil16);
        IPSafeAddItemProperty(oVampire, vampireAbil17);
        IPSafeAddItemProperty(oVampire, vampireAbil18);
        IPSafeAddItemProperty(oVampire, vampireAbil19);
    }
    //////END VAMPIRE QUEST//////

    // Docks In The Old City
    else if (GetTag(OBJECT_SELF) == "dock_oldcit")
    {
        AssignCommand(oPC, PlaySound("as_cv_gutterspl1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("outofoldcitwat")));
        DelayCommand(5.0, FloatingTextStringOnCreature("That water was cold!", oPC, TRUE));
        DelayCommand(2.0, SendMessageToPC(oPC, "The gills on your neck seemed to have vanished."));
    }

    // Platform In The Citadel
    else if (GetTag(OBJECT_SELF) == "dock_cit")
    {
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("welcomefalcor")));
        DelayCommand(5.0, FloatingTextStringOnCreature("That was too close!", oPC, TRUE));
        DelayCommand(2.0, SendMessageToPC(oPC, "The water seems to have worn off."));
    }

    // QUEST 1A  --  Drow Ant Quest
    else if (GetTag(OBJECT_SELF) == "nilas_cit_1")
    {
        SetLocalInt(oQuest, "qs1a", 1);
    }

    // QUEST 1E  --  Grogor Manticore Quest
    else if (GetTag(OBJECT_SELF) == "grogor_cit_4")
    {
        SetLocalInt(oQuest, "qs1e", 1);
    }

    // QUEST 1F  --  Crystal Grinder Quest
    else if (GetTag(OBJECT_SELF) == "blue_cry_cprs")
    {
        SetLocalInt(oQuest, "qs1f", 1);
    }

    // QUEST 1F  --  Crystal Grinder Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLU")
    {
        if ((!HasItem(oPC, "ld_qs1f_item")) == FALSE)
        {
            string sText = "You must mean the grinder.  Very well.";
            SetLocalInt(oQuest, "qs1f", 3);
            SetLocalInt(oBook, "drgblue", 50);
            ActionSpeakString(sText);
            DestroyObject(GetItemPossessedBy(oPC, "ld_qs1f_item"));
            CreateItemOnObject("crystal_alchemy", oPC, 1);
        }
        else
        {
            string sText = "Return when you have the crystal.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1H  --  Magic Recharge Quest
    else if ((GetTag(OBJECT_SELF) == "LD_SPHINXM") || (GetTag(OBJECT_SELF) == "LD_SPHINXF"))
    {
        if ((!HasItem(oPC, "qs1h_item")) == FALSE)
        {
            string sText = "We thank you.  Here is your prize as promised.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1h", 6);
            SetLocalInt(oBook, "sphinx", 50);
            DestroyObject(GetItemPossessedBy(oPC, "qs1h_item"));
            CreateItemOnObject("qs1h_item1", oPC, 1);
        }
        else
        {
            string sText = "Return when you have the book.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1H  --  Magic Recharge Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLK")
    {
        if ((!HasItem(oPC, "qs1h_item1")) == FALSE)
        {
            string sText = "Very good.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1h", 7);
            AdjustReputation(oPC, OBJECT_SELF, 100);
            AdjustReputation(oPC, OBJECT_SELF, -50);
            SetLocalInt(oBook, "drgblack", 50);
            DestroyObject(GetItemPossessedBy(oPC, "qs1h_item1"));
        }
        else
        {
            string sText = "Return when you have the amulet.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1G  --  +1 Weapon Quest
    else if ((GetTag(OBJECT_SELF) == "brushwood_cit_11") ||
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
        if ((GetItemPossessedBy(oPC, "qs1g_item") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item1") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item2") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item3") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item4") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item5") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item6") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item7") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item8") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "qs1g_item9") != OBJECT_INVALID))
        {
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item1"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item2"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item3"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item4"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item5"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item6"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item7"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item8"));
            DestroyObject(GetItemPossessedBy(oPC, "qs1g_item9"));
            SetLocalInt(oQuest, "qs1g", 2);
            if (GetTag(OBJECT_SELF) == "brushwood_cit_11")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_brushwood"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "vegnar_cit_2")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_vegnar"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "faraldor_cit_hb")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_faraldor"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "brownie_cit_19")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_brown"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "dedry_cit_pot")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_dedry"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "quickling_cit_3")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_quick"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "nilas_cit_6")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_nilas"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "grogor_cit_1")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_grogor"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "duergar_cit_3")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_duergar"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            if (GetTag(OBJECT_SELF) == "aldur_cit_4")
            {
                AdjustReputation(oPC, GetObjectByTag("fac_aldur"), 1);
                SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is better.");
            }
            string sText = "Many thanks.  Here is my old weapon, you may have it.";
            string sText2 = "Me thank you.  Hirbag make you nice weapon.";
            if (GetTag(OBJECT_SELF) == "grogor_cit_1") { ActionSpeakString(sText2, TALKVOLUME_TALK); }
            else { ActionSpeakString(sText, TALKVOLUME_TALK); }
            object oItem = GetLastWeaponUsed(oPC);
            int nWeapon = GetBaseItemType(oItem);
            if (nWeapon == BASE_ITEM_BATTLEAXE)
            {
                CreateItemOnObject("NW_WAXMBT002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_BASTARDSWORD)
            {
                CreateItemOnObject("NW_WSWMBS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_CLUB)
            {
                CreateItemOnObject("NW_WBLMCL002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_HEAVYCROSSBOW)
            {
                CreateItemOnObject("NW_WBWMXH002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_HANDAXE)
            {
                CreateItemOnObject("NW_WAXMHN002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_HALBERD)
            {
                CreateItemOnObject("NW_WPLMHB002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_GREATSWORD)
            {
                CreateItemOnObject("NW_WSWMGS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_GREATAXE)
            {
                CreateItemOnObject("NW_WAXMGR002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_DOUBLEAXE)
            {
                CreateItemOnObject("NW_WDBMAX002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_DIREMACE)
            {
                CreateItemOnObject("NW_WDBMMA002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_DAGGER)
            {
                CreateItemOnObject("NW_WSWMDG002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_KUKRI)
            {
                CreateItemOnObject("NW_WSPMKU002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_MORNINGSTAR)
            {
                CreateItemOnObject("NW_WBLMMS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LONGSWORD)
            {
                CreateItemOnObject("NW_WSWMLS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LONGBOW)
            {
                CreateItemOnObject("NW_WBWMLN002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LIGHTMACE)
            {
                CreateItemOnObject("NW_WBLMML002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LIGHTHAMMER)
            {
                CreateItemOnObject("NW_WBLMHL002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LIGHTFLAIL)
            {
                CreateItemOnObject("NW_WBLMFL002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_LIGHTCROSSBOW)
            {
                CreateItemOnObject("NW_WBWMXL002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_KATANA)
            {
                CreateItemOnObject("NW_WSWMKA002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_HEAVYFLAIL)
            {
                CreateItemOnObject("NW_WBLMFH002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_QUARTERSTAFF)
            {
                CreateItemOnObject("NW_WDBMQS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_RAPIER)
            {
                CreateItemOnObject("NW_WSWMRP002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SCIMITAR)
            {
                CreateItemOnObject("NW_WSWMSC002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SCYTHE)
            {
                CreateItemOnObject("NW_WPLMSC002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SHORTBOW)
            {
                CreateItemOnObject("NW_WBWMSH008", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SHORTSPEAR)
            {
                CreateItemOnObject("NW_WPLMSS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SHORTSWORD)
            {
                CreateItemOnObject("NW_WSWMSS002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SICKLE)
            {
                CreateItemOnObject("NW_WSPMSC002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_SLING)
            {
                CreateItemOnObject("NW_WBWMSL001", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_TWOBLADEDSWORD)
            {
                CreateItemOnObject("NW_WDBMSW002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_WARHAMMER)
            {
                CreateItemOnObject("NW_WBLMHW002", oPC, 1);
            }
            else if (nWeapon == BASE_ITEM_WHIP)
            {
                CreateItemOnObject("X2_IT_WPMWHIP1", oPC, 1);
            }
            else { CreateItemOnObject("NW_WSWMSS002", oPC, 1); }
            int nXP = GetXP(oPC);
            if (GetHitDice(oPC) < 6)
            {
                DelayCommand(2.0, SetXP(oPC, nXP + 100));
            }
        }
    }

    // QUEST 1I  --  Advanced Armor Craft
    else if (GetTag(OBJECT_SELF) == "firebrand_cit_nm")
    {
        if ((!HasItem(oPC, "qs1i_item")) == FALSE)
        {
            string sText =
                "I thank you.  As I promised, I have written all my secrets in this book for you.  Farewell.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1i", 3);
            CreateItemOnObject("tailor_kit", oPC, 1);
            DestroyObject(GetItemPossessedBy(oPC, "qs1i_item"));
        }
        else
        {
            string sText = "Return when you have the rock.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1J  --  Random Quest Generator
    else if (((GetTag(OBJECT_SELF) == "faraldor_cit_br4") &&
            (GetLocalInt(oQuest, "qs1j") == 1) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "nilas_cit_gob1") &&
            (GetLocalInt(oQuest, "qs1j") == 2) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "vegnar_cit_8") &&
            (GetLocalInt(oQuest, "qs1j") == 3) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "dedry_cit_cler") &&
            (GetLocalInt(oQuest, "qs1j") == 4) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "brushwood_cit_5") &&
            (GetLocalInt(oQuest, "qs1j") == 5) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "aldur_cit_13") &&
            (GetLocalInt(oQuest, "qs1j") == 6) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "nilas_cit_bar1") &&
            (GetLocalInt(oQuest, "qs1j") == 7) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "duergar_cit_bar3") &&
            (GetLocalInt(oQuest, "qs1j") == 8) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "quickling_cit_13") &&
            (GetLocalInt(oQuest, "qs1j") == 9) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)) ||
        ((GetTag(OBJECT_SELF) == "sylvan_cit_9") &&
            (GetLocalInt(oQuest, "qs1j") == 10) &&
            (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID)))
    {
        SendMessageToPC(oPC, "Your faction with the " + jQuest2 + " is better.");
        AdjustReputation(oPC, GetObjectByTag(jQuest3), 5);
        string sText = "Good work. Take this is for your effort.";
        ActionSpeakString(sText);
        DestroyObject(GetItemPossessedBy(oPC, jQuest));
        int nReward1 = nLevel * 100;
        int nReward2 = nXP + nReward1;
        int nReward3 = nLevel * 113;
        SetXP(oPC, nReward2);
        GiveGoldToCreature(oPC, nReward3);
        DeleteLocalInt(oQuest, "qs1j");
        DeleteLocalString(oQuest, "qs1jpart1");
        DeleteLocalString(oQuest, "qs1jpart2");
        DeleteLocalString(oQuest, "qs1jpart3");
        DeleteLocalString(oQuest, "qs1jpart4");
        DeleteLocalString(oQuest, "qs1jpart5");
        DeleteLocalString(oQuest, "qs1jpart6");
        DeleteLocalString(oQuest, "qs1jpart7");
        DeleteLocalInt(oQuest, "qs1jpart8");
    }

    // QUEST 1K  --  Magic Boots
    else if (GetTag(OBJECT_SELF) == "qs1k_citizen")
    {
        if ((GetItemPossessedBy(oPC, "ld_drgn_hide_blk") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_blu") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_brs") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_bnz") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_cop") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_gld") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_grn") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_psm") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_red") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_shd") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_sil") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_wht") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ld_drgn_hide_psm") != OBJECT_INVALID))
        {
            string sText =
                "I thank you. Here are some boots I made just for you. If you get more hides, please bring them to me.";
            int nReward1 = nLevel * 50;
            int nReward2 = nXP + nReward1;
            if (nLevel < 20) { SetXP(oPC, nReward2); }
            ActionSpeakString(sText);
            ExecuteScript("loot_ench_boot", OBJECT_SELF);
            //SetLocalInt(oQuest, "qs1k", 3);
            object oItem = GetFirstItemInInventory(oPC);
            while (GetIsObjectValid(oItem))
            {
                if (GetStringLeft(GetTag(oItem), 12) == "ld_drgn_hide")
                {
                    DestroyObject(oItem);
                }
                oItem = GetNextItemInInventory(oPC);
            }
        }
        else
        {
            string sText = "Hmmmm. You do not have any hides.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1L  --  Minotaur Quest
    else if (GetTag(OBJECT_SELF) == "LD_SPHINX_FR")
    {
        if ((GetItemPossessedBy(oPC, "ench_boot_1") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_2") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_3") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_4") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_5") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_6") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_7") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_8") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_9") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_10") != OBJECT_INVALID))
        {
            string sName = GetPCPlayerName(oPC);
            string sMino = "MINOTAUR";
            string sDB = sName + sMino;
            int nQMino = GetCampaignInt(sDB, "minotaur");
            int nQMNew = nQMino + 1;
            SetCampaignInt(sDB, "minotaur", nQMNew);
            string sText = "The secret of the minotaur is now passed to you.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1l", 2);
            if (GetItemPossessedBy(oPC, "ench_boot_1") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_1"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_2") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_2"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_3") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_3"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_4") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_4"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_5") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_5"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_6") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_6"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_7") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_7"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_8") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_8"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_9") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_9"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_10") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_10"));
            }
        }
        else
        {
            string sText = "Hmmmm. Where are the boots?";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1M  --  Ogre Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL")
    {
        string sName = GetPCPlayerName(oPC);
        string sOgre = "OGRE";
        string sDB = sName + sOgre;
        int nQOgre = GetCampaignInt(sDB, "ogre");
        int nQMNew = nQOgre + 1;
        SetCampaignInt(sDB, "ogre", nQMNew);
        string sText = "The tale of the ogre is now told to you.";
        ActionSpeakString(sText);
        SetLocalInt(oQuest, "qs1m", 4);
    }

    // QUEST 1N  --  Magic Seeds Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BRS")
    {
        if (GetHitDice(oPC) > 24)
        {
            string sText = "Take these seeds and plant them. What grows will lead you to the cloud city.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1n", 2);
            CreateItemOnObject("magic_seeds", oPC, 1);
        }
        else
        {
            string sText = "You are too weak. Return when you have gathered more strength.";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1O  --  Sprite Quest
    else if (GetTag(OBJECT_SELF) == "qs1o_wizard")
    {
        string sName = GetPCPlayerName(oPC);
        string sSprite = "SPRITE";
        string sDB = sName + sSprite;
        int nQSprite = GetCampaignInt(sDB, "sprite");
        int nQMNew = nQSprite + 1;
        SetCampaignInt(sDB, "sprite", nQMNew);
        string sText = "The secret of the sprites is now told to you.";
        ActionSpeakString(sText);
        SetLocalInt(oQuest, "qs1o", 2);
    }
}
