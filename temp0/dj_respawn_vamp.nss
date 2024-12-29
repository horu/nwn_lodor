#include "nw_i0_plot"
// * Applies an XP and GP penalty
// * to the player respawning
void ApplyPenalty(object oDead)
{
    int nXP = GetXP(oDead);
    int nPenalty = 50 * GetHitDice(oDead);
    int nHD = GetHitDice(oDead);
    // * You can not lose a level with this respawning
    int nMin = ((nHD * (nHD - 1)) / 2) * 1000;

    int nNewXP = nXP - nPenalty;
    if (nNewXP < nMin)
        nNewXP = nMin;
    SetXP(oDead, nNewXP);
    int nGoldToTake = GetGold(oDead);

    AssignCommand(oDead, TakeGoldFromCreature(nGoldToTake, oDead, TRUE));
    DelayCommand(5.0, FloatingTextStrRefOnCreature(58299, oDead, FALSE));
    DelayCommand(5.8, FloatingTextStrRefOnCreature(58300, oDead, FALSE));
}

void main()
{
    object oPC = GetLastPlayerDied();
    location lDead = GetLocation(oPC);
    object oInfo = GetItemPossessedBy(oPC, "faction_report");
    SetLocalInt(oInfo, "ijustdied", 0);

    string sGrave1 = GetPCPlayerName(oPC);
    string sGrave2 = RandomName();
    string sGrave3 = sGrave1 + sGrave2;
    object oTomb = CreateObject(OBJECT_TYPE_PLACEABLE, "player_tomb", lDead, FALSE, sGrave3);
    SetLocalString(oPC, "whodied", sGrave3);
    ExecuteScript("dj_death_loss", oPC);

    // Vampire Blood Loss
    object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNewB = nBlood - 5;
    if (GetLocalInt(oInfo, "preserve") == 0)
    {
        if (nBlood == 5) { SetLocalInt(oBottle, "blood", 0); }
        else if (nBlood < 5) { SetLocalInt(oBottle, "forever", 1); }
        else { SetLocalInt(oBottle, "blood", nNewB); }
    }

    // Change the PC back to normal if they are a wolf or bat
    if (GetSubRace(oPC) == "Vampire")
    {
        object oVampire = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
        location lMe = GetLocation(oPC);
        object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
        if ((GetAppearanceType(oPC) == APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
            (GetAppearanceType(oPC) == APPEARANCE_TYPE_BAT))
        {
            // Change the PC back to normal...
            SetLocalInt(oBottle, "wolf", 0);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -100);
            ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lMe);
            itemproperty ipLoop = GetFirstItemProperty(oVampire);
            while (GetIsItemPropertyValid(ipLoop))
            {
                if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_HASTE)
                    RemoveItemProperty(oVampire, ipLoop);
                ipLoop = GetNextItemProperty(oVampire);
            }
            object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
            object oHelmet = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
            ActionUnequipItem(oArmor);
            ActionUnequipItem(oHelmet);
            DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oArmor, INVENTORY_SLOT_CHEST)));
            DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oHelmet, INVENTORY_SLOT_HEAD)));
            int nReal = GetLocalInt(oBottle, "realApp");
            if (nReal > 0)
            {
                SetCreatureAppearanceType(oPC, nReal - 1);
            }
        }
    }

    if (GetLocalInt(oBottle, "forever") == 1)
    {
        SetLocalInt(oInfo, "bind_tree", 20);
        AssignCommand(oPC, JumpToObject(GetWaypointByTag("VAMPIRE_DEAD")));
    }
    else
    {
        //If the PC drank a Potion of Preservation or is Preserved from their god
        if (GetLocalInt(oInfo, "preserve") == 1)
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(oPC)), oPC);
            RemoveEffects(oPC);
            SetLocalInt(oInfo, "preserve", 0);
            ExecuteScript("dj_spawn_pnt", OBJECT_SELF);
        }
        else
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), oPC);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(oPC)), oPC);
            RemoveEffects(oPC);
            ApplyPenalty(oPC);
            ExecuteScript("dj_spawn_pnt", OBJECT_SELF);
        }
    }
}
