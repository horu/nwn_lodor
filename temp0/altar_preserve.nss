// This allows the Deity to preserver the PC so they don't suffer
// the penalties of death.
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
int nLove = GetLocalInt(oInfo, "godlove");
int oPreserve = GetLocalInt(oInfo, "preserve");

if (oPreserve == 0){
    if (nLove > 10){
        int nChange = nLove - 10;
        SetLocalInt(oInfo, "godlove", nChange);
        effect eVis = EffectVisualEffect(VFX_FNF_WAIL_O_BANSHEES);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        SetLocalInt(oInfo, "preserve", 1);
        SendMessageToPC(oPC,"You are protected by your deity from death's retribution.");}

    else {
        FloatingTextStringOnCreature("You do not have enough favor from your deity for preservation.", oPC, FALSE);}
}
else {
    FloatingTextStringOnCreature("You are already protected by preservation.", oPC, FALSE);}
}
