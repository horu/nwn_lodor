#include "sl_ench_lib"
#include "x2_inc_itemprop"

int get_damage_type(int level)
{
    switch (level)
    {
        case 2: return IP_CONST_DAMAGETYPE_FIRE;
        case 4: return IP_CONST_DAMAGETYPE_COLD;
        case 6: return IP_CONST_DAMAGETYPE_ACID;
        case 8: return IP_CONST_DAMAGETYPE_SONIC;
        case 10: return IP_CONST_DAMAGETYPE_MAGICAL;
    }
    return IP_CONST_DAMAGETYPE_FIRE;
}

int get_damage_bonues(int level)
{
    switch (level)
    {
        case 2: return IP_CONST_DAMAGEBONUS_1d4;
        case 4: return IP_CONST_DAMAGEBONUS_1d6;
        case 6: return IP_CONST_DAMAGEBONUS_1d8;
        case 8: return IP_CONST_DAMAGEBONUS_1d10;
        case 10: return IP_CONST_DAMAGEBONUS_1d12;
    }
    return IP_CONST_DAMAGEBONUS_1d4;
}

void add_ench_wep_props(object item, int level)
{
    itemproperty enhance = ItemPropertyEnhancementBonus(level);
    IPSafeAddItemProperty(item, enhance);

    if (!GetIsItemPropertyValid(GetFirstItemProperty(item)))
    {
        itemproperty attack = ItemPropertyAttackBonus(level);
        IPSafeAddItemProperty(item, attack);
    }

    itemproperty damage = ItemPropertyDamageBonus(get_damage_type(level), get_damage_bonues(level));
    IPSafeAddItemProperty(item, damage);

    itemproperty ammo = ItemPropertyUnlimitedAmmo(IP_CONST_UNLIMITEDAMMO_BASIC);
    IPSafeAddItemProperty(item, ammo);
}

void add_ench_item(object store, int index, int level)
{
    object item = sl_ench_create_wep(store, index);
    add_ench_wep_props(item, level);
    PrintString("[store_ench] Create wep lvl " + IntToString(level) + "/" + IntToString(index));
}

void add_ench_items(object store)
{
    int wep_list_size = sl_ench_get_wep_list_size();
    int level;
    for (level = 2; level <= 10; level += 2)
    {
        add_ench_item(store, 4, level);
        add_ench_item(store, 6, level);
        add_ench_item(store, 8, level);
        add_ench_item(store, 12, level);
        add_ench_item(store, 14, level);
        add_ench_item(store, 15, level);
        add_ench_item(store, 27, level);
        add_ench_item(store, 31, level);
        add_ench_item(store, 34, level);
    }
}

void main()
{
    int i;
    for (i = 5; i < 10; i++)
    {
        string store_tag = "dragforge" + IntToString(i);
        object store = GetObjectByTag(store_tag);
        PrintString("[store_ench] Create wep for " + store_tag + "/" + IntToString(store != OBJECT_INVALID));
        add_ench_items(store);
    }
}
