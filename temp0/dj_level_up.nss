// Checks the leveling PC to see if
// they get any new powers from their god
// Then tells them to return to the altar
#include "nw_i0_plot"
#include "x2_inc_itemprop"
void main()
{
object oPC = GetPCLevellingUp();
int nLevel = GetHitDice(oPC);
int nAbil = nLevel / 2;

//Minotaurs
if (GetSubRace(oPC) == "Minotaur"){
  if((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_ASSASSIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_ROGUE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SHADOWDANCER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)){
        SendMessageToPC(oPC, "Minotaurs cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Ogres
if (GetSubRace(oPC) == "Ogre"){
  if((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_ASSASSIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_ROGUE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SHADOWDANCER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0)){
        SendMessageToPC( oPC, "Ogres cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Ogres
if ((GetSubRace(oPC) == "Bugbear") ||
    (GetSubRace(oPC) == "Goblin") ||
    (GetSubRace(oPC) == "Lizardman") ||
    (GetSubRace(oPC) == "Kobold")){
      if ((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_BARD, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DIVINE_CHAMPION, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DRAGON_DISCIPLE, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DWARVEN_DEFENDER, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_PALE_MASTER, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
          (GetLevelByClass(CLASS_TYPE_SHIFTER, oPC) > 0)){
        SendMessageToPC( oPC, "You cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Brownies
if (GetSubRace(oPC) == "Brownie"){
  if((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BLACKGUARD, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)){
        SendMessageToPC( oPC, "Brownies cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Sylvans
if (GetSubRace(oPC) == "Sylvan"){
  if((GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BLACKGUARD, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_CLERIC, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALEMASTER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SORCERER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_WIZARD, oPC) > 0)){
        SendMessageToPC( oPC, "Sylvans cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Sprites
if (GetSubRace(oPC) == "Sprite"){
  if((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0)){
        SendMessageToPC( oPC, "Sprites cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if (GetHitDice(oPC) == 5){
      object oDust = GetItemPossessedBy(oPC, "ld_sprite_abil");
        itemproperty ipLoop=GetFirstItemProperty(oDust);
          while (GetIsItemPropertyValid(ipLoop)){
            if (GetItemPropertyType(ipLoop)==ITEM_PROPERTY_CAST_SPELL)
              RemoveItemProperty(oDust, ipLoop);
          ipLoop=GetNextItemProperty(oDust);}
      itemproperty spriteSp1 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CHARM_PERSON_2, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp2 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_SLEEP_2, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp3 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_UNIQUE_POWER, IP_CONST_CASTSPELL_NUMUSES_UNLIMITED_USE);
      IPSafeAddItemProperty(oDust, spriteSp1);
      IPSafeAddItemProperty(oDust, spriteSp2);
      IPSafeAddItemProperty(oDust, spriteSp3);}
  if (GetHitDice(oPC) == 10){
      object oDust = GetItemPossessedBy(oPC, "ld_sprite_abil");
        itemproperty ipLoop=GetFirstItemProperty(oDust);
          while (GetIsItemPropertyValid(ipLoop)){
            if (GetItemPropertyType(ipLoop)==ITEM_PROPERTY_CAST_SPELL)
              RemoveItemProperty(oDust, ipLoop);
          ipLoop=GetNextItemProperty(oDust);}
      itemproperty spriteSp1 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CHARM_PERSON_2, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp2 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_SLEEP_5, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp3 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_UNIQUE_POWER, IP_CONST_CASTSPELL_NUMUSES_UNLIMITED_USE);
      IPSafeAddItemProperty(oDust, spriteSp1);
      IPSafeAddItemProperty(oDust, spriteSp2);
      IPSafeAddItemProperty(oDust, spriteSp3);}
  if (GetHitDice(oPC) == 15){
      object oDust = GetItemPossessedBy(oPC, "ld_sprite_abil");
        itemproperty ipLoop=GetFirstItemProperty(oDust);
          while (GetIsItemPropertyValid(ipLoop)){
            if (GetItemPropertyType(ipLoop)==ITEM_PROPERTY_CAST_SPELL)
              RemoveItemProperty(oDust, ipLoop);
          ipLoop=GetNextItemProperty(oDust);}
      itemproperty spriteSp1 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CHARM_PERSON_10, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp2 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_SLEEP_5, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp3 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_UNIQUE_POWER, IP_CONST_CASTSPELL_NUMUSES_UNLIMITED_USE);
      IPSafeAddItemProperty(oDust, spriteSp1);
      IPSafeAddItemProperty(oDust, spriteSp2);
      IPSafeAddItemProperty(oDust, spriteSp3);}
  if (GetHitDice(oPC) == 20){
      object oDust = GetItemPossessedBy(oPC, "ld_sprite_abil");
        itemproperty ipLoop=GetFirstItemProperty(oDust);
          while (GetIsItemPropertyValid(ipLoop)){
            if (GetItemPropertyType(ipLoop)==ITEM_PROPERTY_CAST_SPELL)
              RemoveItemProperty(oDust, ipLoop);
          ipLoop=GetNextItemProperty(oDust);}
      itemproperty spriteSp1 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CHARM_PERSON_10, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp2 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_SLEEP_5, IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);
      itemproperty spriteSp3 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_UNIQUE_POWER, IP_CONST_CASTSPELL_NUMUSES_UNLIMITED_USE);
      itemproperty spriteSp4 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_TIME_STOP_17, IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY);
      IPSafeAddItemProperty(oDust, spriteSp1);
      IPSafeAddItemProperty(oDust, spriteSp2);
      IPSafeAddItemProperty(oDust, spriteSp3);
      IPSafeAddItemProperty(oDust, spriteSp4);}

  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Quicklings
if (GetSubRace(oPC) == "Quickling"){
  if((GetLevelByClass(CLASS_TYPE_ARCANE_ARCHER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_BARBARIAN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DRAGONDISCIPLE, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_DWARVENDEFENDER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_HARPER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_MONK, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_PALADIN, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0) ||
     (GetLevelByClass(CLASS_TYPE_SHIFTER, oPC) > 0)){
        SendMessageToPC( oPC, "Quicklings cannot be that class.");
        int iSaveXP = GetXP(oPC);
        int iLevel  = GetHitDice( oPC) -1;
        int iXPBack = (iLevel *(iLevel -1) *500);
        SetXP(oPC, iXPBack);
        DelayCommand(1.0, SetXP( oPC, iSaveXP));}

  else {
  if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}}

//Normal Folks
else {
if((GetHitDice(oPC) == 5) || (GetHitDice(oPC) == 10) || (GetHitDice(oPC) == 15) || (GetHitDice(oPC) == 20)){
    if (GetDeity(oPC) == "Belulas"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Belulas to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Puril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Puril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Somry"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Somry to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Oweodd"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Oweodd to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Rimyr"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Rimyr to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Shyvaa"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Shyvaa to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Unur"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Unur to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Fradoc"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Fradoc to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Calyril"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Calyril to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Malad"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Malad to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Uronia"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Uronia to receive your blessing.", oPC, FALSE);}
    else if (GetDeity(oPC) == "Torm"){
        CreateItemOnObject("rel_stone_conque", oPC, 1);
        AssignCommand(oPC, ClearAllActions());
        FloatingTextStringOnCreature("Return to the Altar of Torm to receive your blessing.", oPC, FALSE);}
}}
}
