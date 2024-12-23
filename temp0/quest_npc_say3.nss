//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{

object oPC = GetPCSpeaker();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

// QUEST 1G  --  +1 Weapon Quest
if ((GetTag(OBJECT_SELF) == "brushwood_cit_11") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "vegnar_cit_2") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "faraldor_cit_hb") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "brownie_cit_19") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "dedry_cit_pot") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "quickling_cit_3") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "nilas_cit_6") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "grogor_cit_1") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "duergar_cit_3") && (GetHitDice(oPC) > 2) ||
    (GetTag(OBJECT_SELF) == "aldur_cit_4") && (GetHitDice(oPC) > 2)){
        return TRUE;}

// QUEST 1H  --  Magic Recharge Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BLK") && (GetItemPossessedBy(oPC, "qs1h_item1") != OBJECT_INVALID)){
        return TRUE;}

// QUEST 1J  --  Random Quest Generator
string jQuest = GetLocalString(oQuest, "qs1jpart3");
if (((GetTag(OBJECT_SELF) == "faraldor_cit_br4") &&
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
     (GetItemPossessedBy(oPC, jQuest) != OBJECT_INVALID))){
        return TRUE;}

// QUEST 1K  --  Magic Boots
if ((GetTag(OBJECT_SELF) == "qs1k_citizen") && (GetLocalInt(oQuest, "qs1k") == 1)){
        return TRUE;}

// QUEST 1K  --  Minotaur Quest
if ((GetTag(OBJECT_SELF) == "LD_SPHINX_FR") && (GetLocalInt(oQuest, "qs1l") > 1)){
        return TRUE;}

// QUEST 1M  --  Ogre Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_SIL") && (GetLocalInt(oQuest, "qs1m") == 3)){
        return TRUE;}

// QUEST 1N  --  Magic Seed Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BRS") && (GetLocalInt(oQuest, "qs1n") == 0)){
        return TRUE;}

// QUEST 1O  --  Sprite Quest
if ((GetTag(OBJECT_SELF) == "qs1o_wizard") && (GetLocalInt(oQuest, "qs1o") > 1)){
        return TRUE;}




    else {return FALSE;}
}
