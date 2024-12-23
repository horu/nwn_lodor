// This allows the Deity to mark the PCs location
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");

int nLove = GetLocalInt(oInfo, "godlove");

    if (nLove > 4){
        int nChange = nLove - 4;
        SetLocalInt(oInfo, "godlove", nChange);
        effect eVis = EffectVisualEffect(VFX_IMP_UNSUMMON);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
        location lPlace = GetLocation(oPC);
        string sPlace = GetTag(GetArea(oPC));
        SetLocalLocation(oInfo, "godmark", lPlace);
        SetLocalString(oInfo, "godmark2", sPlace);
        SendMessageToPC(oPC,"You have marked your ring with this location.");}

    else {
        FloatingTextStringOnCreature("You do not have enough favor from your deity to mark your ring.", oPC, FALSE);}
}
