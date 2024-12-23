void main()
{
object oPC = GetItemActivatedTarget();
object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);
object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oPC);
object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);

// Hole in Saryl Swamp
if (GetLocalInt(oPC,"climbing") == 1){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("veeslath_at_up")));}

// Hole in Frozen Trail
else if (GetLocalInt(oPC,"climbing") == 2){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("frozen_deep_up")));}

// Brakal's Tower
else if (GetLocalInt(oPC,"climbing") == 3){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("brakal_twr_down")));}

// Altar Of Unur (DOWN)
else if (GetLocalInt(oPC,"climbing") == 4){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("unur_wp")));}

// Altar Of Unur (UP)
else if (GetLocalInt(oPC,"climbing") == 5){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("unur_daclor")));}

// Pit In Daclor's Crossing
else if (GetLocalInt(oPC,"climbing") == 6){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_form_hole")));}

// Red Dragon Up In Daclor
else if (GetLocalInt(oPC,"climbing") == 7){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_reddrg_up")));}

// Red Dragon Down In Daclor
else if (GetLocalInt(oPC,"climbing") == 8){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_reddrg_dwn")));}

// Clarion TightRope I
else if (GetLocalInt(oPC,"climbing") == 9){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("clarion_pit_1")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("clarion_pit_1")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("clarion_pit_1")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("clarion_pit_1")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("clarion_pit_1")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("clarion_pit_1")));}

// Clarion TightRope II
else if (GetLocalInt(oPC,"climbing") == 10){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("clarion_pit_2")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("clarion_pit_2")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("clarion_pit_2")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("clarion_pit_2")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("clarion_pit_2")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("clarion_pit_2")));}

// Clarion Harpies
else if (GetLocalInt(oPC,"climbing") == 11){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("harpy_up")));}

// Prael Cliffs
else if (GetLocalInt(oPC,"climbing") == 12){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("prael_downadee")));}

// Sliver Dragon
else if (GetLocalInt(oPC,"climbing") == 13){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("prael_upadee")));}

// Shifting Growth
else if (GetLocalInt(oPC,"climbing") == 14){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_shift_drgup")));}

// Gold Dragon
else if (GetLocalInt(oPC,"climbing") == 15){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_shift_drgdwn")));}

// Green Dragon
else if (GetLocalInt(oPC,"climbing") == 16){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("green_drg_dn")));}

// Cliffs Of Fallen Up
else if (GetLocalInt(oPC,"climbing") == 17){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("clif_fal_1")));}

// Cliffs Of Fallen Down
else if (GetLocalInt(oPC,"climbing") == 18){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("clif_fal_2")));}

// Harpy Cliffs
else if (GetLocalInt(oPC,"climbing") == 19){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("harpy_down")));}

// Walkway of Wind I
else if (GetLocalInt(oPC,"climbing") == 20){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("walkwindwp2")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("walkwindwp2")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("walkwindwp2")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("walkwindwp2")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("walkwindwp2")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("walkwindwp2")));}

// Walkway of Wind II
else if (GetLocalInt(oPC,"climbing") == 21){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("walkwindwp1")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("walkwindwp1")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("walkwindwp1")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("walkwindwp1")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("walkwindwp1")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("walkwindwp1")));}

// Falcor Nest
else if (GetLocalInt(oPC,"climbing") == 22){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("falcor_down")));}

// Dedry Tunnels
else if (GetLocalInt(oPC,"climbing") == 23){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("dar_ropdown")));}

// The Hive Hole
else if (GetLocalInt(oPC,"climbing") == 24){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("dac_holdhive")));}

// Vegnar Passageway
else if (GetLocalInt(oPC,"climbing") == 25){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("vegnarrope1")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("vegnarrope1")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("vegnarrope1")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("vegnarrope1")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("vegnarrope1")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("vegnarrope1")));}

// Vegnar Passageway
else if (GetLocalInt(oPC,"climbing") == 26){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("vegnarrope2")));
   AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("vegnarrope2")));
   AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("vegnarrope2")));
   AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("vegnarrope2")));
   AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("vegnarrope2")));
   AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("vegnarrope2")));}

// Well Of Souls
else if (GetLocalInt(oPC,"climbing") == 27){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("well_imhere")));}

// Air Witch
else if (GetLocalInt(oPC,"climbing") == 28){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("air_witch_low")));}

// Air Witch
else if (GetLocalInt(oPC,"climbing") == 29){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("air_witch_top")));}

// Earth Witch DOWN
else if (GetLocalInt(oPC,"climbing") == 30){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("eat_witch_low")));}

// Earth Witch UP
else if (GetLocalInt(oPC,"climbing") == 31){
   AssignCommand(oPC, JumpToObject(GetWaypointByTag("eat_witch_top")));}





else {}
}
