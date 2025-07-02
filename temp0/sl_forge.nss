#include "sl_loot_lib"

int sl_forge_IsGem(object oItem)
{
    string sTag = GetTag(oItem);
    int nTag = GetStringLength(sTag);
    string sTagSub = GetSubString(sTag, 0, 9);

    if (sTagSub == "NW_IT_GEM" && nTag == 12)
    {
        return 1;
    }
    return 0;
}

int sl_forge_GetPoints(object oGems)
{
    return GetGoldPieceValue(oGems);
}

object sl_forge_GetItemToImprove(object oForge)
{
    object oItemToImprove = OBJECT_INVALID;

    object oItem = GetFirstItemInInventory(oForge);
    while (GetIsObjectValid(oItem))
    {
        if (!sl_forge_IsGem(oItem))
        {
            if (oItemToImprove != OBJECT_INVALID)
            {
                // One oItem to improve only.
                return OBJECT_INVALID;
            }
            // TODO: Check for weapon.
            oItemToImprove = oItem;
        }

        oItem = GetNextItemInInventory(oForge);
    }

    return oItemToImprove;
}

int sl_forge_GetChance(object oForge, object oPC)
{
    int nPoints = 0;

    object oItem = GetFirstItemInInventory(oForge);
    while (GetIsObjectValid(oItem))
    {
        if (sl_forge_IsGem(oItem))
        {
            nPoints += sl_forge_GetPoints(oItem);
        }

        oItem = GetNextItemInInventory(oForge);
    }

    int nLevel = GetHitDice(oPC);

    int nChance = nPoints / (nLevel * 2) / 100;
    if (nChance > 75)
    {
        return 75;
    }
    return nChance;
}

void sl_forge_DestroyGems(object oForge)
{
    object oItem = GetFirstItemInInventory(oForge);
    while (GetIsObjectValid(oItem))
    {
        if (sl_forge_IsGem(oItem))
        {
            DestroyObject(oItem);
        }

        oItem = GetNextItemInInventory(oForge);
    }
}

void sl_forge_Process(object oForge, object oPC)
{
    object oItem = sl_forge_GetItemToImprove(oForge);
    if (oItem == OBJECT_INVALID)
    {
        FloatingTextStringOnCreature("Can not process. Please put one item to improve.", oPC, FALSE);
        return;
    }

    int nChance = sl_forge_GetChance(oForge, oPC);
    if (nChance <= 0)
    {
        FloatingTextStringOnCreature("Can not process. No chances to improve. Need gems.", oPC, FALSE);
        return;
    }

    int nLevel = GetHitDice(oPC);
    nLevel = nLevel/2 + Random(nLevel/2 + 1);

    // sl_forge_DestroyGems(oForge);
    //oItem = sl_loot_ImproveWeapon(oForge, oItem, nLevel, nChance);
    // SetItemCursedFlag(oItem, TRUE);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_WORD), oForge);

    AssignCommand(oPC, ActionInteractObject(oForge));
}

void main()
{
    object oForge = OBJECT_SELF;

    if (GetScriptParam("sl_forge_action") == "check")
    {
        object oItem = sl_forge_GetItemToImprove(oForge);
        if (oItem == OBJECT_INVALID)
        {
            SetCustomToken(301, "Can not process. Please put one item to improve.");
            return;
        }

        object oPC = GetPCSpeaker();
        int nChance = sl_forge_GetChance(oForge, oPC);
        string sMessage = "Process. [Improve chanse " + IntToString(nChance) + "%]";
        SetCustomToken(301, sMessage);
    }
    else if (GetScriptParam("sl_forge_action") == "process")
    {
        object oPC = GetPCSpeaker();
        sl_forge_Process(oForge, oPC);
    }
    else
    {
        // Open action.
        object oPC = GetLastClosedBy();
        AssignCommand(oForge, ActionStartConversation(oPC, "sl_forge"));
    }
}
