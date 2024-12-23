// This moves the door to a random location
void main()
{
if (GetTag(OBJECT_SELF) == "lodor_bug_well"){
    DelayCommand(2.0, DestroyObject(OBJECT_SELF));
    {int nRandom = d6(1);
    if (nRandom == 1){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well1")), TRUE);}
    else if (nRandom == 2){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well2")), TRUE);}
    else if (nRandom == 3){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well3")), TRUE);}
    else if (nRandom == 4){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well4")), TRUE);}
    else if (nRandom == 5){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well5")), TRUE);}
    else if (nRandom == 6){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_well", GetLocation(GetWaypointByTag("bug_well6")), TRUE);}}}

else if (GetTag(OBJECT_SELF) == "lodor_bug_lift"){
    DelayCommand(2.0, DestroyObject(OBJECT_SELF));
    {int nRandom = d6(1);
    if (nRandom == 1){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift1")), TRUE);}
    else if (nRandom == 2){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift2")), TRUE);}
    else if (nRandom == 3){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift3")), TRUE);}
    else if (nRandom == 4){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift4")), TRUE);}
    else if (nRandom == 5){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift5")), TRUE);}
    else if (nRandom == 6){
      CreateObject(OBJECT_TYPE_PLACEABLE, "lodor_bug_lift", GetLocation(GetWaypointByTag("bug_lift6")), TRUE);}}}

else if (GetTag(OBJECT_SELF) == "ld_melagan_door"){
    DelayCommand(2.0, DestroyObject(OBJECT_SELF));
    {int nRandom = d10(1);
    if (nRandom == 1){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr1")), TRUE);}
    else if (nRandom == 2){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr2")), TRUE);}
    else if (nRandom == 3){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr3")), TRUE);}
    else if (nRandom == 4){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr4")), TRUE);}
    else if (nRandom == 5){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr5")), TRUE);}
    else if (nRandom == 6){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr6")), TRUE);}
    else if (nRandom == 7){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr7")), TRUE);}
    else if (nRandom == 8){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr8")), TRUE);}
    else if (nRandom == 9){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr9")), TRUE);}
    else if (nRandom == 10){
      CreateObject(OBJECT_TYPE_PLACEABLE, "ld_melagan_door", GetLocation(GetWaypointByTag("melagan_wp_dr10")), TRUE);}}}

else if (GetTag(OBJECT_SELF) == "qs1j_chest"){
    if (GetLocalInt(OBJECT_SELF, "qs1jmove") == 1){
    DelayCommand(2.0, DestroyObject(OBJECT_SELF));
    {int nRandom = d6(1);
    if (nRandom == 1){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn1", OBJECT_SELF)), TRUE);}
    else if (nRandom == 2){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn2", OBJECT_SELF)), TRUE);}
    else if (nRandom == 3){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn3", OBJECT_SELF)), TRUE);}
    else if (nRandom == 4){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn4", OBJECT_SELF)), TRUE);}
    else if (nRandom == 5){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn5", OBJECT_SELF)), TRUE);}
    else if (nRandom == 6){
      CreateObject(OBJECT_TYPE_PLACEABLE, "qs1j_chest", GetLocation(GetNearestObjectByTag("qs1j_spwn6", OBJECT_SELF)), TRUE);}}}}
}
