// This checks the PC level and God for the proper tribute to pay to the god
void main()
{
object oPC = GetPCSpeaker();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
int nXP = GetXP(oPC);
int nSac1 = nXP - 50;
int nSac2 = nXP - 75;
int nSac3 = nXP - 100;
int nSac4 = nXP - 125;

if((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9) && (nSac1 >= 0)){
     int nGod = GetLocalInt(oInfo, "godlove");
     int nLove = nGod + 4;
     SetXP(oPC, nSac1);
     SetLocalInt(oInfo, "godlove", nLove);
     AssignCommand (oPC, ActionPlayAnimation (ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
     ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
     string sSayThis = "I bless you for your tribute.";
     SpeakString(sSayThis);}

else if((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14) && (nSac2 >= 0)){
     int nGod = GetLocalInt(oInfo, "godlove");
     int nLove = nGod + 4;
     SetXP(oPC, nSac2);
     SetLocalInt(oInfo, "godlove", nLove);
     AssignCommand (oPC, ActionPlayAnimation (ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
     ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
     string sSayThis = "I bless you for your tribute.";
     SpeakString(sSayThis);}

else if((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19) && (nSac3 >= 0)){
     int nGod = GetLocalInt(oInfo, "godlove");
     int nLove = nGod + 4;
     SetXP(oPC, nSac3);
     SetLocalInt(oInfo, "godlove", nLove);
     AssignCommand (oPC, ActionPlayAnimation (ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
     ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
     string sSayThis = "I bless you for your tribute.";
     SpeakString(sSayThis);}

else if((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40) && (nSac4 >= 0)){
     int nGod = GetLocalInt(oInfo, "godlove");
     int nLove = nGod + 4;
     SetXP(oPC, nSac4);
     SetLocalInt(oInfo, "godlove", nLove);
     AssignCommand (oPC, ActionPlayAnimation (ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
     ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
     string sSayThis = "I bless you for your tribute.";
     SpeakString(sSayThis);}

else {
     string sSayThis = "You have nothing to pay tribute with.";
     SpeakString(sSayThis);}
}
