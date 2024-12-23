// Teleports the pc to the ring's marked location
#include "nw_i0_tool"
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
location lZone = GetLocalLocation(oInfo, "godmark");
string sZone = GetLocalString(oInfo, "godmark2");
object oPlace = GetObjectByTag(sZone);
vector vPlace = GetPositionFromLocation(lZone);
float fPlace = GetFacingFromLocation(lZone);
location lGo = Location(oPlace, vPlace, fPlace);
int nLove = GetLocalInt(oInfo, "godlove");

if (GetIsObjectValid(GetAreaFromLocation(lGo))==FALSE){
     FloatingTextStringOnCreature("Your ring is not marked for a location.", oPC, FALSE);}

else {
    if (nLove > 1){
        int nChange = nLove - 1;
        SetLocalInt(oInfo, "godlove", nChange);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        AssignCommand(oPC, JumpToLocation(lGo));
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, lGo, 5.0);}

    else {
        FloatingTextStringOnCreature("You do not have enough favor from your deity to be teleported.", oPC, FALSE);}
}}
