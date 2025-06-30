// This creates dynamic magical weapons

#include "sl_ench_wep_lib"

void main()
{
    object oPC = OBJECT_SELF;
    object weapon = GetLocalObject(oPC, "sl_loot_item");
    int level = GetLocalInt(oPC, "sl_loot_level");
    int improve_only = GetLocalInt(oPC, "sl_loot_improve_only");
    int chance = GetLocalInt(oPC, "sl_loot_prop_chance");
    int chance_on_hit = chance / 4;

    int modify_12 = level / 3;
    if (modify_12 < 1) { modify_12 = 1; }
    if (modify_12 > 12) { modify_12 = 12; }

    int modify_20 = level / 2;
    if (modify_20 < 1) { modify_20 = 1; }
    if (modify_20 > 20) { modify_20 = 20; }

    if (d100(1) <= chance_on_hit)
    {
        int on_hit_prop = sl_ench_wep_GetOnHitProp();
        itemproperty prop = ItemPropertyOnHitProps(on_hit_prop, sl_ench_wep_GetOnHitSaveDc(level), sl_ench_wep_GetOnHitSpecial(on_hit_prop));
        IPSafeAddItemProperty(weapon, prop);
    }
    else if (d100(1) <= chance_on_hit)
    {
        itemproperty prop = ItemPropertyOnHitCastSpell(sl_ench_wep_GetOnHitCastSpell(), level);
        IPSafeAddItemProperty(weapon, prop);
    }

    //Select an ability modifier////////////////////////////////////////////////////
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyAbilityBonus(sl_ench_wep_GetAbility(), modify_12);
        IPSafeAddItemProperty(weapon, prop);
    }

    //Select a Feat Bonus///////////////////////////////////////////////////////////
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyBonusFeat(sl_ench_wep_GetBonusFeat(level, IPGetIsRangedWeapon(weapon)));
        IPSafeAddItemProperty(weapon, prop);
    }

    //Add A Massive Critical
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyMassiveCritical(sl_ench_wep_GetDamageBonus(modify_20));
        IPSafeAddItemProperty(weapon, prop);
    }

    //Add Damage Modifier
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyDamageBonus(sl_ench_wep_GetDamageType(), sl_ench_wep_GetDamageBonus(modify_20));
        IPSafeAddItemProperty(weapon, prop);
    }

    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyKeen();
        IPSafeAddItemProperty(weapon, prop);
    }

    //Set the Extra Damage Bonus///////////////////////////////////////////////////////////
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyExtraRangeDamageType(sl_ench_wep_GetExtraDamage());
        IPSafeAddItemProperty(weapon, prop);
    }
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyExtraMeleeDamageType(sl_ench_wep_GetExtraDamage());
        IPSafeAddItemProperty(weapon, prop);
    }

    //Select the unlimited ammo if any//////////////////////////////////////////////
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyUnlimitedAmmo(sl_ench_wep_GetAmmo());
        IPSafeAddItemProperty(weapon, prop);
    }

    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyMaxRangeStrengthMod(modify_20);
        IPSafeAddItemProperty(weapon, prop);
    }

    //Set the light level///////////////////////////////////////////////////////////
    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyLight(sl_ench_wep_GetLightBrightness(), sl_ench_wep_GetLightColor());
        IPSafeAddItemProperty(weapon, prop);
    }

    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyRegeneration(modify_20);
        IPSafeAddItemProperty(weapon, prop);
    }
    else if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyVampiricRegeneration(modify_20);
        IPSafeAddItemProperty(weapon, prop);
    }

    if (d100(1) <= chance)
    {
        itemproperty prop = sl_ench_wep_GetSpecialBonus();
        IPSafeAddItemProperty(weapon, prop);
    }
    else if (d100(1) <= chance)
    {
        SetItemCharges(weapon, 50);

        itemproperty prop = ItemPropertyCastSpell(sl_ench_wep_GetCastSpell(level), sl_ench_wep_GetCastSpellNum(modify_12));
        IPSafeAddItemProperty(weapon, prop);
    }

    if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyEnhancementBonus(modify_20);
        IPSafeAddItemProperty(weapon, prop);
    }
    else if (d100(1) <= chance)
    {
        itemproperty prop = ItemPropertyAttackBonus(modify_20);
        IPSafeAddItemProperty(weapon, prop);
    }

    if (!improve_only && !GetIsItemPropertyValid(GetFirstItemProperty(weapon)))
    {
        //If no properties are added...add an attack modifier
        int att_modify = modify_20 - d6(1);
        if (att_modify <= 0)
        {
            att_modify = 1;
        }
        itemproperty prop = ItemPropertyAttackBonus(att_modify);
        IPSafeAddItemProperty(weapon, prop);
    }


    itemproperty ip = GetFirstItemProperty(weapon);
    while (GetIsItemPropertyValid(ip))
    {
        struct NWNX_IPUnpacked ip_unpacked = NWNX_ItemProperty_UnpackIP(ip);

        string msg = "";
        msg += "| P " + IntToString(ip_unpacked.nProperty);
        msg += "| ST " + IntToString(ip_unpacked.nSubType);
        msg += "| CT " + IntToString(ip_unpacked.nCostTable);
        msg += "| CTV " + IntToString(ip_unpacked.nCostTableValue);
        msg += "| P1 " + IntToString(ip_unpacked.nParam1);
        msg += "| P1V " + IntToString(ip_unpacked.nParam1Value);

        PrintString(msg);

        ip = GetNextItemProperty(weapon);
    }


    //Delete all the variable used
    SetIdentified(weapon, FALSE);
    SetLocalInt(weapon, "req_level", level);
}
