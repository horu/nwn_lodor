void main()
{
    object oPC = OBJECT_SELF;
    string sTag = GetLocalString(oPC, "whodied");
    object oTomb = GetObjectByTag(sTag);
    int pc_gold = GetGold(oPC);

    int lost_gold = pc_gold;
    AssignCommand(oTomb, TakeGoldFromCreature(lost_gold, oPC, FALSE));
    DelayCommand(3.0, FloatingTextStringOnCreature("Lost gold " + IntToString(lost_gold), oPC, FALSE));

    // Put all the stuff on the tombstone with cnance
    int level = GetHitDice(oPC);
    int chance = level / 2;
    int i;
    string log_msg = "loss " + GetName(oPC);
    log_msg += ": gold " + IntToString(lost_gold);
    log_msg += ", ch " + IntToString(chance);
    log_msg += ", slot ";
    for (i = 0; i < 11; i++)
    {
        log_msg += IntToString(i);
        object item = GetItemInSlot(i, oPC);
        if (item == OBJECT_INVALID)
        {
            log_msg += "-OI ";
            continue;
        }

        if (GetStringLeft(GetTag(item), 8) == "POW_ring")
        {
            log_msg += "-POW ";
            continue;
        }

        int roll = d100(1);
        if (roll > chance)
        {
            log_msg += "-" + IntToString(roll) + " ";
            continue;
        }

        if (GetLocalInt(item, "insured"))
        {
            SetLocalInt(item, "insured", 0);
            log_msg += "-INS ";
            DelayCommand(3.2, FloatingTextStringOnCreature("Insured event for " + GetName(item), oPC, FALSE));
            continue;
        }

        log_msg += "-" + IntToString(roll) + "(" + GetTag(item) + ") ";
        object copy_item = CopyItem(item, oTomb, TRUE);
        DestroyObject(item);
        DelayCommand(3.2, FloatingTextStringOnCreature("Lost item " + GetName(copy_item), oPC, FALSE));
    }

    PrintString(log_msg);
}
