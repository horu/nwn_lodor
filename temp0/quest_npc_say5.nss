//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    // QUEST 1K  --  Magic Boots & Minotaur Quest
    if ((GetTag(OBJECT_SELF) == "qs1k_citizen") &&
        (GetLocalInt(oQuest, "qs1k") > 1) &&
        ((GetItemPossessedBy(oPC, "ld_drgn_hide_blk") != OBJECT_INVALID) ||
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
            (GetItemPossessedBy(oPC, "ld_drgn_hide_psm") != OBJECT_INVALID)))
    {
        return TRUE;
    }

    else { return FALSE; }
}
