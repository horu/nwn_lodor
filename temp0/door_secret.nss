void main()
{
object oPC = GetLastUsedBy();
object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);
object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oPC);
object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);

// 1. Secret Room (Miradir's Castle)
if (GetTag(OBJECT_SELF) == "lodor_secdoor_1"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_1B")));}
else if (GetTag(OBJECT_SELF) == "lodor_sec_ex_1"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_1A")));}

// 2. Secret Room (Miradir's Castle)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_2"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_2B")));}
else if (GetTag(OBJECT_SELF) == "lodor_sec_ex_2"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_2A")));}

// 3. Secret Room (Miradir's Castle)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_3"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_3B")));}
else if (GetTag(OBJECT_SELF) == "lodor_sec_ex_3"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_3A")));}

// 4. Secret Room (Murved's Tower)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_4"){
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_4B")));}
else if (GetTag(OBJECT_SELF) == "lodor_sec_ex_4"){
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_4A")));}

// 5. Secret Room (Gnoll Ruins)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_5"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_5B")));}

// 6. Secret Room (Gnoll Ruins)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_6"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_6B")));}

// 7. Secret Room (Gnoll Ruins)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_7"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_7B")));}

// 8. Secret Room (Gnoll Ruins)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_8"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_8B")));}

// 9. Secret Room (Fallen Cliffs)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_9"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("WP_SEC_RM_9B")));}

// 10. Secret Room (Zaltos' Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_10"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_10B")));}

// 11. Secret Room (Zaltos' Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_11"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_11B")));}

// 12. Secret Room (Zaltos' Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_12"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_12B")));}

// 13. Secret Room (Faraldor Tower)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_13"){
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("WP_SEC_RM_13B")));}

// 15. Secret Room (Horfilad Manor)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_15"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("horf_scwaypont2")));}

// 16. Secret Room (Horfilad Manor)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_16"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("horf_scwaypont1")));}

// 17. Secret Room (Old City)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_17"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("old_citwp1")));}

// 18. Secret Room (Old City)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_18"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("old_citwp2")));}

// 19. Secret Room (Halls Of Stone)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_19"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("enter_medus3")));}

// 20. Secret Room (Halls Of Stone)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_20"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("enter_medus4")));}

// 21. Secret Room (Halls Of Stone)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_21"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("enter_medus2")));}

// 22. Secret Room (Halls Of Stone)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_22"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("enter_medus1")));}

// 23. Secret Room (Glomarin's Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_23"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("glo_yaroom1")));}

// 24. Secret Room (Glomarin's Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_24"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("glo_yaroom2")));}

// 25. Secret Room (Glomarin's Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_25"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("glo_yaroom3")));}

// 26. Secret Room (Glomarin's Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_26"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("glo_yaroom5")));}

// 27. Secret Room (Glomarin's Fortress)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_27"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("glo_yaroom6")));}

// 28. Secret Room (The Vault)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_28"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sec_vlt_1")));}

// 29. Secret Room (The Vault)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_29"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sec_vlt_2")));}

// 30. Secret Room (The Vault)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_30"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sec_vlt_3")));}

// 31. Secret Room (Dracz's Palace)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_31"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sec_drx_1")));}

// 32. Secret Room (Dracz's Palace)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_32"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sec_drx_2")));}

// 33. Secret Door (Citadel Level Three)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_33"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("citadel_sec_1")));}

// 34. Secret Door (Citadel Level Four)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_34"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("citadel_sec_2")));}

// 35. Secret Door (Citadel Level Four)
else if (GetTag(OBJECT_SELF) == "lodor_secdoor_35"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("citadel_sec_3")));}


else {}
}
