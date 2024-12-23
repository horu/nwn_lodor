// Low Level Box Loot List
#include "NW_O2_CONINCLUDE"
void main()
{

object oPC = GetLastOpenedBy();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
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

DelayCommand(590.0, ExecuteScript("treasure_cleanup", OBJECT_SELF));

    // Set respawntime float to the number of seconds.
    float respawntime = 600.00;
    if (GetLocalInt(OBJECT_SELF,"NW_DO_ONCE") != 0)
    {
       return;
    }
    object oLastOpener = GetLastOpener();
    SetLocalInt(OBJECT_SELF, "opened", 1);

    if (GetTag(OBJECT_SELF) == "chest_goodies"){
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateMediumTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        ExecuteScript("loot_ench_arm", OBJECT_SELF);
        ExecuteScript("loot_ench_wep", OBJECT_SELF);}

    else if (GetTag(OBJECT_SELF) == "qs1j_chest"){
        if ((GetLocalInt(oQuest, "qs1jpart8") != 1) && (GetLocalInt(oQuest, "qs1j") > 0)){
             string sQS1j1 = GetLocalString(oQuest, "qs1jpart3");//Item
             string sQS1j2 = GetLocalString(oQuest, "qs1jpart4");//Area
             string sQS1j3 = GetLocalString(oQuest, "qs1jpart2");//Name
             if (GetTag(GetArea(OBJECT_SELF)) == sQS1j2){
                  SetLocalInt(OBJECT_SELF, "qs1jmove", 1);
                  CreateItemOnObject(sQS1j1, oPC, 1);
                  SetLocalInt(oQuest, "qs1jpart8", 1);
                  FloatingTextStringOnCreature("You found the " + sQS1j3 + ".", oPC, FALSE);
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
             else {
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);}}
         else {
             GenerateLowTreasure(oLastOpener, OBJECT_SELF);}}

    else if (GetTag(OBJECT_SELF) == "qs1m_crate"){
        if (GetLocalInt(oQuest, "qs1m") == 1){
             SetLocalInt(oQuest, "qs1m", 2);
             CreateItemOnObject("qs1m_item", oPC, 1);
             FloatingTextStringOnCreature("You found the Chalice of Malad.", oPC, FALSE);
             GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
         else {
             GenerateLowTreasure(oLastOpener, OBJECT_SELF);}}




    else {CreateItemOnObject("miradir_key", OBJECT_SELF, 1);}

    SetLocalInt(OBJECT_SELF,"NW_DO_ONCE",1);
    ShoutDisturbed();
    // Command added to delay the <span class="highlight">respawn</span>
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 0)));
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "opened", 0)));
}
