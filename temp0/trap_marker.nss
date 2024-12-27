void main()
{
    object oPC = GetPCSpeaker();
    object oTrap = GetNearestObjectByTag("trap_object", oPC);
    int nFound = GetLocalInt(oPC, "trapfind");
    int nMarked = GetLocalInt(oTrap, "marked");

    if (nFound == 0)
    {
        FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);
    }
    else
    {
        if (nMarked == 1)
        {
            FloatingTextStringOnCreature("That trap is already marked.", oPC, FALSE);
        }
        else
        {
            CreateObject(OBJECT_TYPE_PLACEABLE, "trap_marker", GetLocation(oTrap));
            SetLocalInt(oTrap, "marked", 1);
            FloatingTextStringOnCreature("You successfully marked the trap.", oPC, FALSE);
        }
    }
}
