//This is for grave digging
#include "nw_i0_tool"
#include "x0_i0_treasure"
void main()
{
object oPC = GetItemActivator();
object oArea = GetNearestObjectByTag("trg_grave", oPC);
int nGrave = GetLocalInt(oArea, "graveset");
location lSpawn = GetLocation(oPC);

if (nGrave == 0){
    SetLocalInt(oArea, "graveset", 1);
    SetLocalInt(oArea, "gravetime", 1);
    AdjustAlignment(oPC, ALIGNMENT_CHAOTIC, 1);
    {int nRandom = d20(1);
         if (nRandom == 1){
              CreateObject(OBJECT_TYPE_CREATURE, "ld_skeleton", lSpawn, TRUE);}
         else if (nRandom == 2){
              CreateObject(OBJECT_TYPE_CREATURE, "ld_ghoul", lSpawn, TRUE);}
         else if (nRandom == 3){
              CreateObject(OBJECT_TYPE_CREATURE, "zombie002", lSpawn, TRUE);}
         else if (nRandom == 3){
              CreateObject(OBJECT_TYPE_CREATURE, "zombie003", lSpawn, TRUE);}
         else if ((nRandom == 4) && (GetHitDice(oPC) > 14)){
              CreateObject(OBJECT_TYPE_CREATURE, "ld_lich", lSpawn, TRUE);}
         else {
              GenerateLowTreasure(oPC);}}
}
else {
    FloatingTextStringOnCreature("This grave appears to have nothing of value.", oPC, FALSE);}
}
