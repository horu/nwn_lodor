void main()
{
PlayAnimation(ANIMATION_PLACEABLE_ACTIVATE);
DelayCommand(5.0, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));

object oPC = GetLastUsedBy();
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

    if (GetTag(OBJECT_SELF) == "miradir_lever") {
       ActionOpenDoor(GetObjectByTag("miradir_m_door2"));
       ActionOpenDoor(GetObjectByTag("miradir_m_door1"));}

    else if (GetTag(OBJECT_SELF) == "medusa_lever") {
       ActionOpenDoor(GetObjectByTag("hallstone_eyes"));}

    else if (GetTag(OBJECT_SELF) == "fallen_lever") {
       ActionOpenDoor(GetObjectByTag("fallen_door_l"));}

    else if (GetTag(OBJECT_SELF) == "LEV_TADOOR2") {
       ActionOpenDoor(GetObjectByTag("under_lvl2_l2"));}

    else if (GetTag(OBJECT_SELF) == "cata_lever") {
       object oDoor = GetObjectByTag("fallen_door_l");
       ActionOpenDoor(oDoor);
       AssignCommand(oDoor, PlayAnimation(ANIMATION_PLACEABLE_OPEN));
       DelayCommand(60.0, ActionCloseDoor(oDoor));
       DelayCommand(60.0, AssignCommand(oDoor,PlayAnimation(ANIMATION_PLACEABLE_CLOSE)));}

    else if (GetTag(OBJECT_SELF) == "glom_lever") {
       ActionOpenDoor(GetObjectByTag("glomarin_cham"));}

    else if (GetTag(OBJECT_SELF) == "sewage_lever") {
       ActionOpenDoor(GetObjectByTag("sewer_util"));}

    else if (GetTag(OBJECT_SELF) == "crypt_lever") {
       ActionOpenDoor(GetObjectByTag("crypt_bdoor2z"));}

    else if (GetTag(OBJECT_SELF) == "citlvl3_lever") {
       ActionOpenDoor(GetObjectByTag("citlvel3_lockdor"));}

    else if (GetTag(OBJECT_SELF) == "vault_lever") {
       ActionOpenDoor(GetObjectByTag("vault_shad_door"));}

    else if (GetTag(OBJECT_SELF) == "dracz_lever") {
       ActionOpenDoor(GetObjectByTag("dracz_doorz"));}

    else if (GetTag(OBJECT_SELF) == "citadel_button") {
       ActionOpenDoor(GetObjectByTag("citlvl4_door"));}

    else if (GetTag(OBJECT_SELF) == "citlvl5_button") {
       ActionOpenDoor(GetObjectByTag("citlvl5_block"));}
    else if (GetTag(OBJECT_SELF) == "flayer_lever") {
       ActionOpenDoor(GetObjectByTag("flayer_doort"));}
}
