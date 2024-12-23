// This adds abilities to sub races
#include "x2_inc_itemprop"
void main()
{
object oPC = GetEnteringObject();
object oSkills = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
object oBook = GetItemPossessedBy(oPC, "faction_report");
int nWorth = GetGoldPieceValue(oSkills);
int nValue = GetLocalInt(oBook, "carmor_value");

if (nWorth == nValue){}
else {

// Goblins
itemproperty gobAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 2);
itemproperty gobAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 2);
itemproperty gobAbil3 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_BRIGHT, IP_CONST_LIGHTCOLOR_YELLOW);

// Bugbears
itemproperty bugAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 1);
itemproperty bugAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 2);
itemproperty bugAbil3 = ItemPropertyACBonus(1);
itemproperty bugAbil4 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_FORTITUDE, 2);
itemproperty bugAbil5 = ItemPropertyBonusFeat(IP_CONST_FEAT_ALERTNESS);

// Kobolds
itemproperty kobAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 2);
itemproperty kobAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 2);
itemproperty kobAbil3 = ItemPropertyReducedSavingThrow(IP_CONST_SAVEBASETYPE_WILL, 2);
itemproperty kobAbil4 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_BRIGHT, IP_CONST_LIGHTCOLOR_YELLOW);
itemproperty kobAbil5 = ItemPropertyACBonus(1);
itemproperty kobAbil6 = ItemPropertyBonusFeat(IP_CONST_FEAT_ALERTNESS);

// Lizard Man
itemproperty lizAbil1 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_STR, 1);
itemproperty lizAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 3);
itemproperty lizAbil3 = ItemPropertyACBonus(5);
itemproperty lizAbil4 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_FORTITUDE, 2);

// Quicklings
itemproperty quickAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 6);
itemproperty quickAbil2 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_CON, 1);
itemproperty quickAbil3 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_INT, 2);
itemproperty quickAbil4 = ItemPropertySkillBonus(SKILL_HIDE, 4);
itemproperty quickAbil5 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 4);
itemproperty quickAbil6 = ItemPropertySkillBonus(SKILL_LISTEN, 4);
itemproperty quickAbil7 = ItemPropertySkillBonus(SKILL_SPOT, 6);

// Sylvan
itemproperty sylvanAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 1);
itemproperty sylvanAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_CON, 1);
itemproperty sylvanAbil3 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_DEX, 1);
itemproperty sylvanAbil4 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 4);
itemproperty sylvanAbil5 = ItemPropertySkillBonus(SKILL_HIDE, 4);
itemproperty sylvanAbil6 = ItemPropertySkillBonus(SKILL_ANIMAL_EMPATHY, 4);

// Brownies
itemproperty brownAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 6);
itemproperty brownAbil2 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_CON, 1);
itemproperty brownAbil3 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_DEX, 1);
itemproperty brownAbil4 = ItemPropertySkillBonus(SKILL_HIDE, 4);
itemproperty brownAbil5 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 4);
itemproperty brownAbil6 = ItemPropertySkillBonus(SKILL_LISTEN, 4);
itemproperty brownAbil7 = ItemPropertySkillBonus(SKILL_SPOT, 6);
itemproperty brownAbil8 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_REFLEX, 2);

// Sprites
itemproperty spriteAbil1 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_STR, 6);
itemproperty spriteAbil2 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_INT, 1);
itemproperty spriteAbil3 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_CON, 1);
itemproperty spriteAbil4 = ItemPropertySkillBonus(SKILL_HIDE, 4);
itemproperty spriteAbil5 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 4);
itemproperty spriteAbil6 = ItemPropertySkillBonus(SKILL_OPEN_LOCK, 2);
itemproperty spriteAbil7 = ItemPropertySkillBonus(SKILL_PICK_POCKET, 2);
itemproperty spriteAbil8 = ItemPropertySkillBonus(SKILL_ANIMAL_EMPATHY, 4);
itemproperty spriteAbil9 = ItemPropertyBonusSavingThrowVsX(IP_CONST_SAVEVS_MINDAFFECTING, 1);

// Drows
itemproperty drowAbil1 = ItemPropertySkillBonus(SKILL_HIDE, 5);
itemproperty drowAbil2 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 5);
itemproperty drowAbil3 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_WILL, 2);
itemproperty drowAbil4 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_BRIGHT, IP_CONST_LIGHTCOLOR_PURPLE);
itemproperty drowAbil5 = ItemPropertyBonusSpellResistance(IP_CONST_SPELLRESISTANCEBONUS_10);

// Minotaurs
itemproperty minoAbil1 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_FORTITUDE, 2);
itemproperty minoAbil2 = ItemPropertyACBonus(5);
itemproperty minoAbil3 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_CHA, 2);
itemproperty minoAbil4 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 2);
itemproperty minoAbil5 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_STR, 2);
itemproperty minoAbil6 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_NORMAL, IP_CONST_LIGHTCOLOR_WHITE);
itemproperty minoAbil7 = ItemPropertySkillBonus(SKILL_TAUNT, 5);
itemproperty minoAbil8 = ItemPropertyBonusFeat(IP_CONST_FEAT_ALERTNESS);
itemproperty minoAbil9 = ItemPropertyBonusFeat(IP_CONST_FEAT_WEAPON_PROF_SIMPLE);

// Ogres
itemproperty ogreAbil1 = ItemPropertyACBonus(5);
itemproperty ogreAbil2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_CHA, 2);
itemproperty ogreAbil3 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_INT, 2);
itemproperty ogreAbil4 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_DEX, 1);
itemproperty ogreAbil5 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_STR, 3);
itemproperty ogreAbil6 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_NORMAL, IP_CONST_LIGHTCOLOR_WHITE);
itemproperty ogreAbil7 = ItemPropertyBonusFeat(IP_CONST_FEAT_WEAPON_PROF_SIMPLE);

// Duergars
itemproperty duergAbil1 = ItemPropertyAbilityBonus(IP_CONST_ABILITY_INT, 1);
itemproperty duergAbil3 = ItemPropertySkillBonus(SKILL_HIDE, 5);
itemproperty duergAbil4 = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 5);
itemproperty duergAbil5 = ItemPropertyBonusSavingThrow(IP_CONST_SAVEBASETYPE_WILL, 2);
itemproperty duergAbil6 = ItemPropertyLight(IP_CONST_LIGHTBRIGHTNESS_BRIGHT, IP_CONST_LIGHTCOLOR_PURPLE);

if (GetSubRace(oPC) == "Quickling"){
    IPSafeAddItemProperty(oSkills, quickAbil1);
    IPSafeAddItemProperty(oSkills, quickAbil2);
    IPSafeAddItemProperty(oSkills, quickAbil3);
    IPSafeAddItemProperty(oSkills, quickAbil4);
    IPSafeAddItemProperty(oSkills, quickAbil5);
    IPSafeAddItemProperty(oSkills, quickAbil6);
    IPSafeAddItemProperty(oSkills, quickAbil7);}

else if (GetSubRace(oPC) == "Kobold"){
         IPSafeAddItemProperty(oSkills, kobAbil1);
         IPSafeAddItemProperty(oSkills, kobAbil2);
         IPSafeAddItemProperty(oSkills, kobAbil3);
         IPSafeAddItemProperty(oSkills, kobAbil4);
         IPSafeAddItemProperty(oSkills, kobAbil5);
         IPSafeAddItemProperty(oSkills, kobAbil6);}

else if (GetSubRace(oPC) == "Lizardman"){
         IPSafeAddItemProperty(oSkills, lizAbil1);
         IPSafeAddItemProperty(oSkills, lizAbil2);
         IPSafeAddItemProperty(oSkills, lizAbil3);
         IPSafeAddItemProperty(oSkills, lizAbil4);}

else if (GetSubRace(oPC) == "Ogre"){
         IPSafeAddItemProperty(oSkills, ogreAbil1);
         IPSafeAddItemProperty(oSkills, ogreAbil2);
         IPSafeAddItemProperty(oSkills, ogreAbil3);
         IPSafeAddItemProperty(oSkills, ogreAbil4);
         IPSafeAddItemProperty(oSkills, ogreAbil5);
         IPSafeAddItemProperty(oSkills, ogreAbil6);
         IPSafeAddItemProperty(oSkills, ogreAbil7);}

else if (GetSubRace(oPC) == "Goblin"){
         IPSafeAddItemProperty(oSkills, gobAbil1);
         IPSafeAddItemProperty(oSkills, gobAbil2);
         IPSafeAddItemProperty(oSkills, gobAbil3);}

else if (GetSubRace(oPC) == "Bugbear"){
         IPSafeAddItemProperty(oSkills, bugAbil1);
         IPSafeAddItemProperty(oSkills, bugAbil2);
         IPSafeAddItemProperty(oSkills, bugAbil3);
         IPSafeAddItemProperty(oSkills, bugAbil4);
         IPSafeAddItemProperty(oSkills, bugAbil5);}

else if (GetSubRace(oPC) == "Sylvan"){
    IPSafeAddItemProperty(oSkills, sylvanAbil1);
    IPSafeAddItemProperty(oSkills, sylvanAbil2);
    IPSafeAddItemProperty(oSkills, sylvanAbil3);
    IPSafeAddItemProperty(oSkills, sylvanAbil4);
    IPSafeAddItemProperty(oSkills, sylvanAbil5);
    IPSafeAddItemProperty(oSkills, sylvanAbil6);}

else if (GetSubRace(oPC) == "Minotaur"){
    IPSafeAddItemProperty(oSkills, minoAbil1);
    IPSafeAddItemProperty(oSkills, minoAbil2);
    IPSafeAddItemProperty(oSkills, minoAbil3);
    IPSafeAddItemProperty(oSkills, minoAbil4);
    IPSafeAddItemProperty(oSkills, minoAbil5);
    IPSafeAddItemProperty(oSkills, minoAbil6);
    IPSafeAddItemProperty(oSkills, minoAbil7);
    IPSafeAddItemProperty(oSkills, minoAbil8);
    IPSafeAddItemProperty(oSkills, minoAbil9);}

else if (GetSubRace(oPC) == "Sprite"){
    IPSafeAddItemProperty(oSkills, spriteAbil1);
    IPSafeAddItemProperty(oSkills, spriteAbil2);
    IPSafeAddItemProperty(oSkills, spriteAbil3);
    IPSafeAddItemProperty(oSkills, spriteAbil4);
    IPSafeAddItemProperty(oSkills, spriteAbil5);
    IPSafeAddItemProperty(oSkills, spriteAbil6);
    IPSafeAddItemProperty(oSkills, spriteAbil7);
    IPSafeAddItemProperty(oSkills, spriteAbil8);
    IPSafeAddItemProperty(oSkills, spriteAbil9);}

else if (GetSubRace(oPC) == "Brownie"){
    IPSafeAddItemProperty(oSkills, brownAbil1);
    IPSafeAddItemProperty(oSkills, brownAbil2);
    IPSafeAddItemProperty(oSkills, brownAbil3);
    IPSafeAddItemProperty(oSkills, brownAbil4);
    IPSafeAddItemProperty(oSkills, brownAbil5);
    IPSafeAddItemProperty(oSkills, brownAbil6);
    IPSafeAddItemProperty(oSkills, brownAbil7);
    IPSafeAddItemProperty(oSkills, brownAbil8);}

else if (GetSubRace(oPC) == "Drow"){
    IPSafeAddItemProperty(oSkills, drowAbil1);
    IPSafeAddItemProperty(oSkills, drowAbil2);
    IPSafeAddItemProperty(oSkills, drowAbil3);
    IPSafeAddItemProperty(oSkills, drowAbil4);
    IPSafeAddItemProperty(oSkills, drowAbil5);}

else if (GetSubRace(oPC) == "Duergar"){
    IPSafeAddItemProperty(oSkills, duergAbil1);
    IPSafeAddItemProperty(oSkills, duergAbil3);
    IPSafeAddItemProperty(oSkills, duergAbil4);
    IPSafeAddItemProperty(oSkills, duergAbil5);
    IPSafeAddItemProperty(oSkills, duergAbil6);}
}}
