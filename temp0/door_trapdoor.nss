void main()
{
object oPC = GetLastUsedBy();
object oTalker = GetPCSpeaker();
object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);
object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oPC);
object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);

// Alter Of Fradoc
if (GetTag(OBJECT_SELF) == "shaded_trapdoor"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("fradoc_entrance")));}
else if (GetTag(OBJECT_SELF) == "fradoc_trapdoor"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("shaded_entrance")));}

// Nerod Hills Tent Door
else if (GetTag(OBJECT_SELF) == "nerod_tendor"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("nerod_qs1k1")));}

// Gremlin Hole
else if (GetTag(OBJECT_SELF) == "gremlin_hole"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("gremlin_bot")));}

// Sprite Hole
else if (GetTag(OBJECT_SELF) == "sprite_hole_1"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sprite_leave")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "sprite_hole_2"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sprite_hello")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}

// Gremlin Rope
else if (GetTag(OBJECT_SELF) == "gremlin_rope"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("gremlin_up")));}

// Sprite Rock
else if (GetTag(OBJECT_SELF) == "sprite_door"){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("sprite_river")));}

// Sylvan Lift
else if (GetTag(OBJECT_SELF) == "sylvan_elevator"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sylvan_elebot")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}

// Sylvan Lift
else if (GetTag(OBJECT_SELF) == "sylvan_lift"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("sylvan_eletop")));}

// Bugbear Cave
else if (GetTag(OBJECT_SELF) == "lodor_bug_well"){
        DelayCommand(60.0, ExecuteScript("door_moveit", OBJECT_SELF));
        AssignCommand(oPC, JumpToObject(GetObjectByTag("lodor_bug_lift")));}
else if (GetTag(OBJECT_SELF) == "lodor_bug_lift"){
        DelayCommand(60.0, ExecuteScript("door_moveit", OBJECT_SELF));
        AssignCommand(oPC, JumpToObject(GetObjectByTag("lodor_bug_well")));}

// Vile Bog Tower
else if (GetTag(OBJECT_SELF) == "lodor_bog_door"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("lodor_bog_twr")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}
else if (GetTag(OBJECT_SELF) == "bog_ladder"){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("lodor_bog_twr2")));}

// Grandul Entrance
else if (GetTag(OBJECT_SELF) == "grandul_trpdor"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("grandul_dunent")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}


// Hidden Grove
else if (GetTag(OBJECT_SELF) == "LD_HIDGRV1"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("shiv_frst_1")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "LD_HIDGRV2"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("shiv_frst_2")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "LD_BRWN_ENT1"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("hid_grove_1")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "LD_BRWN_ENT2"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("hid_grove_2")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "brownie_hole_1"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("brown_in_1")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "brownie_up_1"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("brown_out_1")));}

else if (GetTag(OBJECT_SELF) == "brownie_laddorr"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("brown_ladupp")));
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("brown_ladupp")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("brown_ladupp")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("brown_ladupp")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("brown_ladupp")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("brown_ladupp")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor(OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}
else if (GetTag(OBJECT_SELF) == "brownie_ladupz"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("brownie_ladup")));
    AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("brownie_ladup")));
    AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("brownie_ladup")));
    AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("brownie_ladup")));
    AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("brownie_ladup")));
    AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("brownie_ladup")));}

// Wicked Marsh
else if (GetTag(OBJECT_SELF) == "marsh_door"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("marsh_silord")));}
else if (GetTag(OBJECT_SELF) == "marsh_hole_1"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("marshclwp")));}
else if (GetTag(OBJECT_SELF) == "marsh_hole_2"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("marshwwwp")));}
else if (GetTag(OBJECT_SELF) == "marsh_hole_x"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("marsh_hl_wp1")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "marsh_hole_y"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("marsh_hl_wp2")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}

// Quickling Hole In Nilas
else if (GetTag(OBJECT_SELF) == "nilas_hole_1"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilas_qhole2")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}
else if (GetTag(OBJECT_SELF) == "nilas_hole_2"){
    if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilas_qhole1")));}
    else {
        FloatingTextStringOnCreature("You are too big to fit in the hole.", oPC, FALSE);}}



// Rope In Veeslath's Lair
else if (GetTag(OBJECT_SELF) == "veeslath_rope"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("saryl_at_down")));}

// Rope In Frozen Depths
else if (GetTag(OBJECT_SELF) == "frozen_rope"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("frozen_deep_top")));}

// Frostbite Mines
else if (GetTag(OBJECT_SELF) == "ld_frost_mine"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("frost_bite_wp")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}

// Quickling Trapdoor
else if (GetTag(OBJECT_SELF) == "quick_trap_door"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("quick_basement")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}
else if (GetTag(OBJECT_SELF) == "quick_ladder"){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("quick_upstairs")));}

// Rope In Eubraith's Lair
else if (GetTag(OBJECT_SELF) == "eubraith_rope"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("green_drg_up")));}

// Door In Nilas Forest
else if (GetTag(OBJECT_SELF) == "nilasforst_at_est"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilas_at_forest")));}

// Door To Nilas Forest
else if (GetTag(OBJECT_SELF) == "nilas_at_east"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilforest_at_west")));}

// Door In Cursed Glades
else if (GetTag(OBJECT_SELF) == "cursedor_at_est"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilasmnt_at_west")));}

// Door To Cursed Glades
else if (GetTag(OBJECT_SELF) == "nilas_at_west"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("cursed_at_east")));}

// Door To The Citadel
else if (GetTag(OBJECT_SELF) == "cit_dor_northw"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("cit_enter_dclll")));}

// Melagan Ruins
else if (GetTag(OBJECT_SELF) == "ld_melagan_door"){
    if (GetIsOpen(OBJECT_SELF)){
        DelayCommand(60.0, ExecuteScript("door_moveit", OBJECT_SELF));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("ld_melagan_up")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}

else if (GetTag(OBJECT_SELF) == "melaruin_door_d2"){
    object oClicker = GetClickingObject();
    object oDoor = GetObjectByTag("ld_melagan_door");
    location lLoc = GetLocation(oDoor);
    AssignCommand(oClicker,JumpToLocation(lLoc));}

// Dedry Rope
else if (GetTag(OBJECT_SELF) == "rope_dar"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("dedry_dar")));}

// Mausoleum
else if (GetTag(OBJECT_SELF) == "maus_trapdoor"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("mauso_wpoint")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}

// Horfilad Door
else if (GetTag(OBJECT_SELF) == "cursedor_at_nth"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("in_horf_man")));}

// Firebrand Trapdoor
else if (GetTag(OBJECT_SELF) == "firebrna_mine"){
    if (GetIsOpen(OBJECT_SELF)){
        AssignCommand(oPC, JumpToObject(GetObjectByTag("fbrand_wpgo")));}
    else {
        ActionOpenDoor(OBJECT_SELF);
        PlayAnimation(ANIMATION_PLACEABLE_OPEN);
        DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
        DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_CLOSE));}}

// Well Of Souls Rope
else if (GetTag(OBJECT_SELF) == "souls_rope"){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("well_up_top")));}

// Wine Rack In Drunken Depths
else if (GetTag(OBJECT_SELF) == "duger_wine_rack"){
    AssignCommand(oTalker, JumpToObject(GetWaypointByTag("old_city_wp")));}

// Wine Cellar Door
else if (GetTag(OBJECT_SELF) == "drunkdeep_door"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("dugcellar_enter")));
        AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("dugcellar_enter")));
        AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("dugcellar_enter")));
        AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("dugcellar_enter")));
        AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("dugcellar_enter")));
        AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("dugcellar_enter")));}




else {}
}
