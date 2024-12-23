// This is for the Citadel Chess Board
void main()
{
object oCreature = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC);
if (GetIsObjectValid(oCreature) == TRUE && GetDistanceToObject(oCreature) < 6.0){

if (GetTag(OBJECT_SELF) == "ld_chess_knight"){
    effect eMind = EffectVisualEffect(VFX_IMP_HOLY_AID);
    location lMe = GetLocation(OBJECT_SELF);
    object oCitadel = CreateObject(OBJECT_TYPE_CREATURE, "ld_skel_knight", lMe, FALSE, "ld_skel_knight2");
    SetLocalInt(oCitadel, "dontkill", 1);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eMind, oCitadel);
    SetPlotFlag(OBJECT_SELF, FALSE);
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lMe, FALSE, "spw_chess1");
    DestroyObject(OBJECT_SELF, 0.2);}

else if (GetTag(OBJECT_SELF) == "ld_chess_bishop"){
    if (GetLocalInt(OBJECT_SELF, "chess_run") == 1){
    effect eMind = EffectVisualEffect(VFX_IMP_HOLY_AID);
    location lMe = GetLocation(OBJECT_SELF);
    object oCitadel = CreateObject(OBJECT_TYPE_CREATURE, "ld_licha", lMe, FALSE, "LD_LICH2");
    SetLocalInt(oCitadel, "dontkill", 1);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eMind, oCitadel);
    SetPlotFlag(OBJECT_SELF, FALSE);
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lMe, FALSE, "spw_chess2");
    DestroyObject(OBJECT_SELF, 0.2);}}

else if (GetTag(OBJECT_SELF) == "ld_chess_king"){
    if (GetLocalInt(OBJECT_SELF, "chess_run") == 1){
    effect eMind = EffectVisualEffect(VFX_IMP_HOLY_AID);
    location lMe = GetLocation(OBJECT_SELF);
    object oCitadel = CreateObject(OBJECT_TYPE_CREATURE, "ld_lichlord", lMe);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eMind, oCitadel);
    SetPlotFlag(OBJECT_SELF, FALSE);
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lMe, FALSE, "spw_chess3");
    DestroyObject(OBJECT_SELF, 0.2);}}

else if (GetTag(OBJECT_SELF) == "ld_omerstat"){
    effect eMind = EffectVisualEffect(VFX_IMP_HOLY_AID);
    location lMe = GetLocation(OBJECT_SELF);
    object oLeader = CreateObject(OBJECT_TYPE_CREATURE, "ld_omeraz", lMe, FALSE);
    SetLocalInt(oLeader, "dontkill", 1);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eMind, oLeader);
    SetPlotFlag(OBJECT_SELF, FALSE);
    DestroyObject(OBJECT_SELF, 0.2);}

}}
