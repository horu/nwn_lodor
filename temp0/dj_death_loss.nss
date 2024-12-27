void main()
{
    object oPC = OBJECT_SELF;
    string sTag = GetLocalString(oPC, "whodied");
    object oTomb = GetObjectByTag(sTag);
    int nGoldToTake = GetGold(oPC);


    object oItem1 = GetItemInSlot(INVENTORY_SLOT_ARMS, oPC);
    object oItem3 = GetItemInSlot(INVENTORY_SLOT_BELT, oPC);
    object oItem5 = GetItemInSlot(INVENTORY_SLOT_BOOTS, oPC);
    object oItem7 = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
    object oItem8 = GetItemInSlot(INVENTORY_SLOT_CLOAK, oPC);
    object oItem9 = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
    object oItem10 = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);
    object oItem11 = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
    object oItem12 = GetItemInSlot(INVENTORY_SLOT_NECK, oPC);
    object oItem13 = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
    object oItem14 = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);
    DelayCommand(5.8, FloatingTextStringOnCreature("Loot Loss", oPC, FALSE));

    int level = GetHitDice(oPC);
    int d_cap = level / 2;

    // Put all the stuff on the tombstone
    if (d100(1) <= d_cap)
    {
        //AssignCommand(oTomb, TakeGoldFromCreature(nGoldToTake, oPC, FALSE));
    }

    if (GetLocalInt(oItem1, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy1 = CopyItem(oItem1, oTomb, TRUE);
        DestroyObject(oItem1);
    }
    if (GetLocalInt(oItem3, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy3 = CopyItem(oItem3, oTomb, TRUE);
        DestroyObject(oItem3);
    }
    if (GetLocalInt(oItem5, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy5 = CopyItem(oItem5, oTomb, TRUE);
        DestroyObject(oItem5);
    }
    if (GetLocalInt(oItem7, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy7 = CopyItem(oItem7, oTomb, TRUE);
        DestroyObject(oItem7);
    }
    if (GetLocalInt(oItem8, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy8 = CopyItem(oItem8, oTomb, TRUE);
        DestroyObject(oItem8);
    }
    if (GetLocalInt(oItem9, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy9 = CopyItem(oItem9, oTomb, TRUE);
        DestroyObject(oItem9);
    }
    if (GetLocalInt(oItem10, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy10 = CopyItem(oItem10, oTomb, TRUE);
        DestroyObject(oItem10);
    }
    if (GetLocalInt(oItem12, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy12 = CopyItem(oItem12, oTomb, TRUE);
        DestroyObject(oItem12);
    }
    if (GetLocalInt(oItem13, "insured") != 1 && d100(1) <= d_cap)
    {
        object oCopy13 = CopyItem(oItem13, oTomb, TRUE);
        DestroyObject(oItem13);
    }
    if (GetStringLeft(GetTag(oItem14), 8) != "POW_ring")
    {
        if (GetLocalInt(oItem14, "insured") != 1 && d100(1) <= d_cap)
        {
            object oCopy14 = CopyItem(oItem14, oTomb, TRUE);
            DestroyObject(oItem14);
        }
    }
    if (GetStringLeft(GetTag(oItem11), 8) != "POW_ring")
    {
        if (GetLocalInt(oItem11, "insured") != 1 && d100(1) <= d_cap)
        {
            object oCopy11 = CopyItem(oItem11, oTomb, TRUE);
            DestroyObject(oItem11);
        }
    }

    DelayCommand(2.0, SetLocalInt(oItem1, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem3, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem5, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem7, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem8, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem9, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem10, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem11, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem12, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem13, "insured", 0));
    DelayCommand(2.0, SetLocalInt(oItem14, "insured", 0));
}
