//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{

object oPC = GetPCSpeaker();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

// Tavern Keeper In The Drunken Depths To See if they can enter the cellar.
    if((GetLocalInt(oPC, "dug_cellar") > 2) && (GetTag(OBJECT_SELF) == "duergar_cit_9")){
        return TRUE;}

// Old City Dock
    else if((GetLocalInt(oPC, "old_water") == 1) && (GetTag(OBJECT_SELF) == "dock_oldcit")){
        return TRUE;}

// Citadel Platform
    else if((GetLocalInt(oPC, "fly_water") == 1) && (GetTag(OBJECT_SELF) == "dock_cit")){
        return TRUE;}

// QUEST 1A  --  Drow Ant Quest
if ((GetTag(OBJECT_SELF) == "nilas_cit_1") && (GetLocalInt(oQuest, "qs1a") > 1)){
        return TRUE;}

// QUEST 1B  --  The Vampire Quest
if ((GetTag(OBJECT_SELF) == "ld_vasestra") && (GetLocalInt(oQuest, "qs1b") == 4 )){
        return TRUE;}

// QUEST 1C  --  Firebrand Enter Keep Quest
if ((GetTag(OBJECT_SELF) == "firebrand_cit_kn") && (GetLocalInt(oQuest, "qs1c") == 4 )){
        return TRUE;}

// QUEST 1E  --  Grogor Manticore Pelt Quest
if ((GetTag(OBJECT_SELF) == "grogor_cit_4") && (GetLocalInt(oQuest, "qs1e") == 1)){
        return TRUE;}

// QUEST 1F  --  Crystal Grinder Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BLU") && (GetItemPossessedBy(oPC, "ld_qs1f_item") == OBJECT_INVALID)){
        return TRUE;}

// QUEST 1G  --  +1 Weapon Quest
if ((GetTag(OBJECT_SELF) == "brushwood_cit_11") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "vegnar_cit_2") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "faraldor_cit_hb") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "brownie_cit_19") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "dedry_cit_pot") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "quickling_cit_3") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "nilas_cit_6") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "grogor_cit_1") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "duergar_cit_3") && (GetHitDice(oPC) < 3) ||
    (GetTag(OBJECT_SELF) == "aldur_cit_4") && (GetHitDice(oPC) < 3)){
        return TRUE;}

// QUEST 1H  --  Magic Recharge Quest
if ((GetStringLeft(GetTag(OBJECT_SELF),9)=="LD_SPHINX") && (GetItemPossessedBy(oPC, "qs1h_item") != OBJECT_INVALID)){
        return TRUE;}

// QUEST 1I  --  Armor Craft Book
if ((GetTag(OBJECT_SELF) == "firebrand_cit_nm") && (GetItemPossessedBy(oPC, "qs1i_item") != OBJECT_INVALID)){
        return TRUE;}

// QUEST 1J  --  Random Quest Generator
if (((GetTag(OBJECT_SELF) == "faraldor_cit_br4") && (GetLocalInt(oQuest, "qs1j") == 1)) ||
    ((GetTag(OBJECT_SELF) == "nilas_cit_gob1") && (GetLocalInt(oQuest, "qs1j") == 2)) ||
    ((GetTag(OBJECT_SELF) == "vegnar_cit_8") && (GetLocalInt(oQuest, "qs1j") == 3)) ||
    ((GetTag(OBJECT_SELF) == "dedry_cit_cler") && (GetLocalInt(oQuest, "qs1j") == 4)) ||
    ((GetTag(OBJECT_SELF) == "brushwood_cit_5") && (GetLocalInt(oQuest, "qs1j") == 5)) ||
    ((GetTag(OBJECT_SELF) == "aldur_cit_13") && (GetLocalInt(oQuest, "qs1j") == 6)) ||
    ((GetTag(OBJECT_SELF) == "nilas_cit_bar1") && (GetLocalInt(oQuest, "qs1j") == 7)) ||
    ((GetTag(OBJECT_SELF) == "duergar_cit_bar3") && (GetLocalInt(oQuest, "qs1j") == 8)) ||
    ((GetTag(OBJECT_SELF) == "quickling_cit_13") && (GetLocalInt(oQuest, "qs1j") == 9))){
        return TRUE;}

// QUEST 1K  --  Magic Boots
if ((GetTag(OBJECT_SELF) == "qs1k_citizen") && (GetLocalInt(oQuest, "qs1k") > 0)){
        return TRUE;}

// QUEST 1L  --  Minotaur Quest
if ((GetTag(OBJECT_SELF) == "LD_SPHINX_FR") && (GetLocalInt(oQuest, "qs1l") == 1)){
        return TRUE;}

// QUEST 1M  --  Ogre Quest
if(((GetTag(OBJECT_SELF) == "LD_DRAGON_SIL") && (GetLocalInt(oQuest, "qs1m") == 1)) ||
   ((GetTag(OBJECT_SELF) == "LD_DRAGON_SIL") && (GetLocalInt(oQuest, "qs1m") == 2))){
        return TRUE;}

// QUEST 1N  --  Magic Seed Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BRS") && (GetLocalInt(oQuest, "qs1n") > 1)){
        return TRUE;}

// QUEST 1O  --  Sprite Quest
if ((GetTag(OBJECT_SELF) == "qs1o_wizard") && (GetLocalInt(oQuest, "qs1o") == 1)){
        return TRUE;}


    else {return FALSE;}
}
