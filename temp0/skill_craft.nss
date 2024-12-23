//This is for creating items
#include "nw_i0_tool"
#include "x2_inc_itemprop"
void main()
{
object oPC = GetPCSpeaker();

int nNeed = GetLocalInt(oPC, "craft_sk_n");             //Skill Needed
int nCraft = GetSkillRank(SKILL_CRAFT_ARMOR, oPC);      //This is the skill
string sHide = GetLocalString(oPC, "craft_sk_r");       //This is the hide tag
string sMake = GetLocalString(oPC, "craft_sk_m");       //This is the item tag
string sHide2 = GetLocalString(oPC, "craft_sk_r2");     //This is the hide name
string sMake2 = GetLocalString(oPC, "craft_sk_m2");     //This is the item name
int nLevel = nCraft - nNeed;                            //Determine the attributes of the item

int nWow = 79 - nCraft;
int nWow1 = 89 - nCraft;
int nWow2 = 99 - nCraft;

// If has the hide
if((!HasItem(oPC, sHide)) == FALSE){

    if (nNeed > nCraft){
        FloatingTextStringOnCreature("You are not skilled enough to make this.", oPC, FALSE);}

    else {
        DestroyObject(GetItemPossessedBy(oPC, sHide));
        object oArmor = CreateItemOnObject(sMake, oPC, 1);
        SetItemCharges(oArmor, 50);
        FloatingTextStringOnCreature("You have created " + sMake2 + ".", oPC, FALSE);

// This creates dynamic magical armor

int nHalf = nLevel / 2;
int nModify1 = nLevel / 3;

//Select an ability modifier////////////////////////////////////////////////////
{int nRandom = d6(1);
   if (nRandom == 1){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_STR);}
   else if (nRandom == 2){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_DEX);}
   else if (nRandom == 3){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_CON);}
   else if (nRandom == 4){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_INT);}
   else if (nRandom == 5){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_WIS);}
   else if (nRandom == 6){SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_CHA);}}

   if (nModify1 < 1){SetLocalInt(oPC, "enchabiplus", 1);}
   else if (nModify1 > 12){SetLocalInt(oPC, "enchabiplus", 12);}
   else {SetLocalInt(oPC, "enchabiplus", nModify1);}
////////////////////////////////////////////////////////////////////////////////

//Select an armor bonus/////////////////////////////////////////////////////////
int nModify2 = nLevel / 2;
   if (nModify2 < 1){SetLocalInt(oPC, "enchatmod", 1);}
   else if (nModify2 > 20){SetLocalInt(oPC, "enchatmod", 20);}
   else {SetLocalInt(oPC, "enchatmod", nModify2);}

SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_DRAGON);
////////////////////////////////////////////////////////////////////////////////

//Select a Immunity Bonus///////////////////////////////////////////////////////
int nModify5 = nLevel / 5;
if (nModify5 <= 1){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_5_PERCENT);}
else if (nModify5 == 2){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_10_PERCENT);}
else if (nModify5 == 3){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_25_PERCENT);}
else if (nModify5 == 4){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_50_PERCENT);}
else if (nModify5 == 5){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_75_PERCENT);}
else if (nModify5 == 6){SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_90_PERCENT);}
else {SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_100_PERCENT);}
////////////////////////////////////////////////////////////////////////////////

//Select a Spell Resistance Level///////////////////////////////////////////////
if (nModify1 <= 1){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_10);}
else if (nModify1 == 2){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_12);}
else if (nModify1 == 3){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_14);}
else if (nModify1 == 4){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_16);}
else if (nModify1 == 5){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_18);}
else if (nModify1 == 6){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_20);}
else if (nModify1 == 7){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_22);}
else if (nModify1 == 8){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_24);}
else if (nModify1 == 9){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_26);}
else if (nModify1 == 10){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_28);}
else if (nModify1 == 11){SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_30);}
else {SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_32);}
////////////////////////////////////////////////////////////////////////////////

//Select a Damage Reduction/////////////////////////////////////////////////////
int nModify3 = nLevel / 2;
   if (nModify3 <= 1){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_1);}
   else if (nModify3 == 2){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_2);}
   else if (nModify3 == 3){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_3);}
   else if (nModify3 == 4){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_4);}
   else if (nModify3 == 5){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_5);}
   else if (nModify3 == 6){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_6);}
   else if (nModify3 == 7){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_7);}
   else if (nModify3 == 8){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_8);}
   else if (nModify3 == 9){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_9);}
   else if (nModify3 == 10){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_10);}
   else if (nModify3 == 11){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_11);}
   else if (nModify3 == 12){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_12);}
   else if (nModify3 == 13){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_13);}
   else if (nModify3 == 14){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_14);}
   else if (nModify3 == 15){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_15);}
   else if (nModify3 == 16){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_16);}
   else if (nModify3 == 17){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_17);}
   else if (nModify3 == 18){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_18);}
   else if (nModify3 == 19){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_19);}
   else if (nModify3 >= 20){SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_20);}

int nModify4 = nLevel / 4;
   if (nModify4 < 2){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_5_HP);}
   else if (nModify4 == 2){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_10_HP);}
   else if (nModify4 == 3){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_15_HP);}
   else if (nModify4 == 4){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_20_HP);}
   else if (nModify4 == 5){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_25_HP);}
   else if (nModify4 == 6){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_30_HP);}
   else if (nModify4 == 7){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_35_HP);}
   else if (nModify4 == 8){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_40_HP);}
   else if (nModify4 == 9){SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_45_HP);}
   else {SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_50_HP);}

   if (nModify4 < 2){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_5);}
   else if (nModify4 == 2){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_10);}
   else if (nModify4 == 3){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_15);}
   else if (nModify4 == 4){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_20);}
   else if (nModify4 == 5){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_25);}
   else if (nModify4 == 6){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_30);}
   else if (nModify4 == 7){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_35);}
   else if (nModify4 == 8){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_40);}
   else if (nModify4 == 9){SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_45);}
   else {SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_50);}
////////////////////////////////////////////////////////////////////////////////

//Set the light level///////////////////////////////////////////////////////////
if (nLevel < 5){SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_DIM);}
else if ((nLevel > 4) && (nLevel < 9)){SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_LOW);}
else if ((nLevel > 8) && (nLevel < 13)){SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_NORMAL);}
else if (nLevel > 12){SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_BRIGHT);}
////////////////////////////////////////////////////////////////////////////////

//Cast Spell////////////////////////////////////////////////////////////////////
if (nModify1 < 2){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_SINGLE_USE);}
else if (nModify1 == 2){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_5_CHARGES_PER_USE);}
else if (nModify1 == 3){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_4_CHARGES_PER_USE);}
else if (nModify1 == 4){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_3_CHARGES_PER_USE);}
else if (nModify1 == 5){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_2_CHARGES_PER_USE);}
else if (nModify1 == 6){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE);}
else if (nModify1 == 7){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE);}
else if (nModify1 == 8){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE);}
else if (nModify1 == 9){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY);}
else if (nModify1 == 10){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY);}
else if (nModify1 == 11){SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_3_USES_PER_DAY);}
else {SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_5_USES_PER_DAY);}
////////////////////////////////////////////////////////////////////////////////

// Black Dragon Armor
if (GetLocalInt(oPC, "skil_craft") == 1){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_ACID, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Blue Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 2){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_BLUE);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Brass Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 3){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_GREEN);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Bronze Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 4){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_ELECTRICAL, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_ORANGE);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Gold Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 6){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_YELLOW);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Green Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 7){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_ACID, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_GREEN);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Prismatic Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 8){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_PURPLE);
   itemproperty imunSpell1 = ItemPropertySpellImmunitySpecific(IP_CONST_IMMUNITYSPELL_BLINDNESS_AND_DEAFNESS);
   itemproperty imunSpell2 = ItemPropertySpellImmunitySpecific(IP_CONST_IMMUNITYSPELL_PRISMATIC_SPRAY);
   itemproperty imunSpell3 = ItemPropertySpellImmunitySpecific(IP_CONST_IMMUNITYSPELL_SEARING_LIGHT);
   itemproperty imunSpell4 = ItemPropertySpellImmunitySpecific(IP_CONST_IMMUNITYSPELL_SUNBEAM);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, imunSpell1);}
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, imunSpell2);}
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, imunSpell3);}
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, imunSpell4);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Red Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 9){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_GREEN);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Shadow Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 10){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propImmuMis = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_LEVEL_ABIL_DRAIN);
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, propImmuMis);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Silver Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 11){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_WHITE);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// White Dragon Armor
else if (GetLocalInt(oPC, "skil_craft") == 12){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propACRce = ItemPropertyACBonusVsRace(IP_CONST_RACIALTYPE_DRAGON, nArmW);
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), IP_CONST_LIGHTCOLOR_WHITE);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propLight);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACRce);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propResit);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}


// Basilisk Armor
else if (GetLocalInt(oPC, "skil_craft") == 13){
   itemproperty propImmuMis = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_PARALYSIS);
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propCast = ItemPropertyCastSpell(IP_CONST_CASTSPELL_FLESH_TO_STONE_5, GetLocalInt(oPC, "enchsptimes"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, propImmuMis);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propCast);}}

// Hell Hound Armor
else if (GetLocalInt(oPC, "skil_craft") == 14){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propACTyp = ItemPropertyACBonusVsDmgType(IP_CONST_DAMAGETYPE_FIRE, nArmW);
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   IPSafeAddItemProperty(oArmor, propACTyp);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACBon);}}

// Malar Panther Armor
else if (GetLocalInt(oPC, "skil_craft") == 15){
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FEAR, GetLocalInt(oPC, "enchatmod"));
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propRegen);}}

// Shadow Hound Armor
else if (GetLocalInt(oPC, "skil_craft") == 16){
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FEAR, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSkill1 = ItemPropertySkillBonus(SKILL_HIDE, nLevel);
   itemproperty propSkill2 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, nLevel);
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSkill2);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSkill2);}}

// Winter Wolf Armor
else if (GetLocalInt(oPC, "skil_craft") == 17){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propACTyp = ItemPropertyACBonusVsDmgType(IP_CONST_DAMAGETYPE_COLD, nArmW);
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   IPSafeAddItemProperty(oArmor, propACTyp);
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propACBon);}}

// Demon Mail
else if (GetLocalInt(oPC, "skil_craft") == 18){
   int nArmW = GetLocalInt(oPC, "enchatmod") + 3;
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FEAR, GetLocalInt(oPC, "enchatmod"));
   itemproperty propRegen = ItemPropertyRegeneration(GetLocalInt(oPC, "enchatmod"));
   itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
   itemproperty propACTyp1 = ItemPropertyACBonusVsDmgType(IP_CONST_DAMAGETYPE_COLD, nArmW);
   itemproperty propACTyp2 = ItemPropertyACBonusVsDmgType(IP_CONST_DAMAGETYPE_ACID, nArmW);
   itemproperty propACTyp3 = ItemPropertyACBonusVsDmgType(IP_CONST_DAMAGETYPE_FIRE, nArmW);
   itemproperty propSavS1 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_ACID, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS2 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_COLD, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS3 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_FIRE, GetLocalInt(oPC, "enchatmod"));
   itemproperty propSavS4 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_POISON, GetLocalInt(oPC, "enchatmod"));
   itemproperty propCast1 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_ANIMATE_DEAD_5, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast2 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_ANIMATE_DEAD_10, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast3 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_ANIMATE_DEAD_15, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast4 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CREATE_UNDEAD_11, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast5 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CREATE_UNDEAD_14, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast6 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_CREATE_UNDEAD_16, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast7 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_FIREBALL_5, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast8 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_FIREBALL_10, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast9 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_INVISIBILITY_3, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast10 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_IMPROVED_INVISIBILITY_7, GetLocalInt(oPC, "enchsptimes"));
   itemproperty propCast11 = ItemPropertyCastSpell(IP_CONST_CASTSPELL_WALL_OF_FIRE_9, GetLocalInt(oPC, "enchsptimes"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propSavS);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propACTyp1);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propACTyp2);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propACTyp3);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propSavS1);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propSavS2);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propSavS3);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propSavS4);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propRegen);}
   if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propResit);}
   if (nLevel < 5){
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast1);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast7);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast9);}}
   if ((nLevel > 4) && (nLevel < 9)){
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast2);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast4);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast8);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast11);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast9);}}
   if ((nLevel > 8) && (nLevel < 13)){
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast3);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast5);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast8);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast11);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast10);}}
   if (nLevel > 12){
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast3);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast6);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast8);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast11);}
      if (d100(1) > nWow1){IPSafeAddItemProperty(oArmor, propCast10);}}
   }

// Gorgon Mail
else if (GetLocalInt(oPC, "skil_craft") == 19){
   itemproperty propImmuMis = ItemPropertyImmunityMisc(IP_CONST_IMMUNITYMISC_PARALYSIS);
   itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
   itemproperty propACBon = ItemPropertyACBonus(GetLocalInt(oPC, "enchatmod"));
   itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
   itemproperty propCast = ItemPropertyCastSpell(IP_CONST_CASTSPELL_FLESH_TO_STONE_5, GetLocalInt(oPC, "enchsptimes"));
   IPSafeAddItemProperty(oArmor, propACBon);
   if (d100(1) > nWow2){IPSafeAddItemProperty(oArmor, propImmuMis);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, abilityMod);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, armSoak);}
   if (d100(1) > nWow){IPSafeAddItemProperty(oArmor, propCast);}}

// Shadow Bag
else if (GetLocalInt(oPC, "skil_craft") == 20){
   itemproperty weightProp1 = ItemPropertyContainerReducedWeight(IP_CONST_CONTAINERWEIGHTRED_20_PERCENT);
   itemproperty weightProp2 = ItemPropertyContainerReducedWeight(IP_CONST_CONTAINERWEIGHTRED_40_PERCENT);
   itemproperty weightProp3 = ItemPropertyContainerReducedWeight(IP_CONST_CONTAINERWEIGHTRED_60_PERCENT);
   itemproperty weightProp4 = ItemPropertyContainerReducedWeight(IP_CONST_CONTAINERWEIGHTRED_80_PERCENT);
   itemproperty weightProp5 = ItemPropertyContainerReducedWeight(IP_CONST_CONTAINERWEIGHTRED_100_PERCENT);
   if (nLevel < 8){IPSafeAddItemProperty(oArmor, weightProp1);}
   else if ((nLevel > 7) && (nLevel < 11)){IPSafeAddItemProperty(oArmor, weightProp2);}
   else if ((nLevel > 10) && (nLevel < 16)){IPSafeAddItemProperty(oArmor, weightProp3);}
   else if ((nLevel > 15) && (nLevel < 21)){IPSafeAddItemProperty(oArmor, weightProp4);}
   else if (nLevel > 20){IPSafeAddItemProperty(oArmor, weightProp5);}}

SetIdentified(oArmor, TRUE);
}}

// If the PC has no hide, say this...
else {
    FloatingTextStringOnCreature("You need " + sHide2 + " to make " + sMake2 + ".", oPC, FALSE);}

}
