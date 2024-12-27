void main()
{
    object oPC = GetPCSpeaker();

    object oBook = GetItemPossessedBy(oPC, "faction_report");

    if (GetTag(OBJECT_SELF) == "tree_bind_hobbit")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 1);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_elf")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 2);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_gnome")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 3);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_drow")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 4);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_human")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 5);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_orc")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 6);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_dwarf")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 7);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_brownie")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 8);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_quickling")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 9);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_duergar")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 10);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_daclor")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 11);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_scorn")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 12);
    }
    else if (GetTag(OBJECT_SELF) == "tree_bind_mino")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES), oPC);
        SendMessageToPC(oPC, "You are now bound to this tree.");
        SetLocalInt(oBook, "bind_tree", 19);
    }

    // COFFINS
    else if (GetTag(OBJECT_SELF) == "bind_coffin_tower")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 13);
    }
    else if (GetTag(OBJECT_SELF) == "bind_coffin_fall")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 14);
    }
    else if (GetTag(OBJECT_SELF) == "bind_coffin_cata")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 15);
    }
    else if (GetTag(OBJECT_SELF) == "bind_coffin_ruin")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 16);
    }
    else if (GetTag(OBJECT_SELF) == "bind_coffin_crypt")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 17);
    }
    else if (GetTag(OBJECT_SELF) == "bind_coffin_citdel")
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_REDUCE_ABILITY_SCORE), oPC);
        SendMessageToPC(oPC, "This is now your grave.");
        SetLocalInt(oBook, "bind_tree", 18);
    }
}
