void main()
{
    // Clear loot bags and items
    DelayCommand(300.0, ExecuteScript("dj_exit_area2", OBJECT_SELF));
    // Clear creatures
    DelayCommand(1800.0, ExecuteScript("sl_exit_area3", OBJECT_SELF));

    object oPC = GetExitingObject();
    object oInfo = GetItemPossessedBy(oPC, "faction_report");
    if (GetIsDead(oPC) == FALSE) { SetLocalInt(oInfo, "ijustdied", 0); }

    // Record Faction
    int nFbrown = GetReputation(GetObjectByTag("fac_brown"), oPC);
    int nFquick = GetReputation(GetObjectByTag("fac_quick"), oPC);
    int nFduergar = GetReputation(GetObjectByTag("fac_duergar"), oPC);
    int nFpixie = GetReputation(GetObjectByTag("fac_pixie"), oPC);
    int nFnixie = GetReputation(GetObjectByTag("fac_nixie"), oPC);
    int nFbrushwood = GetReputation(GetObjectByTag("fac_brushwood"), oPC);
    int nFvegnar = GetReputation(GetObjectByTag("fac_vegnar"), oPC);
    int nFfaraldor = GetReputation(GetObjectByTag("fac_faraldor"), oPC);
    int nFgrogor = GetReputation(GetObjectByTag("fac_grogor"), oPC);
    int nFdedry = GetReputation(GetObjectByTag("fac_dedry"), oPC);
    int nFnilas = GetReputation(GetObjectByTag("fac_nilas"), oPC);
    int nFaldur = GetReputation(GetObjectByTag("fac_aldur"), oPC);
    int nForcs = GetReputation(GetObjectByTag("fac_orcs"), oPC);
    int nFdrogo = GetReputation(GetObjectByTag("fac_drogo"), oPC);
    int nFdriders = GetReputation(GetObjectByTag("fac_driders"), oPC);
    int nFfirebrand = GetReputation(GetObjectByTag("fac_firebrand"), oPC);
    int nFsphinx = GetReputation(GetObjectByTag("fac_sphinx"), oPC);
    int nFvampire = GetReputation(GetObjectByTag("fac_vampire"), oPC);
    int nFdrgred = GetReputation(GetObjectByTag("fac_drgred"), oPC);
    int nFdrgwhite = GetReputation(GetObjectByTag("fac_drgwhite"), oPC);
    int nFdrgblack = GetReputation(GetObjectByTag("fac_drgblack"), oPC);
    int nFdrgblue = GetReputation(GetObjectByTag("fac_drgblue"), oPC);
    int nFdrggreen = GetReputation(GetObjectByTag("fac_drggreen"), oPC);
    int nFdrgshadow = GetReputation(GetObjectByTag("fac_drgshadow"), oPC);
    int nFdrgbrass = GetReputation(GetObjectByTag("fac_drgbrass"), oPC);
    int nFdrgcopper = GetReputation(GetObjectByTag("fac_drgcopper"), oPC);
    int nFdrgsilver = GetReputation(GetObjectByTag("fac_drgsilver"), oPC);
    int nFdrggold = GetReputation(GetObjectByTag("fac_drggold"), oPC);
    int nFdrgbronze = GetReputation(GetObjectByTag("fac_drgbronze"), oPC);
    int nFdrgprism = GetReputation(GetObjectByTag("fac_drgprism"), oPC);

    SetLocalInt(oInfo, "brownie", nFbrown);
    SetLocalInt(oInfo, "quickling", nFquick);
    SetLocalInt(oInfo, "duergar", nFduergar);
    SetLocalInt(oInfo, "pixie", nFpixie);
    SetLocalInt(oInfo, "nixie", nFnixie);
    SetLocalInt(oInfo, "brushwood", nFbrushwood);
    SetLocalInt(oInfo, "vegnar", nFvegnar);
    SetLocalInt(oInfo, "faraldor", nFfaraldor);
    SetLocalInt(oInfo, "grogor", nFgrogor);
    SetLocalInt(oInfo, "dedry", nFdedry);
    SetLocalInt(oInfo, "nilas", nFnilas);
    SetLocalInt(oInfo, "aldur", nFaldur);
    SetLocalInt(oInfo, "orcs", nForcs);
    SetLocalInt(oInfo, "drogo", nFdrogo);
    SetLocalInt(oInfo, "driders", nFdriders);
    SetLocalInt(oInfo, "firebrand", nFfirebrand);
    SetLocalInt(oInfo, "sphinx", nFsphinx);
    SetLocalInt(oInfo, "vampire", nFvampire);
    SetLocalInt(oInfo, "drgred", nFdrgred);
    SetLocalInt(oInfo, "drgwhite", nFdrgwhite);
    SetLocalInt(oInfo, "drgblack", nFdrgblack);
    SetLocalInt(oInfo, "drgblue", nFdrgblue);
    SetLocalInt(oInfo, "drggreen", nFdrggreen);
    SetLocalInt(oInfo, "drgshadow", nFdrgshadow);
    SetLocalInt(oInfo, "drgbrass", nFdrgbrass);
    SetLocalInt(oInfo, "drgcopper", nFdrgcopper);
    SetLocalInt(oInfo, "drgsilver", nFdrgsilver);
    SetLocalInt(oInfo, "drggold", nFdrggold);
    SetLocalInt(oInfo, "drgbronze", nFdrgbronze);
    SetLocalInt(oInfo, "drgprism", nFdrgprism);

    // Destroy the boat so it can be on the mainland again.
    // This is helpful if PCs all die and they want to go
    // Back to the island.
    if (GetTag(OBJECT_SELF) == "IslandOfAncientStone")
    {
        object oArea = GetArea(OBJECT_SELF);
        object oPC = GetFirstPC();
        int nAnyone = 0;
        // Check to make sure no PC's In Area
        while (GetIsObjectValid(oPC) == TRUE)
        {
            if (GetArea(oPC) == oArea)
            {
                nAnyone = TRUE;
            }
            oPC = GetNextPC();
        }

        if (nAnyone == FALSE)
        {
            location lPlace = GetLocation(GetObjectByTag("sth_shore_bmk1"));
            DestroyObject(GetObjectByTag("lodor_wtch_boat"));
            CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_wtch_boat", lPlace, FALSE);
        }
    }
    ///////////////////////////////////////////////////////
}
