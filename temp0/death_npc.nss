// This is what happens when you kill an NPC
void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation=TRUE);
#include "x0_i0_treasure"
#include "x0_i0_spawncond"
void main()
{
object oMurder = GetLastKiller();
object oMaster = GetMaster(oMurder);

if (oMaster != OBJECT_INVALID){
    SetLocalObject(oMurder, "killer", oMaster);}
else {
    SetLocalObject(oMurder, "killer", oMurder);}

object oKiller = GetLocalObject(oMurder, "killer");
object oBook = GetItemPossessedBy(oKiller, "faction_report");
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oKiller);

    // Vampire Blood Letting
    object oBottle = GetItemPossessedBy(oKiller, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNewB = nBlood + 1;
    if ((GetRacialType(OBJECT_SELF) == RACIAL_TYPE_OUTSIDER) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_CONSTRUCT) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ELEMENTAL) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_UNDEAD) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ABERRATION) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_OOZE) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_VERMIN)){}
    else{SetLocalInt(oBottle, "blood", nNewB);}

    int nNum1 = 1;

// This is OnDeath script section for NPCs

    int nClass = GetLevelByClass(CLASS_TYPE_COMMONER);
    int nAlign = GetAlignmentGoodEvil(OBJECT_SELF);

    // If we're a good/neutral commoner,
    // adjust the killer's alignment evil
    if(nClass > 0 && (nAlign == ALIGNMENT_GOOD || nAlign == ALIGNMENT_NEUTRAL))
    {
        AdjustAlignment(oKiller, ALIGNMENT_EVIL, 5);
    }

    // Call to allies to let them know we're dead
    SpeakString("NW_I_AM_DEAD", TALKVOLUME_SILENT_TALK);

    //Shout Attack my target, only works with the On Spawn In setup
    SpeakString("NW_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);

    // NOTE: the OnDeath user-defined event does not
    // trigger reliably and should probably be removed
    if(GetSpawnInCondition(NW_FLAG_DEATH_EVENT))
    {
         SignalEvent(OBJECT_SELF, EventUserDefined(1007));
    }

if (GetIsPC(oKiller) == TRUE){

    if (GetStringLeft(GetTag(OBJECT_SELF),9)=="DJ_GOBLIN"){
       if (GetLocalInt(oQuest, "qs1g") == 1){
            {int nRandom = d6(1);
            if (nRandom == 1){
            SetLocalInt(oQuest, "qs1g", 2);
            CreateItemOnObject("qs1g_item", oKiller, 1);}}}
       if (GetSubRace(oKiller) != "Vampire"){
            {
            int iLevel = GetLocalInt(oBook, "brushwood");
            int iCurrent = GetLocalInt(oBook, "r_brushwood");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_brushwood", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_brushwood", 0);
                    SendMessageToPC(oKiller,"Your faction with the Brushwood Halflings is better.");
                    SetLocalInt(oBook, "brushwood", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_brushwood"), 1);}
                else {}}
            {
            int iLevel = GetLocalInt(oBook, "nixie");
            int iCurrent = GetLocalInt(oBook, "r_nixie");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_nixie", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_nixie", 0);
                    SendMessageToPC(oKiller,"Your faction with the Nixies is better.");
                    SetLocalInt(oBook, "nixie", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_nixie"), 1);}
                else {}}
        }}

    else if ((GetTag(OBJECT_SELF)=="LD_SEAHAG") || (GetTag(OBJECT_SELF)=="LD_SIRINE")){
       if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "sprite");
            int iCurrent = GetLocalInt(oBook, "r_sprite");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_sprite", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_sprite", 0);
                    SendMessageToPC(oKiller,"Your faction with the Sprites is better.");
                    SetLocalInt(oBook, "sprite", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_sprite"), 1);}
                else {}}}

    else if (GetStringLeft(GetTag(OBJECT_SELF),14)=="brushwood_cit_"){
      if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Brushwood Halflings is worse.");
        int iBrushwood = GetReputation(GetObjectByTag("fac_brushwood"), oKiller);
        SetLocalInt(oBook, "brushwood", iBrushwood);
            SendMessageToPC(oKiller,"Your faction with the Drogo Hobbits is worse.");
            int iDrogo = GetLocalInt(oBook, "drogo");
            int iAdjust = iDrogo - 5;
            if (iAdjust < 6){SetLocalInt(oBook, "drogo", 0);}
            else {SetLocalInt(oBook, "drogo", iAdjust);}
            AdjustReputation(oKiller, GetObjectByTag("fac_drogo"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_drogo"), iAdjust);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),13)=="cit_minotaur_"){
      if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Grandul Minotaurs is worse.");
        int iBrushwood = GetReputation(GetObjectByTag("fac_minotaur"), oKiller);
        SetLocalInt(oBook, "minotaur", iBrushwood);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),10)=="nilas_cit_"){
      if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Nilas Drows is worse.");
        int iNilas = GetReputation(GetObjectByTag("fac_nilas"), oKiller);
        SetLocalInt(oBook, "nilas", iNilas);
            int iLevel = GetLocalInt(oBook, "drogo");
            int iCurrent = GetLocalInt(oBook, "r_drogo");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_drogo", iNew);
                if (iCurrent >= 1){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_drogo", 0);
                    SendMessageToPC(oKiller,"Your faction with the Drogo Hobbits is better.");
                    SetLocalInt(oBook, "drogo", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_drogo"), 1);}
                else {}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),12)=="duergar_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Duergars is worse.");
        int iDuergar = GetReputation(GetObjectByTag("fac_duergar"), oKiller);
        SetLocalInt(oBook, "duergar", iDuergar);
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),11)=="sylvan_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Wood Elves is worse.");
        int iSylvan = GetReputation(GetObjectByTag("fac_sylvan"), oKiller);
        SetLocalInt(oBook, "sylvan", iSylvan);
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),11)=="sprite_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Sprites is worse.");
        int iSprite = GetReputation(GetObjectByTag("fac_sprite"), oKiller);
        SetLocalInt(oBook, "sprite", iSprite);
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),13)=="firebrand_citimp"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Firebrands is worse.");
        int iFirebrand = GetReputation(GetObjectByTag("fac_firebrand"), oKiller);
        SetLocalInt(oBook, "firebrand", iFirebrand);
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),14)== "firebrand_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Firebrands is worse.");
        int iFirebrand = GetReputation(GetObjectByTag("fac_firebrand"), oKiller);
        SetLocalInt(oBook, "firebrand", iFirebrand);}
        string sText;
        sText = "Guards!  Aaarrrgh!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellybrand", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellybrand", lDied, FALSE);
        if (GetTag(OBJECT_SELF) =="firebrand_cit_kn"){
             object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oKiller);
             SetLocalInt(oQuest, "qs1c", 2);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRACZ"){
        if (GetSubRace(oKiller) != "Vampire"){
           if (GetLocalInt(oQuest, "qs1d7") == 1){
            SetLocalInt(oQuest, "qs1d7", 0);
            CreateItemOnObject("alter_qst_torm4", oKiller, 1);
            FloatingTextStringOnCreature("You now have Dracz's ear.", oKiller, FALSE);}}
        string sText = "Aaarrrgh!  Destroy the intruders!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_dracz");
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcd", GetLocation(GetWaypointByTag("dracz_sel1")), FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcp", GetLocation(GetWaypointByTag("dracz_sel2")), FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrci", GetLocation(GetWaypointByTag("dracz_sel3")), FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcmc", GetLocation(GetWaypointByTag("dracz_sel4")), FALSE);
        }

    else if (GetTag(OBJECT_SELF) == "LD_HIVEMOTH"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Firebrands is better.");
          int iLevel = GetLocalInt(oBook, "firebrand");
          int nFaction = iLevel + 1;
          SetLocalInt(oBook, "firebrand", nFaction);
          AdjustReputation(oKiller, GetObjectByTag("fac_firebrand"), 1);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lDied, FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_hivemom", lDied, FALSE);
        }

    else if (GetTag(OBJECT_SELF) == "LD_BTLSTINK"){
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "firebrand");
            int iCurrent = GetLocalInt(oBook, "r_firebrand");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_firebrand", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_firebrand", 0);
                    SendMessageToPC(oKiller,"Your faction with the Firebrands is better.");
                    SetLocalInt(oBook, "firebrand", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_firebrand"), 1);}
                else {}
        }}

    else if (GetTag(OBJECT_SELF) == "LD_ELLYBRAND"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Firebrands is worse.");
        int iFirebrand = GetReputation(GetObjectByTag("fac_firebrand"), oKiller);
        SetLocalInt(oBook, "firebrand", iFirebrand);
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),8)=="DJ_NIXIE"){
        if (GetSubRace(oKiller) != "Vampire"){
         if (GetTag(OBJECT_SELF) == "DJ_NIXIE2"){
           if (GetLocalInt(oQuest, "qs1d8") == 1){
            SetLocalInt(oQuest, "qs1d8", 0);
            CreateItemOnObject("alter_qst_malad1", oKiller, 1);
            FloatingTextStringOnCreature("You've got the S'oquar's dust.", oKiller, FALSE);}}
        SendMessageToPC(oKiller,"Your faction with the Nixies is worse.");
        int iNixie = GetReputation(GetObjectByTag("fac_nixie"), oKiller);
        SetLocalInt(oBook, "nixie", iNixie);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),13)=="faraldor_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        {
        SendMessageToPC(oKiller,"Your faction with the Faraldor Elves is worse.");
        int iFaraldor = GetReputation(GetObjectByTag("fac_faraldor"), oKiller);
        SetLocalInt(oBook, "faraldor", iFaraldor);
        }
            {
            int iLevel = GetLocalInt(oBook, "orcs");
            int iCurrent = GetLocalInt(oBook, "r_orcs");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_orcs", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_orcs", 0);
                    SendMessageToPC(oKiller,"Your faction with the Vrugar Orcs is better.");
                    SetLocalInt(oBook, "orcs", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_orcs"), 1);}
                else {}}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),10)=="dedry_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Dedry Gnomes is worse.");
        int iDedry = GetReputation(GetObjectByTag("fac_dedry"), oKiller);
        SetLocalInt(oBook, "dedry", iDedry);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),10)=="aldur_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Aldur Humans is worse.");
        int iAldur = GetReputation(GetObjectByTag("fac_aldur"), oKiller);
        SetLocalInt(oBook, "aldur", iAldur);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),11)=="vegnar_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vegnar Dwarves is worse.");
        int iVegnar = GetReputation(GetObjectByTag("fac_vegnar"), oKiller);
        SetLocalInt(oBook, "vegnar", iVegnar);
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),11)=="LD_OGRILLON"){
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "brownie");
            int iCurrent = GetLocalInt(oBook, "r_brownie");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_brownie", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_brownie", 0);
                    SendMessageToPC(oKiller,"Your faction with the Brownies is better.");
                    SetLocalInt(oBook, "brownie", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_brown"), 1);}
                else {}
            int iLevel2 = GetLocalInt(oBook, "sylvan");
            int iCurrent2 = GetLocalInt(oBook, "r_sylvan");
            int iNew2 = iCurrent2 + 1;
            SetLocalInt(oBook, "r_sylvan", iNew2);
                if (iCurrent2 >= 8){
                    int nFaction2 = iLevel2 + 1;
                    SetLocalInt(oBook, "r_sylvan", 0);
                    SendMessageToPC(oKiller,"Your faction with the Wood Elves is better.");
                    SetLocalInt(oBook, "sylvan", nFaction2);
                    AdjustReputation(oKiller, GetObjectByTag("fac_sylvan"), 1);}
                else {}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),12)=="brownie_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Brownies is worse.");
        int iBrushwood = GetReputation(GetObjectByTag("fac_brown"), oKiller);
        SetLocalInt(oBook, "brownie", iBrushwood);
        }}
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLK"){
        if (GetLocalInt(oQuest, "qs1d3") == 1){
            SetLocalInt(oQuest, "qs1d3", 0);
            CreateItemOnObject("alter_qst_shyva4", oKiller, 1);
            FloatingTextStringOnCreature("You got the heart of Veeslath.", oKiller, FALSE);}
        SendMessageToPC(oKiller,"Your faction with Veeslath is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgblack"), oKiller);
        SetLocalInt(oBook, "drgblack", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_black_drg");
        }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BRZ"){
        SendMessageToPC(oKiller,"Your faction with Chimnazth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgbronze"), oKiller);
        SetLocalInt(oBook, "drgbronze", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_bronze_drg");
        }
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_WHT"){
        SendMessageToPC(oKiller,"Your faction with Drennyuth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgwhite"), oKiller);
        SetLocalInt(oBook, "drgwhite", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_white_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_RED"){
        if (GetLocalInt(oQuest, "qs1d11") == 1){
            SetLocalInt(oQuest, "qs1d11", 0);
            CreateItemOnObject("alter_qst_rimyr4", oKiller, 1);
            FloatingTextStringOnCreature("You have slain Rauget.", oKiller, FALSE);}
        SendMessageToPC(oKiller,"Your faction with Rauget is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgred"), oKiller);
        SetLocalInt(oBook, "drgred", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_red_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BRS"){
        SendMessageToPC(oKiller,"Your faction with Jebbeyth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgbrass"), oKiller);
        SetLocalInt(oBook, "drgbrass", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_brs_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_GLD"){
        if (GetLocalInt(oQuest, "qs1d9") == 1){
            SetLocalInt(oQuest, "qs1d9", 0);
            CreateItemOnObject("alter_qst_belul4", oKiller, 1);
            FloatingTextStringOnCreature("You now have Rhaizhizth's claw.", oKiller, FALSE);}
        SendMessageToPC(oKiller,"Your faction with Rhaizhizth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drggold"), oKiller);
        SetLocalInt(oBook, "drggold", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_gld_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SHD"){
        SendMessageToPC(oKiller,"Your faction with Zalkotroth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgshadow"), oKiller);
        SetLocalInt(oBook, "drgshadow", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_shd_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL"){
        SendMessageToPC(oKiller,"Your faction with Acleoth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgsilver"), oKiller);
        SetLocalInt(oBook, "drgsilver", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_sil_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_PSM"){
        SendMessageToPC(oKiller,"Your faction with Bhoothirth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgprism"), oKiller);
        SetLocalInt(oBook, "drgprism", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_prism_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_COP"){
        if (GetLocalInt(oQuest, "qs1d10") == 1){
            SetLocalInt(oQuest, "qs1d10", 0);
            CreateItemOnObject("alter_qst_puril4", oKiller, 1);
            FloatingTextStringOnCreature("You've got Glieglerth's riddles.", oKiller, FALSE);}
        SendMessageToPC(oKiller,"Your faction with Glieglerth is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgcopper"), oKiller);
        SetLocalInt(oBook, "drgsilver", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_copper_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_GRN"){
        if (GetLocalInt(oQuest, "qs1d6") == 1){
            SetLocalInt(oQuest, "qs1d6", 0);
            CreateItemOnObject("alter_qst_unur4", oKiller, 1);
            FloatingTextStringOnCreature("You found the Sphere of Intellect.", oKiller, FALSE);}
        SendMessageToPC(oKiller,"Your faction with Eubraith is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drggreen"), oKiller);
        SetLocalInt(oBook, "drggreen", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_grn_drg");
        }

    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLU"){
        SendMessageToPC(oKiller,"Your faction with Aabohz is worse.");
        int iDragonBlk = GetReputation(GetObjectByTag("fac_drgblue"), oKiller);
        SetLocalInt(oBook, "drgblue", iDragonBlk);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_blu_drg");
        }
    else if (GetTag(OBJECT_SELF)=="LD_PULTOK"){
        object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oKiller);
        if (GetLocalInt(oQuest, "qs1c") == 1){
        SetLocalInt(oQuest, "qs1c", 2);
        CreateItemOnObject("pultok_amulet", oKiller, 1);}
        }
    else if (GetTag(OBJECT_SELF)=="LD_GIANT_FRSTM"){
        if (GetLocalInt(OBJECT_SELF, "dontkill") == 1){
           location lDied = GetLocation(OBJECT_SELF);
           CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_frost_gnt");}
        else if (GetLocalInt(oQuest, "qs1f") == 1){
            {int nRandom = d10(1);
            if (nRandom == 1){
              SetLocalInt(oQuest, "qs1f", 2);
              CreateItemOnObject("ld_qs1f_item", oKiller, 1);}}}
        }
    else if (GetTag(OBJECT_SELF)=="ld_bartuzol"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_bartuzol");
        }
    else if (GetTag(OBJECT_SELF)=="ld_daclor"){
        if (GetLocalInt(oQuest, "qs1d4") == 1){
            SetLocalInt(oQuest, "qs1d4", 0);
            CreateItemOnObject("alter_qst_somry4", oKiller, 1);
            FloatingTextStringOnCreature("You found Daclor's Might.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_daclor");
        }
    else if (GetTag(OBJECT_SELF)=="ld_ketryl"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_ketryl");
        }
    else if (GetTag(OBJECT_SELF)=="LD_SHIRA"){
        if (GetLocalInt(oQuest, "qs1d4") == 1){
            SetLocalInt(oQuest, "qs1d4", 0);
            CreateItemOnObject("alter_qst_somry3", oKiller, 1);
            FloatingTextStringOnCreature("You got Shira's spell book.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_shira");
        }
    else if (GetTag(OBJECT_SELF)=="LD_DOROXT"){
        if (GetLocalInt(oQuest, "qs1d10") == 1){
            SetLocalInt(oQuest, "qs1d10", 0);
            CreateItemOnObject("alter_qst_puril3", oKiller, 1);
            FloatingTextStringOnCreature("You got Doroxt's Crown.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_doroxt");
        }
    else if (GetTag(OBJECT_SELF)=="LD_BRAKAL"){
        if (GetLocalInt(oQuest, "qs1d5") == 1){
            SetLocalInt(oQuest, "qs1d5", 0);
            CreateItemOnObject("alter_qst_oweod4", oKiller, 1);
            FloatingTextStringOnCreature("You got Brakal's head.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_brakal");
        }
    else if (GetTag(OBJECT_SELF)=="ld_melaruler"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_melgan");
        }
    else if (GetTag(OBJECT_SELF)=="WITCH_ICE"){
        if (GetLocalInt(oQuest, "qs1d2") == 1){
            SetLocalInt(oQuest, "qs1d2", 0);
            CreateItemOnObject("altar_quest_cal6", oKiller, 1);
            FloatingTextStringOnCreature("You found Samtharia's Scroll.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        string sText = "You have won the battle, but not the war!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_witch_ice");
        }
    else if (GetTag(OBJECT_SELF)=="WITCH_EARTH"){
        location lDied = GetLocation(OBJECT_SELF);
        string sText = "You have won the battle, but not the war!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_witch_dirt");
        }
    else if (GetTag(OBJECT_SELF)=="WITCH_WATER"){
        location lDied = GetLocation(OBJECT_SELF);
        string sText = "You have won the battle, but not the war!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_witch_wat");
        }
    else if (GetTag(OBJECT_SELF)=="WITCH_FIRE"){
        location lDied = GetLocation(OBJECT_SELF);
        string sText = "You have won the battle, but not the war!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_witch_fire");
        }
    else if (GetTag(OBJECT_SELF)=="WITCH_AIR"){
        location lDied = GetLocation(OBJECT_SELF);
        string sText = "You have won the battle, but not the war!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_witch_air");
        }
    else if (GetTag(OBJECT_SELF)=="LD_DRUB"){
        if (GetLocalInt(oQuest, "qs1d1") == 1){
            SetLocalInt(oQuest, "qs1d1", 0);
            CreateItemOnObject("alter_qst_cal4", oKiller, 1);
            FloatingTextStringOnCreature("You got the head of Drub.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_drub");
        }
    else if (GetTag(OBJECT_SELF)=="LD_LASTROW"){
        if (GetLocalInt(oQuest, "qs1d12") == 1){
            SetLocalInt(oQuest, "qs1d12", 0);
            CreateItemOnObject("alter_qst_uronia1", oKiller, 1);
            FloatingTextStringOnCreature("You found the Stone of Summoning.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_lastrow");
        }
    else if (GetTag(OBJECT_SELF)=="ld_dar"){
        string sText;
        sText = "You have not seen the last of me!  The power of the Skull will be mine!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_dar");
        }
    else if (GetTag(OBJECT_SELF)=="DJ_BUGBEARW1"){
        if (GetLocalInt(oQuest, "qs1d2") == 1){
            SetLocalInt(oQuest, "qs1d2", 0);
            CreateItemOnObject("alter_quest_burl", oKiller, 1);
            FloatingTextStringOnCreature("You got the head of Burlop.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_burlop");
        }
    else if (GetTag(OBJECT_SELF)=="LD_MEPHITWQ"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_glfam");
        }
    else if (GetTag(OBJECT_SELF)=="DJ_BUGBEARB"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_bruol");
        }
    else if (GetTag(OBJECT_SELF)=="ld_xor"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_xor");
        }
    else if (GetStringLeft(GetTag(OBJECT_SELF),12)=="LD_FRSTKOBLD"){
       if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "aldur");
            int iCurrent = GetLocalInt(oBook, "r_aldur");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_aldur", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_aldur", 0);
                    SendMessageToPC(oKiller,"Your faction with the Aldur Humans is better.");
                    SetLocalInt(oBook, "aldur", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_aldur"), 1);}
                else {}
        }}
    else if (GetTag(OBJECT_SELF)=="LD_KBLKVILTH"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_vilith");
        }

    else if (GetTag(OBJECT_SELF)=="LD_MEDUSA"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_medusa");
        }

    else if (GetTag(OBJECT_SELF)=="LD_DRIGDUG"){
        if (GetLocalInt(oQuest, "qs1d11") == 1){
            SetLocalInt(oQuest, "qs1d11", 0);
            CreateItemOnObject("alter_qst_rimyr3", oKiller, 1);
            FloatingTextStringOnCreature("You have Drigdug's head.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_drigdug");
        }

    else if (GetTag(OBJECT_SELF)=="ld_gnollb"){
        if (GetLocalInt(oQuest, "qs1d2") == 1){
            SetLocalInt(oQuest, "qs1d2", 0);
            CreateItemOnObject("altar_quest_cal5", oKiller, 1);
            FloatingTextStringOnCreature("You found the Tablet of Concealed.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_garv");
        }

    else if (GetTag(OBJECT_SELF)=="LD_FALCORMG"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_hawtral");
        }

    else if (GetTag(OBJECT_SELF)=="ld_trasaa"){
        if (GetLocalInt(oQuest, "qs1d5") == 1){
            SetLocalInt(oQuest, "qs1d5", 0);
            CreateItemOnObject("alter_qst_oweod3", oKiller, 1);
            FloatingTextStringOnCreature("You found the Tears of the Temple.", oKiller, FALSE);}
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_trasaa");
        }

    else if (GetTag(OBJECT_SELF)=="ld_warpek"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_warpek");
        }

    else if (GetTag(OBJECT_SELF)=="ld_wrok"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_wrok");
        }

    else if (GetTag(OBJECT_SELF)=="LD_SHADHOUND"){
        if (GetSubRace(oKiller) == "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vampires is worse.");
        int iVampire = GetReputation(GetObjectByTag("fac_vampire"), oKiller);
        SetLocalInt(oBook, "vampire", iVampire);}
        }

    else if (GetTag(OBJECT_SELF)=="ld_vasestra"){
        if (GetSubRace(oKiller) == "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vampires is worse.");
        int iVampire = GetReputation(GetObjectByTag("fac_vampire"), oKiller);
        SetLocalInt(oBook, "vampire", iVampire);}
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lDied);
        string sText;
        sText = "I will return for you!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_vasestra");
        }

    else if (GetTag(OBJECT_SELF)=="LD_VAMPIRE"){
        if (GetSubRace(oKiller) == "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vampires is worse.");
        int iVampire = GetReputation(GetObjectByTag("fac_vampire"), oKiller);
        SetLocalInt(oBook, "vampire", iVampire);}
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lDied);
        }

    else if (GetTag(OBJECT_SELF)=="ld_jarehar"){
        if (GetSubRace(oKiller) == "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vampires is worse.");
        int iVampire = GetReputation(GetObjectByTag("fac_vampire"), oKiller);
        SetLocalInt(oBook, "vampire", iVampire);}
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lDied);
        string sText;
        sText = "Aaargh!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_jarehar");
        }

    else if (GetTag(OBJECT_SELF)=="LD_OMERAZ"){
        string sText = "You may have destroyed my body but my soul lives!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_omeraz");
        }

    else if (GetTag(OBJECT_SELF)=="ld_thrall"){
        if (GetSubRace(oKiller) == "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Vampires is worse.");
        int iVampire = GetReputation(GetObjectByTag("fac_vampire"), oKiller);
        SetLocalInt(oBook, "vampire", iVampire);}
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_FNF_SMOKE_PUFF), lDied);
        }

    else if (GetTag(OBJECT_SELF)=="LD_DROID"){
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_FNF_SMOKE_PUFF), lDied);
        }

    else if (GetTag(OBJECT_SELF) == "DJ_BOARBEAST"){
       if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "quickling");
            int iCurrent = GetLocalInt(oBook, "r_quickling");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_quickling", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_quickling", 0);
                    SendMessageToPC(oKiller,"Your faction with the Quicklings is better.");
                    SetLocalInt(oBook, "quickling", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_quick"), 1);}
                else {}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),8)=="LD_GRYMP"){
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "quickling");
            int iCurrent = GetLocalInt(oBook, "r_quickling2");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_quickling2", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_quickling2", 0);
                    SendMessageToPC(oKiller,"Your faction with the Quicklings is better.");
                    SetLocalInt(oBook, "quickling", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_quick"), 1);}
                else {}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),14)=="quickling_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Quicklings is worse.");
        int iBrushwood = GetReputation(GetObjectByTag("fac_quick"), oKiller);
        SetLocalInt(oBook, "quickling", iBrushwood);
        }}
    else if (GetTag(OBJECT_SELF)=="ld_zaltos"){
          if (GetLocalInt(oQuest, "qs1d3") == 1){
            SetLocalInt(oQuest, "qs1d3", 0);
            CreateItemOnObject("alter_qst_shyva2", oKiller, 1);
            FloatingTextStringOnCreature("You found the ice crystal.", oKiller, FALSE);}
        string sText = "You can never defeat me!  I will return!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_zaltosd");
        }
    else if (GetStringLeft(GetTag(OBJECT_SELF),12)=="LD_HOBGOBLIN"){
        if (GetTag(OBJECT_SELF) == "LD_HOBGOBLINB"){
          if (GetLocalInt(oQuest, "qs1d11") == 1){
            SetLocalInt(oQuest, "qs1d11", 0);
            CreateItemOnObject("alter_qst_rimyr1", oKiller, 1);
            FloatingTextStringOnCreature("You have slain Baol.", oKiller, FALSE);}}
        else {
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "vegnar");
            int iCurrent = GetLocalInt(oBook, "r_vegnar");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_vegnar", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_vegnar", 0);
                    SendMessageToPC(oKiller,"Your faction with the Vegnar Dwarves is better.");
                    SetLocalInt(oBook, "vegnar", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_vegnar"), 1);}
                else {}
        }}}

    else if (GetStringLeft(GetTag(OBJECT_SELF),9)=="LD_GAGORC"){
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "faraldor");
            int iCurrent = GetLocalInt(oBook, "r_faraldor");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_faraldor", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_faraldor", 0);
                    SendMessageToPC(oKiller,"Your faction with the Faraldor Elves is better.");
                    SetLocalInt(oBook, "faraldor", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_faraldor"), 1);}
                else {}
            {
            int iLevel = GetLocalInt(oBook, "pixie");
            int iCurrent = GetLocalInt(oBook, "r_pixie");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_pixie", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_pixie", 0);
                    SendMessageToPC(oKiller,"Your faction with the Pixies is better.");
                    SetLocalInt(oBook, "pixie", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_pixie"), 1);}
                else {}}
            {
            SendMessageToPC(oKiller,"Your faction with the Vrugar Orcs is worse.");
            int iVrugar = GetReputation(GetObjectByTag("fac_orcs"), oKiller);
            SetLocalInt(oBook, "orcs", iVrugar);

            SendMessageToPC(oKiller,"Your faction with the Grogor Orcs is worse.");
            int iGrogor = GetLocalInt(oBook, "grogor");
            int iAdjust = iGrogor - 5;
            if (iAdjust < 6){SetLocalInt(oBook, "grogor", 0);}
            else {SetLocalInt(oBook, "grogor", iAdjust);}
            AdjustReputation(oKiller, GetObjectByTag("fac_grogor"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_grogor"), iAdjust);}
        }}

    else if (GetTag(OBJECT_SELF) == "LD_PIXIE"){
        if (GetSubRace(oKiller) != "Vampire"){
            {
            SendMessageToPC(oKiller,"Your faction with the Pixies is worse.");
            int iNixie = GetReputation(GetObjectByTag("fac_pixie"), oKiller);
            SetLocalInt(oBook, "pixie", iNixie);}
            {
            int iLevel = GetLocalInt(oBook, "orcs");
            int iCurrent = GetLocalInt(oBook, "r_orcs");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_orcs", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_orcs", 0);
                    SendMessageToPC(oKiller,"Your faction with the Vrugar Orcs is better.");
                    SetLocalInt(oBook, "orcs", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_orcs"), 1);}
                else {}}
        }}

    else if (GetTag(OBJECT_SELF) == "ld_flayspider"){
       object oFdoor1 = GetObjectByTag("flayer_bars_4");
       object oFdoor2 = GetObjectByTag("flayer_bars_2");
       AssignCommand(oFdoor2, ActionOpenDoor(OBJECT_SELF));
       AssignCommand(oFdoor2, PlayAnimation(ANIMATION_PLACEABLE_OPEN));
       AssignCommand(oFdoor1, ActionOpenDoor(OBJECT_SELF));
       AssignCommand(oFdoor1, PlayAnimation(ANIMATION_PLACEABLE_OPEN));}

    else if (GetTag(OBJECT_SELF) == "LD_SPIDGIANT"){
            {
            location lSpawn = GetLocation(OBJECT_SELF);
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}}}
        }
    else if (GetTag(OBJECT_SELF) == "LD_JCRAWLER"){
            {
            location lSpawn = GetLocation(OBJECT_SELF);
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}}}
        }
    else if (GetStringLeft(GetTag(OBJECT_SELF),9)=="LD_HOBBIT"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Drogo Hobbits is worse.");
        int iBrushwood = GetReputation(GetObjectByTag("fac_drogo"), oKiller);
        SetLocalInt(oBook, "drogo", iBrushwood);
            SendMessageToPC(oKiller,"Your faction with the Brushwood Halflings is worse.");
            int iDrogo = GetLocalInt(oBook, "brushwood");
            int iAdjust = iDrogo - 5;
            if (iAdjust < 6){SetLocalInt(oBook, "brushwood", 0);}
            else {SetLocalInt(oBook, "brushwood", iAdjust);}
            AdjustReputation(oKiller, GetObjectByTag("fac_brushwood"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_brushwood"), iAdjust);
        int iLevel = GetLocalInt(oBook, "nilas");
        int iCurrent = GetLocalInt(oBook, "r_nilas");
        int iNew = iCurrent + 1;
        SetLocalInt(oBook, "r_nilas", iNew);
            if (iCurrent >= 8){
                int nFaction = iLevel + 1;
                SetLocalInt(oBook, "r_nilas", 0);
                SendMessageToPC(oKiller,"Your faction with the Nilas Drows is better.");
                SetLocalInt(oBook, "nilas", nFaction);
                AdjustReputation(oKiller, GetObjectByTag("fac_nilas"), 1);}
            else {}
        }}
    else if (GetStringLeft(GetTag(OBJECT_SELF),11)=="grogor_cit_"){
        if (GetSubRace(oKiller) != "Vampire"){
        SendMessageToPC(oKiller,"Your faction with the Grogor Orcs is worse.");
        int iGrogor = GetReputation(GetObjectByTag("fac_grogor"), oKiller);
        SetLocalInt(oBook, "grogor", iGrogor);
            SendMessageToPC(oKiller,"Your faction with the Vrugar Orcs is worse.");
            int iOrcs = GetLocalInt(oBook, "orcs");
            int iAdjust = iOrcs - 5;
            SetLocalInt(oBook, "orcs", iAdjust);
            AdjustReputation(oKiller, GetObjectByTag("fac_orcs"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_orcs"), iAdjust);
        }}
    else if (GetTag(OBJECT_SELF) == "LD_BTLBOMB"){
            {
            location lSpawn = GetLocation(OBJECT_SELF);
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}}}
        }
    else if (GetTag(OBJECT_SELF) == "LD_BTLSTAG"){
            {
            location lSpawn = GetLocation(OBJECT_SELF);
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_beetle", lSpawn, FALSE);}}}
        }
    else if (GetTag(OBJECT_SELF)=="ld_maharajah"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_raksha");
        }
    else if (GetTag(OBJECT_SELF)=="ld_cyclops"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_cyclops");
        }
    else if (GetTag(OBJECT_SELF) == "LD_BTLFIRE"){
            {
            location lSpawn = GetLocation(OBJECT_SELF);
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bbeetle", lSpawn, FALSE);}}}
        }
    else if (GetStringLeft(GetTag(OBJECT_SELF),7)=="LD_VANK"){
        int nQuest = GetLocalInt(oQuest, "qs1g");
        if (nQuest == 1){
            {int nRandom = d8(1);
            if (nRandom == 1){
            SetLocalInt(oQuest, "qs1g", 2);
            CreateItemOnObject("qs1g_item8", oKiller, 1);}}}
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "grogor");
            int iCurrent = GetLocalInt(oBook, "r_grogor");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_grogor", iNew);
                if (iCurrent >= 8){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_grogor", 0);
                    SendMessageToPC(oKiller,"Your faction with the Grogor Orcs is better.");
                    SetLocalInt(oBook, "grogor", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_grogor"), 1);}
                else {}
        }}
    else if (GetTag(OBJECT_SELF) == "LD_DEDRYCOW"){
        if (GetSubRace(oKiller) != "Vampire"){
            SendMessageToPC(oKiller,"Your faction with the Dedry Gnomes is worse.");
            SendMessageToPC(oKiller,"Your should not slay their cattle.");
            int iDedry = GetLocalInt(oBook, "dedry");
            int iAdjust = iDedry - 5;
            SetLocalInt(oBook, "dedry", iAdjust);
            AdjustReputation(oKiller, GetObjectByTag("fac_dedry"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_dedry"), iAdjust);
        }}
    else if (GetTag(OBJECT_SELF) == "DJ_OX_ALDUR"){
        if (GetSubRace(oKiller) != "Vampire"){
            SendMessageToPC(oKiller,"Your faction with the Aldur Humans is worse.");
            SendMessageToPC(oKiller,"Your should not slay his ox.");
            int iAldur = GetLocalInt(oBook, "aldur");
            int iAdjust = iAldur - 5;
            SetLocalInt(oBook, "aldur", iAdjust);
            AdjustReputation(oKiller, GetObjectByTag("fac_aldur"), -100);
            AdjustReputation(oKiller, GetObjectByTag("fac_aldur"), iAdjust);
        }}
    else if (GetTag(OBJECT_SELF) == "ld_quascar"){
            {
            location lDied = GetLocation(OBJECT_SELF);
            location lHelp = GetLocation(GetWaypointByTag("save_manscorp"));
            CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrpk", lHelp, FALSE);
            CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrpk", lHelp, FALSE);
            CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrpk", lHelp, FALSE);
            CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_quasco");}
        }

    else if (GetTag(OBJECT_SELF) == "LD_HVQUEEN"){
            {
            location lDied = GetLocation(OBJECT_SELF);
            CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_hvqueen");}
        }

    else if (GetStringLeft(GetTag(OBJECT_SELF),9) == "LD_SPHINX"){
        if (GetSubRace(oKiller) != "Vampire"){
          if (GetLocalInt(oQuest, "qs1d8") == 1){
            {int nRandom = d4(1);
            if (nRandom == 1){
              SetLocalInt(oQuest, "qs1d8", 0);
              CreateItemOnObject("alter_qst_malad3", oKiller, 1);
              FloatingTextStringOnCreature("You found the Eye of Sin.", oKiller, FALSE);}}}
        SendMessageToPC(oKiller,"Your faction with the Sphinx is worse.");
        int iSphinx = GetReputation(GetObjectByTag("fac_sphinx"), oKiller);
        SetLocalInt(oBook, "sphinx", iSphinx);
        }}

    else if (GetTag(OBJECT_SELF)=="LD_DRAGON_LICH"){
        string sText = "Fool!  I am eternal!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        location lGo = GetLocation(GetWaypointByTag("dracolich_spawn"));
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_FIRESTORM), lDied);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lGo, FALSE, "spw_dracolich");
        }

    else if (GetTag(OBJECT_SELF)=="ld_glomarin"){
        string sText = "Fool!  You are too late!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        object oWorker = GetObjectByTag("glom_help");
        DestroyObject(GetObjectByTag("glom_suit"));
        location lDied = GetLocation(GetWaypointByTag("glom_spawnpnt2"));
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), lDied);
        AssignCommand(oWorker, DelayCommand(2.0, CreateObject2(OBJECT_TYPE_CREATURE, "glorm_golem", lDied)));
        }

    else if (GetTag(OBJECT_SELF)=="glorm_golem"){
        if (GetLocalInt(oQuest, "qs1d12") == 1){
            SetLocalInt(oQuest, "qs1d12", 0);
            CreateItemOnObject("alter_qst_uroni4", oKiller, 1);
            FloatingTextStringOnCreature("You've got Glomarin's ring.", oKiller, FALSE);}
        string sText = "Noooooooo!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lAct = GetLocation(GetWaypointByTag("glom_effect"));
        location lDied1 = GetLocation(GetWaypointByTag("glom_spawnpnt2"));
        location lDied2 = GetLocation(GetWaypointByTag("glom_spawnpnt1"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_glomarin", lDied2, FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "glom_suit", lDied1, FALSE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_LIGHTNING_M), lAct);
        }

    else if (GetTag(OBJECT_SELF)=="LD_TURANWAR"){
        if (GetLocalInt(oQuest, "qs1d3") == 1){
            SetLocalInt(oQuest, "qs1d3", 0);
            CreateItemOnObject("alter_qst_shyva1", oKiller, 1);
            FloatingTextStringOnCreature("You found Captain Tork's helmet.", oKiller, FALSE);}}

    else if (GetTag(OBJECT_SELF)=="LD_YARBEK"){
        if (GetLocalInt(oQuest, "qs1d12") == 1){
            SetLocalInt(oQuest, "qs1d12", 0);
            CreateItemOnObject("alter_qst_uroni2", oKiller, 1);
            FloatingTextStringOnCreature("You found the Cloak of Uronia.", oKiller, FALSE);}
        string sText = "Nooo!  You may have won today, but Dedry will be mine again!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_yarbek");
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "dedry");
            int nFaction = iLevel + 1;
            SendMessageToPC(oKiller,"Your faction with the Dedry Gnomes is better.");
            SetLocalInt(oBook, "dedry", nFaction);
            AdjustReputation(oKiller, GetObjectByTag("fac_dedry"), 1);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_MINDFLAYER"){
        if (GetIsPC(GetLastKiller())){
            GenerateLowTreasure(OBJECT_SELF);
            CreatePotion(OBJECT_SELF, OBJECT_SELF, 1);
            CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF);
            SetLocalInt(OBJECT_SELF, "newloot1", 1);
            SetLocalInt(OBJECT_SELF, "newloot2", 1);
            ExecuteScript("loot_new_list", OBJECT_SELF);}
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "driders");
            int iCurrent = GetLocalInt(oBook, "r_driders");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_driders", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_driders", 0);
                    SendMessageToPC(oKiller,"Your faction with the Driders is better.");
                    SetLocalInt(oBook, "driders", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_driders"), 1);}
                else {}
            }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),14) == "LD_MINDFLAYER2"){
        if (GetTag(OBJECT_SELF) == "LD_MINDFLAYER2K"){
            location lDied = GetLocation(OBJECT_SELF);
            CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_flaykey");}
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "driders");
            int iCurrent = GetLocalInt(oBook, "r_driders");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_driders", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_driders", 0);
                    SendMessageToPC(oKiller,"Your faction with the Driders is better.");
                    SetLocalInt(oBook, "driders", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_driders"), 1);}
                else {}
            }}

    else if (GetTag(OBJECT_SELF) == "LD_SILDRIDER"){
        if (GetIsPC(GetLastKiller())){
            GenerateLowTreasure(OBJECT_SELF);
            CreateItemOnObject("NW_IT_GOLD001", OBJECT_SELF, 16);
            CreateGem(OBJECT_SELF, OBJECT_SELF, TREASURE_TYPE_LOW, 1);}
        if (GetSubRace(oKiller) != "Vampire"){
            SendMessageToPC(oKiller,"Your faction with the Driders is worse.");
            int iDriders = GetReputation(GetObjectByTag("fac_driders"), oKiller);
            SetLocalInt(oBook, "driders", iDriders);}}

    else if (GetStringLeft(GetTag(OBJECT_SELF),9) == "LD_DRIDER"){
        if (GetSubRace(oKiller) != "Vampire"){
          if (GetLocalInt(oQuest, "qs1d10") == 1){
            {int nRandom = d4(1);
            if (nRandom == 1){
              SetLocalInt(oQuest, "qs1d10", 0);
              CreateItemOnObject("alter_qst_puril1", oKiller, 1);
              FloatingTextStringOnCreature("You found the Talisman of the Spider.", oKiller, FALSE);}}}
            SendMessageToPC(oKiller,"Your faction with the Driders is worse.");
            int iDriders = GetReputation(GetObjectByTag("fac_driders"), oKiller);
            SetLocalInt(oBook, "driders", iDriders);}}

    else if (GetTag(OBJECT_SELF) == "LD_OLARIUS"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_olarius");
        if (GetSubRace(oKiller) != "Vampire"){
            SendMessageToPC(oKiller,"Your faction with the Driders is worse.");
            int iDriders = GetReputation(GetObjectByTag("fac_driders"), oKiller);
            SetLocalInt(oBook, "driders", iDriders);}}

    else if ((GetStringLeft(GetTag(OBJECT_SELF),9)=="LD_BANDIT") || (GetStringLeft(GetTag(OBJECT_SELF),9)=="DJ_BANDIT")){
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "dedry");
            int iCurrent = GetLocalInt(oBook, "r_dedry");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_dedry", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_dedry", 0);
                    SendMessageToPC(oKiller,"Your faction with the Dedry Gnomes is better.");
                    SetLocalInt(oBook, "dedry", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_dedry"), 1);}
                else {}
        }}

    else if (GetStringLeft(GetTag(OBJECT_SELF),10)=="ld_pirate_"){
        int nQuest = GetLocalInt(oQuest, "qs1g");
        if (nQuest == 1){
            {int nRandom = d4(1);
            if (nRandom == 1){
            SetLocalInt(oQuest, "qs1g", 2);
            CreateItemOnObject("qs1g_item9", oKiller, 1);}}}
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "duergar");
            int iCurrent = GetLocalInt(oBook, "r_duergar");
            int iNew = iCurrent + 1;
            SetLocalInt(oBook, "r_duergar", iNew);
                if (iCurrent >= 12){
                    int nFaction = iLevel + 1;
                    SetLocalInt(oBook, "r_duergar", 0);
                    SendMessageToPC(oKiller,"Your faction with the Duergars is better.");
                    SetLocalInt(oBook, "duergar", nFaction);
                    AdjustReputation(oKiller, GetObjectByTag("fac_duergar"), 1);}
                else {}
        }}

    else if (GetTag(OBJECT_SELF)=="LD_HORFILAD"){
        if (GetLocalInt(oQuest, "qs1d11") == 1){
            SetLocalInt(oQuest, "qs1d11", 0);
            CreateItemOnObject("alter_qst_rimyr2", oKiller, 1);
            FloatingTextStringOnCreature("You've found Dareg's Sword.", oKiller, FALSE);}
        if (GetLocalInt(oQuest, "qs1d7") == 2){
            SetLocalInt(oQuest, "qs1d7", 0);
            CreateItemOnObject("alter_qst_torm1", oKiller, 1);
            FloatingTextStringOnCreature("You found Horfilad's wand.", oKiller, FALSE);}
        string sText = "Aaargh!  Fool!  The Citadel will help me rise again!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_horfilad");
        if (GetSubRace(oKiller) != "Vampire"){
            int iLevel = GetLocalInt(oBook, "nilas");
            int nFaction = iLevel + 1;
            SendMessageToPC(oKiller,"Your faction with the Nilas Drows is better.");
            SetLocalInt(oBook, "nilas", nFaction);
            AdjustReputation(oKiller, GetObjectByTag("fac_nilas"), 1);}
        }

    else if (GetTag(OBJECT_SELF)=="LD_TARAK"){
        string sText = "Aaargh!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_tarak");
        }

    else if (GetTag(OBJECT_SELF)=="ld_sapelek"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_sapelek");
        }

    else if (GetTag(OBJECT_SELF)=="LD_REANIMDE"){
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_reanimde");
        }

    else if (GetTag(OBJECT_SELF)=="LD_MARCULOS"){
        string sText = "Get them my pets!!!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        DestroyObject(GetObjectByTag("citadel_cage"), 1.0);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_marculos");
        }

    else if (GetTag(OBJECT_SELF)=="LD_COLLECT"){
        string sText = "Arrgh!  Radhael will show you the true meaning of pain!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp1", GetLocation(GetObjectByTag("demon_light1")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp1", GetLocation(GetObjectByTag("demon_light2")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp1", GetLocation(GetObjectByTag("demon_light3")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp1", GetLocation(GetObjectByTag("demon_light4")), FALSE);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_FIRESTORM), GetLocation(GetWaypointByTag("demon_portal1")));
        }

    else if (GetTag(OBJECT_SELF)=="ld_radhael"){
        if (GetLocalInt(oQuest, "qs1d8") == 1){
            SetLocalInt(oQuest, "qs1d8", 0);
            CreateItemOnObject("alter_qst_malad4", oKiller, 1);
            FloatingTextStringOnCreature("You have the severed hand of Radhael.", oKiller, FALSE);}
        string sText = "Your soul will be mine one day!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp2", GetLocation(GetObjectByTag("demon_light5")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp2", GetLocation(GetObjectByTag("demon_light6")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp2", GetLocation(GetObjectByTag("demon_light7")), FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "demon_lightp2", GetLocation(GetObjectByTag("demon_light8")), FALSE);
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_FIRESTORM), GetLocation(GetWaypointByTag("demon_portal2")));
        }

    else if (GetTag(OBJECT_SELF)=="LD_GRANDULOY"){
          if (GetSubRace(oKiller) == "Minotaur"){
              if (d20(1) == 1){ExecuteScript("loot_spwn_ench", OBJECT_SELF);}}
        }
    else if ((GetTag(OBJECT_SELF)=="DJ_MINOTAURB") ||
             (GetTag(OBJECT_SELF)=="DJ_MINOTAURS") ||
             (GetTag(OBJECT_SELF)=="DJ_MINOTAURW")){
        if (GetSubRace(oKiller) != "Vampire"){
          if (GetSubRace(oKiller) == "Minotaur"){
              if (d20(1) == 1){ExecuteScript("loot_spwn_ench", OBJECT_SELF);}}
          if (GetLocalInt(oQuest, "qs1d9") == 1){
            {int nRandom = d6(1);
            if (nRandom == 1){
              SetLocalInt(oQuest, "qs1d9", 0);
              CreateItemOnObject("alter_qst_belul2", oKiller, 1);
              FloatingTextStringOnCreature("You found the Axe of Sickness.", oKiller, FALSE);}}}}
        }

    else if ((GetTag(OBJECT_SELF)=="LD_OGRELORD") || (GetTag(OBJECT_SELF)=="LD_OGRECHIEF") || (GetTag(OBJECT_SELF)=="LD_VAULTOGRE")){
          if (GetSubRace(oKiller) == "Ogre"){
              if (d20(1) == 1){ExecuteScript("loot_spwn_ench", OBJECT_SELF);}}
        }

    else if (GetTag(OBJECT_SELF) == "LD_SCORN"){
        if (GetSubRace(oKiller) != "Vampire"){
          if ((GetLocalInt(oQuest, "qs1d9") == 1) && (GetLocalInt(OBJECT_SELF, "scorn") == 1)){
            {int nRandom = d6(1);
            if (nRandom == 1){
              SetLocalInt(oQuest, "qs1d9", 0);
              CreateItemOnObject("alter_qst_belul3", oKiller, 1);
              FloatingTextStringOnCreature("You found the Tome of Radhael.", oKiller, FALSE);}}}}
        if (GetIsPC(GetLastKiller())){
            GenerateLowTreasure(OBJECT_SELF);
            GenerateLowTreasure(OBJECT_SELF);
            CreateItemOnObject("brokenweapon", OBJECT_SELF, 1);}}



    else if (GetStringLeft(GetTag(OBJECT_SELF),10) == "LD_HELLION"){
        location lDied = GetLocation(OBJECT_SELF);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_FLAME_M), lDied);
        }

    else if (GetTag(OBJECT_SELF) == "ld_taresa"){
        string sText = "You are not very nice!";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_clay", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_shroom", lDied, FALSE);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_drow", lDied, FALSE);
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", GetLocation(OBJECT_SELF), FALSE, "spw_taresa");
        }

    else if (GetTag(OBJECT_SELF) == "ld_skel_knight2"){
        object oChess = GetObjectByTag("ld_chess_bishop");
        SetLocalInt(oChess, "chess_run", 1);
        }

    else if (GetTag(OBJECT_SELF) == "LD_LICH2"){
        object oChess = GetObjectByTag("ld_chess_king");
        SetLocalInt(oChess, "chess_run", 1);
        }

    else if (GetTag(OBJECT_SELF) == "LD_SUCCUBUS"){
        if (GetLocalInt(oQuest, "qs1d1") == 1){
            SetLocalInt(oQuest, "qs1d1", 0);
            CreateItemOnObject("altar_quest_cal2", oKiller, 1);
            FloatingTextStringOnCreature("You got the head of a demon.", oKiller, FALSE);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_Gorpath"){
        if (GetLocalInt(oQuest, "qs1d2") == 1){
            SetLocalInt(oQuest, "qs1d2", 0);
            CreateItemOnObject("altar_quest_cal3", oKiller, 1);
            FloatingTextStringOnCreature("You got the skull of Gorpath.", oKiller, FALSE);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_MANTICORE"){
        int nQuest = GetLocalInt(oQuest, "qs1e");
        if (nQuest == 1){
            CreateItemOnObject("manticore_pelt", oKiller, 1);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_RATMANM"){
        int nQuest = GetLocalInt(oQuest, "qs1g");
        if (nQuest == 1){
            SetLocalInt(oQuest, "qs1g", 2);
            CreateItemOnObject("qs1g_item4", oKiller, 1);}
        }

    else if (GetTag(OBJECT_SELF) == "LD_LICHLORD"){
        string sText = "You play the game quite well.  You may pass.";
        ActionSpeakString (sText, TALKVOLUME_TALK);
        location lDied = GetLocation(OBJECT_SELF);
        object oDoor = GetObjectByTag("citlvl5_block");
        AssignCommand(oDoor, ActionOpenDoor(OBJECT_SELF));
        AssignCommand(oDoor, PlayAnimation(ANIMATION_PLACEABLE_OPEN));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", GetLocation(OBJECT_SELF), FALSE, "spw_lichlord");
        }

    else if (GetStringLeft(GetTag(OBJECT_SELF),6)=="LD_ANT"){
        if (GetSubRace(oKiller) != "Vampire"){
          if (GetTag(OBJECT_SELF) == "LD_ANTQUN"){
            if (GetLocalInt(oQuest, "qs1d9") == 1){
              SetLocalInt(oQuest, "qs1d9", 0);
              CreateItemOnObject("alter_qst_belul1", oKiller, 1);
              FloatingTextStringOnCreature("You've have taken the heart of the ant queen.", oKiller, FALSE);}}
        int nCash = GetLocalInt(oQuest, "qs1a");
        if (nCash > 0){
        int nGold = nCash + 1;
        SetLocalInt(oQuest, "qs1a", nGold);}
        int iLevel = GetLocalInt(oBook, "nilas");
        int iCurrent = GetLocalInt(oBook, "r_nilas");
        int iNew = iCurrent + 1;
        SetLocalInt(oBook, "r_nilas", iNew);
            if (iCurrent >= 12){
                int nFaction = iLevel + 1;
                SetLocalInt(oBook, "r_nilas", 0);
                SendMessageToPC(oKiller,"Your faction with the Nilas Drows is better.");
                SetLocalInt(oBook, "nilas", nFaction);
                AdjustReputation(oKiller, GetObjectByTag("fac_nilas"), 1);}
            else {}
        }}





    else{}}}

void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation=TRUE)
{
    CreateObject(nObjectType, sTemplate, lLocation, bUseAppearAnimation);
    return;
}
