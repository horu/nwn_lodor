// The OnSpawn script for standard NPCs
#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
#include "nwnx_creature"

void main()
{
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_STEALTH) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_STEALTH);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_SEARCH) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_SEARCH);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT_IMMOBILE) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_IMMOBILE_AMBIENT_ANIMATIONS);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_AMBIENT_ANIMATIONS);
    }

    SetListeningPatterns();
    ActionRandomWalk();

    NWNX_Creature_SetCorpseDecayTime(OBJECT_SELF, 500);

    // Treasure Section for the NPC
    // Runs the appropriate treasure script for the NPC
    {
        if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "DJ_GOBLIN")
        {
            if (GetTag(OBJECT_SELF) == "DJ_GOBLINBOSS")
            {
                ExecuteScript("loot_boss", OBJECT_SELF);
            }
            else
            {
                ExecuteScript("loot_creature", OBJECT_SELF);
            }
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "DJ_NIXIE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "DJ_BUGBEAR")
        {
            if (GetTag(OBJECT_SELF) == "DJ_BUGBEARB")
            {
                SetLocalInt(OBJECT_SELF, "dontkill", 1);
                ExecuteScript("loot_boss", OBJECT_SELF);
            }
            else if (GetTag(OBJECT_SELF) == "DJ_BUGBEARW1")
            {
                SetLocalInt(OBJECT_SELF, "dontkill", 1);
                ExecuteScript("loot_creature", OBJECT_SELF);
            }
            else
            {
                ExecuteScript("loot_creature", OBJECT_SELF);
            }
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "DJ_MINOTAUR")
        {
            if (GetTag(OBJECT_SELF) == "DJ_MINOTAURB")
            {
                ExecuteScript("loot_boss", OBJECT_SELF);
            }
            else
            {
                ExecuteScript("loot_creature", OBJECT_SELF);
            }
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_OGRILLON")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_WILLOWISP")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_SARLIZ")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_VILESKULL")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_Gorpath")
        {
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_GIANT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_OGRE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_DRUB")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_CONSTRUCT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_DRAGON_")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_SKEL")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 6) == "WITCH_")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_BRAKAL")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_TURAN")
        {
            if (GetTag(OBJECT_SELF) == "LD_TURANPRST")
            {
                ExecuteScript("loot_boss", OBJECT_SELF);
            }
            else
            {
                ExecuteScript("loot_creature", OBJECT_SELF);
            }
        }

        else if (GetTag(OBJECT_SELF) == "LD_GRANDULOY")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SEAHAG")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_GREMLIN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "DJ_BOARBEAST")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_LIZMAN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_FRSTKOBLD")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_KBLKVILTH")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_frstdemon")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_warpek")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_GNTHILL")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_wrok")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_thrall")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_BRUTE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SHADHOUND")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_WOLFWINT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_GRYMP")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_TROLL")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_GNOLL")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_DRIGDUG")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_gnollb")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_DOOMKGHT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_FALLEN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_GAGORC")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_DOROXT")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_ketryl")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_zaltos")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_HOBGOBLIN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_HARPY")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_PIXIE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_GELCUBE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_RATMAN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_HOBBIT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_FALCOR")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_FALCORMG")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_ELLY")
        {
            effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
            location lPlay = GetLocation(OBJECT_SELF);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPlay);
        }

        else if (GetTag(OBJECT_SELF) == "LD_ROCKGOL")
        {
            effect eVis = EffectVisualEffect(VFX_COM_CHUNK_STONE_MEDIUM);
            location lPlay = GetLocation(OBJECT_SELF);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPlay);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MUSHROOM")
        {
            effect eVis = EffectVisualEffect(VFX_COM_CHUNK_STONE_MEDIUM);
            location lPlay = GetLocation(OBJECT_SELF);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPlay);
        }

        else if (GetTag(OBJECT_SELF) == "LD_LASTROW")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SHIRA")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_MELAGAN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_TARAKLIZ")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MALAR")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_YUAN_TI")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_melaruler")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_RAKSHASA")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_maharajah")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_trasaa")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "LD_VANKKBLD")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_MEPHIT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_dar")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_WMUMMY")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_MANSCRP")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "LD_HIVE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_BASILISK")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_quascar")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_HVQUEEN")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_SPHINX")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_HELLHOUND")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MAGICIAN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_GNTFIRE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_daclor")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 13) == "firebrand_cit")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_DRIDER")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_BANDIT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "DJ_BANDIT")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_YARBEK")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_HORFILAD")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_TARAK")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_HIVEMOTH")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "ld_pirate_")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_OLARIUS")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_cyclops")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_GORGON")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "LD_GAZER")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MEDUSA")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MEDUSA2")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_sapelek")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_glomarin")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "glorm_golem")
        {
            string sText = "Prepare to die!";
            ActionSpeakString(sText, TALKVOLUME_TALK);
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_xor")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_golemdem")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SUCCUBUS")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_BALOR")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_COLLECT")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_radhael")
        {
            string sText = "Your soul will be mine!";
            ActionSpeakString(sText, TALKVOLUME_TALK);
            effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
            location lPlay = GetLocation(OBJECT_SELF);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lPlay);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SCORN")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_LICH")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_LICH2")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_bartuzol")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_VAULTOGRE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_SIRINE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_GARGOYLE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_VAMPIRE")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_jarehar")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_vasestra")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_DRACZ")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "LD_MINDFLAYER2")
        {
            if (GetTag(OBJECT_SELF) == "LD_MINDFLAYER2K")
            {
                SetLocalInt(OBJECT_SELF, "dontkill", 1);
            }
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 10) == "LD_HELLION")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_MARCULOS")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 7) == "ld_doll")
        {
            string sText = "Do you want to play with me?";
            DelayCommand(2.0, ActionSpeakString(sText, TALKVOLUME_TALK));
        }

        else if (GetTag(OBJECT_SELF) == "ld_taresa")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 14) == "ld_skel_knight")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_LICHLORD")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_citwarrior")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_OMERAZ")
        {
            SetLocalInt(OBJECT_SELF, "dontkill", 1);
            ExecuteScript("loot_boss", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "ld_farydrgon")
        {
            string sText = "Thank you for freeing me.";
            ActionSpeakString(sText);
            DestroyObject(OBJECT_SELF, 1.0);
        }

        else if (GetStringLeft(GetTag(OBJECT_SELF), 12) == "LD_GIANT_FRS")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }

        else if (GetTag(OBJECT_SELF) == "LD_PULTOK")
        {
            ExecuteScript("loot_creature", OBJECT_SELF);
        }


        else
        {
        }
    }

    // * If Incorporeal, apply changes
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_IS_INCORPOREAL) == TRUE)
    {
        effect eConceal = EffectConcealment(50, MISS_CHANCE_TYPE_NORMAL);
        eConceal = ExtraordinaryEffect(eConceal);
        effect eGhost = EffectCutsceneGhost();
        eGhost = ExtraordinaryEffect(eGhost);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eConceal, OBJECT_SELF);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eGhost, OBJECT_SELF);
    }
}
