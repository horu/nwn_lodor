// This is for trigger portals that teleport you somewhere
void main()
{
object oPC = GetEnteringObject();
object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);
object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oPC);
object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);
object oBook = GetItemPossessedBy(oPC, "faction_report");

if (GetIsPC(oPC) == TRUE){

// Portal In Zaltos' Fortress
if (GetTag(OBJECT_SELF) == "teleport_zaltos"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("zaltos_prtwp1")));}

// Portal In Zaltos' Fortress
else if (GetTag(OBJECT_SELF) == "zal_new_portlu"){
    if (GetObjectByTag("zaltoscreaport") != OBJECT_INVALID){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("zaltos_prtwp2")));}}

// Portal In Nilas To Silver
else if (GetTag(OBJECT_SELF) == "teleport_nilquck1"){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilas_qport2")));}
else if (GetTag(OBJECT_SELF) == "teleport_nilquck2"){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("nilas_qport1")));}

// Portal In Faraldor Tower
else if (GetTag(OBJECT_SELF) == "teleport_elf"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("tport_human")));}

// Portal In Grandul Ruins
else if (GetTag(OBJECT_SELF) == "teleport_minotaur"){
    if ((GetIsPC(oPC) == TRUE) && (GetSubRace(oPC) == "Minotaur")){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("mino_outpp")));}
    else {
        FloatingTextStringOnCreature("What is this portal?", oPC, FALSE);}}

// Portal To Grandul Ruins
else if (GetTag(OBJECT_SELF) == "teleport_minotaur2"){
    if ((GetIsPC(oPC) == TRUE) && (GetSubRace(oPC) == "Minotaur")){
        int nFaction = GetLocalInt(oBook, "minotaur");
        if (nFaction < 11){
          FloatingTextStringOnCreature("The wizard has banished me.", oPC, FALSE);}
        else {
          AssignCommand(oPC, PlaySound("as_mg_telepout1"));
          AssignCommand(oPC, JumpToObject(GetWaypointByTag("mino_outpp2")));}}
    else {
        FloatingTextStringOnCreature("What is this portal?", oPC, FALSE);}}

// Portal In Aldur Tower
else if (GetTag(OBJECT_SELF) == "teleport_aldur"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("tport_elf")));}

// Portal In The Clouds
else if (GetTag(OBJECT_SELF) == "teleport_cloud"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("feefifogo")));}

// Portal In Well of Souls
else if (GetTag(OBJECT_SELF) == "well_soul_port1"){
    if (GetObjectByTag("demon_lightp1") != OBJECT_INVALID){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("demon_island")));}}

// Portal In Well of Souls
else if (GetTag(OBJECT_SELF) == "well_soul_port2"){
    if (GetObjectByTag("demon_lightp2") != OBJECT_INVALID){
        AssignCommand(oPC, PlaySound("as_mg_telepout1"));
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("demon_mnland")));}}

// Portal In Dracz's Palace
else if (GetTag(OBJECT_SELF) == "dracz_teleport"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("dracz_nilas")));}

// Door to Firebrand Keep
else if (GetTag(OBJECT_SELF) == "firebrn_welcome"){
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    if (GetLocalInt(oQuest, "qs1c") > 2){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("firebrand_welcome")));}
    else {
        FloatingTextStringOnCreature("How do I get in here?", oPC, FALSE);}}

// Portal In Mind Flayers
else if (GetTag(OBJECT_SELF) == "flayer_port1"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("flayer_port_2")));}

// Portal In Mind Flayers
else if (GetTag(OBJECT_SELF) == "flayer_port2"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("flayer_port_1")));}

// Portal In Tower of Runes
else if (GetTag(OBJECT_SELF) == "teleport_rune1"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("rune_port_1")));
    AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("rune_port_1")));
    AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("rune_port_1")));
    AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("rune_port_1")));
    AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("rune_port_1")));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("rune_port_1")));}

// Portal In Tower of Runes
else if (GetTag(OBJECT_SELF) == "teleport_rune2"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("rune_port_2")));
    AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("rune_port_2")));
    AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("rune_port_2")));
    AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("rune_port_2")));
    AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("rune_port_2")));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("rune_port_2")));}

// Portal In Tower of Runes
else if (GetTag(OBJECT_SELF) == "teleport_rune3"){
    AssignCommand(oPC, PlaySound("as_mg_telepout1"));
    AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("rune_port_3")));
    AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("rune_port_3")));
    AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("rune_port_3")));
    AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("rune_port_3")));
    AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("rune_port_3")));
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("rune_port_3")));}

// Portal In Tower of Runes
else if (GetTag(OBJECT_SELF) == "rune_trg_port"){
    if (GetLocalInt(oPC, "runehead") == 1){
        if (GetObjectByTag("rune_master1") != OBJECT_INVALID){
            AssignCommand(oPC, PlaySound("as_mg_telepout1"));
            AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("teleruneo1")));
            AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("teleruneo1")));
            AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("teleruneo1")));
            AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("teleruneo1")));
            AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("teleruneo1")));
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("teleruneo1")));}}
    else if (GetLocalInt(oPC, "runehead") == 2){
        if (GetObjectByTag("rune_master2") != OBJECT_INVALID){
            AssignCommand(oPC, PlaySound("as_mg_telepout1"));
            AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("teleruneo2")));
            AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("teleruneo2")));
            AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("teleruneo2")));
            AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("teleruneo2")));
            AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("teleruneo2")));
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("teleruneo2")));}}
    else if (GetLocalInt(oPC, "runehead") == 3){
        if (GetObjectByTag("rune_master3") != OBJECT_INVALID){
            AssignCommand(oPC, PlaySound("as_mg_telepout1"));
            AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("teleruneo3")));
            AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("teleruneo3")));
            AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("teleruneo3")));
            AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("teleruneo3")));
            AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("teleruneo3")));
            AssignCommand(oPC, JumpToObject(GetWaypointByTag("teleruneo3")));}}
    else {}}
















else {}}
else {}
}
