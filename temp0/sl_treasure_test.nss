// Low Level Box Loot List
#include "x0_i0_treasure"
#include "nwnx_itemprop"
#include "nwnx_item"

void main()
{
    object oPC = GetLastOpenedBy();
    object oLastOpener = GetLastOpener();
    SetLocalInt(OBJECT_SELF, "opened", 1);

    object oItem = GetFirstItemInInventory(OBJECT_SELF);
    while (GetIsObjectValid(oItem))
    {
        if (GetTag(oItem) == "sl_debug_helm")
        {
            NWNX_Item_SetMinEquipLevelOverride(oItem, 1);
        }
        oItem = GetNextItemInInventory(OBJECT_SELF);
    }

    // sl DEBUG:
    int sl_chance = StringToInt(GetLocalString(oPC, "sl_pc_chat_msg"));
    SetLocalObject(OBJECT_SELF, "sl_loot_opener", oPC);
    SetLocalInt(OBJECT_SELF, "sl_loot_chance", sl_chance);
    SetLocalInt(OBJECT_SELF, "sl_loot_type", 1); // wep only
    ExecuteScript("sl_loot_ench", OBJECT_SELF);
    SetLocalObject(OBJECT_SELF, "sl_loot_opener", oPC);
    SetLocalInt(OBJECT_SELF, "sl_loot_chance", sl_chance);
    SetLocalInt(OBJECT_SELF, "sl_loot_type", 2); // arm only
    ExecuteScript("sl_loot_ench", OBJECT_SELF);
}
