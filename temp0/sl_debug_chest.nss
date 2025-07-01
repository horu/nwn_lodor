// Low Level Box Loot List
#include "x0_i0_treasure"
#include "nwnx_itemprop"
#include "nwnx_item"
#include "sl_loot_lib"
#include "sl_debug_lib"

struct sl_loot_CreateParams sl_test_Parse(string msg, object pc)
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

    struct sl_loot_CreateParams params = sl_test_Parse(GetLocalString(oPC, "sl_pc_chat_msg"), oPC);
    if (params.chance == 0)
    {
        sl_loot_CreateRandomItemNormal(OBJECT_SELF, oPC, params.prop_chance);
    }
    else if (params.chance == -1)
    {
        sl_loot_CreateRandomItemBoss(OBJECT_SELF, oPC, params.prop_chance);
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
