// This script allows an area to have a magic item useful
#include "nw_i0_tool"
void main()
{
object oPC = GetExitingObject();
object oBoat = GetNearestObjectByTag("lodor_wtch_boat", oPC);
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

if (GetIsPC(oPC)){

    if (GetTag(OBJECT_SELF) == "trg_talisman"){
        SetLocalInt(oPC, "mag_talisman", 0);}

    else if (GetTag(OBJECT_SELF) == "trap_for_mages"){
        SetLocalInt(oPC, "scrolltrap", 0);}

    else if (GetTag(OBJECT_SELF) == "treasure_dig"){
        SetLocalInt(oPC, "treasuredig", 0);}

    else if (GetTag(OBJECT_SELF) == "trg_zaltoskey"){
        SetLocalInt(oPC, "zaltos", 0);}

    else if (GetStringLeft(GetTag(OBJECT_SELF),12)=="rune_trigger"){
        SetLocalInt(oPC, "runehead", 0);}

    else if (GetTag(OBJECT_SELF) == "boat_sshore1"){
        SetLocalInt(oPC, "highseas", 0);
        SetLocalInt(oPC, "sailaway", 0);
        if (oBoat != OBJECT_INVALID){
          SendMessageToPC(oPC,"You are not close enough to the boat for sea travel.");}
        else {}}

    else if (GetTag(OBJECT_SELF) == "boat_sshore2"){
        SetLocalInt(oPC, "highseas", 0);
        SetLocalInt(oPC, "sailaway", 0);
        if (oBoat != OBJECT_INVALID){
          SendMessageToPC(oPC,"You are not close enough to the boat for sea travel.");}
        else {}}

    else if (GetTag(OBJECT_SELF) == "trg_water_old"){
        if (GetLocalInt(oPC, "old_water") == 1){
          SendMessageToPC(oPC,"The gills on your neck seemed to have vanished.");}
        SetLocalInt(oPC, "old_water", 0);}

    else if (GetTag(OBJECT_SELF) == "trg_fly_cit"){
        if (GetLocalInt(oPC, "fly_water") == 1){
          SendMessageToPC(oPC,"The water's effects seemed to have worn off.");}
        SetLocalInt(oPC, "fly_water", 0);}

    else if (GetTag(OBJECT_SELF) == "quest_1b_trg"){
        SetLocalInt(oPC, "quest1b", 0);}

    else if (GetTag(OBJECT_SELF) == "quest_1b_trg2"){
        if (GetLocalInt(oQuest, "qs1b") == 4){
            AdjustReputation(oPC, GetObjectByTag("fac_vampire"), -100);
            SetLocalInt(oQuest, "qs1b", 0);}}

    else if (GetTag(OBJECT_SELF) == "trg_qsf1"){
        if (GetLocalInt(oQuest, "qs1f") != 3){
            AdjustReputation(oPC, GetObjectByTag("fac_drgblue"), -100);}}

    else if (GetTag(OBJECT_SELF) == "trg_qsh1_drg"){
        if (GetLocalInt(oQuest, "qs1h") < 7){
            AdjustReputation(oPC, GetObjectByTag("fac_drgblack"), -100);}}

    else if (GetTag(OBJECT_SELF) == "trg_qs1h_item2"){
        DestroyObject(GetItemPossessedBy(oPC, "qs1h_item2"));}

    else if (GetTag(OBJECT_SELF) == "trg_qs1m"){
        if (GetLocalInt(oQuest, "qs1m") == 2){
            SetLocalInt(oPC, "qs1mpc", 0);}}



    else {}
}
else {}
}
