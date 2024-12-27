#include "x2_inc_itemprop"

void main()
{
    object oItem = GetItemActivatedTarget();
    object oPC = GetItemActivator();
    object oHammer = GetItemActivated();

    // HELMETS
    if (GetBaseItemType(oItem) == BASE_ITEM_HELMET)
    {
        int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_MODEL, 0);
        if (nAppear > 31)
        {
            int nNewApr = 1;
            CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL, 0, nNewApr, TRUE);
            DestroyObject(oItem, 1.0);
        }
        else
        {
            int nNewApr = nAppear + 1;
            CopyItemAndModify(oItem, ITEM_APPR_TYPE_ARMOR_MODEL, 0, nNewApr, TRUE);
            DestroyObject(oItem, 1.0);
        }
    }

    // SHIELDS
    else if ((GetBaseItemType(oItem) == BASE_ITEM_LARGESHIELD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SMALLSHIELD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_TOWERSHIELD))
    {
        int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_SIMPLE_MODEL, 0);
        if (nAppear == 11) { SetLocalInt(oPC, "smith", 12); }
        if (nAppear == 12) { SetLocalInt(oPC, "smith", 13); }
        if (nAppear == 13) { SetLocalInt(oPC, "smith", 21); }
        if (nAppear == 21) { SetLocalInt(oPC, "smith", 22); }
        if (nAppear == 22) { SetLocalInt(oPC, "smith", 23); }
        if (nAppear == 23) { SetLocalInt(oPC, "smith", 31); }
        if (nAppear == 31) { SetLocalInt(oPC, "smith", 32); }
        if (nAppear == 32) { SetLocalInt(oPC, "smith", 33); }
        if (nAppear == 33) { SetLocalInt(oPC, "smith", 41); }
        if (nAppear == 41) { SetLocalInt(oPC, "smith", 42); }
        if (nAppear == 42) { SetLocalInt(oPC, "smith", 43); }
        if (nAppear == 43) { SetLocalInt(oPC, "smith", 11); }
        CopyItemAndModify(oItem, ITEM_APPR_TYPE_SIMPLE_MODEL, 0, GetLocalInt(oPC, "smith"), TRUE);
        DestroyObject(oItem, 1.0);
    }

    // WEAPON COLORS
    else if (GetLocalInt(oHammer, "smith") == 4)
    {
        if ((GetBaseItemType(oItem) == BASE_ITEM_BASTARDSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_BATTLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_CLUB) || (GetBaseItemType(oItem) == BASE_ITEM_DAGGER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_DIREMACE) || (GetBaseItemType(oItem) == BASE_ITEM_DOUBLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_GREATAXE) || (GetBaseItemType(oItem) == BASE_ITEM_GREATSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HALBERD) || (GetBaseItemType(oItem) == BASE_ITEM_HANDAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HEAVYCROSSBOW) || (GetBaseItemType(oItem) == BASE_ITEM_HEAVYFLAIL) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KAMA) || (GetBaseItemType(oItem) == BASE_ITEM_KATANA) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KUKRI) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTCROSSBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTFLAIL) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTHAMMER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTMACE) || (GetBaseItemType(oItem) == BASE_ITEM_LONGBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LONGSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICROD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MAGICSTAFF) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICWAND) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MORNINGSTAR) || (GetBaseItemType(oItem) == BASE_ITEM_QUARTERSTAFF) ||
            (GetBaseItemType(oItem) == BASE_ITEM_RAPIER) || (GetBaseItemType(oItem) == BASE_ITEM_SCIMITAR) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SCYTHE) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SHORTSPEAR) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SICKLE) || (GetBaseItemType(oItem) == BASE_ITEM_TWOBLADEDSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_WARHAMMER))
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }
    else if (GetLocalInt(oHammer, "smith") == 5)
    {
        if ((GetBaseItemType(oItem) == BASE_ITEM_BASTARDSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_BATTLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_CLUB) || (GetBaseItemType(oItem) == BASE_ITEM_DAGGER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_DIREMACE) || (GetBaseItemType(oItem) == BASE_ITEM_DOUBLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_GREATAXE) || (GetBaseItemType(oItem) == BASE_ITEM_GREATSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HALBERD) || (GetBaseItemType(oItem) == BASE_ITEM_HANDAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HEAVYCROSSBOW) || (GetBaseItemType(oItem) == BASE_ITEM_HEAVYFLAIL) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KAMA) || (GetBaseItemType(oItem) == BASE_ITEM_KATANA) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KUKRI) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTCROSSBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTFLAIL) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTHAMMER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTMACE) || (GetBaseItemType(oItem) == BASE_ITEM_LONGBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LONGSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICROD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MAGICSTAFF) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICWAND) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MORNINGSTAR) || (GetBaseItemType(oItem) == BASE_ITEM_QUARTERSTAFF) ||
            (GetBaseItemType(oItem) == BASE_ITEM_RAPIER) || (GetBaseItemType(oItem) == BASE_ITEM_SCIMITAR) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SCYTHE) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SHORTSPEAR) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SICKLE) || (GetBaseItemType(oItem) == BASE_ITEM_TWOBLADEDSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_WARHAMMER))
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }
    else if (GetLocalInt(oHammer, "smith") == 6)
    {
        if ((GetBaseItemType(oItem) == BASE_ITEM_BASTARDSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_BATTLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_CLUB) || (GetBaseItemType(oItem) == BASE_ITEM_DAGGER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_DIREMACE) || (GetBaseItemType(oItem) == BASE_ITEM_DOUBLEAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_GREATAXE) || (GetBaseItemType(oItem) == BASE_ITEM_GREATSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HALBERD) || (GetBaseItemType(oItem) == BASE_ITEM_HANDAXE) ||
            (GetBaseItemType(oItem) == BASE_ITEM_HEAVYCROSSBOW) || (GetBaseItemType(oItem) == BASE_ITEM_HEAVYFLAIL) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KAMA) || (GetBaseItemType(oItem) == BASE_ITEM_KATANA) ||
            (GetBaseItemType(oItem) == BASE_ITEM_KUKRI) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTCROSSBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTFLAIL) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTHAMMER) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LIGHTMACE) || (GetBaseItemType(oItem) == BASE_ITEM_LONGBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_LONGSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICROD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MAGICSTAFF) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICWAND) ||
            (GetBaseItemType(oItem) == BASE_ITEM_MORNINGSTAR) || (GetBaseItemType(oItem) == BASE_ITEM_QUARTERSTAFF) ||
            (GetBaseItemType(oItem) == BASE_ITEM_RAPIER) || (GetBaseItemType(oItem) == BASE_ITEM_SCIMITAR) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SCYTHE) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTBOW) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SHORTSPEAR) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_SICKLE) || (GetBaseItemType(oItem) == BASE_ITEM_TWOBLADEDSWORD) ||
            (GetBaseItemType(oItem) == BASE_ITEM_WARHAMMER))
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_COLOR, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS WITH 8 FORMS
    else if ((GetBaseItemType(oItem) == BASE_ITEM_LONGSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_LONGBOW))
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 7)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 7)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 7)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS WITH 6 FORMS
    else if ((GetBaseItemType(oItem) == BASE_ITEM_BASTARDSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_DAGGER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SHORTSWORD) || (GetBaseItemType(oItem) == BASE_ITEM_WARHAMMER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_MAGICSTAFF) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICWAND) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SHORTBOW))
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 5)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 5)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 5)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS WITH 5 FORMS
    else if (GetBaseItemType(oItem) == BASE_ITEM_SCIMITAR)
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 4)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 4)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 4)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS WITH 4 FORMS
    else if ((GetBaseItemType(oItem) == BASE_ITEM_GREATAXE) || (GetBaseItemType(oItem) == BASE_ITEM_GREATSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HANDAXE) || (GetBaseItemType(oItem) == BASE_ITEM_KATANA) ||
        (GetBaseItemType(oItem) == BASE_ITEM_RAPIER) || (GetBaseItemType(oItem) == BASE_ITEM_CLUB) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HEAVYFLAIL) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTFLAIL) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LIGHTHAMMER) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTMACE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_MORNINGSTAR) || (GetBaseItemType(oItem) == BASE_ITEM_DIREMACE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_QUARTERSTAFF) || (GetBaseItemType(oItem) == BASE_ITEM_MAGICROD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HALBERD) || (GetBaseItemType(oItem) == BASE_ITEM_SHORTSPEAR) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HEAVYCROSSBOW) || (GetBaseItemType(oItem) == BASE_ITEM_LIGHTCROSSBOW))
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 3)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS WITH 3 FORMS
    else if ((GetBaseItemType(oItem) == BASE_ITEM_DOUBLEAXE) || (GetBaseItemType(oItem) == BASE_ITEM_TWOBLADEDSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SCYTHE))
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 2)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 2)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 2)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    // WEAPONS BATTLE AXE DWARF AXE
    else if ((GetBaseItemType(oItem) == BASE_ITEM_BATTLEAXE) || (GetBaseItemType(oItem) == BASE_ITEM_DWARVENWARAXE))
    {
        if (GetLocalInt(oHammer, "smith") == 1)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP);
            if (nAppear > 7)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_TOP, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 2)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE);
            if (nAppear > 5)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_MIDDLE, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
        else if (GetLocalInt(oHammer, "smith") == 3)
        {
            int nAppear = GetItemAppearance(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM);
            if (nAppear > 5)
            {
                int nNewApr = 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
            else
            {
                int nNewApr = nAppear + 1;
                CopyItemAndModify(oItem, ITEM_APPR_TYPE_WEAPON_MODEL, ITEM_APPR_WEAPON_MODEL_BOTTOM, nNewApr, TRUE);
                DestroyObject(oItem, 1.0);
            }
        }
    }

    else
    {
        FloatingTextStringOnCreature("You cannot modify that item.", oPC, FALSE);
    }
}
