// This script does a calculation of certain factors to determine
// what price to give the PC.  This is for Evil characters.
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC) == TRUE){

if (GetHasFeat(FEAT_SILVER_PALM, oPC)){SetLocalInt(oPC, "nMood4", 2);}

// Checks the Appraise Skill
if (GetHasSkill(SKILL_APPRAISE, oPC)){
    int nSkill = GetSkillRank(SKILL_APPRAISE, oPC);
        if (nSkill < 5){
            SetLocalInt(oPC, "nMood1", 1);}
        else if ((nSkill >= 5) && (nSkill <= 9)){
            SetLocalInt(oPC, "nMood1", 2);}
        else if ((nSkill >= 10) && (nSkill <= 14)){
            SetLocalInt(oPC, "nMood1", 3);}
        else if ((nSkill >= 15) && (nSkill <= 19)){
            SetLocalInt(oPC, "nMood1", 4);}
        else if ((nSkill >= 20) && (nSkill <= 24)){
            SetLocalInt(oPC, "nMood1", 5);}
        else if ((nSkill >= 25) && (nSkill <= 29)){
            SetLocalInt(oPC, "nMood1", 6);}
        else if ((nSkill >= 30) && (nSkill <= 34)){
            SetLocalInt(oPC, "nMood1", 7);}
        else if ((nSkill >= 35) && (nSkill <= 39)){
            SetLocalInt(oPC, "nMood1", 8);}
        else if (nSkill >= 40){
            SetLocalInt(oPC, "nMood1", 9);}
        else {
            SetLocalInt(oPC, "nMood1", 0);}

// Checks the PC's Charisma score
int nCha = GetAbilityScore(oPC, ABILITY_CHARISMA);
if ((nCha > 15) && (nCha < 18)){
    SetLocalInt(oPC, "nMood2", 1);}
else if ((nCha > 17) && (nCha < 21)){
    SetLocalInt(oPC, "nMood2", 2);}
else if (nCha > 20){
    SetLocalInt(oPC, "nMood2", 3);}
else {
    SetLocalInt(oPC, "nMood2", 0);}

// Checks the Alignment and Faction of the PC
if ((GetReputation(OBJECT_SELF, oPC) < 70) && (GetReputation(OBJECT_SELF, oPC) > 29)){
    if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD){
        SetLocalInt(oPC, "nMood3", 0);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL){
        SetLocalInt(oPC, "nMood3", 2);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL){
        SetLocalInt(oPC, "nMood3", 4);}
    else {
        SetLocalInt(oPC, "nMood3", 0);}}
else if ((GetReputation(OBJECT_SELF, oPC) < 95) && (GetReputation(OBJECT_SELF, oPC) > 69)){
    if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD){
        SetLocalInt(oPC, "nMood3", 4);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL){
        SetLocalInt(oPC, "nMood3", 6);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL){
        SetLocalInt(oPC, "nMood3", 8);}
    else {
        SetLocalInt(oPC, "nMood3", 0);}}
else if (GetReputation(OBJECT_SELF, oPC) > 94){
    if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD){
        SetLocalInt(oPC, "nMood3", 8);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL){
        SetLocalInt(oPC, "nMood3", 10);}
    else if(GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL){
        SetLocalInt(oPC, "nMood3", 12);}
    else {
        SetLocalInt(oPC, "nMood3", 0);}}

// Checks the Race of the PC
if (GetRacialType(oPC) == RACIAL_TYPE_GNOME){
    SetLocalInt(oPC, "nGnome", 2);}
else if (GetRacialType(oPC) == RACIAL_TYPE_HUMAN){
    SetLocalInt(oPC, "nHuman", 2);}
else if (GetRacialType(oPC) == RACIAL_TYPE_HALFELF){
    SetLocalInt(oPC, "nElf", 2);
    SetLocalInt(oPC, "nHuman", 2);}
else if (GetRacialType(oPC) == RACIAL_TYPE_HALFLING){
    SetLocalInt(oPC, "nHalfling", 2);}
else if (GetRacialType(oPC) == RACIAL_TYPE_HALFORC){
    SetLocalInt(oPC, "nHalforc", 2);}
else if (GetRacialType(oPC) == RACIAL_TYPE_DWARF){
    if (GetSubRace(oPC) == "Duergar"){
        SetLocalInt(oPC, "nDuergar", 2);}
    else {SetLocalInt(oPC, "nDwarf", 2);}}
else if (GetRacialType(oPC) == RACIAL_TYPE_ELF){
    if (GetSubRace(oPC) == "Drow"){
        SetLocalInt(oPC, "nDrow", 2);}
    else if (GetSubRace(oPC) == "Sylvan"){
        SetLocalInt(oPC, "nSylvan", 2);}
    else {SetLocalInt(oPC, "nElf", 2);}}
else if (GetRacialType(oPC) == RACIAL_TYPE_FEY){
    if (GetSubRace(oPC) == "Quickling"){
        SetLocalInt(oPC, "nQuickling", 2);}
    else if (GetSubRace(oPC) == "Sprite"){
        SetLocalInt(oPC, "nSprite", 2);}
    else {SetLocalInt(oPC, "nBrownie", 2);}}
else {}

}}
else {}
}
