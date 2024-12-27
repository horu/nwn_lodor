// High Level Box Loot List
#include "x0_i0_treasure"

void main()
{
    object oPC = GetLastOpenedBy();
    object oMonster = GetNearestCreature(CREATURE_TYPE_IS_ALIVE, TRUE, oPC);
    location lMonster = GetLocation(oMonster);
    location lMe = GetLocation(oPC);
    float fDistance = GetDistanceBetweenLocations(lMonster, lMe);
    int nDistance = FloatToInt(fDistance);
    if ((oMonster != OBJECT_INVALID) && (nDistance < 6) && (GetIsPC(oMonster) == FALSE))
    {
        effect eBad = GetFirstEffect(oPC);
        while (GetIsEffectValid(eBad))
        {
            if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
                GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY)
            {
                RemoveEffect(oPC, eBad);
            }
            eBad = GetNextEffect(oPC);
        }
    }

    DelayCommand(890.0, ExecuteScript("treasure_cleanup", OBJECT_SELF));

    // Set respawntime float to the number of seconds.
    float respawntime = 900.00;
    if (GetLocalInt(OBJECT_SELF, "NW_DO_ONCE") != 0)
    {
        return;
    }
    object oLastOpener = GetLastOpener();
    SetLocalInt(OBJECT_SELF, "opened", 1);

    if (d100(2) == 2) { CreateItemOnObject("treasure_map", OBJECT_SELF, 1); }

    if (d20(1) == 1)
    {
        SetLocalInt(OBJECT_SELF, "newloot2", 1); //Select a Reagent From
        ExecuteScript("loot_new_list", OBJECT_SELF);
    } //Lodor Specific Items

    // sl:
    int loot_cap = 10 - GetHitDice(oPC) / 5;
    if (d100(1) <= loot_cap) { ExecuteScript("loot_ench_arm", OBJECT_SELF); }
    if (d100(1) <= loot_cap) { ExecuteScript("loot_ench_wep", OBJECT_SELF); }

    if (GetTag(OBJECT_SELF) == "miradir_chest2")
    {
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
    }
    else if (GetTag(OBJECT_SELF) == "miradir_chest3")
    {
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
    }
    else if (GetTag(OBJECT_SELF) == "gnoll_chest")
    {
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
    }
    else if (GetTag(OBJECT_SELF) == "secret_chest")
    {
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
    }

    SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 1);
    ShoutDisturbed();
    // Command added to delay the <span class="highlight">respawn</span>
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 0)));
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "opened", 0)));
}
