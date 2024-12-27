void main()
{
    object oPC = GetEnteringObject();

    int nSkilly = GetSkillRank(SKILL_SEARCH, oPC);
    int nSkillz = GetSkillRank(SKILL_SPOT, oPC);

    if (nSkilly > nSkillz) { SetLocalInt(oPC, "scrt_door", nSkilly); }
    else { SetLocalInt(oPC, "scrt_door", nSkillz); }
    int nSkill = GetLocalInt(oPC, "scrt_door");

    if (GetHasFeat(FEAT_ALERTNESS, oPC)) { SetLocalInt(oPC, "alter", 2); }
    int nDC1 = 10;
    int nDC2 = 15;
    int nDC3 = 20;
    int nDC4 = 25;
    int nDC5 = 30;
    int nDC6 = 35;
    int nDC7 = 40;
    int nDC8 = 45;
    int nDC9 = 50;
    int nDice = d20(1);
    int nTotal = nDice + nSkill + GetLocalInt(oPC, "alert");
    location lSpot = GetLocation(GetNearestObjectByTag("lodor_sdspwn", oPC));

    if (GetIsPC(oPC) == TRUE)
    {
        if (GetLocalInt(OBJECT_SELF, "detect") == 0)
        {
            SetLocalInt(OBJECT_SELF, "detect", 1);
            DelayCommand(181.0, SetLocalInt(OBJECT_SELF, "detect", 0));

            // 1. Secret Door (Miradir's Castle)
            if (GetTag(OBJECT_SELF) == "door_detect_1")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_1");
                }
            }

            // 2. Secret Door (Miradir's Castle)
            else if (GetTag(OBJECT_SELF) == "door_detect_2")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_2");
                }
            }

            // 3. Secret Door (Miradir's Castle)
            else if (GetTag(OBJECT_SELF) == "door_detect_3")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor2", lSpot, FALSE, "lodor_secdoor_3");
                }
            }

            // 4. Secret Door (Murved's Tower)
            else if (GetTag(OBJECT_SELF) == "door_detect_4")
            {
                if (nTotal >= nDC4)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_4");
                }
            }

            // 5. Secret Door (GNOLL RUINS)
            else if (GetTag(OBJECT_SELF) == "door_detect_5")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_5");
                }
            }

            // 6. Secret Door (GNOLL RUINS)
            else if (GetTag(OBJECT_SELF) == "door_detect_6")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_6");
                }
            }

            // 7. Secret Door (GNOLL RUINS)
            else if (GetTag(OBJECT_SELF) == "door_detect_7")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_7");
                }
            }

            // 8. Secret Door (GNOLL RUINS)
            else if (GetTag(OBJECT_SELF) == "door_detect_8")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_8");
                }
            }

            // 9. Secret Door (Fallen Cliffs)
            else if (GetTag(OBJECT_SELF) == "door_detect_9")
            {
                if (nTotal >= nDC6)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_9");
                }
            }

            // 10. Secret Door (Zaltos' Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_10")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_10");
                }
            }

            // 11. Secret Door (Zaltos' Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_11")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_11");
                }
            }

            // 12. Secret Door (Zaltos' Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_12")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_12");
                }
            }

            // 13. Secret Door (Faraldor Tower)
            else if (GetTag(OBJECT_SELF) == "door_detect_13")
            {
                if (nTotal >= nDC4)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_13");
                }
            }

            // 14. Dedry Lever (Catacombs)
            else if (GetTag(OBJECT_SELF) == "door_detect_14")
            {
                if (nTotal >= nDC3)
                {
                    location lLever = GetLocation(GetWaypointByTag("maus_leverwp"));
                    CreateObject(OBJECT_TYPE_PLACEABLE, "cata_lever", lLever, FALSE);
                }
            }

            // 15. Secret Door (Horfilad Manor)
            else if (GetTag(OBJECT_SELF) == "door_detect_15")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_15");
                }
            }

            // 16. Secret Door (Horfilad Manor)
            else if (GetTag(OBJECT_SELF) == "door_detect_16")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_16");
                }
            }

            // 17. Secret Door (Old City)
            else if (GetTag(OBJECT_SELF) == "door_detect_17")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_17");
                }
            }

            // 18. Secret Door (Old City)
            else if (GetTag(OBJECT_SELF) == "door_detect_18")
            {
                if (nTotal >= nDC3)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_18");
                }
            }

            // 19. Secret Door (Halls Of Stone)
            else if (GetTag(OBJECT_SELF) == "door_detect_19")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_19");
                }
            }

            // 20. Secret Door (Halls Of Stone)
            else if (GetTag(OBJECT_SELF) == "door_detect_20")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_20");
                }
            }

            // 21. Secret Door (Halls Of Stone)
            else if (GetTag(OBJECT_SELF) == "door_detect_21")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_21");
                }
            }

            // 22. Secret Door (Halls Of Stone)
            else if (GetTag(OBJECT_SELF) == "door_detect_22")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_22");
                }
            }

            // 23. Secret Door (Glomarin's Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_23")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor2", lSpot, FALSE, "lodor_secdoor_23");
                }
            }

            // 24. Secret Door (Glomarin's Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_24")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_24");
                }
            }

            // 25. Secret Door (Glomarin's Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_25")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_25");
                }
            }

            // 26. Secret Door (Glomarin's Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_26")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_26");
                }
            }

            // 27. Secret Door (Glomarin's Fortress)
            else if (GetTag(OBJECT_SELF) == "door_detect_27")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_27");
                }
            }

            // 28. Secret Door (The Vault)
            else if (GetTag(OBJECT_SELF) == "door_detect_28")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_28");
                }
            }

            // 29. Secret Door (The Vault)
            else if (GetTag(OBJECT_SELF) == "door_detect_29")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_29");
                }
            }

            // 30. Secret Door (The Vault)
            else if (GetTag(OBJECT_SELF) == "door_detect_30")
            {
                if (nTotal >= nDC7)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_30");
                }
            }

            // 31. Secret Door (Dracz's Palace)
            else if (GetTag(OBJECT_SELF) == "door_detect_31")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_31");
                }
            }

            // 32. Secret Door (Dracz's Palace)
            else if (GetTag(OBJECT_SELF) == "door_detect_32")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_32");
                }
            }

            // 33. Secret Door (Citadel Level Three)
            else if (GetTag(OBJECT_SELF) == "door_detect_33")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_33");
                }
            }

            // 34. Secret Door (Citadel Level Four)
            else if (GetTag(OBJECT_SELF) == "door_detect_34")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_34");
                }
            }

            // 35. Secret Door (Citadel Level Four)
            else if (GetTag(OBJECT_SELF) == "door_detect_35")
            {
                if (nTotal >= nDC9)
                {
                    CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_secdoor", lSpot, FALSE, "lodor_secdoor_35");
                }
            }

            // The End
            else
            {
            }
        }
    }
    else
    {
    }
}
