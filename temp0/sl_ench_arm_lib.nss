// This creates dynamic magical armor
#include "x2_inc_itemprop"

void sl_ench_AddArmorProperties(object oArmor, int nLevel)
{
    object oPC = oArmor;
    int nHalf = nLevel / 2;
    int nModify1 = nLevel / 3;

    //Find the level of spells the item can cast
    if (nLevel < 11)
    {
        int nSpell = d20(3) - 2;
        int nSpell2 = nSpell + 17;
        SetLocalInt(oPC, "whatspell", nSpell2);
    }
    else if ((nLevel > 10) && (nLevel < 21))
    {
        int nSpell = d20(9) + 14;
        SetLocalInt(oPC, "whatspell", nSpell);
    }
    else if ((nLevel > 20) && (nLevel < 31))
    {
        int nSpell = d100(2) + 78;
        SetLocalInt(oPC, "whatspell", nSpell);
    }
    else if (nLevel > 30)
    {
        int nSpell = d12(14) + 192;
        SetLocalInt(oPC, "whatspell", nSpell);
    }

    //Select an ability modifier////////////////////////////////////////////////////
    {
        int nRandom = d6(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_STR); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_DEX); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_CON); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_INT); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_WIS); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchability", IP_CONST_ABILITY_CHA); }
    }

    if (nModify1 < 1) { SetLocalInt(oPC, "enchabiplus", 1); }
    else if (nModify1 > 12) { SetLocalInt(oPC, "enchabiplus", 12); }
    else { SetLocalInt(oPC, "enchabiplus", nModify1); }
    ////////////////////////////////////////////////////////////////////////////////

    //Select half bonus/////////////////////////////////////////////////////////
    int bonus_2 = nLevel / 2;
    if (bonus_2 < 1)
    {
        bonus_2 = 1;
    }
    else if (bonus_2 > 20)
    {
        bonus_2 = 20;
    }

    {
        int nRandom = d6(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchalign", IP_CONST_ALIGNMENTGROUP_CHAOTIC); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchalign", IP_CONST_ALIGNMENTGROUP_EVIL); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchalign", IP_CONST_ALIGNMENTGROUP_GOOD); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchalign", IP_CONST_ALIGNMENTGROUP_LAWFUL); }
        else { SetLocalInt(oPC, "enchalign", IP_CONST_ALIGNMENTGROUP_NEUTRAL); }
    }

    // FIX THE RACIAL TYPE ENCHANTED ITEMS /////////////////////////////////////////
    if ((GetLocalInt(oPC, "enchrace") == 0) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_ANIMAL) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_FEY) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_ELF) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_GNOME) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFELF) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFLING) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFORC) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMAN) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMANOID_GOBLINOID) ||
        (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMANOID_ORC))
    {
        {
            int nRandom = d12(1);
            if (nRandom == 1) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_ABERRATION); }
            else if (nRandom == 2) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_BEAST); }
            else if (nRandom == 3) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_CONSTRUCT); }
            else if (nRandom == 4) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_DRAGON); }
            else if (nRandom == 5) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_GIANT); }
            else if (nRandom == 6) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_HUMANOID_MONSTROUS); }
            else if (nRandom == 7) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_UNDEAD); }
            else if (nRandom == 8) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_HUMANOID_REPTILIAN); }
            else if (nRandom == 9) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_MAGICAL_BEAST); }
            else if (nRandom == 10) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_OUTSIDER); }
            else if (nRandom == 11) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_VERMIN); }
            else { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_ELEMENTAL); }
        }
    }
    ////////////////////////////////////////////////////////////////////////////////

    {
        int nRandom = d8(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_CE); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_CG); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_CN); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_LE); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_LG); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_LN); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_NE); }
        else { SetLocalInt(oPC, "enchsalign", IP_CONST_ALIGNMENT_NG); }
    }

    {
        int nRandom = d12(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_ACID); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_BLUDGEONING); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_COLD); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_DIVINE); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_ELECTRICAL); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_FIRE); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_MAGICAL); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_NEGATIVE); }
        else if (nRandom == 9) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_PIERCING); }
        else if (nRandom == 10) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_POSITIVE); }
        else if (nRandom == 11) { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_SLASHING); }
        else { SetLocalInt(oPC, "enchdamtyp", IP_CONST_DAMAGETYPE_SONIC); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Select a Immunity Bonus///////////////////////////////////////////////////////
    int nModify5 = nLevel / 5;
    if (nModify5 <= 1) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_5_PERCENT); }
    else if (nModify5 == 2) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_10_PERCENT); }
    else if (nModify5 == 3) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_25_PERCENT); }
    else if (nModify5 == 4) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_50_PERCENT); }
    else if (nModify5 == 5) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_75_PERCENT); }
    else if (nModify5 == 6) { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_90_PERCENT); }
    else { SetLocalInt(oPC, "enchimmun", IP_CONST_DAMAGEIMMUNITY_100_PERCENT); }

    {
        int nRandom = d10(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_BACKSTAB); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_CRITICAL_HITS); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_DEATH_MAGIC); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_DISEASE); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_FEAR); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_KNOCKDOWN); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_LEVEL_ABIL_DRAIN); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_MINDSPELLS); }
        else if (nRandom == 9) { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_PARALYSIS); }
        else { SetLocalInt(oPC, "enchimmisc", IP_CONST_IMMUNITYMISC_POISON); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Select a Spell Resistance Level///////////////////////////////////////////////
    if (nModify1 <= 1) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_10); }
    else if (nModify1 == 2) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_12); }
    else if (nModify1 == 3) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_14); }
    else if (nModify1 == 4) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_16); }
    else if (nModify1 == 5) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_18); }
    else if (nModify1 == 6) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_20); }
    else if (nModify1 == 7) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_22); }
    else if (nModify1 == 8) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_24); }
    else if (nModify1 == 9) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_26); }
    else if (nModify1 == 10) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_28); }
    else if (nModify1 == 11) { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_30); }
    else { SetLocalInt(oPC, "enchsplres", IP_CONST_SPELLRESISTANCEBONUS_32); }
    ////////////////////////////////////////////////////////////////////////////////

    //Select a Feat Bonus///////////////////////////////////////////////////////////
    {
        int nRandom = d4(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchfeat", IP_CONST_FEAT_ALERTNESS); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchfeat", IP_CONST_FEAT_COMBAT_CASTING); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchfeat", IP_CONST_FEAT_DODGE); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchfeat", IP_CONST_FEAT_AMBIDEXTROUS); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Select a Robe Feat Bonus//////////////////////////////////////////////////////
    {
        int nRandom = d8(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSABJ); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSCON); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSDIV); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSEVO); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSILL); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSNEC); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLPENETRATION); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchfeat1", IP_CONST_FEAT_SPELLFOCUSENC); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Select a Damage Reduction/////////////////////////////////////////////////////
    int nModify3 = nLevel / 2;
    if (nModify3 <= 1) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_1); }
    else if (nModify3 == 2) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_2); }
    else if (nModify3 == 3) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_3); }
    else if (nModify3 == 4) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_4); }
    else if (nModify3 == 5) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_5); }
    else if (nModify3 == 6) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_6); }
    else if (nModify3 == 7) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_7); }
    else if (nModify3 == 8) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_8); }
    else if (nModify3 == 9) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_9); }
    else if (nModify3 == 10) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_10); }
    else if (nModify3 == 11) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_11); }
    else if (nModify3 == 12) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_12); }
    else if (nModify3 == 13) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_13); }
    else if (nModify3 == 14) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_14); }
    else if (nModify3 == 15) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_15); }
    else if (nModify3 == 16) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_16); }
    else if (nModify3 == 17) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_17); }
    else if (nModify3 == 18) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_18); }
    else if (nModify3 == 19) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_19); }
    else if (nModify3 >= 20) { SetLocalInt(oPC, "enchdamred", IP_CONST_DAMAGEREDUCTION_20); }

    int nModify4 = nLevel / 4;
    if (nModify4 < 2) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_5_HP); }
    else if (nModify4 == 2) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_10_HP); }
    else if (nModify4 == 3) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_15_HP); }
    else if (nModify4 == 4) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_20_HP); }
    else if (nModify4 == 5) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_25_HP); }
    else if (nModify4 == 6) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_30_HP); }
    else if (nModify4 == 7) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_35_HP); }
    else if (nModify4 == 8) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_40_HP); }
    else if (nModify4 == 9) { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_45_HP); }
    else { SetLocalInt(oPC, "enchdamred1", IP_CONST_DAMAGESOAK_50_HP); }

    if (nModify4 < 2) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_5); }
    else if (nModify4 == 2) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_10); }
    else if (nModify4 == 3) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_15); }
    else if (nModify4 == 4) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_20); }
    else if (nModify4 == 5) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_25); }
    else if (nModify4 == 6) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_30); }
    else if (nModify4 == 7) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_35); }
    else if (nModify4 == 8) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_40); }
    else if (nModify4 == 9) { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_45); }
    else { SetLocalInt(oPC, "enchdamres", IP_CONST_DAMAGERESIST_50); }
    ////////////////////////////////////////////////////////////////////////////////

    //Set the light level///////////////////////////////////////////////////////////
    {
        int nRandom = d4(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_DIM); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_LOW); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_NORMAL); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchbright", IP_CONST_LIGHTBRIGHTNESS_BRIGHT); }
    }

    {
        int nRandom = d8(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_BLUE); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_GREEN); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_ORANGE); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_PURPLE); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_RED); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_WHITE); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_YELLOW); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchcolor", IP_CONST_LIGHTCOLOR_WHITE); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Set the skill bonuses/////////////////////////////////////////////////////////
    {
        int nRandom = d12(1);
        if (nRandom == 1) { SetLocalInt(oPC, "enchskill", SKILL_APPRAISE); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchskill", SKILL_CONCENTRATION); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchskill", SKILL_HIDE); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchskill", SKILL_LISTEN); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchskill", SKILL_LORE); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchskill", SKILL_MOVE_SILENTLY); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchskill", SKILL_PERFORM); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchskill", SKILL_PERSUADE); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchskill", SKILL_SEARCH); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchskill", SKILL_SPOT); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchskill", SKILL_TUMBLE); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchskill", SKILL_USE_MAGIC_DEVICE); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Set the save bonuses//////////////////////////////////////////////////////////
    {
        int nRandom = d6(1) / 2;
        if (nRandom < 2) { SetLocalInt(oPC, "enchsave", IP_CONST_SAVEBASETYPE_FORTITUDE); }
        else if (nRandom == 2) { SetLocalInt(oPC, "enchsave", IP_CONST_SAVEBASETYPE_REFLEX); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchsave", IP_CONST_SAVEBASETYPE_WILL); }
    }

    {
        int nRandom = d8(2);
        if (nRandom == 2) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_ACID); }
        else if (nRandom == 3) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_COLD); }
        else if (nRandom == 4) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_DEATH); }
        else if (nRandom == 5) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_DISEASE); }
        else if (nRandom == 6) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_DIVINE); }
        else if (nRandom == 7) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_ELECTRICAL); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_FEAR); }
        else if (nRandom == 9) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_FIRE); }
        else if (nRandom == 10) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_MINDAFFECTING); }
        else if (nRandom == 11) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_NEGATIVE); }
        else if (nRandom == 12) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_POISON); }
        else if (nRandom == 13) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_POSITIVE); }
        else if (nRandom == 14) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_SONIC); }
        else if (nRandom == 15) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_COLD); }
        else if (nRandom == 16) { SetLocalInt(oPC, "enchsaves", IP_CONST_SAVEVS_FIRE); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    //Cast Spell////////////////////////////////////////////////////////////////////
    if (nModify1 < 2) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_SINGLE_USE); }
    else if (nModify1 == 2) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_5_CHARGES_PER_USE); }
    else if (nModify1 == 3) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_4_CHARGES_PER_USE); }
    else if (nModify1 == 4) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_3_CHARGES_PER_USE); }
    else if (nModify1 == 5) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_2_CHARGES_PER_USE); }
    else if (nModify1 == 6) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE); }
    else if (nModify1 == 7) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE); }
    else if (nModify1 == 8) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE); }
    else if (nModify1 == 9) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY); }
    else if (nModify1 == 10) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY); }
    else if (nModify1 == 11) { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_3_USES_PER_DAY); }
    else { SetLocalInt(oPC, "enchsptimes", IP_CONST_CASTSPELL_NUMUSES_5_USES_PER_DAY); }

    int nWhatSpell = GetLocalInt(oPC, "whatspell");
    if (nWhatSpell == 18) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ACID_SPLASH_1); }
    else if (nWhatSpell == 19) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_MINOR_WOUNDS_1); }
    else if (nWhatSpell == 20) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DAZE_1); }
    else if (nWhatSpell == 21) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ELECTRIC_JOLT_1); }
    else if (nWhatSpell == 22) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLARE_1); }
    else if (nWhatSpell == 23) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFLICT_MINOR_WOUNDS_1); }
    else if (nWhatSpell == 24) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LIGHT_1); }
    else if (nWhatSpell == 25) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_1); }
    else if (nWhatSpell == 26) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RAY_OF_FROST_1); }
    else if (nWhatSpell == 27) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_VIRTUE_1); }
    else if (nWhatSpell == 28) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BLESS_2); }
    else if (nWhatSpell == 29) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_PERSON_2); }
    else if (nWhatSpell == 30) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_COLOR_SPRAY_2); }
    else if (nWhatSpell == 31) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_LIGHT_WOUNDS_2); }
    else if (nWhatSpell == 32) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DOOM_2); }
    else if (nWhatSpell == 33) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENDURE_ELEMENTS_2); }
    else if (nWhatSpell == 34) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENTANGLE_2); }
    else if (nWhatSpell == 35) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREASE_2); }
    else if (nWhatSpell == 36) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGE_ARMOR_2); }
    else if (nWhatSpell == 37) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RAY_OF_ENFEEBLEMENT_2); }
    else if (nWhatSpell == 38) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REMOVE_FEAR_2); }
    else if (nWhatSpell == 39) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESISTANCE_2); }
    else if (nWhatSpell == 40) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SANCTUARY_2); }
    else if (nWhatSpell == 41) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SCARE_2); }
    else if (nWhatSpell == 42) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SLEEP_2); }
    else if (nWhatSpell == 43) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_I_2); }
    else if (nWhatSpell == 44) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_AID_3); }
    else if (nWhatSpell == 45) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BARKSKIN_3); }
    else if (nWhatSpell == 46) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BLINDNESS_DEAFNESS_3); }
    else if (nWhatSpell == 47) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BULLS_STRENGTH_3); }
    else if (nWhatSpell == 48) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CATS_GRACE_3); }
    else if (nWhatSpell == 49) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_PERSON_OR_ANIMAL_3); }
    else if (nWhatSpell == 50) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CLARITY_3); }
    else if (nWhatSpell == 51) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_3); }
    else if (nWhatSpell == 52) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DARKNESS_3); }
    else if (nWhatSpell == 53) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EAGLE_SPLEDOR_3); }
    else if (nWhatSpell == 54) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENDURANCE_3); }
    else if (nWhatSpell == 55) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_LASH_3); }
    else if (nWhatSpell == 56) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FOXS_CUNNING_3); }
    else if (nWhatSpell == 57) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GHOSTLY_VISAGE_3); }
    else if (nWhatSpell == 58) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GHOUL_TOUCH_3); }
    else if (nWhatSpell == 59) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HOLD_ANIMAL_3); }
    else if (nWhatSpell == 60) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HOLD_PERSON_3); }
    else if (nWhatSpell == 61) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_IDENTIFY_3); }
    else if (nWhatSpell == 62) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INVISIBILITY_3); }
    else if (nWhatSpell == 63) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_KNOCK_3); }
    else if (nWhatSpell == 64) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_DISPEL_3); }
    else if (nWhatSpell == 65) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_RESTORATION_3); }
    else if (nWhatSpell == 66) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGIC_MISSILE_3); }
    else if (nWhatSpell == 67) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MELFS_ACID_ARROW_3); }
    else if (nWhatSpell == 68) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_3); }
    else if (nWhatSpell == 69) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_OWLS_WISDOM_3); }
    else if (nWhatSpell == 70) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REMOVE_PARALYSIS_3); }
    else if (nWhatSpell == 71) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESIST_ELEMENTS_3); }
    else if (nWhatSpell == 72) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SEE_INVISIBILITY_3); }
    else if (nWhatSpell == 73) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SILENCE_3); }
    else if (nWhatSpell == 74) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SOUND_BURST_3); }
    else if (nWhatSpell == 75) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_II_3); }
    else if (nWhatSpell == 76) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WEB_3); }
    else if (nWhatSpell == 77) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_AMPLIFY_5); }
    else if (nWhatSpell == 78) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ANIMATE_DEAD_5); }
    else if (nWhatSpell == 79) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BANE_5); }
    else if (nWhatSpell == 80) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BESTOW_CURSE_5); }
    else if (nWhatSpell == 81) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BURNING_HANDS_5); }
    else if (nWhatSpell == 82) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CALL_LIGHTNING_5); }
    else if (nWhatSpell == 83) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CAMOFLAGE_5); }
    else if (nWhatSpell == 84) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_MONSTER_5); }
    else if (nWhatSpell == 85) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_5); }
    else if (nWhatSpell == 86) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONFUSION_5); }
    else if (nWhatSpell == 87) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONTAGION_5); }
    else if (nWhatSpell == 88) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_LIGHT_WOUNDS_5); }
    else if (nWhatSpell == 89) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_SERIOUS_WOUNDS_5); }
    else if (nWhatSpell == 90) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISPEL_MAGIC_5); }
    else if (nWhatSpell == 91) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DIVINE_FAVOR_5); }
    else if (nWhatSpell == 92) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DIVINE_MIGHT_5); }
    else if (nWhatSpell == 93) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DIVINE_SHIELD_5); }
    else if (nWhatSpell == 94) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DOMINATE_ANIMAL_5); }
    else if (nWhatSpell == 95) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DOOM_5); }
    else if (nWhatSpell == 96) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENTANGLE_5); }
    else if (nWhatSpell == 97) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENTROPIC_SHIELD_5); }
    else if (nWhatSpell == 98) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EXPEDITIOUS_RETREAT_5); }
    else if (nWhatSpell == 99) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FEAR_5); }
    else if (nWhatSpell == 100) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FIREBALL_5); }
    else if (nWhatSpell == 101) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_ARROW_5); }
    else if (nWhatSpell == 102) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLESH_TO_STONE_5); }
    else if (nWhatSpell == 103) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HASTE_5); }
    else if (nWhatSpell == 104) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFLICT_LIGHT_WOUNDS_5); }
    else if (nWhatSpell == 105) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INVISIBILITY_PURGE_5); }
    else if (nWhatSpell == 106) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INVISIBILITY_SPHERE_5); }
    else if (nWhatSpell == 107) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LEGEND_LORE_5); }
    else if (nWhatSpell == 108) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_DISPEL_5); }
    else if (nWhatSpell == 109) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LIGHT_5); }
    else if (nWhatSpell == 110) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LIGHTNING_BOLT_5); }
    else if (nWhatSpell == 111) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGIC_CIRCLE_AGAINST_ALIGNMENT_5); }
    else if (nWhatSpell == 112) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGIC_FANG_5); }
    else if (nWhatSpell == 113) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGIC_MISSILE_5); }
    else if (nWhatSpell == 114) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_BURST_5); }
    else if (nWhatSpell == 115) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_5); }
    else if (nWhatSpell == 116) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_5); }
    else if (nWhatSpell == 117) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEUTRALIZE_POISON_5); }
    else if (nWhatSpell == 118) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_POISON_5); }
    else if (nWhatSpell == 119) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REMOVE_BLINDNESS_DEAFNESS_5); }
    else if (nWhatSpell == 120) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REMOVE_CURSE_5); }
    else if (nWhatSpell == 121) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REMOVE_DISEASE_5); }
    else if (nWhatSpell == 122) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESISTANCE_5); }
    else if (nWhatSpell == 123) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SEARING_LIGHT_5); }
    else if (nWhatSpell == 124) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHIELD_5); }
    else if (nWhatSpell == 125) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHIELD_OF_FAITH_5); }
    else if (nWhatSpell == 126) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SLEEP_5); }
    else if (nWhatSpell == 127) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SLOW_5); }
    else if (nWhatSpell == 128) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_STINKING_CLOUD_5); }
    else if (nWhatSpell == 129) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_I_5); }
    else if (nWhatSpell == 130) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_III_5); }
    else if (nWhatSpell == 131) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_TRUE_STRIKE_5); }
    else if (nWhatSpell == 132) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_VAMPIRIC_TOUCH_5); }
    else if (nWhatSpell == 133) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BARKSKIN_6); }
    else if (nWhatSpell == 134) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_6); }
    else if (nWhatSpell == 135) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MELFS_ACID_ARROW_6); }
    else if (nWhatSpell == 136) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_AURAOFGLORY_7); }
    else if (nWhatSpell == 137) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BALAGARNSIRONHORN_7); }
    else if (nWhatSpell == 138) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BLOOD_FRENZY_7); }
    else if (nWhatSpell == 139) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONTINUAL_FLAME_7); }
    else if (nWhatSpell == 140) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_7); }
    else if (nWhatSpell == 141) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DEATH_WARD_7); }
    else if (nWhatSpell == 142) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISMISSAL_7); }
    else if (nWhatSpell == 143) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DIVINE_POWER_7); }
    else if (nWhatSpell == 144) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DOMINATE_PERSON_7); }
    else if (nWhatSpell == 145) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ELEMENTAL_SHIELD_7); }
    else if (nWhatSpell == 146) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENERVATION_7); }
    else if (nWhatSpell == 147) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EVARDS_BLACK_TENTACLES_7); }
    else if (nWhatSpell == 148) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_STRIKE_7); }
    else if (nWhatSpell == 149) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FREEDOM_OF_MOVEMENT_7); }
    else if (nWhatSpell == 150) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_DISPELLING_7); }
    else if (nWhatSpell == 151) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HAMMER_OF_THE_GODS_7); }
    else if (nWhatSpell == 152) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HOLD_MONSTER_7); }
    else if (nWhatSpell == 153) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_IMPROVED_INVISIBILITY_7); }
    else if (nWhatSpell == 154) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFLICT_MODERATE_WOUNDS_7); }
    else if (nWhatSpell == 155) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_SPELL_BREACH_7); }
    else if (nWhatSpell == 156) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MINOR_GLOBE_OF_INVULNERABILITY_7); }
    else if (nWhatSpell == 157) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_7); }
    else if (nWhatSpell == 158) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ONE_WITH_THE_LAND_7); }
    else if (nWhatSpell == 159) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_PHANTASMAL_KILLER_7); }
    else if (nWhatSpell == 160) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_POLYMORPH_SELF_7); }
    else if (nWhatSpell == 161) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESTORATION_7); }
    else if (nWhatSpell == 162) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHADOW_CONJURATION_7); }
    else if (nWhatSpell == 163) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_STONESKIN_7); }
    else if (nWhatSpell == 164) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_IV_7); }
    else if (nWhatSpell == 165) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_TASHAS_HIDEOUS_LAUGHTER_7); }
    else if (nWhatSpell == 166) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WAR_CRY_7); }
    else if (nWhatSpell == 167) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_QUILLFIRE_8); }
    else if (nWhatSpell == 168) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_AWAKEN_9); }
    else if (nWhatSpell == 169) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_9); }
    else if (nWhatSpell == 170) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CLOUDKILL_9); }
    else if (nWhatSpell == 171) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONE_OF_COLD_9); }
    else if (nWhatSpell == 172) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISPLACEMENT_9); }
    else if (nWhatSpell == 173) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ETHEREAL_VISAGE_9); }
    else if (nWhatSpell == 174) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FEEBLEMIND_9); }
    else if (nWhatSpell == 175) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GHOSTLY_VISAGE_9); }
    else if (nWhatSpell == 176) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_MAGIC_FANG_9); }
    else if (nWhatSpell == 177) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_SHADOW_CONJURATION_9); }
    else if (nWhatSpell == 178) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HEALING_CIRCLE_9); }
    else if (nWhatSpell == 179) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ICE_STORM_9); }
    else if (nWhatSpell == 180) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFLICT_SERIOUS_WOUNDS_9); }
    else if (nWhatSpell == 181) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_MIND_BLANK_9); }
    else if (nWhatSpell == 182) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_PLANAR_BINDING_9); }
    else if (nWhatSpell == 183) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LESSER_SPELL_MANTLE_9); }
    else if (nWhatSpell == 184) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MAGIC_MISSILE_9); }
    else if (nWhatSpell == 185) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MELFS_ACID_ARROW_9); }
    else if (nWhatSpell == 186) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MIND_FOG_9); }
    else if (nWhatSpell == 187) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_9); }
    else if (nWhatSpell == 188) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RAISE_DEAD_9); }
    else if (nWhatSpell == 189) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SPELL_RESISTANCE_9); }
    else if (nWhatSpell == 190) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SPIKE_GROWTH_9); }
    else if (nWhatSpell == 191) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_V_9); }
    else if (nWhatSpell == 192) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_TRUE_SEEING_9); }
    else if (nWhatSpell == 193) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WALL_OF_FIRE_9); }
    else if (nWhatSpell == 194) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WOUNDING_WHISPERS_9); }
    else if (nWhatSpell == 195) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ANIMATE_DEAD_10); }
    else if (nWhatSpell == 196) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BULLS_STRENGTH_10); }
    else if (nWhatSpell == 197) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CALL_LIGHTNING_10); }
    else if (nWhatSpell == 198) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CATS_GRACE_10); }
    else if (nWhatSpell == 199) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_MONSTER_10); }
    else if (nWhatSpell == 200) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_PERSON_10); }
    else if (nWhatSpell == 201) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHARM_PERSON_OR_ANIMAL_10); }
    else if (nWhatSpell == 202) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_10); }
    else if (nWhatSpell == 203) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONFUSION_10); }
    else if (nWhatSpell == 204) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_10); }
    else if (nWhatSpell == 205) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_SERIOUS_WOUNDS_10); }
    else if (nWhatSpell == 206) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISPEL_MAGIC_10); }
    else if (nWhatSpell == 207) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_ACID_10); }
    else if (nWhatSpell == 208) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_COLD_10); }
    else if (nWhatSpell == 209) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_FEAR_10); }
    else if (nWhatSpell == 210) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_FIRE_10); }
    else if (nWhatSpell == 211) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_GAS_10); }
    else if (nWhatSpell == 212) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_LIGHTNING_10); }
    else if (nWhatSpell == 213) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_PARALYZE_10); }
    else if (nWhatSpell == 214) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_SLEEP_10); }
    else if (nWhatSpell == 215) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_SLOW_10); }
    else if (nWhatSpell == 216) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DRAGON_BREATH_WEAKEN_10); }
    else if (nWhatSpell == 217) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EAGLE_SPLEDOR_10); }
    else if (nWhatSpell == 218) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENDURANCE_10); }
    else if (nWhatSpell == 219) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FIREBALL_10); }
    else if (nWhatSpell == 220) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_LASH_10); }
    else if (nWhatSpell == 221) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FOXS_CUNNING_10); }
    else if (nWhatSpell == 222) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GUST_OF_WIND_10); }
    else if (nWhatSpell == 223) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HASTE_10); }
    else if (nWhatSpell == 224) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_LIGHTNING_BOLT_10); }
    else if (nWhatSpell == 225) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_BURST_10); }
    else if (nWhatSpell == 226) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_10); }
    else if (nWhatSpell == 227) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_OWLS_WISDOM_10); }
    else if (nWhatSpell == 228) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESIST_ELEMENTS_10); }
    else if (nWhatSpell == 229) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ACID_FOG_11); }
    else if (nWhatSpell == 230) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BLADE_BARRIER_11); }
    else if (nWhatSpell == 231) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHAIN_LIGHTNING_11); }
    else if (nWhatSpell == 232) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_11); }
    else if (nWhatSpell == 233) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_UNDEAD_11); }
    else if (nWhatSpell == 234) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENERGY_BUFFER_11); }
    else if (nWhatSpell == 235) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GLOBE_OF_INVULNERABILITY_11); }
    else if (nWhatSpell == 236) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_BULLS_STRENGTH_11); }
    else if (nWhatSpell == 237) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_CATS_GRACE_11); }
    else if (nWhatSpell == 238) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_EAGLES_SPLENDOR_11); }
    else if (nWhatSpell == 239) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_ENDURANCE_11); }
    else if (nWhatSpell == 240) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_FOXS_CUNNING_11); }
    else if (nWhatSpell == 241) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_OWLS_WISDOM_11); }
    else if (nWhatSpell == 242) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_SPELL_BREACH_11); }
    else if (nWhatSpell == 243) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_STONESKIN_11); }
    else if (nWhatSpell == 244) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HARM_11); }
    else if (nWhatSpell == 245) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HEAL_11); }
    else if (nWhatSpell == 246) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MASS_HASTE_11); }
    else if (nWhatSpell == 247) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_PLANAR_BINDING_11); }
    else if (nWhatSpell == 248) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHADES_11); }
    else if (nWhatSpell == 249) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_VI_11); }
    else if (nWhatSpell == 250) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_TENSERS_TRANSFORMATION_11); }
    else if (nWhatSpell == 251) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BARKSKIN_12); }
    else if (nWhatSpell == 252) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_12); }
    else if (nWhatSpell == 253) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISMISSAL_12); }
    else if (nWhatSpell == 254) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ELEMENTAL_SHIELD_12); }
    else if (nWhatSpell == 255) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_ARROW_12); }
    else if (nWhatSpell == 256) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_STRIKE_12); }
    else if (nWhatSpell == 257) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HAMMER_OF_THE_GODS_12); }
    else if (nWhatSpell == 258) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFLICT_CRITICAL_WOUNDS_12); }
    else if (nWhatSpell == 259) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_AURA_OF_VITALITY_13); }
    else if (nWhatSpell == 260) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONTROL_UNDEAD_13); }
    else if (nWhatSpell == 261) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREEPING_DOOM_13); }
    else if (nWhatSpell == 262) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_13); }
    else if (nWhatSpell == 263) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DESTRUCTION_13); }
    else if (nWhatSpell == 264) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FINGER_OF_DEATH_13); }
    else if (nWhatSpell == 265) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FIRE_STORM_13); }
    else if (nWhatSpell == 266) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_RESTORATION_13); }
    else if (nWhatSpell == 267) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ISAACS_LESSER_MISSILE_STORM_13); }
    else if (nWhatSpell == 268) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MASS_CAMOFLAGE_13); }
    else if (nWhatSpell == 269) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_POWER_WORD_STUN_13); }
    else if (nWhatSpell == 270) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_PRISMATIC_SPRAY_13); }
    else if (nWhatSpell == 271) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_REGENERATE_13); }
    else if (nWhatSpell == 272) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_RESURRECTION_13); }
    else if (nWhatSpell == 273) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHADOW_SHIELD_13); }
    else if (nWhatSpell == 274) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SPELL_MANTLE_13); }
    else if (nWhatSpell == 275) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_VII_13); }
    else if (nWhatSpell == 276) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUNBEAM_13); }
    else if (nWhatSpell == 277) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WORD_OF_FAITH_13); }
    else if (nWhatSpell == 278) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_UNDEAD_14); }
    else if (nWhatSpell == 279) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ANIMATE_DEAD_15); }
    else if (nWhatSpell == 280) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BANISHMENT_15); }
    else if (nWhatSpell == 281) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BIGBYS_FORCEFUL_HAND_15); }
    else if (nWhatSpell == 282) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BIGBYS_INTERPOSING_HAND_15); }
    else if (nWhatSpell == 283) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BLADE_BARRIER_15); }
    else if (nWhatSpell == 284) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BULLS_STRENGTH_15); }
    else if (nWhatSpell == 285) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CATS_GRACE_15); }
    else if (nWhatSpell == 286) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHAIN_LIGHTNING_15); }
    else if (nWhatSpell == 287) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_15); }
    else if (nWhatSpell == 288) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_15); }
    else if (nWhatSpell == 289) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_15); }
    else if (nWhatSpell == 290) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONE_OF_COLD_15); }
    else if (nWhatSpell == 291) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_15); }
    else if (nWhatSpell == 292) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_15); }
    else if (nWhatSpell == 293) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_15); }
    else if (nWhatSpell == 294) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DIRGE_15); }
    else if (nWhatSpell == 295) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DROWN_15); }
    else if (nWhatSpell == 296) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EAGLE_SPLEDOR_15); }
    else if (nWhatSpell == 297) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENDURANCE_15); }
    else if (nWhatSpell == 298) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENERGY_BUFFER_15); }
    else if (nWhatSpell == 299) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ETHEREAL_VISAGE_15); }
    else if (nWhatSpell == 300) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EVARDS_BLACK_TENTACLES_15); }
    else if (nWhatSpell == 301) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FIREBRAND_15); }
    else if (nWhatSpell == 302) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FOXS_CUNNING_15); }
    else if (nWhatSpell == 303) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GHOSTLY_VISAGE_15); }
    else if (nWhatSpell == 304) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_DISPELLING_15); }
    else if (nWhatSpell == 305) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_PLANAR_BINDING_15); }
    else if (nWhatSpell == 306) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HORRID_WILTING_15); }
    else if (nWhatSpell == 307) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INCENDIARY_CLOUD_15); }
    else if (nWhatSpell == 308) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_INFERNO_15); }
    else if (nWhatSpell == 309) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ISAACS_GREATER_MISSILE_STORM_15); }
    else if (nWhatSpell == 310) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MASS_BLINDNESS_DEAFNESS_15); }
    else if (nWhatSpell == 311) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MASS_CHARM_15); }
    else if (nWhatSpell == 312) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MASS_HEAL_15); }
    else if (nWhatSpell == 313) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MIND_BLANK_15); }
    else if (nWhatSpell == 314) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MINOR_GLOBE_OF_INVULNERABILITY_15); }
    else if (nWhatSpell == 315) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NATURES_BALANCE_15); }
    else if (nWhatSpell == 316) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_15); }
    else if (nWhatSpell == 317) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_OWLS_INSIGHT_15); }
    else if (nWhatSpell == 318) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_OWLS_WISDOM_15); }
    else if (nWhatSpell == 319) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_PLANAR_ALLY_15); }
    else if (nWhatSpell == 320) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_PREMONITION_15); }
    else if (nWhatSpell == 321) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SPELL_RESISTANCE_15); }
    else if (nWhatSpell == 322) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_VIII_15); }
    else if (nWhatSpell == 323) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_16); }
    else if (nWhatSpell == 324) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_UNDEAD_16); }
    else if (nWhatSpell == 325) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HEALING_CIRCLE_16); }
    else if (nWhatSpell == 326) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BIGBYS_GRASPING_HAND_17); }
    else if (nWhatSpell == 327) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DOMINATE_MONSTER_17); }
    else if (nWhatSpell == 328) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ELEMENTAL_SWARM_17); }
    else if (nWhatSpell == 329) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENERGY_DRAIN_17); }
    else if (nWhatSpell == 330) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GATE_17); }
    else if (nWhatSpell == 331) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_GREATER_SPELL_MANTLE_17); }
    else if (nWhatSpell == 332) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_IMPLOSION_17); }
    else if (nWhatSpell == 333) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_METEOR_SWARM_17); }
    else if (nWhatSpell == 334) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_MORDENKAINENS_DISJUNCTION_17); }
    else if (nWhatSpell == 335) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_POWER_WORD_KILL_17); }
    else if (nWhatSpell == 336) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SHAPECHANGE_17); }
    else if (nWhatSpell == 337) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_STORM_OF_VENGEANCE_17); }
    else if (nWhatSpell == 338) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUMMON_CREATURE_IX_17); }
    else if (nWhatSpell == 339) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_TIME_STOP_17); }
    else if (nWhatSpell == 340) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WAIL_OF_THE_BANSHEE_17); }
    else if (nWhatSpell == 341) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_WEIRD_17); }
    else if (nWhatSpell == 342) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_18); }
    else if (nWhatSpell == 343) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DISMISSAL_18); }
    else if (nWhatSpell == 344) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ETHEREALNESS_18); }
    else if (nWhatSpell == 345) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FIRE_STORM_18); }
    else if (nWhatSpell == 346) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_ARROW_18); }
    else if (nWhatSpell == 347) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_FLAME_STRIKE_18); }
    else if (nWhatSpell == 348) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BIGBYS_CLENCHED_FIST_20); }
    else if (nWhatSpell == 349) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BIGBYS_CRUSHING_HAND_20); }
    else if (nWhatSpell == 350) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_BOMBARDMENT_20); }
    else if (nWhatSpell == 351) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CHAIN_LIGHTNING_20); }
    else if (nWhatSpell == 352) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_20); }
    else if (nWhatSpell == 353) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_20); }
    else if (nWhatSpell == 354) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_CONTROL_UNDEAD_20); }
    else if (nWhatSpell == 355) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_20); }
    else if (nWhatSpell == 356) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_EARTHQUAKE_20); }
    else if (nWhatSpell == 357) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_ENERGY_BUFFER_20); }
    else if (nWhatSpell == 358) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_HORRID_WILTING_20); }
    else if (nWhatSpell == 359) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_SUNBURST_20); }
    else if (nWhatSpell == 360) { SetLocalInt(oPC, "enchcast", IP_CONST_CASTSPELL_UNDEATHS_ETERNAL_FOE_20); }
    ////////////////////////////////////////////////////////////////////////////////

    //Setup the On Hit Cast Spells//////////////////////////////////////////////////
    {
        int nRandom = d8(7);
        if (nRandom == 7) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_ACID_FOG); }
        else if (nRandom == 8) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_BALL_LIGHTNING); }
        else if (nRandom == 9) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_BLINDNESS_AND_DEAFNESS); }
        else if (nRandom == 10) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CALL_LIGHTNING); }
        else if (nRandom == 11) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CHAIN_LIGHTNING); }
        else if (nRandom == 12) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CLOUDKILL); }
        else if (nRandom == 13) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_COMBUST); }
        else if (nRandom == 14) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CONFUSION); }
        else if (nRandom == 15) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CONTAGION); }
        else if (nRandom == 16) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_CRUMBLE); }
        else if (nRandom == 17) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DARKNESS); }
        else if (nRandom == 18) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DAZE); }
        else if (nRandom == 19) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DESTRUCTION); }
        else if (nRandom == 20) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DISPEL_MAGIC); }
        else if (nRandom == 21) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DOOM); }
        else if (nRandom == 22) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_DROWN); }
        else if (nRandom == 23) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_EARTHQUAKE); }
        else if (nRandom == 24) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_ELECTRIC_JOLT); }
        else if (nRandom == 25) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_ENERGY_DRAIN); }
        else if (nRandom == 26) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_ENTANGLE); }
        else if (nRandom == 27) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FEAR); }
        else if (nRandom == 28) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FEEBLEMIND); }
        else if (nRandom == 29) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FIRE_STORM); }
        else if (nRandom == 30) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FIREBALL); }
        else if (nRandom == 31) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FIREBRAND); }
        else if (nRandom == 32) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FLAME_STRIKE); }
        else if (nRandom == 33) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FLESH_TO_STONE); }
        else if (nRandom == 34) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_FREEZE); }
        else if (nRandom == 35) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_GHOUL_TOUCH); }
        else if (nRandom == 36) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_GREATER_DISPELLING); }
        else if (nRandom == 37) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_HARM); }
        else if (nRandom == 38) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_ICE_STORM); }
        else if (nRandom == 39) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_IMPLOSION); }
        else if (nRandom == 40) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_INFERNO); }
        else if (nRandom == 41) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_LESSER_DISPEL); }
        else if (nRandom == 42) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_LIGHTNING_BOLT); }
        else if (nRandom == 43) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_METEOR_SWARM); }
        else if (nRandom == 44) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_MIND_FOG); }
        else if (nRandom == 45) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_NEGATIVE_ENERGY_BURST); }
        else if (nRandom == 46) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_POISON); }
        else if (nRandom == 47) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SCARE); }
        else if (nRandom == 48) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SILENCE); }
        else if (nRandom == 49) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SLEEP); }
        else if (nRandom == 50) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SLOW); }
        else if (nRandom == 51) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SOUND_BURST); }
        else if (nRandom == 52) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_STONEHOLD); }
        else if (nRandom == 53) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_SUNBURST); }
        else if (nRandom == 54) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_VAMPIRIC_TOUCH); }
        else if (nRandom == 55) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_WEB); }
        else if (nRandom == 56) { SetLocalInt(oPC, "enchspell", IP_CONST_ONHIT_CASTSPELL_WOUNDING_WHISPERS); }
    }
    ////////////////////////////////////////////////////////////////////////////////

    itemproperty propImmuMis = ItemPropertyImmunityMisc(GetLocalInt(oPC, "enchimmisc"));
    itemproperty propImmun = ItemPropertyDamageImmunity(GetLocalInt(oPC, "enchdamtyp"), GetLocalInt(oPC, "enchimmun"));
    itemproperty propSave = ItemPropertyBonusSavingThrow(GetLocalInt(oPC, "enchsave"), bonus_2);
    itemproperty propSavS = ItemPropertyBonusSavingThrowVsX(GetLocalInt(oPC, "enchsaves"), bonus_2);
    itemproperty propRegen = ItemPropertyRegeneration(bonus_2);
    itemproperty propLight = ItemPropertyLight(GetLocalInt(oPC, "enchbright"), GetLocalInt(oPC, "enchcolor"));
    itemproperty propHaste = ItemPropertyHaste();
    itemproperty propFreed = ItemPropertyFreeAction();
    itemproperty propEvade = ItemPropertyImprovedEvasion();
    itemproperty propTrueS = ItemPropertyTrueSeeing();
    itemproperty propSpell = ItemPropertyOnHitCastSpell(GetLocalInt(oPC, "enchspell"), nLevel);
    itemproperty propSkill = ItemPropertySkillBonus(GetLocalInt(oPC, "enchskill"), nLevel);
    itemproperty propResit = ItemPropertyBonusSpellResistance(GetLocalInt(oPC, "enchsplres"));
    itemproperty featMod1 = ItemPropertyBonusFeat(GetLocalInt(oPC, "enchfeat"));
    itemproperty featMod2 = ItemPropertyBonusFeat(GetLocalInt(oPC, "enchfeat1"));
    itemproperty propACBon = ItemPropertyACBonus(bonus_2);
    itemproperty propACAln = ItemPropertyACBonusVsAlign(GetLocalInt(oPC, "enchalign"), bonus_2);
    itemproperty propACRce = ItemPropertyACBonusVsRace(GetLocalInt(oPC, "enchrace"), bonus_2);
    itemproperty propACSAl = ItemPropertyACBonusVsSAlign(GetLocalInt(oPC, "enchsalign"), bonus_2);
    itemproperty propACTyp = ItemPropertyACBonusVsDmgType(GetLocalInt(oPC, "enchdamtyp"), bonus_2);
    itemproperty propArRes = ItemPropertyDamageResistance(GetLocalInt(oPC, "enchdamtyp"), GetLocalInt(oPC, "enchdamres"));
    itemproperty abilityMod = ItemPropertyAbilityBonus(GetLocalInt(oPC, "enchability"), GetLocalInt(oPC, "enchabiplus"));
    itemproperty armSoak = ItemPropertyDamageReduction(GetLocalInt(oPC, "enchdamred"), GetLocalInt(oPC, "enchdamred1"));
    itemproperty propCast = ItemPropertyCastSpell(GetLocalInt(oPC, "enchcast"), GetLocalInt(oPC, "enchsptimes"));

    SetItemCharges(oArmor, 50);

    //Add Spell Bonus
    {
        int nRandom = d100(1);
        if (nRandom > 95) { IPSafeAddItemProperty(oArmor, propSpell); }
        else if ((nRandom > 89) && (nRandom < 96)) { IPSafeAddItemProperty(oArmor, propCast); }
    }

    //Add Ability Bonus
    {
        int nRandom = d100(1);
        if (nRandom > 90) { IPSafeAddItemProperty(oArmor, abilityMod); }
    }

    //Add Bonus Feat
    if ((GetLocalString(oPC, "enchant") == "ench_robe2") || (GetLocalString(oPC, "enchant") == "ench_robe1"))
    {
        {
            int nRandom = d100(1);
            if (nRandom > 95) { IPSafeAddItemProperty(oArmor, featMod1); }
            else if ((nRandom > 90) && (nRandom < 96)) { IPSafeAddItemProperty(oArmor, featMod2); }
        }
    }
    else
    {
        {
            int nRandom = d100(1);
            if (nRandom > 90) { IPSafeAddItemProperty(oArmor, featMod1); }
        }
    }

    //Add Light
    {
        int nRandom = d100(1);
        if (nRandom > 90) { IPSafeAddItemProperty(oArmor, propLight); }
    }

    //Add Skill
    {
        int nRandom = d100(1);
        if (nRandom > 90) { IPSafeAddItemProperty(oArmor, propSkill); }
    }

    //Add Protection Bonus
    {
        int nRandom = d100(1);
        if (nRandom > 98) { IPSafeAddItemProperty(oArmor, propImmuMis); }
        else if ((nRandom > 92) && (nRandom < 99)) { IPSafeAddItemProperty(oArmor, propSave); }
        // else if ((nRandom > 95) && (nRandom < 99)) { IPSafeAddItemProperty(oArmor, propSave); }
        // else if ((nRandom > 92) && (nRandom < 96)) { IPSafeAddItemProperty(oArmor, propSavS); }
        else if ((nRandom > 89) && (nRandom < 93)) { IPSafeAddItemProperty(oArmor, armSoak); }
        else if ((nRandom > 86) && (nRandom < 90)) { IPSafeAddItemProperty(oArmor, propArRes); }
        else if ((nRandom > 83) && (nRandom < 87)) { IPSafeAddItemProperty(oArmor, propResit); }
        else if ((nRandom > 79) && (nRandom < 84)) { IPSafeAddItemProperty(oArmor, propImmun); }
    }

    //Add AC Bonus
    {
        int nRandom = d100(1);
        if (nRandom > 89) { IPSafeAddItemProperty(oArmor, propACBon); }
        // if (nRandom > 95) { IPSafeAddItemProperty(oArmor, propACTyp); }
        // else if ((nRandom > 91) && (nRandom < 96)) { IPSafeAddItemProperty(oArmor, propACSAl); }
        // else if ((nRandom > 87) && (nRandom < 92)) { IPSafeAddItemProperty(oArmor, propACRce); }
        // else if ((nRandom > 83) && (nRandom < 88)) { IPSafeAddItemProperty(oArmor, propACAln); }
        // else if ((nRandom > 79) && (nRandom < 84)) { IPSafeAddItemProperty(oArmor, propACBon); }
    }

    //Add Special
    {
        int nRandom = d100(1);
        if ((nRandom > 79) && (nRandom < 84)) { IPSafeAddItemProperty(oArmor, propHaste); }
        else if ((nRandom > 83) && (nRandom < 88)) { IPSafeAddItemProperty(oArmor, propFreed); }
        else if ((nRandom > 87) && (nRandom < 92)) { IPSafeAddItemProperty(oArmor, propEvade); }
        else if ((nRandom > 91) && (nRandom < 96)) { IPSafeAddItemProperty(oArmor, propTrueS); }
        else if (nRandom > 95) { IPSafeAddItemProperty(oArmor, propRegen); }
    }

    //If no properties are added...add an AC Bonus
    if (GetIsItemPropertyValid(GetFirstItemProperty(oArmor)) == FALSE)
    {
        IPSafeAddItemProperty(oArmor, propACBon);
    }

    // sl: In case it is for giant classes
    // if (GetIsPC(oPC) && GetRacialType(oPC) == RACIAL_TYPE_HUMANOID_MONSTROUS)
    // {
    //     itemproperty wearMonst = ItemPropertyLimitUseByRace(IP_CONST_RACIALTYPE_HUMANOID_MONSTROUS);
    //     IPSafeAddItemProperty(oArmor, wearMonst);
    // }
    // if (GetIsPC(oPC) && GetRacialType(oPC) == RACIAL_TYPE_GIANT)
    // {
    //     itemproperty wearGiant = ItemPropertyLimitUseByRace(IP_CONST_RACIALTYPE_GIANT);
    //     IPSafeAddItemProperty(oArmor, wearGiant);
    // }

    //Delete all the variable used
    DeleteLocalInt(oPC, "whatspell");
    DeleteLocalString(oPC, "enchant");
    DeleteLocalInt(oPC, "enchability");
    DeleteLocalInt(oPC, "enchabiplus");
    DeleteLocalInt(oPC, "enchatmod");
    DeleteLocalInt(oPC, "enchalign");
    DeleteLocalInt(oPC, "enchrace");
    DeleteLocalInt(oPC, "enchsalign");
    DeleteLocalInt(oPC, "enchdamtyp");
    DeleteLocalInt(oPC, "enchimmun");
    DeleteLocalInt(oPC, "enchimmisc");
    DeleteLocalInt(oPC, "enchsplres");
    DeleteLocalInt(oPC, "enchfeat");
    DeleteLocalInt(oPC, "enchfeat1");
    DeleteLocalInt(oPC, "enchdamred");
    DeleteLocalInt(oPC, "enchdamred1");
    DeleteLocalInt(oPC, "enchdamres");
    DeleteLocalInt(oPC, "enchbright");
    DeleteLocalInt(oPC, "enchcolor");
    DeleteLocalInt(oPC, "enchskill");
    DeleteLocalInt(oPC, "enchsave");
    DeleteLocalInt(oPC, "enchsaves");
    DeleteLocalInt(oPC, "enchsptimes");
    DeleteLocalInt(oPC, "enchcast");
    DeleteLocalInt(oPC, "enchspell");
    SetIdentified(oArmor, FALSE);
    SetLocalInt(oArmor, "req_level", nLevel);
}
