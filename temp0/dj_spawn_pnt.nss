// This script sets the respawn point for the PC
#include "nw_i0_tool"
void main()
{
// DEBUG
//object oRespawner = GetLastRespawnButtonPresser();
object oRespawner = OBJECT_SELF;
object oBook = GetItemPossessedBy(oRespawner, "faction_report");
int nSaved = GetLocalInt(oBook, "bind_tree");

 //Make the PC invisible for their respawn protection
    object oTarget = oRespawner;
    effect eImpact = EffectVisualEffect(VFX_IMP_HEAD_MIND);
    effect eInvis = EffectInvisibility(INVISIBILITY_TYPE_NORMAL);
    effect eVis = EffectVisualEffect(VFX_DUR_INVISIBILITY);
    effect eDur = EffectVisualEffect(VFX_DUR_CESSATE_POSITIVE);
    effect eCover = EffectConcealment(50);
    effect eLink = EffectLinkEffects(eDur, eCover);
    eLink = EffectLinkEffects(eLink, eVis);
    SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, SPELL_IMPROVED_INVISIBILITY, FALSE));
    int nDuration = 1;
    int nMetaMagic = GetMetaMagicFeat();
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eImpact, oTarget);
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLink, oTarget, TurnsToSeconds(nDuration));
    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eInvis, oTarget, TurnsToSeconds(nDuration));

if (nSaved > 0){

if(GetLocalInt(oBook, "bind_tree") == 1){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_hobbit")));}
else if(GetLocalInt(oBook, "bind_tree") == 2){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_elf")));}
else if(GetLocalInt(oBook, "bind_tree") == 3){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_gnome")));}
else if(GetLocalInt(oBook, "bind_tree") == 4){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_drow")));}
else if(GetLocalInt(oBook, "bind_tree") == 5){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_human")));}
else if(GetLocalInt(oBook, "bind_tree") == 6){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_orc")));}
else if(GetLocalInt(oBook, "bind_tree") == 7){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_dwarf")));}
else if(GetLocalInt(oBook, "bind_tree") == 8){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_brownie")));}
else if(GetLocalInt(oBook, "bind_tree") == 9){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_quickling")));}
else if(GetLocalInt(oBook, "bind_tree") == 10){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_duergar")));}
else if(GetLocalInt(oBook, "bind_tree") == 11){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_daclor")));}
else if(GetLocalInt(oBook, "bind_tree") == 12){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_scorn")));}
else if(GetLocalInt(oBook, "bind_tree") == 13){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_tower")));}
else if(GetLocalInt(oBook, "bind_tree") == 14){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_fall")));}
else if(GetLocalInt(oBook, "bind_tree") == 15){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_cata")));}
else if(GetLocalInt(oBook, "bind_tree") == 16){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_ruin")));}
else if(GetLocalInt(oBook, "bind_tree") == 17){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_crypt")));}
else if(GetLocalInt(oBook, "bind_tree") == 18){
    AssignCommand(oRespawner, JumpToObject(GetObjectByTag("bind_coffin_citdel")));}
else if(GetLocalInt(oBook, "bind_tree") == 19){
    int nFaction = GetLocalInt(oBook, "minotaur");
    if (nFaction < 11){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("mino_outpp")));}
    else {
        AssignCommand(oRespawner, JumpToObject(GetObjectByTag("tree_bind_mino")));}}
else if(GetLocalInt(oBook, "bind_tree") == 20){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("VAMPIRE_DEAD")));}

// For New Monster Races (Lizardman, Goblin, Bugbear, & Kobold)
else if(GetLocalInt(oBook, "bind_tree") == 21){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_1")));}
else if(GetLocalInt(oBook, "bind_tree") == 22){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_2")));}
else if(GetLocalInt(oBook, "bind_tree") == 23){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_3")));}
else if(GetLocalInt(oBook, "bind_tree") == 24){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_4")));}
else if(GetLocalInt(oBook, "bind_tree") == 25){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_5")));}
else if(GetLocalInt(oBook, "bind_tree") == 26){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_6")));}
else if(GetLocalInt(oBook, "bind_tree") == 27){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_7")));}
else {
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_0")));}
}

else {
  if (GetSubRace(oRespawner) == "Vampire"){
    AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_VAMPIRE")));}
  else {
    if (GetRacialType(oRespawner) == RACIAL_TYPE_HALFLING){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_BRUSHWOOD")));}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_DWARF){
        if (GetSubRace(oRespawner) == "Duergar"){
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_BORBAN")));}
        else {
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_VEGMNT")));}}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_ELF){
        if (GetSubRace(oRespawner) == "Drow"){
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_NILASMNT")));}
        else if (GetSubRace(oRespawner) == "Sylvan"){
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_SYLVAN")));}
        else {
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_FARALDOR")));}}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_FEY){
        if (GetSubRace(oRespawner) == "Quickling"){
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_QUICKLING")));}
        else if (GetSubRace(oRespawner) == "Sprite"){
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_SPRITE")));}
        else {
            AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_HIDGROVE")));}}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_GNOME){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_HAMLET")));}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_HALFORC){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_GROGOR")));}
    else if (GetRacialType(oRespawner) == IP_CONST_RACIALTYPE_GIANT){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_GROGOR")));}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_HUMANOID_MONSTROUS){
        int nFaction = GetLocalInt(oBook, "minotaur");
        if (nFaction < 11){
           AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("mino_outpp")));}
        else {
           AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_MINOL")));}}
    else if (GetRacialType(oRespawner) == RACIAL_TYPE_HUMAN){
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("LOC_ALDUR")));}
    else {
        AssignCommand(oRespawner, JumpToObject(GetWaypointByTag("P_SUBRACE_0")));}}}
}
