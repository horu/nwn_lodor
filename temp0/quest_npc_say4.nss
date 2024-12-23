//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{

object oPC = GetPCSpeaker();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

// QUEST 1G  --  +1 Weapon Quest
if ((GetTag(OBJECT_SELF) == "brushwood_cit_11") && (GetItemPossessedBy(oPC, "qs1g_item") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "vegnar_cit_2") && (GetItemPossessedBy(oPC, "qs1g_item1") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "faraldor_cit_hb") && (GetItemPossessedBy(oPC, "qs1g_item4") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "brownie_cit_19") && (GetItemPossessedBy(oPC, "qs1g_item3") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "dedry_cit_pot") && (GetItemPossessedBy(oPC, "qs1g_item5") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "quickling_cit_3") && (GetItemPossessedBy(oPC, "qs1g_item6") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "nilas_cit_6") && (GetItemPossessedBy(oPC, "qs1g_item7") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "grogor_cit_1") && (GetItemPossessedBy(oPC, "qs1g_item8") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "duergar_cit_3") && (GetItemPossessedBy(oPC, "qs1g_item9") != OBJECT_INVALID) ||
    (GetTag(OBJECT_SELF) == "aldur_cit_4") && (GetItemPossessedBy(oPC, "qs1g_item2") != OBJECT_INVALID)){
        return TRUE;}

// QUEST 1H  --  Magic Recharge Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BLK") && (GetItemPossessedBy(oPC, "qs1h_item1") == OBJECT_INVALID)){
        return TRUE;}

// QUEST 1K  --  Magic Boots
if ((GetTag(OBJECT_SELF) == "qs1k_citizen") &&
    (GetLocalInt(oQuest, "qs1k") > 1) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_blk") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_blu") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_brs") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_bnz") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_cop") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_gld") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_grn") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_psm") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_red") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_shd") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_sil") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_wht") == OBJECT_INVALID) &&
    (GetItemPossessedBy(oPC, "ld_drgn_hide_psm") == OBJECT_INVALID)){
        return TRUE;}

// QUEST 1L  --  Minotaur Quest
if ((GetTag(OBJECT_SELF) == "LD_SPHINX_FR") &&
          ((GetItemPossessedBy(oPC, "ench_boot_1") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_2") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_3") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_4") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_5") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_6") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_7") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_8") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_9") != OBJECT_INVALID) ||
           (GetItemPossessedBy(oPC, "ench_boot_10") != OBJECT_INVALID))){
        return TRUE;}

// QUEST 1M  --  Ogre Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_SIL") && (GetLocalInt(oQuest, "qs1m") == 4)){
        return TRUE;}

// QUEST 1N  --  Magic Seed Quest
if ((GetTag(OBJECT_SELF) == "LD_DRAGON_BRS") && (GetLocalInt(oQuest, "qs1n") == 1)){
        return TRUE;}

// QUEST 1O  --  Sprite Quest
if ((GetTag(OBJECT_SELF) == "qs1o_wizard") && (GetItemPossessedBy(oPC, "cyclops_eye") != OBJECT_INVALID)){
        return TRUE;}


    else {return FALSE;}
}
