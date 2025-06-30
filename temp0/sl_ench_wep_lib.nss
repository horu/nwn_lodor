// This creates dynamic magical weapons

#include "x2_inc_itemprop"
#include "sl_array_lib"

int sl_ench_wep_GetAbility()
{
    int ability = d6(1) - 1;
    return ability;
}

int sl_ench_wep_GetDamageBonus(int choice)
{
    if (choice <= 1)       { return IP_CONST_DAMAGEBONUS_1; }
    else if (choice == 2)  { return IP_CONST_DAMAGEBONUS_2; }
    else if (choice == 3)  { return IP_CONST_DAMAGEBONUS_1d4; }
    else if (choice == 4)  { return IP_CONST_DAMAGEBONUS_3; }
    else if (choice == 5)  { return IP_CONST_DAMAGEBONUS_2d4; }
    else if (choice == 6)  { return IP_CONST_DAMAGEBONUS_1d6; }
    else if (choice == 7)  { return IP_CONST_DAMAGEBONUS_4; }
    else if (choice == 8)  { return IP_CONST_DAMAGEBONUS_5; }
    else if (choice == 9)  { return IP_CONST_DAMAGEBONUS_2d6; }
    else if (choice == 10) { return IP_CONST_DAMAGEBONUS_1d8; }
    else if (choice == 11) { return IP_CONST_DAMAGEBONUS_6; }
    else if (choice == 12) { return IP_CONST_DAMAGEBONUS_7; }
    else if (choice == 13) { return IP_CONST_DAMAGEBONUS_2d8; }
    else if (choice == 14) { return IP_CONST_DAMAGEBONUS_1d10; }
    else if (choice == 15) { return IP_CONST_DAMAGEBONUS_1d12; }
    else if (choice == 16) { return IP_CONST_DAMAGEBONUS_8; }
    else if (choice == 17) { return IP_CONST_DAMAGEBONUS_9; }
    else if (choice == 18) { return IP_CONST_DAMAGEBONUS_10; }
    else if (choice == 19) { return IP_CONST_DAMAGEBONUS_2d10; }
    else if (choice >= 20) { return IP_CONST_DAMAGEBONUS_2d12; }

    return 0;
}

int sl_ench_wep_GetDamageType()
{
    int choice = Random(8) + 1;
    if (choice == 1)       { return IP_CONST_DAMAGETYPE_ACID; }
    else if (choice == 2)  { return IP_CONST_DAMAGETYPE_SONIC; }
    else if (choice == 3)  { return IP_CONST_DAMAGETYPE_COLD; }
    else if (choice == 4)  { return IP_CONST_DAMAGETYPE_DIVINE; }
    else if (choice == 5)  { return IP_CONST_DAMAGETYPE_ELECTRICAL; }
    else if (choice == 6)  { return IP_CONST_DAMAGETYPE_FIRE; }
    else if (choice == 7)  { return IP_CONST_DAMAGETYPE_MAGICAL; }
    else if (choice == 8)  { return IP_CONST_DAMAGETYPE_NEGATIVE; }
    else if (choice == 9)  { return IP_CONST_DAMAGETYPE_POSITIVE; }

    return 0;
}

int sl_ench_wep_GetSneakAttackFeat(int level)
{
    int choice = level / 10;

    if (choice <= 0)       { return IP_CONST_FEAT_SNEAK_ATTACK_1D6; }
    else if (choice == 1)  { return IP_CONST_FEAT_SNEAK_ATTACK_2D6; }
    else if (choice == 2)  { return IP_CONST_FEAT_SNEAK_ATTACK_3D6; }
    else if (choice >= 3)  { return IP_CONST_FEAT_SNEAK_ATTACK_5D6; }

    return 0;
}

int sl_ench_wep_GetBonusFeat(int level, int is_ranged)
{
    if (is_ranged)
    {
        int choice = d6(1);
        if (choice == 1)       { return IP_CONST_FEAT_DODGE; }
        else if (choice == 2)  { return IP_CONST_FEAT_MOBILITY; }
        else if (choice == 3)  { return IP_CONST_FEAT_USE_POISON; }
        else if (choice == 4)  { return sl_ench_wep_GetSneakAttackFeat(level); }
        else if (choice == 5)  { return IP_CONST_FEAT_POINTBLANK; }
        else if (choice == 6)  { return IP_CONST_FEAT_RAPID_SHOT; }
    }

    int choice = d12(1);
    if (choice == 1)       { return IP_CONST_FEAT_DODGE; }
    else if (choice == 2)  { return IP_CONST_FEAT_MOBILITY; }
    else if (choice == 3)  { return IP_CONST_FEAT_USE_POISON; }
    else if (choice == 4)  { return sl_ench_wep_GetSneakAttackFeat(level); }
    else if (choice == 5)  { return IP_CONST_FEAT_CLEAVE; }
    else if (choice == 6)  { return IP_CONST_FEAT_WEAPFINESSE; }
    else if (choice == 7)  { return IP_CONST_FEAT_TWO_WEAPON_FIGHTING; }
    else if (choice == 8)  { return IP_CONST_FEAT_AMBIDEXTROUS; }
    else if (choice == 9)  { return IP_CONST_FEAT_DISARM; }
    else if (choice == 10) { return IP_CONST_FEAT_COMBAT_CASTING; }
    else if (choice == 11) { return IP_CONST_FEAT_KNOCKDOWN; }
    else if (choice == 12) { return IP_CONST_FEAT_POWERATTACK; }

    return 0;
}

int sl_ench_wep_GetExtraDamage()
{
    int choice = d3(1);
    if (choice == 1)       { return IP_CONST_DAMAGETYPE_PIERCING; }
    else if (choice == 2)  { return IP_CONST_DAMAGETYPE_SLASHING; }
    else if (choice == 3)  { return IP_CONST_DAMAGETYPE_BLUDGEONING; }

    return 0;
}

int sl_ench_wep_GetAmmo()
{
    int choice = d10(1);
    if (choice == 1)       { return IP_CONST_UNLIMITEDAMMO_BASIC; }
    else if (choice == 2)  { return IP_CONST_UNLIMITEDAMMO_1D6COLD; }
    else if (choice == 3)  { return IP_CONST_UNLIMITEDAMMO_1D6FIRE; }
    else if (choice == 4)  { return IP_CONST_UNLIMITEDAMMO_1D6LIGHT; }
    else if (choice == 5)  { return IP_CONST_UNLIMITEDAMMO_PLUS1; }
    else if (choice == 6)  { return IP_CONST_UNLIMITEDAMMO_PLUS2; }
    else if (choice == 7)  { return IP_CONST_UNLIMITEDAMMO_PLUS3; }
    else if (choice == 8)  { return IP_CONST_UNLIMITEDAMMO_PLUS4; }
    else if (choice == 9)  { return IP_CONST_UNLIMITEDAMMO_PLUS5; }
    else if (choice == 10) { return IP_CONST_UNLIMITEDAMMO_BASIC; }

    return 0;
}

int sl_ench_wep_GetLightBrightness()
{
    int choice = d4(1);
    if (choice == 1)       { return IP_CONST_LIGHTBRIGHTNESS_DIM; }
    else if (choice == 2)  { return IP_CONST_LIGHTBRIGHTNESS_LOW; }
    else if (choice == 3)  { return IP_CONST_LIGHTBRIGHTNESS_NORMAL; }
    else if (choice == 4)  { return IP_CONST_LIGHTBRIGHTNESS_BRIGHT; }

    return 0;
}

int sl_ench_wep_GetLightColor()
{
    int choice = d8(1);
    if (choice == 1) { return IP_CONST_LIGHTCOLOR_BLUE; }
    else if (choice == 2) { return IP_CONST_LIGHTCOLOR_GREEN; }
    else if (choice == 3) { return IP_CONST_LIGHTCOLOR_ORANGE; }
    else if (choice == 4) { return IP_CONST_LIGHTCOLOR_PURPLE; }
    else if (choice == 5) { return IP_CONST_LIGHTCOLOR_RED; }
    else if (choice == 6) { return IP_CONST_LIGHTCOLOR_WHITE; }
    else if (choice == 7) { return IP_CONST_LIGHTCOLOR_YELLOW; }
    else if (choice == 8) { return IP_CONST_LIGHTCOLOR_WHITE; }

    return 0;
}

itemproperty sl_ench_wep_GetSpecialBonus()
{
    int choice = d3(1);
    if (choice == 1) { return ItemPropertyFreeAction(); }
    else if (choice == 2) { return ItemPropertyHolyAvenger(); }

    return ItemPropertyHaste();
}

int sl_ench_wep_GetOnHitProp()
{
    int choice = d20(1);
    if (choice == 1) { return IP_CONST_ONHIT_ABILITYDRAIN; }
    else if (choice == 2) { return IP_CONST_ONHIT_BLINDNESS; }
    else if (choice == 3) { return IP_CONST_ONHIT_CONFUSION; }
    else if (choice == 4) { return IP_CONST_ONHIT_DAZE; }
    else if (choice == 5) { return IP_CONST_ONHIT_DEAFNESS; }
    else if (choice == 6) { return IP_CONST_ONHIT_DISEASE; }
    else if (choice == 7) { return IP_CONST_ONHIT_DOOM; }
    else if (choice == 8) { return IP_CONST_ONHIT_FEAR; }
    else if (choice == 9) { return IP_CONST_ONHIT_HOLD; }
    else if (choice == 10) { return IP_CONST_ONHIT_ITEMPOISON; }
    else if (choice == 11) { return IP_CONST_ONHIT_SILENCE; }
    else if (choice == 12) { return IP_CONST_ONHIT_SLEEP; }
    else if (choice == 13) { return IP_CONST_ONHIT_SLOW; }
    else if (choice == 14) { return IP_CONST_ONHIT_STUN; }
    else if (choice == 15) { return IP_CONST_ONHIT_VORPAL; }
    else if (choice == 16) { return IP_CONST_ONHIT_WOUNDING; }
    else if (choice == 17) { return IP_CONST_ONHIT_DISPELMAGIC; }
    else if (choice == 18) { return IP_CONST_ONHIT_GREATERDISPEL; }
    else if (choice == 19) { return IP_CONST_ONHIT_LEVELDRAIN; }
    else { return IP_CONST_ONHIT_KNOCK; }

    return 0;
}

int sl_ench_wep_GetOnHitSaveDc(int level)
{
    if (level < 6) { return IP_CONST_ONHIT_SAVEDC_14; }
    else if ((level > 5) && (level < 11)) { return IP_CONST_ONHIT_SAVEDC_16; }
    else if ((level > 10) && (level < 16)) { return IP_CONST_ONHIT_SAVEDC_18; }
    else if ((level > 15) && (level < 21)) { return IP_CONST_ONHIT_SAVEDC_20; }
    else if ((level > 20) && (level < 26)) { return IP_CONST_ONHIT_SAVEDC_22; }
    else if ((level > 25) && (level < 36)) { return IP_CONST_ONHIT_SAVEDC_24; }
    else if ((level > 35) && (level < 100)) { return IP_CONST_ONHIT_SAVEDC_26; }

    return 0;
}

int sl_ench_wep_GetOnHitSpecial(int on_hit_prop)
{
    if ((on_hit_prop == IP_CONST_ONHIT_BLINDNESS) ||
        (on_hit_prop == IP_CONST_ONHIT_CONFUSION) ||
        (on_hit_prop == IP_CONST_ONHIT_DAZE) ||
        (on_hit_prop == IP_CONST_ONHIT_DEAFNESS) ||
        (on_hit_prop == IP_CONST_ONHIT_DOOM) ||
        (on_hit_prop == IP_CONST_ONHIT_FEAR) ||
        (on_hit_prop == IP_CONST_ONHIT_HOLD) ||
        (on_hit_prop == IP_CONST_ONHIT_SILENCE) ||
        (on_hit_prop == IP_CONST_ONHIT_SLEEP) ||
        (on_hit_prop == IP_CONST_ONHIT_SLOW) ||
        (on_hit_prop == IP_CONST_ONHIT_STUN))
    {
        {
            int choice = d6(1);
            if (choice == 1) { return IP_CONST_ONHIT_DURATION_10_PERCENT_4_ROUNDS; }
            else if (choice == 2) { return IP_CONST_ONHIT_DURATION_10_PERCENT_4_ROUNDS; }
            else if (choice == 3) { return IP_CONST_ONHIT_DURATION_25_PERCENT_3_ROUNDS; }
            else if (choice == 4) { return IP_CONST_ONHIT_DURATION_5_PERCENT_5_ROUNDS; }
            else if (choice == 5) { return IP_CONST_ONHIT_DURATION_50_PERCENT_2_ROUNDS; }
            else { return IP_CONST_ONHIT_DURATION_75_PERCENT_1_ROUND; }
        }
    }
    else if (on_hit_prop == IP_CONST_ONHIT_ABILITYDRAIN)
    {
        {
            int choice = d6(1);
            if (choice == 1) { return IP_CONST_ABILITY_STR; }
            else if (choice == 2) { return IP_CONST_ABILITY_DEX; }
            else if (choice == 3) { return IP_CONST_ABILITY_CON; }
            else if (choice == 4) { return IP_CONST_ABILITY_INT; }
            else if (choice == 5) { return IP_CONST_ABILITY_WIS; }
            else if (choice == 6) { return IP_CONST_ABILITY_CHA; }
        }
    }
    else if (on_hit_prop == IP_CONST_ONHIT_DISEASE)
    {
        {
            int choice = d6(3);
            if (choice == 3) { return DISEASE_BLINDING_SICKNESS; }
            else if (choice == 4) { return DISEASE_BURROW_MAGGOTS; }
            else if (choice == 5) { return DISEASE_CACKLE_FEVER; }
            else if (choice == 6) { return DISEASE_DEMON_FEVER; }
            else if (choice == 7) { return DISEASE_DEVIL_CHILLS; }
            else if (choice == 8) { return DISEASE_DREAD_BLISTERS; }
            else if (choice == 9) { return DISEASE_FILTH_FEVER; }
            else if (choice == 10) { return DISEASE_GHOUL_ROT; }
            else if (choice == 11) { return DISEASE_MINDFIRE; }
            else if (choice == 12) { return DISEASE_MUMMY_ROT; }
            else if (choice == 13) { return DISEASE_RED_ACHE; }
            else if (choice == 14) { return DISEASE_SHAKES; }
            else if (choice == 15) { return DISEASE_SLIMY_DOOM; }
            else if (choice == 16) { return DISEASE_SOLDIER_SHAKES; }
            else if (choice == 17) { return DISEASE_ZOMBIE_CREEP; }
            else if (choice == 18) { return DISEASE_VERMIN_MADNESS; }
        }
    }
    else if (on_hit_prop == IP_CONST_ONHIT_DISEASE)
    {
        {
            int choice = d6(1);
            if (choice == 1) { return IP_CONST_POISON_1D2_CHADAMAGE; }
            else if (choice == 2) { return IP_CONST_POISON_1D2_CONDAMAGE; }
            else if (choice == 3) { return IP_CONST_POISON_1D2_DEXDAMAGE; }
            else if (choice == 4) { return IP_CONST_POISON_1D2_INTDAMAGE; }
            else if (choice == 5) { return IP_CONST_POISON_1D2_STRDAMAGE; }
            else if (choice == 6) { return IP_CONST_POISON_1D2_WISDAMAGE; }
        }
    }

    return 0;
}

int sl_ench_wep_GetCastSpellNum(int modify_12)
{
    if (modify_12 < 2) { return IP_CONST_CASTSPELL_NUMUSES_SINGLE_USE; }
    else if (modify_12 == 2) { return IP_CONST_CASTSPELL_NUMUSES_5_CHARGES_PER_USE; }
    else if (modify_12 == 3) { return IP_CONST_CASTSPELL_NUMUSES_4_CHARGES_PER_USE; }
    else if (modify_12 == 4) { return IP_CONST_CASTSPELL_NUMUSES_3_CHARGES_PER_USE; }
    else if (modify_12 == 5) { return IP_CONST_CASTSPELL_NUMUSES_2_CHARGES_PER_USE; }
    else if (modify_12 == 6) { return IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE; }
    else if (modify_12 == 7) { return IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE; }
    else if (modify_12 == 8) { return IP_CONST_CASTSPELL_NUMUSES_1_CHARGE_PER_USE; }
    else if (modify_12 == 9) { return IP_CONST_CASTSPELL_NUMUSES_1_USE_PER_DAY; }
    else if (modify_12 == 10) { return IP_CONST_CASTSPELL_NUMUSES_2_USES_PER_DAY; }
    else if (modify_12 == 11) { return IP_CONST_CASTSPELL_NUMUSES_3_USES_PER_DAY; }
    else { return IP_CONST_CASTSPELL_NUMUSES_5_USES_PER_DAY; }

    return 0;
}

int sl_ench_wep_GetCastSpell(int level)
{
    //Find the level of spells the item can cast
    int spell = 0;
    if (level < 11)
    {
        spell = d20(3) - 2 + 17;
    }
    else if ((level > 10) && (level < 21))
    {
        spell = d20(9) + 14;
    }
    else if ((level > 20) && (level < 31))
    {
        spell = d100(2) + 78;
    }
    else if (level > 30)
    {
        spell = d12(14) + 192;
    }

    if (spell == 18) { return IP_CONST_CASTSPELL_ACID_SPLASH_1; }
    else if (spell == 19) { return IP_CONST_CASTSPELL_CURE_MINOR_WOUNDS_1; }
    else if (spell == 20) { return IP_CONST_CASTSPELL_DAZE_1; }
    else if (spell == 21) { return IP_CONST_CASTSPELL_ELECTRIC_JOLT_1; }
    else if (spell == 22) { return IP_CONST_CASTSPELL_FLARE_1; }
    else if (spell == 23) { return IP_CONST_CASTSPELL_INFLICT_MINOR_WOUNDS_1; }
    else if (spell == 24) { return IP_CONST_CASTSPELL_LIGHT_1; }
    else if (spell == 25) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_1; }
    else if (spell == 26) { return IP_CONST_CASTSPELL_RAY_OF_FROST_1; }
    else if (spell == 27) { return IP_CONST_CASTSPELL_VIRTUE_1; }
    else if (spell == 28) { return IP_CONST_CASTSPELL_BLESS_2; }
    else if (spell == 29) { return IP_CONST_CASTSPELL_CHARM_PERSON_2; }
    else if (spell == 30) { return IP_CONST_CASTSPELL_COLOR_SPRAY_2; }
    else if (spell == 31) { return IP_CONST_CASTSPELL_CURE_LIGHT_WOUNDS_2; }
    else if (spell == 32) { return IP_CONST_CASTSPELL_DOOM_2; }
    else if (spell == 33) { return IP_CONST_CASTSPELL_ENDURE_ELEMENTS_2; }
    else if (spell == 34) { return IP_CONST_CASTSPELL_ENTANGLE_2; }
    else if (spell == 35) { return IP_CONST_CASTSPELL_GREASE_2; }
    else if (spell == 36) { return IP_CONST_CASTSPELL_MAGE_ARMOR_2; }
    else if (spell == 37) { return IP_CONST_CASTSPELL_RAY_OF_ENFEEBLEMENT_2; }
    else if (spell == 38) { return IP_CONST_CASTSPELL_REMOVE_FEAR_2; }
    else if (spell == 39) { return IP_CONST_CASTSPELL_RESISTANCE_2; }
    else if (spell == 40) { return IP_CONST_CASTSPELL_SANCTUARY_2; }
    else if (spell == 41) { return IP_CONST_CASTSPELL_SCARE_2; }
    else if (spell == 42) { return IP_CONST_CASTSPELL_SLEEP_2; }
    else if (spell == 43) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_I_2; }
    else if (spell == 44) { return IP_CONST_CASTSPELL_AID_3; }
    else if (spell == 45) { return IP_CONST_CASTSPELL_BARKSKIN_3; }
    else if (spell == 46) { return IP_CONST_CASTSPELL_BLINDNESS_DEAFNESS_3; }
    else if (spell == 47) { return IP_CONST_CASTSPELL_BULLS_STRENGTH_3; }
    else if (spell == 48) { return IP_CONST_CASTSPELL_CATS_GRACE_3; }
    else if (spell == 49) { return IP_CONST_CASTSPELL_CHARM_PERSON_OR_ANIMAL_3; }
    else if (spell == 50) { return IP_CONST_CASTSPELL_CLARITY_3; }
    else if (spell == 51) { return IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_3; }
    else if (spell == 52) { return IP_CONST_CASTSPELL_DARKNESS_3; }
    else if (spell == 53) { return IP_CONST_CASTSPELL_EAGLE_SPLEDOR_3; }
    else if (spell == 54) { return IP_CONST_CASTSPELL_ENDURANCE_3; }
    else if (spell == 55) { return IP_CONST_CASTSPELL_FLAME_LASH_3; }
    else if (spell == 56) { return IP_CONST_CASTSPELL_FOXS_CUNNING_3; }
    else if (spell == 57) { return IP_CONST_CASTSPELL_GHOSTLY_VISAGE_3; }
    else if (spell == 58) { return IP_CONST_CASTSPELL_GHOUL_TOUCH_3; }
    else if (spell == 59) { return IP_CONST_CASTSPELL_HOLD_ANIMAL_3; }
    else if (spell == 60) { return IP_CONST_CASTSPELL_HOLD_PERSON_3; }
    else if (spell == 61) { return IP_CONST_CASTSPELL_IDENTIFY_3; }
    else if (spell == 62) { return IP_CONST_CASTSPELL_INVISIBILITY_3; }
    else if (spell == 63) { return IP_CONST_CASTSPELL_KNOCK_3; }
    else if (spell == 64) { return IP_CONST_CASTSPELL_LESSER_DISPEL_3; }
    else if (spell == 65) { return IP_CONST_CASTSPELL_LESSER_RESTORATION_3; }
    else if (spell == 66) { return IP_CONST_CASTSPELL_MAGIC_MISSILE_3; }
    else if (spell == 67) { return IP_CONST_CASTSPELL_MELFS_ACID_ARROW_3; }
    else if (spell == 68) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_3; }
    else if (spell == 69) { return IP_CONST_CASTSPELL_OWLS_WISDOM_3; }
    else if (spell == 70) { return IP_CONST_CASTSPELL_REMOVE_PARALYSIS_3; }
    else if (spell == 71) { return IP_CONST_CASTSPELL_RESIST_ELEMENTS_3; }
    else if (spell == 72) { return IP_CONST_CASTSPELL_SEE_INVISIBILITY_3; }
    else if (spell == 73) { return IP_CONST_CASTSPELL_SILENCE_3; }
    else if (spell == 74) { return IP_CONST_CASTSPELL_SOUND_BURST_3; }
    else if (spell == 75) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_II_3; }
    else if (spell == 76) { return IP_CONST_CASTSPELL_WEB_3; }
    else if (spell == 77) { return IP_CONST_CASTSPELL_AMPLIFY_5; }
    else if (spell == 78) { return IP_CONST_CASTSPELL_ANIMATE_DEAD_5; }
    else if (spell == 79) { return IP_CONST_CASTSPELL_BANE_5; }
    else if (spell == 80) { return IP_CONST_CASTSPELL_BESTOW_CURSE_5; }
    else if (spell == 81) { return IP_CONST_CASTSPELL_BURNING_HANDS_5; }
    else if (spell == 82) { return IP_CONST_CASTSPELL_CALL_LIGHTNING_5; }
    else if (spell == 83) { return IP_CONST_CASTSPELL_CAMOFLAGE_5; }
    else if (spell == 84) { return IP_CONST_CASTSPELL_CHARM_MONSTER_5; }
    else if (spell == 85) { return IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_5; }
    else if (spell == 86) { return IP_CONST_CASTSPELL_CONFUSION_5; }
    else if (spell == 87) { return IP_CONST_CASTSPELL_CONTAGION_5; }
    else if (spell == 88) { return IP_CONST_CASTSPELL_CURE_LIGHT_WOUNDS_5; }
    else if (spell == 89) { return IP_CONST_CASTSPELL_CURE_SERIOUS_WOUNDS_5; }
    else if (spell == 90) { return IP_CONST_CASTSPELL_DISPEL_MAGIC_5; }
    else if (spell == 91) { return IP_CONST_CASTSPELL_DIVINE_FAVOR_5; }
    else if (spell == 92) { return IP_CONST_CASTSPELL_DIVINE_MIGHT_5; }
    else if (spell == 93) { return IP_CONST_CASTSPELL_DIVINE_SHIELD_5; }
    else if (spell == 94) { return IP_CONST_CASTSPELL_DOMINATE_ANIMAL_5; }
    else if (spell == 95) { return IP_CONST_CASTSPELL_DOOM_5; }
    else if (spell == 96) { return IP_CONST_CASTSPELL_ENTANGLE_5; }
    else if (spell == 97) { return IP_CONST_CASTSPELL_ENTROPIC_SHIELD_5; }
    else if (spell == 98) { return IP_CONST_CASTSPELL_EXPEDITIOUS_RETREAT_5; }
    else if (spell == 99) { return IP_CONST_CASTSPELL_FEAR_5; }
    else if (spell == 100) { return IP_CONST_CASTSPELL_FIREBALL_5; }
    else if (spell == 101) { return IP_CONST_CASTSPELL_FLAME_ARROW_5; }
    else if (spell == 102) { return IP_CONST_CASTSPELL_FLESH_TO_STONE_5; }
    else if (spell == 103) { return IP_CONST_CASTSPELL_HASTE_5; }
    else if (spell == 104) { return IP_CONST_CASTSPELL_INFLICT_LIGHT_WOUNDS_5; }
    else if (spell == 105) { return IP_CONST_CASTSPELL_INVISIBILITY_PURGE_5; }
    else if (spell == 106) { return IP_CONST_CASTSPELL_INVISIBILITY_SPHERE_5; }
    else if (spell == 107) { return IP_CONST_CASTSPELL_LEGEND_LORE_5; }
    else if (spell == 108) { return IP_CONST_CASTSPELL_LESSER_DISPEL_5; }
    else if (spell == 109) { return IP_CONST_CASTSPELL_LIGHT_5; }
    else if (spell == 110) { return IP_CONST_CASTSPELL_LIGHTNING_BOLT_5; }
    else if (spell == 111) { return IP_CONST_CASTSPELL_MAGIC_CIRCLE_AGAINST_ALIGNMENT_5; }
    else if (spell == 112) { return IP_CONST_CASTSPELL_MAGIC_FANG_5; }
    else if (spell == 113) { return IP_CONST_CASTSPELL_MAGIC_MISSILE_5; }
    else if (spell == 114) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_BURST_5; }
    else if (spell == 115) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_5; }
    else if (spell == 116) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_5; }
    else if (spell == 117) { return IP_CONST_CASTSPELL_NEUTRALIZE_POISON_5; }
    else if (spell == 118) { return IP_CONST_CASTSPELL_POISON_5; }
    else if (spell == 119) { return IP_CONST_CASTSPELL_REMOVE_BLINDNESS_DEAFNESS_5; }
    else if (spell == 120) { return IP_CONST_CASTSPELL_REMOVE_CURSE_5; }
    else if (spell == 121) { return IP_CONST_CASTSPELL_REMOVE_DISEASE_5; }
    else if (spell == 122) { return IP_CONST_CASTSPELL_RESISTANCE_5; }
    else if (spell == 123) { return IP_CONST_CASTSPELL_SEARING_LIGHT_5; }
    else if (spell == 124) { return IP_CONST_CASTSPELL_SHIELD_5; }
    else if (spell == 125) { return IP_CONST_CASTSPELL_SHIELD_OF_FAITH_5; }
    else if (spell == 126) { return IP_CONST_CASTSPELL_SLEEP_5; }
    else if (spell == 127) { return IP_CONST_CASTSPELL_SLOW_5; }
    else if (spell == 128) { return IP_CONST_CASTSPELL_STINKING_CLOUD_5; }
    else if (spell == 129) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_I_5; }
    else if (spell == 130) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_III_5; }
    else if (spell == 131) { return IP_CONST_CASTSPELL_TRUE_STRIKE_5; }
    else if (spell == 132) { return IP_CONST_CASTSPELL_VAMPIRIC_TOUCH_5; }
    else if (spell == 133) { return IP_CONST_CASTSPELL_BARKSKIN_6; }
    else if (spell == 134) { return IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_6; }
    else if (spell == 135) { return IP_CONST_CASTSPELL_MELFS_ACID_ARROW_6; }
    else if (spell == 136) { return IP_CONST_CASTSPELL_AURAOFGLORY_7; }
    else if (spell == 137) { return IP_CONST_CASTSPELL_BALAGARNSIRONHORN_7; }
    else if (spell == 138) { return IP_CONST_CASTSPELL_BLOOD_FRENZY_7; }
    else if (spell == 139) { return IP_CONST_CASTSPELL_CONTINUAL_FLAME_7; }
    else if (spell == 140) { return IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_7; }
    else if (spell == 141) { return IP_CONST_CASTSPELL_DEATH_WARD_7; }
    else if (spell == 142) { return IP_CONST_CASTSPELL_DISMISSAL_7; }
    else if (spell == 143) { return IP_CONST_CASTSPELL_DIVINE_POWER_7; }
    else if (spell == 144) { return IP_CONST_CASTSPELL_DOMINATE_PERSON_7; }
    else if (spell == 145) { return IP_CONST_CASTSPELL_ELEMENTAL_SHIELD_7; }
    else if (spell == 146) { return IP_CONST_CASTSPELL_ENERVATION_7; }
    else if (spell == 147) { return IP_CONST_CASTSPELL_EVARDS_BLACK_TENTACLES_7; }
    else if (spell == 148) { return IP_CONST_CASTSPELL_FLAME_STRIKE_7; }
    else if (spell == 149) { return IP_CONST_CASTSPELL_FREEDOM_OF_MOVEMENT_7; }
    else if (spell == 150) { return IP_CONST_CASTSPELL_GREATER_DISPELLING_7; }
    else if (spell == 151) { return IP_CONST_CASTSPELL_HAMMER_OF_THE_GODS_7; }
    else if (spell == 152) { return IP_CONST_CASTSPELL_HOLD_MONSTER_7; }
    else if (spell == 153) { return IP_CONST_CASTSPELL_IMPROVED_INVISIBILITY_7; }
    else if (spell == 154) { return IP_CONST_CASTSPELL_INFLICT_MODERATE_WOUNDS_7; }
    else if (spell == 155) { return IP_CONST_CASTSPELL_LESSER_SPELL_BREACH_7; }
    else if (spell == 156) { return IP_CONST_CASTSPELL_MINOR_GLOBE_OF_INVULNERABILITY_7; }
    else if (spell == 157) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_7; }
    else if (spell == 158) { return IP_CONST_CASTSPELL_ONE_WITH_THE_LAND_7; }
    else if (spell == 159) { return IP_CONST_CASTSPELL_PHANTASMAL_KILLER_7; }
    else if (spell == 160) { return IP_CONST_CASTSPELL_POLYMORPH_SELF_7; }
    else if (spell == 161) { return IP_CONST_CASTSPELL_RESTORATION_7; }
    else if (spell == 162) { return IP_CONST_CASTSPELL_SHADOW_CONJURATION_7; }
    else if (spell == 163) { return IP_CONST_CASTSPELL_STONESKIN_7; }
    else if (spell == 164) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_IV_7; }
    else if (spell == 165) { return IP_CONST_CASTSPELL_TASHAS_HIDEOUS_LAUGHTER_7; }
    else if (spell == 166) { return IP_CONST_CASTSPELL_WAR_CRY_7; }
    else if (spell == 167) { return IP_CONST_CASTSPELL_QUILLFIRE_8; }
    else if (spell == 168) { return IP_CONST_CASTSPELL_AWAKEN_9; }
    else if (spell == 169) { return IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_9; }
    else if (spell == 170) { return IP_CONST_CASTSPELL_CLOUDKILL_9; }
    else if (spell == 171) { return IP_CONST_CASTSPELL_CONE_OF_COLD_9; }
    else if (spell == 172) { return IP_CONST_CASTSPELL_DISPLACEMENT_9; }
    else if (spell == 173) { return IP_CONST_CASTSPELL_ETHEREAL_VISAGE_9; }
    else if (spell == 174) { return IP_CONST_CASTSPELL_FEEBLEMIND_9; }
    else if (spell == 175) { return IP_CONST_CASTSPELL_GHOSTLY_VISAGE_9; }
    else if (spell == 176) { return IP_CONST_CASTSPELL_GREATER_MAGIC_FANG_9; }
    else if (spell == 177) { return IP_CONST_CASTSPELL_GREATER_SHADOW_CONJURATION_9; }
    else if (spell == 178) { return IP_CONST_CASTSPELL_HEALING_CIRCLE_9; }
    else if (spell == 179) { return IP_CONST_CASTSPELL_ICE_STORM_9; }
    else if (spell == 180) { return IP_CONST_CASTSPELL_INFLICT_SERIOUS_WOUNDS_9; }
    else if (spell == 181) { return IP_CONST_CASTSPELL_LESSER_MIND_BLANK_9; }
    else if (spell == 182) { return IP_CONST_CASTSPELL_LESSER_PLANAR_BINDING_9; }
    else if (spell == 183) { return IP_CONST_CASTSPELL_LESSER_SPELL_MANTLE_9; }
    else if (spell == 184) { return IP_CONST_CASTSPELL_MAGIC_MISSILE_9; }
    else if (spell == 185) { return IP_CONST_CASTSPELL_MELFS_ACID_ARROW_9; }
    else if (spell == 186) { return IP_CONST_CASTSPELL_MIND_FOG_9; }
    else if (spell == 187) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_RAY_9; }
    else if (spell == 188) { return IP_CONST_CASTSPELL_RAISE_DEAD_9; }
    else if (spell == 189) { return IP_CONST_CASTSPELL_SPELL_RESISTANCE_9; }
    else if (spell == 190) { return IP_CONST_CASTSPELL_SPIKE_GROWTH_9; }
    else if (spell == 191) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_V_9; }
    else if (spell == 192) { return IP_CONST_CASTSPELL_TRUE_SEEING_9; }
    else if (spell == 193) { return IP_CONST_CASTSPELL_WALL_OF_FIRE_9; }
    else if (spell == 194) { return IP_CONST_CASTSPELL_WOUNDING_WHISPERS_9; }
    else if (spell == 195) { return IP_CONST_CASTSPELL_ANIMATE_DEAD_10; }
    else if (spell == 196) { return IP_CONST_CASTSPELL_BULLS_STRENGTH_10; }
    else if (spell == 197) { return IP_CONST_CASTSPELL_CALL_LIGHTNING_10; }
    else if (spell == 198) { return IP_CONST_CASTSPELL_CATS_GRACE_10; }
    else if (spell == 199) { return IP_CONST_CASTSPELL_CHARM_MONSTER_10; }
    else if (spell == 200) { return IP_CONST_CASTSPELL_CHARM_PERSON_10; }
    else if (spell == 201) { return IP_CONST_CASTSPELL_CHARM_PERSON_OR_ANIMAL_10; }
    else if (spell == 202) { return IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_10; }
    else if (spell == 203) { return IP_CONST_CASTSPELL_CONFUSION_10; }
    else if (spell == 204) { return IP_CONST_CASTSPELL_CURE_MODERATE_WOUNDS_10; }
    else if (spell == 205) { return IP_CONST_CASTSPELL_CURE_SERIOUS_WOUNDS_10; }
    else if (spell == 206) { return IP_CONST_CASTSPELL_DISPEL_MAGIC_10; }
    else if (spell == 207) { return IP_CONST_CASTSPELL_DRAGON_BREATH_ACID_10; }
    else if (spell == 208) { return IP_CONST_CASTSPELL_DRAGON_BREATH_COLD_10; }
    else if (spell == 209) { return IP_CONST_CASTSPELL_DRAGON_BREATH_FEAR_10; }
    else if (spell == 210) { return IP_CONST_CASTSPELL_DRAGON_BREATH_FIRE_10; }
    else if (spell == 211) { return IP_CONST_CASTSPELL_DRAGON_BREATH_GAS_10; }
    else if (spell == 212) { return IP_CONST_CASTSPELL_DRAGON_BREATH_LIGHTNING_10; }
    else if (spell == 213) { return IP_CONST_CASTSPELL_DRAGON_BREATH_PARALYZE_10; }
    else if (spell == 214) { return IP_CONST_CASTSPELL_DRAGON_BREATH_SLEEP_10; }
    else if (spell == 215) { return IP_CONST_CASTSPELL_DRAGON_BREATH_SLOW_10; }
    else if (spell == 216) { return IP_CONST_CASTSPELL_DRAGON_BREATH_WEAKEN_10; }
    else if (spell == 217) { return IP_CONST_CASTSPELL_EAGLE_SPLEDOR_10; }
    else if (spell == 218) { return IP_CONST_CASTSPELL_ENDURANCE_10; }
    else if (spell == 219) { return IP_CONST_CASTSPELL_FIREBALL_10; }
    else if (spell == 220) { return IP_CONST_CASTSPELL_FLAME_LASH_10; }
    else if (spell == 221) { return IP_CONST_CASTSPELL_FOXS_CUNNING_10; }
    else if (spell == 222) { return IP_CONST_CASTSPELL_GUST_OF_WIND_10; }
    else if (spell == 223) { return IP_CONST_CASTSPELL_HASTE_10; }
    else if (spell == 224) { return IP_CONST_CASTSPELL_LIGHTNING_BOLT_10; }
    else if (spell == 225) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_BURST_10; }
    else if (spell == 226) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_10; }
    else if (spell == 227) { return IP_CONST_CASTSPELL_OWLS_WISDOM_10; }
    else if (spell == 228) { return IP_CONST_CASTSPELL_RESIST_ELEMENTS_10; }
    else if (spell == 229) { return IP_CONST_CASTSPELL_ACID_FOG_11; }
    else if (spell == 230) { return IP_CONST_CASTSPELL_BLADE_BARRIER_11; }
    else if (spell == 231) { return IP_CONST_CASTSPELL_CHAIN_LIGHTNING_11; }
    else if (spell == 232) { return IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_11; }
    else if (spell == 233) { return IP_CONST_CASTSPELL_CREATE_UNDEAD_11; }
    else if (spell == 234) { return IP_CONST_CASTSPELL_ENERGY_BUFFER_11; }
    else if (spell == 235) { return IP_CONST_CASTSPELL_GLOBE_OF_INVULNERABILITY_11; }
    else if (spell == 236) { return IP_CONST_CASTSPELL_GREATER_BULLS_STRENGTH_11; }
    else if (spell == 237) { return IP_CONST_CASTSPELL_GREATER_CATS_GRACE_11; }
    else if (spell == 238) { return IP_CONST_CASTSPELL_GREATER_EAGLES_SPLENDOR_11; }
    else if (spell == 239) { return IP_CONST_CASTSPELL_GREATER_ENDURANCE_11; }
    else if (spell == 240) { return IP_CONST_CASTSPELL_GREATER_FOXS_CUNNING_11; }
    else if (spell == 241) { return IP_CONST_CASTSPELL_GREATER_OWLS_WISDOM_11; }
    else if (spell == 242) { return IP_CONST_CASTSPELL_GREATER_SPELL_BREACH_11; }
    else if (spell == 243) { return IP_CONST_CASTSPELL_GREATER_STONESKIN_11; }
    else if (spell == 244) { return IP_CONST_CASTSPELL_HARM_11; }
    else if (spell == 245) { return IP_CONST_CASTSPELL_HEAL_11; }
    else if (spell == 246) { return IP_CONST_CASTSPELL_MASS_HASTE_11; }
    else if (spell == 247) { return IP_CONST_CASTSPELL_PLANAR_BINDING_11; }
    else if (spell == 248) { return IP_CONST_CASTSPELL_SHADES_11; }
    else if (spell == 249) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_VI_11; }
    else if (spell == 250) { return IP_CONST_CASTSPELL_TENSERS_TRANSFORMATION_11; }
    else if (spell == 251) { return IP_CONST_CASTSPELL_BARKSKIN_12; }
    else if (spell == 252) { return IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_12; }
    else if (spell == 253) { return IP_CONST_CASTSPELL_DISMISSAL_12; }
    else if (spell == 254) { return IP_CONST_CASTSPELL_ELEMENTAL_SHIELD_12; }
    else if (spell == 255) { return IP_CONST_CASTSPELL_FLAME_ARROW_12; }
    else if (spell == 256) { return IP_CONST_CASTSPELL_FLAME_STRIKE_12; }
    else if (spell == 257) { return IP_CONST_CASTSPELL_HAMMER_OF_THE_GODS_12; }
    else if (spell == 258) { return IP_CONST_CASTSPELL_INFLICT_CRITICAL_WOUNDS_12; }
    else if (spell == 259) { return IP_CONST_CASTSPELL_AURA_OF_VITALITY_13; }
    else if (spell == 260) { return IP_CONST_CASTSPELL_CONTROL_UNDEAD_13; }
    else if (spell == 261) { return IP_CONST_CASTSPELL_CREEPING_DOOM_13; }
    else if (spell == 262) { return IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_13; }
    else if (spell == 263) { return IP_CONST_CASTSPELL_DESTRUCTION_13; }
    else if (spell == 264) { return IP_CONST_CASTSPELL_FINGER_OF_DEATH_13; }
    else if (spell == 265) { return IP_CONST_CASTSPELL_FIRE_STORM_13; }
    else if (spell == 266) { return IP_CONST_CASTSPELL_GREATER_RESTORATION_13; }
    else if (spell == 267) { return IP_CONST_CASTSPELL_ISAACS_LESSER_MISSILE_STORM_13; }
    else if (spell == 268) { return IP_CONST_CASTSPELL_MASS_CAMOFLAGE_13; }
    else if (spell == 269) { return IP_CONST_CASTSPELL_POWER_WORD_STUN_13; }
    else if (spell == 270) { return IP_CONST_CASTSPELL_PRISMATIC_SPRAY_13; }
    else if (spell == 271) { return IP_CONST_CASTSPELL_REGENERATE_13; }
    else if (spell == 272) { return IP_CONST_CASTSPELL_RESURRECTION_13; }
    else if (spell == 273) { return IP_CONST_CASTSPELL_SHADOW_SHIELD_13; }
    else if (spell == 274) { return IP_CONST_CASTSPELL_SPELL_MANTLE_13; }
    else if (spell == 275) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_VII_13; }
    else if (spell == 276) { return IP_CONST_CASTSPELL_SUNBEAM_13; }
    else if (spell == 277) { return IP_CONST_CASTSPELL_WORD_OF_FAITH_13; }
    else if (spell == 278) { return IP_CONST_CASTSPELL_CREATE_UNDEAD_14; }
    else if (spell == 279) { return IP_CONST_CASTSPELL_ANIMATE_DEAD_15; }
    else if (spell == 280) { return IP_CONST_CASTSPELL_BANISHMENT_15; }
    else if (spell == 281) { return IP_CONST_CASTSPELL_BIGBYS_FORCEFUL_HAND_15; }
    else if (spell == 282) { return IP_CONST_CASTSPELL_BIGBYS_INTERPOSING_HAND_15; }
    else if (spell == 283) { return IP_CONST_CASTSPELL_BLADE_BARRIER_15; }
    else if (spell == 284) { return IP_CONST_CASTSPELL_BULLS_STRENGTH_15; }
    else if (spell == 285) { return IP_CONST_CASTSPELL_CATS_GRACE_15; }
    else if (spell == 286) { return IP_CONST_CASTSPELL_CHAIN_LIGHTNING_15; }
    else if (spell == 287) { return IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_15; }
    else if (spell == 288) { return IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_15; }
    else if (spell == 289) { return IP_CONST_CASTSPELL_CLAIRAUDIENCE_CLAIRVOYANCE_15; }
    else if (spell == 290) { return IP_CONST_CASTSPELL_CONE_OF_COLD_15; }
    else if (spell == 291) { return IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_15; }
    else if (spell == 292) { return IP_CONST_CASTSPELL_CURE_CRITICAL_WOUNDS_15; }
    else if (spell == 293) { return IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_15; }
    else if (spell == 294) { return IP_CONST_CASTSPELL_DIRGE_15; }
    else if (spell == 295) { return IP_CONST_CASTSPELL_DROWN_15; }
    else if (spell == 296) { return IP_CONST_CASTSPELL_EAGLE_SPLEDOR_15; }
    else if (spell == 297) { return IP_CONST_CASTSPELL_ENDURANCE_15; }
    else if (spell == 298) { return IP_CONST_CASTSPELL_ENERGY_BUFFER_15; }
    else if (spell == 299) { return IP_CONST_CASTSPELL_ETHEREAL_VISAGE_15; }
    else if (spell == 300) { return IP_CONST_CASTSPELL_EVARDS_BLACK_TENTACLES_15; }
    else if (spell == 301) { return IP_CONST_CASTSPELL_FIREBRAND_15; }
    else if (spell == 302) { return IP_CONST_CASTSPELL_FOXS_CUNNING_15; }
    else if (spell == 303) { return IP_CONST_CASTSPELL_GHOSTLY_VISAGE_15; }
    else if (spell == 304) { return IP_CONST_CASTSPELL_GREATER_DISPELLING_15; }
    else if (spell == 305) { return IP_CONST_CASTSPELL_GREATER_PLANAR_BINDING_15; }
    else if (spell == 306) { return IP_CONST_CASTSPELL_HORRID_WILTING_15; }
    else if (spell == 307) { return IP_CONST_CASTSPELL_INCENDIARY_CLOUD_15; }
    else if (spell == 308) { return IP_CONST_CASTSPELL_INFERNO_15; }
    else if (spell == 309) { return IP_CONST_CASTSPELL_ISAACS_GREATER_MISSILE_STORM_15; }
    else if (spell == 310) { return IP_CONST_CASTSPELL_MASS_BLINDNESS_DEAFNESS_15; }
    else if (spell == 311) { return IP_CONST_CASTSPELL_MASS_CHARM_15; }
    else if (spell == 312) { return IP_CONST_CASTSPELL_MASS_HEAL_15; }
    else if (spell == 313) { return IP_CONST_CASTSPELL_MIND_BLANK_15; }
    else if (spell == 314) { return IP_CONST_CASTSPELL_MINOR_GLOBE_OF_INVULNERABILITY_15; }
    else if (spell == 315) { return IP_CONST_CASTSPELL_NATURES_BALANCE_15; }
    else if (spell == 316) { return IP_CONST_CASTSPELL_NEGATIVE_ENERGY_PROTECTION_15; }
    else if (spell == 317) { return IP_CONST_CASTSPELL_OWLS_INSIGHT_15; }
    else if (spell == 318) { return IP_CONST_CASTSPELL_OWLS_WISDOM_15; }
    else if (spell == 319) { return IP_CONST_CASTSPELL_PLANAR_ALLY_15; }
    else if (spell == 320) { return IP_CONST_CASTSPELL_PREMONITION_15; }
    else if (spell == 321) { return IP_CONST_CASTSPELL_SPELL_RESISTANCE_15; }
    else if (spell == 322) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_VIII_15; }
    else if (spell == 323) { return IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_16; }
    else if (spell == 324) { return IP_CONST_CASTSPELL_CREATE_UNDEAD_16; }
    else if (spell == 325) { return IP_CONST_CASTSPELL_HEALING_CIRCLE_16; }
    else if (spell == 326) { return IP_CONST_CASTSPELL_BIGBYS_GRASPING_HAND_17; }
    else if (spell == 327) { return IP_CONST_CASTSPELL_DOMINATE_MONSTER_17; }
    else if (spell == 328) { return IP_CONST_CASTSPELL_ELEMENTAL_SWARM_17; }
    else if (spell == 329) { return IP_CONST_CASTSPELL_ENERGY_DRAIN_17; }
    else if (spell == 330) { return IP_CONST_CASTSPELL_GATE_17; }
    else if (spell == 331) { return IP_CONST_CASTSPELL_GREATER_SPELL_MANTLE_17; }
    else if (spell == 332) { return IP_CONST_CASTSPELL_IMPLOSION_17; }
    else if (spell == 333) { return IP_CONST_CASTSPELL_METEOR_SWARM_17; }
    else if (spell == 334) { return IP_CONST_CASTSPELL_MORDENKAINENS_DISJUNCTION_17; }
    else if (spell == 335) { return IP_CONST_CASTSPELL_POWER_WORD_KILL_17; }
    else if (spell == 336) { return IP_CONST_CASTSPELL_SHAPECHANGE_17; }
    else if (spell == 337) { return IP_CONST_CASTSPELL_STORM_OF_VENGEANCE_17; }
    else if (spell == 338) { return IP_CONST_CASTSPELL_SUMMON_CREATURE_IX_17; }
    else if (spell == 339) { return IP_CONST_CASTSPELL_TIME_STOP_17; }
    else if (spell == 340) { return IP_CONST_CASTSPELL_WAIL_OF_THE_BANSHEE_17; }
    else if (spell == 341) { return IP_CONST_CASTSPELL_WEIRD_17; }
    else if (spell == 342) { return IP_CONST_CASTSPELL_CREATE_GREATER_UNDEAD_18; }
    else if (spell == 343) { return IP_CONST_CASTSPELL_DISMISSAL_18; }
    else if (spell == 344) { return IP_CONST_CASTSPELL_ETHEREALNESS_18; }
    else if (spell == 345) { return IP_CONST_CASTSPELL_FIRE_STORM_18; }
    else if (spell == 346) { return IP_CONST_CASTSPELL_FLAME_ARROW_18; }
    else if (spell == 347) { return IP_CONST_CASTSPELL_FLAME_STRIKE_18; }
    else if (spell == 348) { return IP_CONST_CASTSPELL_BIGBYS_CLENCHED_FIST_20; }
    else if (spell == 349) { return IP_CONST_CASTSPELL_BIGBYS_CRUSHING_HAND_20; }
    else if (spell == 350) { return IP_CONST_CASTSPELL_BOMBARDMENT_20; }
    else if (spell == 351) { return IP_CONST_CASTSPELL_CHAIN_LIGHTNING_20; }
    else if (spell == 352) { return IP_CONST_CASTSPELL_CIRCLE_OF_DEATH_20; }
    else if (spell == 353) { return IP_CONST_CASTSPELL_CIRCLE_OF_DOOM_20; }
    else if (spell == 354) { return IP_CONST_CASTSPELL_CONTROL_UNDEAD_20; }
    else if (spell == 355) { return IP_CONST_CASTSPELL_DELAYED_BLAST_FIREBALL_20; }
    else if (spell == 356) { return IP_CONST_CASTSPELL_EARTHQUAKE_20; }
    else if (spell == 357) { return IP_CONST_CASTSPELL_ENERGY_BUFFER_20; }
    else if (spell == 358) { return IP_CONST_CASTSPELL_HORRID_WILTING_20; }
    else if (spell == 359) { return IP_CONST_CASTSPELL_SUNBURST_20; }
    else if (spell == 360) { return IP_CONST_CASTSPELL_UNDEATHS_ETERNAL_FOE_20; }

    return 0;
}

int sl_ench_wep_GetOnHitCastSpell()
{
    int choice = d8(7);
    if (choice == 7) { return IP_CONST_ONHIT_CASTSPELL_ACID_FOG; }
    else if (choice == 8) { return IP_CONST_ONHIT_CASTSPELL_BALL_LIGHTNING; }
    else if (choice == 9) { return IP_CONST_ONHIT_CASTSPELL_BLINDNESS_AND_DEAFNESS; }
    else if (choice == 10) { return IP_CONST_ONHIT_CASTSPELL_CALL_LIGHTNING; }
    else if (choice == 11) { return IP_CONST_ONHIT_CASTSPELL_CHAIN_LIGHTNING; }
    else if (choice == 12) { return IP_CONST_ONHIT_CASTSPELL_CLOUDKILL; }
    else if (choice == 13) { return IP_CONST_ONHIT_CASTSPELL_COMBUST; }
    else if (choice == 14) { return IP_CONST_ONHIT_CASTSPELL_CONFUSION; }
    else if (choice == 15) { return IP_CONST_ONHIT_CASTSPELL_CONTAGION; }
    else if (choice == 16) { return IP_CONST_ONHIT_CASTSPELL_CRUMBLE; }
    else if (choice == 17) { return IP_CONST_ONHIT_CASTSPELL_DARKNESS; }
    else if (choice == 18) { return IP_CONST_ONHIT_CASTSPELL_DAZE; }
    else if (choice == 19) { return IP_CONST_ONHIT_CASTSPELL_DESTRUCTION; }
    else if (choice == 20) { return IP_CONST_ONHIT_CASTSPELL_DISPEL_MAGIC; }
    else if (choice == 21) { return IP_CONST_ONHIT_CASTSPELL_DOOM; }
    else if (choice == 22) { return IP_CONST_ONHIT_CASTSPELL_DROWN; }
    else if (choice == 23) { return IP_CONST_ONHIT_CASTSPELL_EARTHQUAKE; }
    else if (choice == 24) { return IP_CONST_ONHIT_CASTSPELL_ELECTRIC_JOLT; }
    else if (choice == 25) { return IP_CONST_ONHIT_CASTSPELL_ENERGY_DRAIN; }
    else if (choice == 26) { return IP_CONST_ONHIT_CASTSPELL_ENTANGLE; }
    else if (choice == 27) { return IP_CONST_ONHIT_CASTSPELL_FEAR; }
    else if (choice == 28) { return IP_CONST_ONHIT_CASTSPELL_FEEBLEMIND; }
    else if (choice == 29) { return IP_CONST_ONHIT_CASTSPELL_FIRE_STORM; }
    else if (choice == 30) { return IP_CONST_ONHIT_CASTSPELL_FIREBALL; }
    else if (choice == 31) { return IP_CONST_ONHIT_CASTSPELL_FIREBRAND; }
    else if (choice == 32) { return IP_CONST_ONHIT_CASTSPELL_FLAME_STRIKE; }
    else if (choice == 33) { return IP_CONST_ONHIT_CASTSPELL_FLESH_TO_STONE; }
    else if (choice == 34) { return IP_CONST_ONHIT_CASTSPELL_FREEZE; }
    else if (choice == 35) { return IP_CONST_ONHIT_CASTSPELL_GHOUL_TOUCH; }
    else if (choice == 36) { return IP_CONST_ONHIT_CASTSPELL_GREATER_DISPELLING; }
    else if (choice == 37) { return IP_CONST_ONHIT_CASTSPELL_HARM; }
    else if (choice == 38) { return IP_CONST_ONHIT_CASTSPELL_ICE_STORM; }
    else if (choice == 39) { return IP_CONST_ONHIT_CASTSPELL_IMPLOSION; }
    else if (choice == 40) { return IP_CONST_ONHIT_CASTSPELL_INFERNO; }
    else if (choice == 41) { return IP_CONST_ONHIT_CASTSPELL_LESSER_DISPEL; }
    else if (choice == 42) { return IP_CONST_ONHIT_CASTSPELL_LIGHTNING_BOLT; }
    else if (choice == 43) { return IP_CONST_ONHIT_CASTSPELL_METEOR_SWARM; }
    else if (choice == 44) { return IP_CONST_ONHIT_CASTSPELL_MIND_FOG; }
    else if (choice == 45) { return IP_CONST_ONHIT_CASTSPELL_NEGATIVE_ENERGY_BURST; }
    else if (choice == 46) { return IP_CONST_ONHIT_CASTSPELL_POISON; }
    else if (choice == 47) { return IP_CONST_ONHIT_CASTSPELL_SCARE; }
    else if (choice == 48) { return IP_CONST_ONHIT_CASTSPELL_SILENCE; }
    else if (choice == 49) { return IP_CONST_ONHIT_CASTSPELL_SLEEP; }
    else if (choice == 50) { return IP_CONST_ONHIT_CASTSPELL_SLOW; }
    else if (choice == 51) { return IP_CONST_ONHIT_CASTSPELL_SOUND_BURST; }
    else if (choice == 52) { return IP_CONST_ONHIT_CASTSPELL_STONEHOLD; }
    else if (choice == 53) { return IP_CONST_ONHIT_CASTSPELL_SUNBURST; }
    else if (choice == 54) { return IP_CONST_ONHIT_CASTSPELL_VAMPIRIC_TOUCH; }
    else if (choice == 55) { return IP_CONST_ONHIT_CASTSPELL_WEB; }
    else if (choice == 56) { return IP_CONST_ONHIT_CASTSPELL_WOUNDING_WHISPERS; }

    return 0;
}

const string sl_ench_wep_prop_list = "sl_ench_wep_prop";
void sl_ench_wep_CreateWeaponPropertyTypeList()
{
    // Create list if empty
    if (sl_array_Size(sl_ench_wep_prop_list))
    {
        return;
    }

    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_ATTACK_BONUS);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_ENHANCEMENT_BONUS);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_DAMAGE_BONUS);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_ON_HIT_PROPERTIES);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_ONHITCASTSPELL);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_CAST_SPELL);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_ABILITY_BONUS);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_BONUS_FEAT);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_LIGHT);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_MASSIVE_CRITICALS);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_EXTRA_MELEE_DAMAGE_TYPE);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_REGENERATION);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_REGENERATION_VAMPIRIC);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_KEEN);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_HASTE);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_FREEDOM_OF_MOVEMENT);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_HOLY_AVENGER);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_UNLIMITED_AMMUNITION);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_MIGHTY);
    sl_array_PushbackInt(sl_ench_wep_prop_list, ITEM_PROPERTY_EXTRA_RANGED_DAMAGE_TYPE);

    PrintString("[sl_ench_wep] Created ench wep prop list: " + IntToString(sl_array_Size(sl_ench_wep_prop_list)));
}

int sl_ench_wep_GetWeaponPropertyTypeListSize()
{
    sl_ench_wep_CreateWeaponPropertyTypeList();
    return sl_array_Size(sl_ench_wep_prop_list);
}

int sl_ench_wep_GetWeaponPropertyType(int index)
{
    sl_ench_wep_CreateWeaponPropertyTypeList();
    return sl_array_AtInt(sl_ench_wep_prop_list, index);
}

int sl_ench_wep_IsWeaponSpecialBonus(int property_type)
{
    switch (property_type)
    {
    case ITEM_PROPERTY_KEEN:
    case ITEM_PROPERTY_HASTE:
    case ITEM_PROPERTY_FREEDOM_OF_MOVEMENT:
    case ITEM_PROPERTY_HOLY_AVENGER:
        return TRUE;
    }
    return FALSE;
}

itemproperty sl_ench_wep_ItemPropertyOnHitProps(int level)
{
    int on_hit_prop = sl_ench_wep_GetOnHitProp();
    return ItemPropertyOnHitProps(
        on_hit_prop,
        sl_ench_wep_GetOnHitSaveDc(level),
        sl_ench_wep_GetOnHitSpecial(on_hit_prop));
}

itemproperty sl_ench_wep_GetItemProperty(int property_type, int level, int is_ranged)
{
    int modify_12 = level / 3;
    if (modify_12 < 1) { modify_12 = 1; }
    if (modify_12 > 12) { modify_12 = 12; }

    int modify_20 = level / 2;
    if (modify_20 < 1) { modify_20 = 1; }
    if (modify_20 > 20) { modify_20 = 20; }

    switch (property_type)
    {
    case ITEM_PROPERTY_ATTACK_BONUS:
        return ItemPropertyAttackBonus(modify_20);
    case ITEM_PROPERTY_ENHANCEMENT_BONUS:
        return ItemPropertyEnhancementBonus(modify_20);
    case ITEM_PROPERTY_DAMAGE_BONUS:
        return ItemPropertyDamageBonus(sl_ench_wep_GetDamageType(), sl_ench_wep_GetDamageBonus(modify_20));

    case ITEM_PROPERTY_ON_HIT_PROPERTIES:
        return sl_ench_wep_ItemPropertyOnHitProps(level);
    case ITEM_PROPERTY_ONHITCASTSPELL:
        return ItemPropertyOnHitCastSpell(sl_ench_wep_GetOnHitCastSpell(), level);
    case ITEM_PROPERTY_CAST_SPELL:
        return ItemPropertyCastSpell(sl_ench_wep_GetCastSpell(level), sl_ench_wep_GetCastSpellNum(modify_12));

    case ITEM_PROPERTY_ABILITY_BONUS:
        return ItemPropertyAbilityBonus(sl_ench_wep_GetAbility(), modify_12);
    case ITEM_PROPERTY_BONUS_FEAT:
        return ItemPropertyBonusFeat(sl_ench_wep_GetBonusFeat(level, is_ranged));
    case ITEM_PROPERTY_LIGHT:
        return ItemPropertyLight(sl_ench_wep_GetLightBrightness(), sl_ench_wep_GetLightColor());

    case ITEM_PROPERTY_MASSIVE_CRITICALS:
        return ItemPropertyMassiveCritical(sl_ench_wep_GetDamageBonus(modify_20));
    case ITEM_PROPERTY_EXTRA_MELEE_DAMAGE_TYPE:
        return ItemPropertyExtraMeleeDamageType(sl_ench_wep_GetExtraDamage());

    case ITEM_PROPERTY_REGENERATION:
        return ItemPropertyRegeneration(modify_20);
    case ITEM_PROPERTY_REGENERATION_VAMPIRIC:
        return ItemPropertyVampiricRegeneration(modify_20);

    case ITEM_PROPERTY_KEEN:
        return ItemPropertyKeen();
    case ITEM_PROPERTY_HASTE:
        return ItemPropertyHaste();
    case ITEM_PROPERTY_FREEDOM_OF_MOVEMENT:
        return ItemPropertyFreeAction();
    case ITEM_PROPERTY_HOLY_AVENGER:
        return ItemPropertyHolyAvenger();

    case ITEM_PROPERTY_UNLIMITED_AMMUNITION:
        return ItemPropertyUnlimitedAmmo(sl_ench_wep_GetAmmo());
    case ITEM_PROPERTY_MIGHTY:
        return ItemPropertyMaxRangeStrengthMod(modify_20);
    case ITEM_PROPERTY_EXTRA_RANGED_DAMAGE_TYPE:
        return ItemPropertyExtraRangeDamageType(sl_ench_wep_GetExtraDamage());
    }

    return GetFirstItemProperty(OBJECT_INVALID);
}

void sl_ench_wep_AddItemProperty(object weapon, int property_type, int level)
{
    if (property_type == ITEM_PROPERTY_CAST_SPELL)
    {
        SetItemCharges(weapon, 50);
    }

    itemproperty prop = sl_ench_wep_GetItemProperty(property_type, level, IPGetIsRangedWeapon(weapon));
    IPSafeAddItemProperty(weapon, prop);
}

int sl_ench_wep_HasItemProperty(object weapon, int property_type)
{
    return FALSE;
}
