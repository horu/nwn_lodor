//Object starts conversation when used
void main()
{
object oPC = GetLastUsedBy();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

// This is for bind coffins
if (GetStringLeft(GetTag(OBJECT_SELF),12)=="bind_coffin_"){
    if (GetSubRace(oPC) == "Vampire"){
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}
    else {
        FloatingTextStringOnCreature("This coffin seems to be empty.", oPC, FALSE);}}

// This is for bind trees
else if (GetStringLeft(GetTag(OBJECT_SELF),10)=="tree_bind_"){
    if (GetSubRace(oPC) == "Vampire"){
        FloatingTextStringOnCreature("Hmmm...this tree does not react to me.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// This is for the barrel for lizards, goblins, bugbears & kobolds
else if (GetTag(OBJECT_SELF)=="st_mon_barrel"){
    if (GetHitDice(oPC) > 1){
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// This is for the vampire book
else if (GetTag(OBJECT_SELF) == "vampire_book"){
    if (GetSubRace(oPC) == "Vampire"){
        FloatingTextStringOnCreature("I've read this already.", oPC, FALSE);}
    else if ((GetRacialType(oPC) == RACIAL_TYPE_GIANT) ||
             (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS) ||
             (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_REPTILIAN) ||
             (GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_GOBLINOID)){
        FloatingTextStringOnCreature("This book has strange markings.", oPC, FALSE);}
    else if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
        FloatingTextStringOnCreature("This book does not interest me.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// This is to read the pillar by Firebrand Keep
else if (GetTag(OBJECT_SELF) == "ld_fireb_pillar"){
    if (GetLocalInt(oQuest, "qs1c") > 1){
        FloatingTextStringOnCreature("This pillar no longer interests me.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// Insurance Vault in the Vampire Lair
else if (GetTag(OBJECT_SELF) == "insurance_vamp"){
    if (GetSubRace(oPC) != "Vampire"){
        FloatingTextStringOnCreature("This safe seems to be empty.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// This is for the Calyril Quest Crate
else if (GetTag(OBJECT_SELF) == "crate_calqest"){
    if (GetLocalInt(oQuest, "qs1d1") == 1){
        SetLocalInt(oQuest, "qs1d1", 0);
        CreateObject(OBJECT_TYPE_CREATURE, "ld_farydrgon", GetLocation(oPC));
        CreateItemOnObject("altar_quest_cal1", oPC, 1);}
    else if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item3", oPC, 1);
        FloatingTextStringOnCreature("You have found Celduil's Crystal Ball.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("It appears to be empty.", oPC, FALSE);}}

// This is for the Uronia Pillar Quest
else if (GetTag(OBJECT_SELF) == "ld_qst_rel_jah"){
    if (GetLocalInt(oQuest, "qs1d12") == 1){
        SetLocalInt(oQuest, "qs1d12", 0);
        CreateItemOnObject("alter_qst_uroni3", oPC, 1);
        FloatingTextStringOnCreature("You take a piece of stone from the pillar.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This pillar crumbled with age.", oPC, FALSE);}}

// This is for the Vampire Quest
else if (GetTag(OBJECT_SELF) == "quest_1b_box"){
    if (GetLocalInt(oQuest, "qs1b") == 1){
        SetLocalInt(oQuest, "qs1b", 2);
        CreateItemOnObject("quest_1b_item", oPC, 1);
        FloatingTextStringOnCreature("You found the Holy Symbol of Uronia.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This chest is empty.", oPC, FALSE);}}


// This is for the Puril Crystal Quest
else if (GetTag(OBJECT_SELF) == "puril_qst_brl"){
    if (GetLocalInt(oQuest, "qs1d10") == 1){
        SetLocalInt(oQuest, "qs1d10", 0);
        CreateItemOnObject("alter_qst_puril2", oPC, 1);
        FloatingTextStringOnCreature("You found the ancient crystals.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for the Somry Crystal Quest
else if (GetTag(OBJECT_SELF) == "somry_crate"){
    if (GetLocalInt(oQuest, "qs1d4") == 1){
        SetLocalInt(oQuest, "qs1d4", 0);
        CreateItemOnObject("alter_qst_somry1", oPC, 1);
        FloatingTextStringOnCreature("You found the Heart Of The Jungle.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This box is empty.", oPC, FALSE);}}

// This is for the Oweodd Crystal Quest
else if (GetTag(OBJECT_SELF) == "oweodd_qschst"){
    if (GetLocalInt(oQuest, "qs1d5") == 1){
        SetLocalInt(oQuest, "qs1d5", 0);
        CreateItemOnObject("alter_qst_oweod2", oPC, 1);
        FloatingTextStringOnCreature("You found the Flaming Eye.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This chest is empty.", oPC, FALSE);}}

// This is for the Torm Religion Quest
else if (GetTag(OBJECT_SELF) == "torm_barrelqst"){
    if (GetLocalInt(oQuest, "qs1d7") == 1){
        SetLocalInt(oQuest, "qs1d7", 0);
        CreateItemOnObject("alter_qst_torm3", oPC, 1);
        FloatingTextStringOnCreature("You found the Stone of the Wise Man.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for the Torm Religion Quest
else if (GetTag(OBJECT_SELF) == "torm_armoireqst"){
    if (GetLocalInt(oQuest, "qs1d7") == 1){
        SetLocalInt(oQuest, "qs1d7", 0);
        CreateItemOnObject("alter_qst_torm2", oPC, 1);
        FloatingTextStringOnCreature("You found the Blood of Barkled.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This armoire is empty.", oPC, FALSE);}}

// This is for the Unur Religion Quest
else if (GetTag(OBJECT_SELF) == "elder_brain"){
    if (GetLocalInt(oQuest, "qs1d6") == 1){
        SetLocalInt(oQuest, "qs1d6", 0);
        CreateItemOnObject("alter_qst_unur3", oPC, 1);
        FloatingTextStringOnCreature("You have retrieved fluid from the elder brain.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("The elder brain rests in the pool before you.", oPC, FALSE);}}

// This is for the Unur Religion Quest
else if (GetTag(OBJECT_SELF) == "unur_blcrateqst"){
    if (GetLocalInt(oQuest, "qs1d6") == 1){
        SetLocalInt(oQuest, "qs1d6", 0);
        CreateItemOnObject("alter_qst_unur2", oPC, 1);
        FloatingTextStringOnCreature("You have found the Goblet Of Radrel.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This chest is empty.", oPC, FALSE);}}

// This is for the Blue Dragon Crystal Grinder Quest
else if (GetTag(OBJECT_SELF) == "blue_cry_cprs"){
    if (GetLocalInt(oQuest, "qs1f") == 0){
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}
    else {
        FloatingTextStringOnCreature("He has been dead for awhile.", oPC, FALSE);}}

// This is for a +1 Weapon Quest in Aldur
else if (GetTag(OBJECT_SELF) == "qs1g_kbbarel"){
    if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item2", oPC, 1);
        FloatingTextStringOnCreature("You have found Hollin's Pick Axe.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for a +1 Weapon Quest in Vegnar
else if (GetTag(OBJECT_SELF) == "baol_barrel"){
    if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item1", oPC, 1);
        FloatingTextStringOnCreature("You have found Vifur's Painting.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for a +1 Weapon Quest in Dedry
else if (GetTag(OBJECT_SELF) == "gnome_newqst"){
    if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item5", oPC, 1);
        FloatingTextStringOnCreature("You have found Treant Sap", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for a +1 Weapon Quest in Quickling
else if (GetTag(OBJECT_SELF) == "qsg1_base"){
    if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item6", oPC, 1);
        FloatingTextStringOnCreature("You have found an Ivory Statue", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This crate is empty.", oPC, FALSE);}}

// This is for a +1 Weapon Quest in Drow
else if (GetTag(OBJECT_SELF) == "qsg1_drow"){
    if (GetLocalInt(oQuest, "qs1g") == 1){
        SetLocalInt(oQuest, "qs1g", 2);
        CreateItemOnObject("qs1g_item7", oPC, 1);
        FloatingTextStringOnCreature("You have found an Aniriorfin's Scroll", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This dusty shelf is void of books.", oPC, FALSE);}}

// This is for the magic item recharge quest
else if (GetTag(OBJECT_SELF) == "qs1h_tome"){
    if (GetLocalInt(oQuest, "qs1h") == 1){
        FloatingTextStringOnCreature("I have read this tome already.", oPC, FALSE);}
    else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}}

// This is for the magic item recharge quest
else if (GetTag(OBJECT_SELF) == "qs1h_barrel"){
    if (GetLocalInt(oQuest, "qs1h") == 4){
        SetLocalInt(oQuest, "qs1h", 5);
        CreateItemOnObject("qs1h_item", oPC, 1);
        FloatingTextStringOnCreature("You have found the Brodak Story Book", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This barrel is empty.", oPC, FALSE);}}

// This is for the magic seed quest
else if (GetTag(OBJECT_SELF) == "brodak_glbook"){
    if (GetLocalInt(oQuest, "qs1n") == 0){
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}
    else {
        FloatingTextStringOnCreature("I already read this book.", oPC, FALSE);}}

// This is for the magic item recharge quest
else if (GetTag(OBJECT_SELF) == "tarhelum_ball"){
    int nFeel = GetReputation(OBJECT_SELF, oPC);
    if (nFeel > 10){
        CreateItemOnObject("qs1h_item2", oPC, 1);
        FloatingTextStringOnCreature("You can now use the crystal ball's power.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This ball has a magical glow.", oPC, FALSE);}}

// Brownie Boat
else if (GetTag(OBJECT_SELF) == "ship_brown"){
    if ((GetSubRace(oPC) == "Brownie") || (GetSubRace(oPC) == "Quickling") || (GetSubRace(oPC) == "Sprite") || (GetSubRace(oPC) == "Sylvan")){
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}
    else {
        FloatingTextStringOnCreature("This boat is quite sturdy.", oPC, FALSE);}}

// Sylvan Tree
else if (GetTag(OBJECT_SELF) == "sylvan_tree"){
    if (GetSubRace(oPC) == "Sylvan"){
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("sylvan_tops")));}
    else {
        FloatingTextStringOnCreature("This tree is quite tall.", oPC, FALSE);}}


else {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);}
}
