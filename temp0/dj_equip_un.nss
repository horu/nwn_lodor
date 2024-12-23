void main()
{
object oPC = GetPCItemLastUnequippedBy();
object oBook = GetItemPossessedBy(oPC, "faction_report");
string sItem2 = GetTag(GetItemInSlot(INVENTORY_SLOT_CHEST, oPC));
string sItem1 = GetTag(GetPCItemLastUnequipped());

if (GetSubRace(oPC) == "Minotaur"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_MINOTAUR_CHIEFTAIN) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_MINOTAUR_SHAMAN) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_MINOGON)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else if (GetSubRace(oPC) == "Ogre"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_OGRE_CHIEFTAIN) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_OGRE_CHIEFTAINB) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_OGRE_MAGE) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_OGRE_MAGEB)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else if (GetSubRace(oPC) == "Kobold"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_KOBOLD_A) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_KOBOLD_CHIEF_A) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_KOBOLD_SHAMAN_A) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_KOBOLD_SHAMAN_B)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else if (GetSubRace(oPC) == "Goblin"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_GOBLIN_B) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_GOBLIN_CHIEF_B) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_GOBLIN_SHAMAN_B)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else if (GetSubRace(oPC) == "Lizardman"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_LIZARDFOLK_A) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_LIZARDFOLK_SHAMAN_A) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_LIZARDFOLK_WARRIOR_A)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else if (GetSubRace(oPC) == "Bugbear"){
  if (sItem1 == sItem2){
     int nReal = GetLocalInt(oBook, "raceApp");
     if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_BUGBEAR_B) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_BUGBEAR_CHIEFTAIN_B) ||
         (GetAppearanceType(oPC) == APPEARANCE_TYPE_BUGBEAR_SHAMAN_B)){
             if (nReal > 0){
                  SetCreatureAppearanceType(oPC, nReal - 1);}}}}

else {
  if (GetTag(GetPCItemLastUnequipped()) == "ld_craft_glove"){
     object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
     AssignCommand(oPC, ActionUnequipItem(oArmor));
     DelayCommand(1.0, AssignCommand(oPC, ActionEquipItem(oArmor, INVENTORY_SLOT_CHEST)));}}
}
