// Sail the High Seas
void main()
{
    object oPC = GetPCSpeaker();
    int nGo = GetLocalInt(oPC, "highseas");

    // Southern Shore to Island of Ancient Stones
    if (nGo == 1)
    {
        location lPlace = GetLocation(GetObjectByTag("sth_shore_bmk2"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_wtch_boat", lPlace, FALSE);
        DestroyObject(OBJECT_SELF, 2.0);
        object oPlayer = GetFirstPC();
        while (GetLocalInt(oPlayer, "highseas") == 1)
        {
            AssignCommand(oPlayer, JumpToObject(GetWaypointByTag("witch_boatsp2")));
            SetLocalInt(oPlayer, "highseas", 0);
            oPlayer = GetNextPC();
        }
    }


    // Island of Ancient Stones to Southern Shore
    else if (nGo == 2)
    {
        location lPlace = GetLocation(GetObjectByTag("sth_shore_bmk1"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_wtch_boat", lPlace, FALSE);
        DestroyObject(OBJECT_SELF, 2.0);
        object oPlayer = GetFirstPC();
        while (GetLocalInt(oPlayer, "highseas") == 2)
        {
            AssignCommand(oPlayer, JumpToObject(GetWaypointByTag("witch_boatsp1")));
            SetLocalInt(oPlayer, "highseas", 0);
            oPlayer = GetNextPC();
        }
    }
}
