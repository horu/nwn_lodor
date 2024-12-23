#include "x0_i0_treasure"
void main()
{

object oPC = GetLastOpenedBy();
object oMonster = GetNearestCreature(CREATURE_TYPE_IS_ALIVE, TRUE, oPC);
location lMonster = GetLocation(oMonster);
location lMe = GetLocation(oPC);
float fDistance = GetDistanceBetweenLocations(lMonster, lMe);
int nDistance = FloatToInt(fDistance);
if ((oMonster != OBJECT_INVALID) && (nDistance < 6) && (GetIsPC(oMonster) == FALSE)){
 effect eBad = GetFirstEffect(oPC);
   while(GetIsEffectValid(eBad)){
      if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
         GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY){
            RemoveEffect(oPC, eBad);}
 eBad = GetNextEffect(oPC);}}

DelayCommand(890.0, ExecuteScript("treasure_cleanup", OBJECT_SELF));

    // Set respawntime float to the number of seconds.
    float respawntime = 900.00;
    if (GetLocalInt(OBJECT_SELF,"NW_DO_ONCE") != 0)
    {
       return;
    }
    object oLastOpener = GetLastOpener();
    SetLocalInt(OBJECT_SELF, "opened", 1);

    if (d100(2) == 2){CreateItemOnObject("treasure_map", OBJECT_SELF, 1);}

    if (GetTag(OBJECT_SELF) == "miradir_shelf"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}
    else if (GetTag(OBJECT_SELF) == "vamp_books"){
        if (GetSubRace(oLastOpener) != "Vampire"){CreateArcaneScroll(OBJECT_SELF, oLastOpener);}}
    else if (GetTag(OBJECT_SELF) == "miradir_bookshelf"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}
    else if (GetTag(OBJECT_SELF) == "bog_bookshelf"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}
    else if (GetTag(OBJECT_SELF) == "zal_pile"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}
    else if (GetTag(OBJECT_SELF) == "ld_runebook"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}
    else if (GetTag(OBJECT_SELF) == "ldlow_bookshelf"){
        CreateArcaneScroll(OBJECT_SELF, oLastOpener);}




    SetLocalInt(OBJECT_SELF,"NW_DO_ONCE",1);
    ShoutDisturbed();
    // Command added to delay the <span class="highlight">respawn</span>
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 0)));
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "opened", 0)));
}
