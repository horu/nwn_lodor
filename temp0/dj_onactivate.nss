void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE);
#include "x0_i0_projtrap"
#include "x0_i0_spells"
#include "x2_inc_spellhook"
#include "dj_smoke_pipe"
#include "udk_include"

void main()
{
    EnableDyeKitMenu();
    object oActivator = GetItemActivator();
    // Bard Instruments
    if (GetTag(GetItemActivated()) == "Drum")
    {
        ExecuteScript("dj_bard_songs", oActivator);
    }

    else if (GetTag(GetItemActivated()) == "Mandolin")
    {
        ExecuteScript("dj_bard_songs", oActivator);
    }

    else if (GetTag(GetItemActivated()) == "Pipes")
    {
        ExecuteScript("dj_bard_songs", oActivator);
    }

    else if (GetTag(GetItemActivated()) == "Horn")
    {
        ExecuteScript("dj_bard_songs", oActivator);
    }

    else if (GetTag(GetItemActivated()) == "Harp")
    {
        ExecuteScript("dj_bard_songs", oActivator);
    }

    //Smoking Pipe
    else if (GetTag(GetItemActivated()) == "SmokePipe")
    {
        if ((GetSubRace(oActivator) == "Kobold") ||
            (GetSubRace(oActivator) == "Lizardman") ||
            (GetSubRace(oActivator) == "Goblin") ||
            (GetSubRace(oActivator) == "Bugbear"))
        {
            FloatingTextStringOnCreature("The smell of this makes you ill.", oActivator, FALSE);
        }
        else
        {
            SmokePipe(oActivator);
        }
    }

    //Broken Weapon Turn Into Ingots
    else if (GetTag(GetItemActivated()) == "BrokenWeapon")
    {
        if (GetHasSkill(SKILL_CRAFT_WEAPON, oActivator))
        {
            {
                int nRandom = d12(1);
                if (nRandom == 1)
                {
                    CreateItemOnObject("x2_it_cmat_iron", oActivator, 1);
                    AssignCommand(oActivator, ClearAllActions());
                    FloatingTextStringOnCreature("You manage to make an iron bar.", oActivator, FALSE);
                }
                else if (nRandom == 2)
                {
                    CreateItemOnObject("x2_it_cmat_steel", oActivator, 1);
                    AssignCommand(oActivator, ClearAllActions());
                    FloatingTextStringOnCreature("You manage to make a steel bar.", oActivator, FALSE);
                }
                else
                {
                    AssignCommand(oActivator, ClearAllActions());
                    FloatingTextStringOnCreature("You fail to make a metal bar.", oActivator, FALSE);
                }
            }
        }
        else
        {
            AssignCommand(oActivator, ClearAllActions());
            FloatingTextStringOnCreature("You fail to make a metal bar.", oActivator, FALSE);
        }
    }

    //Fire Wood
    else if (GetTag(GetItemActivated()) == "fire_wood")
    {
        ExecuteScript("dj_camp_start", OBJECT_SELF);
    }

    //Mood Stone
    else if (GetTag(GetItemActivated()) == "EmoteWand")
    {
        if ((GetSubRace(oActivator) == "Minotaur") ||
            (GetSubRace(oActivator) == "Ogre") ||
            (GetSubRace(oActivator) == "Kobold") ||
            (GetSubRace(oActivator) == "Lizardman") ||
            (GetSubRace(oActivator) == "Goblin") ||
            (GetSubRace(oActivator) == "Bugbear"))
        {
            FloatingTextStringOnCreature("You have no use for this rock.", oActivator, FALSE);
        }
        else
        {
            AssignCommand(oActivator, ActionStartConversation(oActivator, "emotewand", TRUE));
        }
    }

    //Run A Faction Report
    else if (GetTag(GetItemActivated()) == "faction_report")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "journal", TRUE));
    }

    //Vampire Bottle
    else if (GetTag(GetItemActivated()) == "vampire_bottle")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "vamp_bottle", TRUE));
    }

    //Flip The Chance Coin
    else if (GetTag(GetItemActivated()) == "chance_coin")
    {
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                FloatingTextStringOnCreature("The coin flipped heads.", oActivator, TRUE);
            }
            else
            {
                FloatingTextStringOnCreature("The coin flipped tails.", oActivator, TRUE);
            }
        }
    }

    //Cure All Potion
    else if (GetTag(GetItemActivated()) == "lodoc_cureall")
    {
        object oUser;
        effect eHeal;
        effect eHealVis = EffectVisualEffect(VFX_IMP_HEALING_S);
        int nCurrentHitPoints, nMaxHitPoints, nVisualEffectId;
        oUser = GetItemActivator();
        nMaxHitPoints = GetMaxHitPoints(oUser);
        nCurrentHitPoints = GetCurrentHitPoints(oUser);
        if (nCurrentHitPoints < nMaxHitPoints)
        {
            eHeal = EffectHeal(nMaxHitPoints - nCurrentHitPoints);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eHeal, oUser);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eHealVis, oUser);
        }
    }

    //Alchemist Bowl
    else if (GetTag(GetItemActivated()) == "alchemy_bowl")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "skill_alchemy", TRUE));
    }

    //Crystal Grinder
    else if (GetTag(GetItemActivated()) == "crystal_alchemy")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "skill_alchemy2", TRUE));
    }

    //Potion Of Preservation
    else if (GetTag(GetItemActivated()) == "lodoc_preserve")
    {
        object oUser = GetItemActivator();
        object oInfo = GetItemPossessedBy(oUser, "faction_report");
        effect eVis = EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oUser);
        SetLocalInt(oInfo, "preserve", 1);
    }

    //This starts a conversation with the ring given by the PC Deity.
    else if (GetStringLeft(GetTag(GetItemActivated()), 8) == "POW_ring")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "gods_ring", TRUE));
    }

    //This is for garlic & vampires
    else if (GetTag(GetItemActivated()) == "reagnt_glic")
    {
        object oVampire = GetItemActivatedTarget();
        if (GetSubRace(oVampire) == "Vampire")
        {
            ExecuteScript("dj_not_invisible", oActivator);
            int nHP = GetCurrentHitPoints(oVampire);
            int nHurt = nHP / 3;
            effect eDamage = EffectDamage(nHurt, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_PLUS_FIVE);
            eDamage = SupernaturalEffect(eDamage);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oVampire);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_ACID_L), oVampire);
            FloatingTextStringOnCreature("Back vile creature!!", oActivator, TRUE);
        }
        else
        {
            FloatingTextStringOnCreature("Why would I use garlic on this?", oActivator, FALSE);
        }
    }

    //This is for stakes & vampires
    else if (GetTag(GetItemActivated()) == "wooden_stake")
    {
        object oVampire = GetItemActivatedTarget();
        float nRate = GetChallengeRating(oVampire);
        int nRate2 = FloatToInt(nRate) + 6;
        int nKill = GetHitDice(oActivator);
        int nXP = nRate2 - nKill;
        int nXPR = nXP * 10;
        if (GetSubRace(oVampire) == "Vampire")
        {
            ExecuteScript("dj_not_invisible", oActivator);
            int nHP = GetMaxHitPoints(oVampire);
            int nHurt = nHP + 10;
            if (GetTag(oVampire) == "ld_vasestra")
            {
                FloatingTextStringOnCreature("She is just too fast.", oActivator, FALSE);
            }
            else if (d4(1) == 4)
            {
                effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oVampire);
                effect eDamage = EffectDamage(nHurt, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_PLUS_FIVE);
                eDamage = SupernaturalEffect(eDamage);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oVampire);
                GiveXPToCreature(oActivator, nXPR);
                FloatingTextStringOnCreature("Die vile creature!!", oActivator, TRUE);
            }
            else
            {
                FloatingTextStringOnCreature("I missed the heart.", oActivator, FALSE);
            }
        }
        else
        {
            FloatingTextStringOnCreature("Why would I use a wooden stake on this?", oActivator, FALSE);
        }
    }

    //This is for the food pouch
    else if (GetTag(GetItemActivated()) == "food_pouch")
    {
        object oPouch = GetItemActivated();
        int nFood = GetLocalInt(oPouch, "food");
        int nNew = nFood + 1;
        object oFood = GetItemActivatedTarget();
        if ((GetTag(oFood) == "lodoc_meat2") || (GetTag(oFood) == "lodoc_fish"))
        {
            if (nFood < 10)
            {
                DestroyObject(oFood);
                SetLocalInt(oPouch, "food", nNew);
                FloatingTextStringOnCreature("You put the food in your pouch.", oActivator, FALSE);
            }
            else
            {
                FloatingTextStringOnCreature("Your pouch is full of food.", oActivator, FALSE);
            }
        }
        else
        {
            FloatingTextStringOnCreature("That is not food.", oActivator, FALSE);
        }
    }

    //This lets you cook meat next to a fire
    else if (GetTag(GetItemActivated()) == "lodoc_meat")
    {
        if (GetLocalInt(oActivator, "cookallow") == 1)
        {
            DestroyObject(GetItemActivated());
            CreateItemOnObject("lodoc_meat2", oActivator, 1);
            FloatingTextStringOnCreature("You have cooked the meat over the fire.", oActivator, FALSE);
        }
        else
        {
            FloatingTextStringOnCreature("You must be next to a fire or stove to cook meat.", oActivator, FALSE);
        }
    }

    //This lets you cook fish next to a fire
    else if (GetTag(GetItemActivated()) == "lodoc_fishr")
    {
        if (GetLocalInt(oActivator, "cookallow") == 1)
        {
            DestroyObject(GetItemActivated());
            CreateItemOnObject("lodoc_fish", oActivator, 1);
            FloatingTextStringOnCreature("You have cooked the fish over the fire.", oActivator, FALSE);
        }
        else
        {
            FloatingTextStringOnCreature("You must be next to a fire or stove to cook fish.", oActivator, FALSE);
        }
    }

    //This lets you use a climbing rope
    else if (GetTag(GetItemActivated()) == "climbing_rope")
    {
        object oPerson = GetItemActivatedTarget();
        object oTree = GetNearestObjectByTag("magic_plant", oPerson);
        location lTree = GetLocation(oTree);
        location lMe = GetLocation(oPerson);
        float fDistance = GetDistanceBetweenLocations(lTree, lMe);
        int nDistance = FloatToInt(fDistance);
        //////////////////////////////////////
        if ((GetLocalInt(oPerson, "climb") == 1) && (GetIsFriend(oPerson, oActivator) == TRUE))
        {
            ExecuteScript("dj_climb_this", oPerson);
        }
        else if ((oTree != OBJECT_INVALID) && (nDistance < 6) && (GetIsFriend(oPerson, oActivator) == TRUE))
        {
            AssignCommand(oPerson, JumpToObject(GetWaypointByTag("feefifofum")));
        }
        else
        {
            FloatingTextStringOnCreature("You have nothing nearby to use your rope with.", oActivator, FALSE);
        }
    }

    //This lets you use the fairy dust
    else if (GetTag(GetItemActivated()) == "ld_sprite_abil")
    {
        object oPerson = GetItemActivatedTarget();
        object oTree = GetNearestObjectByTag("magic_plant", oPerson);
        location lTree = GetLocation(oTree);
        location lMe = GetLocation(oPerson);
        float fDistance = GetDistanceBetweenLocations(lTree, lMe);
        int nDistance = FloatToInt(fDistance);
        object oFac1 = GetFactionLeader(oActivator);
        object oFac2 = GetFactionLeader(oPerson);
        CreateItemOnObject("NW_IT_MSMLMISC19", oActivator, 1);
        //////////////////////////////////////
        if ((GetLocalInt(oPerson, "climb") == 1) && (oFac1 == oFac2))
        {
            ExecuteScript("dj_climb_this", oPerson);
        }
        else if ((oTree != OBJECT_INVALID) && (nDistance < 6))
        {
            AssignCommand(oPerson, JumpToObject(GetWaypointByTag("feefifofum")));
        }
        else
        {
            FloatingTextStringOnCreature("There is nowhere to fly to with the fairy dust.", oActivator, FALSE);
        }
    }

    //This lets you fill your water flask
    else if (GetTag(GetItemActivated()) == "lodoc_waterem")
    {
        if (GetTag(GetArea(oActivator)) == "TheVileBog")
        {
            FloatingTextStringOnCreature("The water in this swamp is probably not safe to drink.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheWickedMarsh")
        {
            FloatingTextStringOnCreature("The water in this swamp does not look good to drink.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "SarylSwamp")
        {
            FloatingTextStringOnCreature("The water in this swamp does not look good to drink.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheAltarOfTorm")
        {
            FloatingTextStringOnCreature("The water in this swamp does not look good to drink.", oActivator, FALSE);
        }
        else if (GetLocalInt(oActivator, "wetallow") == 1)
        {
            object oPouch = GetItemActivated();
            int nFood = GetLocalInt(oPouch, "water");
            if (nFood < 10)
            {
                SetLocalInt(oPouch, "water", 10);
                FloatingTextStringOnCreature("You filled the flask with water.", oActivator, FALSE);
            }
            else
            {
                FloatingTextStringOnCreature("Your flask is full.", oActivator, FALSE);
            }
        }
        else
        {
            FloatingTextStringOnCreature("You must be next to a river, lake, or well to fill that.", oActivator, FALSE);
        }
    }

    //This lets the PC fish with a fishing spear
    else if (GetTag(GetItemActivated()) == "fishing_spear")
    {
        if (GetLocalInt(oActivator, "fishallow") == 1)
        {
            ExecuteScript("skill_fishing", OBJECT_SELF);
        }
        else if (GetLocalInt(oActivator, "fishallow") == 2)
        {
            FloatingTextStringOnCreature("These waters don't seem to have any fish.", oActivator, FALSE);
        }
        else
        {
            FloatingTextStringOnCreature(
                "You need stand in a stream or on a lake shore to use this.",
                oActivator,
                FALSE);
        }
    }

    //Orb Of Vanishing
    else if (GetTag(GetItemActivated()) == "orb_vanish")
    {
        object oItem = GetItemActivatedTarget();
        object oUser = GetItemPossessor(oItem);
        if (oUser == oActivator)
        {
            if ((GetTag(oItem) == "faction_report") || (GetTag(oItem) == "ld_sprite_abil") || (GetTag(oItem) ==
                "vampire_bottle") || (GetTag(oItem) == "food_pouch") || (GetTag(oItem) == "lodoc_waterem"))
            {
                FloatingTextStringOnCreature("That item does not seem to vanish.", oActivator, FALSE);
            }
            else
            {
                DestroyObject(oItem, 1.0);
            }
        }
        else
        {
            FloatingTextStringOnCreature("The item must be in your pack to make vanish.", oActivator, FALSE);
        }
    }

    //This lets the PC use his shovel for mining and treasure hunting
    else if (GetTag(GetItemActivated()) == "Shovel")
    {
        if (GetLocalInt(oActivator, "digging") == 1)
        {
            int nBreak = GetLocalInt(GetItemActivated(), "broken");
            if (nBreak >= 50)
            {
                DestroyObject(GetItemActivated());
                SendMessageToPC(oActivator, "Your shovel has broke.");
            }
            else
            {
                int nWorn = nBreak + 1;
                SetLocalInt(GetItemActivated(), "broken", nWorn);
                AssignCommand(oActivator, PlaySound("as_cv_mineshovl2"));
                DelayCommand(2.0, ExecuteScript("skill_mining", OBJECT_SELF));
            }
        }
        else if (GetLocalInt(oActivator, "digging") == 2)
        {
            int nBreak = GetLocalInt(GetItemActivated(), "broken");
            if (nBreak >= 50)
            {
                DestroyObject(GetItemActivated());
                SendMessageToPC(oActivator, "Your shovel has broke.");
            }
            else
            {
                int nWorn = nBreak + 1;
                SetLocalInt(GetItemActivated(), "broken", nWorn);
                AssignCommand(oActivator, PlaySound("as_cv_mineshovl2"));
                DelayCommand(2.0, ExecuteScript("skill_chest_dig", OBJECT_SELF));
            }
        }
        else if (GetLocalInt(oActivator, "digging") == 3)
        {
            int nBreak = GetLocalInt(GetItemActivated(), "broken");
            if (nBreak >= 50)
            {
                DestroyObject(GetItemActivated());
                SendMessageToPC(oActivator, "Your shovel has broke.");
            }
            else
            {
                int nWorn = nBreak + 1;
                SetLocalInt(GetItemActivated(), "broken", nWorn);
                AssignCommand(oActivator, PlaySound("as_cv_mineshovl2"));
                DelayCommand(2.0, ExecuteScript("dj_gravedig", OBJECT_SELF));
            }
        }
        else if (GetLocalInt(oActivator, "digging") == 4)
        {
            int nBreak = GetLocalInt(GetItemActivated(), "broken");
            if (nBreak >= 50)
            {
                DestroyObject(GetItemActivated());
                SendMessageToPC(oActivator, "Your shovel has broke.");
            }
            else
            {
                int nWorn = nBreak + 1;
                SetLocalInt(GetItemActivated(), "broken", nWorn);
                AssignCommand(oActivator, PlaySound("as_cv_mineshovl2"));
                DelayCommand(2.0, ExecuteScript("skill_min_gem", OBJECT_SELF));
            }
        }
        else if (GetLocalInt(oActivator, "treasuredig") == 1)
        {
            int nBreak = GetLocalInt(GetItemActivated(), "broken");
            if (nBreak >= 50)
            {
                DestroyObject(GetItemActivated());
                SendMessageToPC(oActivator, "Your shovel has broke.");
            }
            else
            {
                int nWorn = nBreak + 1;
                SetLocalInt(GetItemActivated(), "broken", nWorn);
                ExecuteScript("treasure_dig", OBJECT_SELF);
            }
        }
        else
        {
            FloatingTextStringOnCreature("There is nothing to dig here.", oActivator, FALSE);
        }
    }

    //Zaltos' Key
    else if (GetTag(GetItemActivated()) == "zaltos_key")
    {
        if (GetLocalInt(oActivator, "zaltos") == 1)
        {
            location lPortal = GetLocation(GetWaypointByTag("zaltportal"));
            ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), lPortal);
            CreateObject(OBJECT_TYPE_PLACEABLE, "zaltoscreaport", lPortal, FALSE);
            DestroyObject(GetItemActivated(), 3.0);
        }
        else
        {
            FloatingTextStringOnCreature("I wonder what this key is for?  Hmmm...an inscription.", oActivator, TRUE);
        }
    }

    //Treasure Map I
    else if (GetTag(GetItemActivated()) == "treasure_map")
    {
        ExecuteScript("treasure_map", oActivator);
    }

    //Treasure Map II
    else if (GetTag(GetItemActivated()) == "treasure_map2")
    {
        ExecuteScript("treasure_map2", oActivator);
    }

    //Trap Disarm Kit
    else if (GetTag(GetItemActivated()) == "trap_dis_kit")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "trap_kit", TRUE));
    }

    //Tailor Kit
    else if (GetTag(GetItemActivated()) == "tailor_kit")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "skill_craft", TRUE));
    }

    //Dragon Eggs
    else if (GetStringLeft(GetTag(GetItemActivated()), 8) == "ld_deggs")
    {
        AssignCommand(oActivator, PlaySound("as_na_branchsnp2"));
        DelayCommand(2.0, ExecuteScript("dragon_egg", oActivator));
    }

    //Dragon Whistle
    else if (GetTag(GetItemActivated()) == "dragon_whistle")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "dragon_whistle", TRUE));
    }

    //Magic Seeds
    else if (GetTag(GetItemActivated()) == "magic_seeds")
    {
        if (GetIsAreaAboveGround(GetArea(oActivator)) == AREA_ABOVEGROUND)
        {
            location lPC = GetLocation(oActivator);
            effect eVis = EffectVisualEffect(VFX_COM_CHUNK_STONE_MEDIUM);
            AssignCommand(oActivator, PlaySound("as_na_x2lowrum2"));
            DelayCommand(2.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPC));
            DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPC));
            DelayCommand(6.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPC));
            DelayCommand(4.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "magic_plant", lPC));
        }
        else
        {
            FloatingTextStringOnCreature("You throw some seeds down but they can't grow here.", oActivator, FALSE);
        }
    }

    //Holy Symbol Of Uronia
    else if (GetTag(GetItemActivated()) == "quest_1b_item")
    {
        if ((GetRacialType(oActivator) == RACIAL_TYPE_GIANT) || (GetRacialType(oActivator) == RACIAL_TYPE_FEY) || (
            GetRacialType(oActivator) == RACIAL_TYPE_HUMANOID_MONSTROUS))
        {
            DestroyObject(GetItemActivated(), 1.0);
            FloatingTextStringOnCreature("You have no use for this symbol.", oActivator, FALSE);
        }
        else
        {
            if (GetLocalInt(oActivator, "quest1b") == 1)
            {
                object oPC = GetItemActivator();
                effect eBad = GetFirstEffect(oPC);
                while (GetIsEffectValid(eBad))
                {
                    if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
                        GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY)
                    {
                        RemoveEffect(oPC, eBad);
                    }
                    eBad = GetNextEffect(oPC);
                }
                object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
                SetLocalInt(oQuest, "qs1b", 3);
                FloatingTextStringOnCreature(
                    "You threw the holy symbol into the lava lake. It is destroyed.",
                    oPC,
                    FALSE);
                AdjustReputation(oPC, GetObjectByTag("fac_vampire"), 100);
                DelayCommand(2.0, AssignCommand(oPC, PlaySound("as_mg_telepout1")));
                DelayCommand(2.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("quest_1b_wp"))));
                DestroyObject(GetItemActivated(), 4.0);
            }
            else
            {
                FloatingTextStringOnCreature("I wonder what this holy symbol does.", oActivator, TRUE);
            }
        }
    }

    //Chalice Of Malad (Ogre Quest)
    else if (GetTag(GetItemActivated()) == "qs1m_item")
    {
        if (GetLocalInt(oActivator, "qs1mpc") == 1)
        {
            object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oActivator);
            DestroyObject(GetItemActivated(), 1.0);
            FloatingTextStringOnCreature("The chalice melts in the fire.", oActivator, FALSE);
            SetLocalInt(oQuest, "qs1m", 3);
        }
        else
        {
            FloatingTextStringOnCreature(
                "I need to bring this to the old Malad altar in Drub's Den.",
                oActivator,
                TRUE);
        }
    }

    //Testing Rod
    else if (GetTag(GetItemActivated()) == "dm_wand_ld")
    {
        AssignCommand(oActivator, ActionStartConversation(oActivator, "_dm_test", TRUE));
    }

    //Crafting Gloves
    else if (GetTag(GetItemActivated()) == "ld_craft_glove")
    {
        if (GetItemActivatedTarget() == oActivator)
        {
            AssignCommand(oActivator, ActionStartConversation(oActivator, "skill_smith", TRUE));
        }
        else
        {
            ExecuteScript("smith_hammer", OBJECT_SELF);
        }
    }

    //Ice Crystals
    else if (GetTag(GetItemActivated()) == "ld_crys_frst")
    {
        object oCrystals = GetItemActivated();
        object oVictim = GetItemActivatedTarget();
        int nCasterLvl = 11;
        int nDamage, nDamage2, nDamage3;
        effect eExplode = EffectVisualEffect(VFX_FNF_ICESTORM);
        effect eVis = EffectVisualEffect(VFX_IMP_FROST_S);
        effect eDam, eDam2, eDam3;
        float fDelay;
        location lTarget = GetLocation(oVictim);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eExplode, lTarget);
        object oTarget = GetFirstObjectInShape(SHAPE_SPHERE, RADIUS_SIZE_MEDIUM, lTarget, TRUE, OBJECT_TYPE_CREATURE);
        while (GetIsObjectValid(oTarget))
        {
            fDelay = GetRandomDelay(0.75, 2.25);
            nDamage = d6(3);
            nDamage2 = d6(2);
            nDamage3 = d6(nCasterLvl);
            eDam = EffectDamage(nDamage, DAMAGE_TYPE_BLUDGEONING);
            eDam2 = EffectDamage(nDamage2, DAMAGE_TYPE_COLD);
            eDam3 = EffectDamage(nDamage3, DAMAGE_TYPE_COLD);
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam2, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam3, oTarget));
            DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, RADIUS_SIZE_MEDIUM, lTarget, TRUE, OBJECT_TYPE_CREATURE);
        }
    }

    //Recharge Crystal Ball
    else if (GetTag(GetItemActivated()) == "qs1h_item2")
    {
        if (GetObjectByTag("LD_DRAGON_BLK") != OBJECT_INVALID)
        {
            object oChrg = GetItemActivatedTarget();
            int nCost = GetGoldPieceValue(oChrg);
            int nGold = nCost / 2;
            int nValu = GetGold(oActivator);
            if (GetItemCharges(oChrg) < 1)
            {
                FloatingTextStringOnCreature("That does not need to be charged.", oActivator, FALSE);
            }
            else if (nValu >= nGold)
            {
                AssignCommand(oActivator, TakeGoldFromCreature(nGold, oActivator, TRUE));
                SetItemCharges(oChrg, 50);
                FloatingTextStringOnCreature("The item is magically recharged.", oActivator, FALSE);
                FloatingTextStringOnCreature(
                    "Veeslath took " + IntToString(nGold) + " gold for this service.",
                    oActivator,
                    FALSE);
            }
            else
            {
                FloatingTextStringOnCreature(
                    "Veeslath wants " + IntToString(nGold) + " gold to recharge this item.",
                    oActivator,
                    FALSE);
            }
        }
        else
        {
            FloatingTextStringOnCreature("Veeslath must be here to use the crystal ball's power.", oActivator, FALSE);
        }
    }
}

void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE)
{
    CreateObject(nObjectType, sTemplate, lLocation, bUseAppearAnimation);
    return;
}
