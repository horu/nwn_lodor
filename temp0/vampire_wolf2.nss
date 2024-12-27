// Turn into a wolf and run fast //
void main()
{
    object oPC = GetPCSpeaker();
    object oVampire = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    location lMe = GetLocation(oPC);
    object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");

    if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
        (GetAppearanceType(oPC) == APPEARANCE_TYPE_BAT))
    {
        // Change the PC back to normal...
        SetLocalInt(oBottle, "wolf", 0);
        AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -100);
        ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lMe);
        itemproperty ipLoop = GetFirstItemProperty(oVampire);
        while (GetIsItemPropertyValid(ipLoop))
        {
            if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_HASTE)
                RemoveItemProperty(oVampire, ipLoop);
            ipLoop = GetNextItemProperty(oVampire);
        }
        object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
        object oHelmet = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
        ActionUnequipItem(oArmor);
        ActionUnequipItem(oHelmet);
        DelayCommand(1.0, AssignCommand(oPC, ActionEquipItem(oArmor, INVENTORY_SLOT_CHEST)));
        DelayCommand(1.0, AssignCommand(oPC, ActionEquipItem(oHelmet, INVENTORY_SLOT_HEAD)));
        int nReal = GetLocalInt(oBottle, "realApp");
        if (nReal > 0)
        {
            SetCreatureAppearanceType(oPC, nReal - 1);
        }

        else
        {
            FloatingTextStringOnCreature("You are already in normal form.", oPC, FALSE);
        }
    }
}
