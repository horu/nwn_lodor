void main()
{
    object oPC = GetLastUsedBy();
    CreateItemOnObject("altar_quest_leaf", oPC, 1);
    FloatingTextStringOnCreature("You picked off a Kelam leaf.", oPC, TRUE);
    DestroyObject(OBJECT_SELF);

{int nRandom = d12(1);
    if (nRandom == 1){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam1"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 2){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam2"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 3){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam3"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 4){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam4"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 5){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam5"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 6){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam6"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 7){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam7"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 8){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam8"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 9){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam9"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 10){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam10"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 11){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam11"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}
    else if (nRandom == 12){
        location lBush = GetLocation(GetWaypointByTag("spawn_kelam12"));
        CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lBush, FALSE, "spw_kelambush");}}
}
