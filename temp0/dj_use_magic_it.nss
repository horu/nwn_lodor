// This script allows an area to have a magic item useful
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();
object oBoat = GetNearestObjectByTag("lodor_wtch_boat", oPC);
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
object oBook = GetItemPossessedBy(oPC, "faction_report");

if (GetIsPC(oPC)){

    if (GetTag(OBJECT_SELF) == "trg_talisman"){
        SetLocalInt(oPC, "mag_talisman", 1);}

    else if (GetTag(OBJECT_SELF) == "trap_for_mages"){
        SetLocalInt(oPC, "scrolltrap", 1);}

    else if (GetTag(OBJECT_SELF) == "treasure_dig"){
        SetLocalInt(oPC, "treasuredig", 1);}

    else if (GetTag(OBJECT_SELF) == "trg_zaltoskey"){
        SetLocalInt(oPC, "zaltos", 1);}

    else if (GetTag(OBJECT_SELF) == "rune_trigger1"){
        SetLocalInt(oPC, "runehead", 1);}

    else if (GetTag(OBJECT_SELF) == "rune_trigger2"){
        SetLocalInt(oPC, "runehead", 2);}

    else if (GetTag(OBJECT_SELF) == "rune_trigger3"){
        SetLocalInt(oPC, "runehead", 3);}

    else if (GetTag(OBJECT_SELF) == "catcacomb_say"){
        if (GetLocalInt(oPC, "catacomb") == 1){}
        else {SetLocalInt(oPC, "catacomb", 1);
           FloatingTextStringOnCreature("This place must be long forgotten.  No one will mind if I help myself.", oPC, FALSE);}}

    else if (GetTag(OBJECT_SELF) == "jahare_say"){
        if (GetLocalInt(oPC, "jahare") == 1){}
        else {SetLocalInt(oPC, "jahare", 1);
           FloatingTextStringOnCreature("It is too late for her.  She'll be dead soon.", oPC, FALSE);}}

    else if (GetTag(OBJECT_SELF) == "boat_sshore1"){
        SetLocalInt(oPC, "highseas", 1);
        SetLocalInt(oPC, "sailaway", 1);
        if (oBoat != OBJECT_INVALID){
          FloatingTextStringOnCreature("You are close enough to the boat for travel.", oPC, FALSE);
          DelayCommand(2.0, FloatingTextStringOnCreature("Stay clear of the boat if you are not going out to sea.", oPC, FALSE));}
        else {
          FloatingTextStringOnCreature("Where is the boat?", oPC, FALSE);}}

    else if (GetTag(OBJECT_SELF) == "boat_sshore2"){
        SetLocalInt(oPC, "highseas", 2);
        SetLocalInt(oPC, "sailaway", 2);
        if (oBoat != OBJECT_INVALID){
          FloatingTextStringOnCreature("You are close enough to the boat for travel.", oPC, FALSE);
          DelayCommand(2.0, FloatingTextStringOnCreature("Stay clear of the boat if you are not going out to sea.", oPC, FALSE));}
        else {
          FloatingTextStringOnCreature("Where is the boat?", oPC, FALSE);}}

    else if (GetTag(OBJECT_SELF) == "boat_sshoresay"){
        if (GetLocalInt(oPC, "seasay476") == 1){}
        else {SetLocalInt(oPC, "seasay476", 1);
           DelayCommand(4.0, FloatingTextStringOnCreature("You can see a small island in the distance.", oPC, FALSE));}}

    else if (GetTag(OBJECT_SELF) == "old_cit_fnt2"){
        if (GetLocalInt(oPC, "funtcity") == 1){}
        else {SetLocalInt(oPC, "funtcity", 1);
           FloatingTextStringOnCreature("This fountain seems to have dried up recently.", oPC, FALSE);}}

    else if (GetTag(OBJECT_SELF) == "quest_1b_trg"){
        SetLocalInt(oPC, "quest1b", 1);}

    else if (GetTag(OBJECT_SELF) == "quest_1b_trg2"){
        if (GetLocalInt(oQuest, "qs1b") == 3){
            SetLocalInt(oQuest, "qs1b", 4);}}

    else if (GetTag(OBJECT_SELF) == "quest_1c_trg2"){
        if ((GetLocalInt(oQuest, "qs1c") == 2) && (GetItemPossessedBy(oPC, "pultok_amulet") != OBJECT_INVALID)){
            SetLocalInt(oQuest, "qs1c", 3);
            object oAlter = GetObjectByTag("altar_oweodd");
            DestroyObject(GetItemPossessedBy(oPC, "pultok_amulet"));
            string sSayThis = "You are quite brave facing Pultok.  You may now enter the Keep.";
            AssignCommand(oAlter, SpeakString(sSayThis));
            AdjustReputation(oPC, GetObjectByTag("fac_firebrand"), -100);
            AdjustReputation(oPC, GetObjectByTag("fac_firebrand"), 15);
            SetLocalInt(oBook,"firebrand", 15);}}

    else if (GetTag(OBJECT_SELF) == "trg_qsf1"){
        if ((GetLocalInt(oQuest, "qs1f") == 2) && (GetItemPossessedBy(oPC, "ld_qs1f_item") != OBJECT_INVALID)){
            AdjustReputation(oPC, GetObjectByTag("fac_drgblue"), 50);}}

    else if (GetTag(OBJECT_SELF) == "trg_qsh1_drg"){
        if (GetItemPossessedBy(oPC, "qs1h_item1") != OBJECT_INVALID){
            AdjustReputation(oPC, GetObjectByTag("fac_drgblack"), 50);}}

    else if (GetTag(OBJECT_SELF) == "quest_1i_trg"){
        if (GetLocalInt(oQuest, "qs1i") == 1){
            SetLocalInt(oQuest, "qs1i", 2);
            FloatingTextStringOnCreature("You have found a piece of molten rock.", oPC, TRUE);
            CreateItemOnObject("qs1i_item", oPC, 1);}}

    else if (GetTag(OBJECT_SELF) == "trg_qs1m"){
        if (GetLocalInt(oQuest, "qs1m") == 2){
            SetLocalInt(oPC, "qs1mpc", 1);
            FloatingTextStringOnCreature("This must be the old Malad altar.", oPC, TRUE);}}










    else {}
}
else {}
}
