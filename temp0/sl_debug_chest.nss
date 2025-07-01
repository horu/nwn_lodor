// Low Level Box Loot List
#include "x0_i0_treasure"
#include "nwnx_itemprop"
#include "nwnx_item"
#include "sl_loot_lib"
#include "sl_debug_lib"
#include "sl_array_lib"

struct sl_loot_CreateParams sl_debug_Parse(string msg, object pc)
{
    // Example: 010020040.
    struct sl_loot_CreateParams params;

    if (GetStringLength(msg) >= 9)
    {
        params.chance = StringToInt(GetSubString(msg, 0, 3));
        params.prop_chance = StringToInt(GetSubString(msg, 3, 3));
        params.loot_level = StringToInt(GetSubString(msg, 6, 3));
    }
    FloatingTextStringOnCreature(
        "ch " + IntToString(params.chance) +
        " p_ch " + IntToString(params.prop_chance) +
        " lvl " + IntToString(params.loot_level), pc);

    return params;
}

void main()
{
    object oPC = GetLastOpenedBy();

    if (!sl_debug_Enabled(oPC))
    {
        return;
    }

    SetLocalInt(OBJECT_SELF, "opened", 1);

    object debug_helm = CreateItemOnObject("sl_debug_helm", OBJECT_SELF, 1);
    NWNX_Item_SetMinEquipLevelOverride(debug_helm, 1);

    struct sl_loot_CreateParams params = sl_debug_Parse(GetLocalString(oPC, "sl_pc_chat_msg"), oPC);
    if (params.chance == 0)
    {
        sl_loot_CreateRandomItemNormal(OBJECT_SELF, oPC, params.prop_chance);
    }
    else if (params.chance == 101)
    {
        sl_loot_CreateRandomItemBoss(OBJECT_SELF, oPC, params.prop_chance);
    }
    else if (params.chance == 102 || params.chance == 103)
    {
        int ranged_test = 1;
        if (params.chance == 102)
        {
            ranged_test = 0;
        }

        DestroyObject(debug_helm);

        int index = 0;
        if (!sl_array_Size("sl_debug_test_prop"))
        {
            for (index = 0; index < 100; index++)
            {
                sl_array_PushbackInt("sl_debug_test_prop", 0);
            }
        }

        params.holder = OBJECT_SELF;
        params.loot_opener = oPC;
        params.chance = 100;
        params.item_type = sl_loot_ITEM_TYPE_WEP;

        for (index = 0; index < 100; index++)
        {
            sl_loot_CreateRandomItem(params);
            object item = GetFirstItemInInventory(OBJECT_SELF);
            if (!ranged_test && IPGetIsRangedWeapon(item) || ranged_test && !IPGetIsRangedWeapon(item))
            {
                DestroyObject(item);
                continue;
            }

            itemproperty prop = GetFirstItemProperty(item);
            while (GetIsItemPropertyValid(prop))
            {
                int prop_type = GetItemPropertyType(prop);
                sl_array_SetInt("sl_debug_test_prop", prop_type, sl_array_AtInt("sl_debug_test_prop", prop_type) + 1);

                prop = GetNextItemProperty(item);
            }
            sl_array_SetInt("sl_debug_test_prop", 99, sl_array_AtInt("sl_debug_test_prop", 99) + 1);

            DestroyObject(item);
        }

        int all_count = sl_array_AtInt("sl_debug_test_prop", 99);
        int prop_type;
        for (prop_type = 0; prop_type < 100; prop_type++)
        {
            int count = sl_array_AtInt("sl_debug_test_prop", prop_type);
            if (count > 0)
            {
                PrintString(sl_ench_wep_ItemPropertyTypeToString(prop_type) + ":" + IntToString(count * 100 / all_count));
            }
        }
    }
    else if (params.chance == 104)
    {
        sl_array_Clear("sl_debug_test_prop");
    }
    else
    {
        params.holder = OBJECT_SELF;
        params.loot_opener = oPC;
        params.item_type = sl_loot_ITEM_TYPE_WEP;
        sl_loot_CreateRandomItem(params);
        params.item_type = sl_loot_ITEM_TYPE_ARM;
        sl_loot_CreateRandomItem(params);
    }

    object item = GetFirstItemInInventory(OBJECT_SELF);
    while (GetIsObjectValid(item))
    {
        SetIdentified(item, TRUE);
        item = GetNextItemInInventory(OBJECT_SELF);
    }
}
