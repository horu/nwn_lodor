void main()
{
object oPC = GetEnteringObject();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
ExecuteScript("dj_abilities", OBJECT_SELF);
int nMx = GetLocalInt(oInfo, "maxhp");
int nDb = GetLocalInt(oInfo, "hitpoints");
int nHp = nMx - nDb;
    if (nHp > 0)
        {
        effect eDamage = EffectDamage(nHp, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_PLUS_FIVE);
        eDamage = SupernaturalEffect(eDamage);
        DelayCommand(5.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oPC));
        }

if (GetLocalInt(oInfo, "ijustdied") == 1){
        effect eCheater = EffectDamage(100000, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_PLUS_FIVE);
        eCheater = SupernaturalEffect(eCheater);
        DelayCommand(5.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eCheater, oPC));}

// Change the PC back to normal if they are a wolf
if (GetSubRace(oPC) == "Vampire"){
object oVampire = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
location lMe = GetLocation(oPC);
object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
    (GetAppearanceType(oPC) == APPEARANCE_TYPE_BAT)){
// Change the PC back to normal...
SetLocalInt(oBottle, "wolf", 0);
AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -100);
ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lMe);
itemproperty ipLoop=GetFirstItemProperty(oVampire);
while (GetIsItemPropertyValid(ipLoop)){
   if (GetItemPropertyType(ipLoop)==ITEM_PROPERTY_HASTE)
      RemoveItemProperty(oVampire, ipLoop);
   ipLoop=GetNextItemProperty(oVampire);}
object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
object oHelmet = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
ActionUnequipItem(oArmor);
ActionUnequipItem(oHelmet);
DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oArmor, INVENTORY_SLOT_CHEST)));
DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oHelmet, INVENTORY_SLOT_HEAD)));
int nReal = GetLocalInt(oBottle, "realApp");
if (nReal > 0){
  SetCreatureAppearanceType(oPC, nReal - 1);}
}}
}
