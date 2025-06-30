#include "sl_loot_ench_lib"

int sl_forge_IsGem(object item)
{
    string tag = GetTag(item);
    int tag_len = GetStringLength(tag);
    string tag_sub = GetSubString(tag, 0, 9);

    if (tag_sub == "NW_IT_GEM" && tag_len == 12)
    {
        return 1;
    }
    return 0;
}

int sl_forge_GetPoints(object gem_stack)
{
    return GetGoldPieceValue(gem_stack);
}

object sl_forge_GetItemToImprove(object forge)
{
    object item_to_improve = OBJECT_INVALID;

    object item = GetFirstItemInInventory(forge);
    while (GetIsObjectValid(item))
    {
        if (!sl_forge_IsGem(item))
        {
            if (item_to_improve != OBJECT_INVALID)
            {
                // One item to improve only.
                return OBJECT_INVALID;
            }
            // TODO: Check for weapon.
            item_to_improve = item;
        }

        item = GetNextItemInInventory(forge);
    }

    return item_to_improve;
}

int sl_forge_GetChance(object forge, object pc)
{
    int gem_points = 0;

    object item = GetFirstItemInInventory(forge);
    while (GetIsObjectValid(item))
    {
        if (sl_forge_IsGem(item))
        {
            gem_points += sl_forge_GetPoints(item);
        }

        item = GetNextItemInInventory(forge);
    }

    int level = GetHitDice(pc);

    int chance = gem_points / (level * 2) / 100;
    if (chance > 75)
    {
        return 75;
    }
    return chance;
}

void sl_forge_DistroyGems(object forge)
{
    object item = GetFirstItemInInventory(forge);
    while (GetIsObjectValid(item))
    {
        if (sl_forge_IsGem(item))
        {
            DestroyObject(item);
        }

        item = GetNextItemInInventory(forge);
    }
}

void sl_forge_Process(object forge, object pc)
{
    object item = sl_forge_GetItemToImprove(forge);
    if (item == OBJECT_INVALID)
    {
        FloatingTextStringOnCreature("Can not process. Please put one item to improve.", pc, FALSE);
        return;
    }

    int chance = sl_forge_GetChance(forge, pc);
    if (chance <= 0)
    {
        FloatingTextStringOnCreature("Can not process. No chances to improve. Need gems.", pc, FALSE);
        return;
    }

    int level = GetHitDice(pc);
    level = level/2 + Random(level/2 + 1);

    // sl_forge_DistroyGems(forge);
    item = sl_loot_ImproveWeapon(forge, item, level, chance);
    // SetItemCursedFlag(item, TRUE);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WORD), forge);

    AssignCommand(pc, ActionInteractObject(forge));
}

void main()
{
    object forge = OBJECT_SELF;

    if (GetScriptParam("sl_forge_action") == "check")
    {
        object item = sl_forge_GetItemToImprove(forge);
        if (item == OBJECT_INVALID)
        {
            SetCustomToken(301, "Can not process. Please put one item to improve.");
            return;
        }

        object pc = GetPCSpeaker();
        int chance = sl_forge_GetChance(forge, pc);
        string process_message = "Process. [Improve chance " + IntToString(chance) + "%]";
        SetCustomToken(301, process_message);
    }
    else if (GetScriptParam("sl_forge_action") == "process")
    {
        object pc = GetPCSpeaker();
        sl_forge_Process(forge, pc);
    }
    else
    {
        // Open action.
        object pc = GetLastClosedBy();
        AssignCommand(forge, ActionStartConversation(pc, "sl_forge"));
    }
}
