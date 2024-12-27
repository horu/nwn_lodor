void main()
{
    object oPC = GetItemActivator();
    object oMap = GetItemActivated();
    int nWhere = GetLocalInt(oMap, "treasure");
    string sSay = "This map shows the treasure in ";
    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_READ));

    if (nWhere == 1)
    {
        FloatingTextStringOnCreature("" + sSay + "the Vegnar Plains.", oPC, FALSE);
    }
    else if (nWhere == 2)
    {
        FloatingTextStringOnCreature("" + sSay + "the Underwood.", oPC, FALSE);
    }
    else if (nWhere == 3)
    {
        FloatingTextStringOnCreature("" + sSay + "the Shivering Woods.", oPC, FALSE);
    }
    else if (nWhere == 4)
    {
        FloatingTextStringOnCreature("" + sSay + "the Prael Hills.", oPC, FALSE);
    }
    else if (nWhere == 5)
    {
        FloatingTextStringOnCreature("" + sSay + "the Shifting Growth.", oPC, FALSE);
    }
    else if (nWhere == 6)
    {
        FloatingTextStringOnCreature("" + sSay + "the Saryl Swamp.", oPC, FALSE);
    }
    else if (nWhere == 7)
    {
        FloatingTextStringOnCreature("" + sSay + "the Clouded Veil.", oPC, FALSE);
    }
    else if (nWhere == 8)
    {
        FloatingTextStringOnCreature("" + sSay + "the Weary Way.", oPC, FALSE);
    }
    else if (nWhere == 9)
    {
        FloatingTextStringOnCreature("" + sSay + "the Cursed Glades.", oPC, FALSE);
    }
    else if (nWhere == 10)
    {
        FloatingTextStringOnCreature("" + sSay + "the Nilas Forest.", oPC, FALSE);
    }
    else if (nWhere == 11)
    {
        FloatingTextStringOnCreature("" + sSay + "the Melagan Jungle.", oPC, FALSE);
    }
    else if (nWhere == 12)
    {
        FloatingTextStringOnCreature("" + sSay + "the Grogor Jungle.", oPC, FALSE);
    }
    else if (nWhere == 13)
    {
        FloatingTextStringOnCreature("" + sSay + "the Arid Dunes.", oPC, FALSE);
    }
    else if (nWhere == 14)
    {
        FloatingTextStringOnCreature("" + sSay + "the Wastelands.", oPC, FALSE);
    }
    else if (nWhere == 15)
    {
        FloatingTextStringOnCreature("" + sSay + "the Dedry Woods.", oPC, FALSE);
    }
    else if (nWhere == 16)
    {
        FloatingTextStringOnCreature("" + sSay + "the Delir Forest.", oPC, FALSE);
    }
    else if (nWhere == 17)
    {
        FloatingTextStringOnCreature("" + sSay + "the Clarion Woodlands.", oPC, FALSE);
    }
    else if (nWhere == 18)
    {
        FloatingTextStringOnCreature("" + sSay + "the Whispering Woods.", oPC, FALSE);
    }
    else if (nWhere == 19)
    {
        FloatingTextStringOnCreature("" + sSay + "the Nerod Hills.", oPC, FALSE);
    }
    else if (nWhere == 20)
    {
        FloatingTextStringOnCreature("" + sSay + "the Glowian Forest.", oPC, FALSE);
    }
}
