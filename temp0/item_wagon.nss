void main()
{
    object oPC = GetLastKiller();
    location lWagon = GetLocation(OBJECT_SELF);
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lWagon, FALSE, "spw_wagon");

    {
        int nRandom = d6(1);
        if (nRandom == 1)
        {
            CreateItemOnObject("x2_it_cmat_ironw", oPC, 1);
            FloatingTextStringOnCreature("You were able to salvage some oak from the wagon.", oPC, TRUE);
        }
        else if (nRandom == 2)
        {
            CreateItemOnObject("x2_it_cmat_elmw", oPC, 1);
            FloatingTextStringOnCreature("You were able to salvage some elm from the wagon.", oPC, TRUE);
        }
        else if (nRandom == 3)
        {
            CreateItemOnObject("x2_it_cmat_ironw", oPC, 1);
            FloatingTextStringOnCreature("You were able to salvage some ironwood from the wagon.", oPC, TRUE);
        }
        else
        {
            FloatingTextStringOnCreature("You were unable to salvage any wood from the wagon.", oPC, TRUE);
        }
    }
}
