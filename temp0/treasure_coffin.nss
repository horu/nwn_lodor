// Loot for coffins (Chaotic Alignment Cause)
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

    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    DelayCommand(890.0, ExecuteScript("treasure_cleanup", OBJECT_SELF));

    // Set respawntime float to the number of seconds.
    float respawntime = 900.00;
    if (GetLocalInt(OBJECT_SELF, "NW_DO_ONCE") != 0)
    {
        return;
    }
    object oLastOpener = GetLastOpener();

    if (d100(2) == 2) { CreateItemOnObject("treasure_map", OBJECT_SELF, 1); }

    if (GetTag(OBJECT_SELF) == "fallen_box")
    {
        if (GetLocalInt(oQuest, "qs1d8") == 1)
        {
            {
                int nRandom = d8(1);
                if (nRandom == 1)
                {
                    SetLocalInt(oQuest, "qs1d8", 0);
                    FloatingTextStringOnCreature("You found Torgal's skull.", oPC, FALSE);
                    CreateItemOnObject("alter_qst_malad2", oPC, 1);
                }
            }
        }
        AdjustAlignment(oLastOpener, ALIGNMENT_CHAOTIC, 1);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
            }
            else
            {
                FloatingTextStringOnCreature("It appears to be empty.", oLastOpener, FALSE);
            }
        }
    }
    else if (GetTag(OBJECT_SELF) == "citadel_tomb")
    {
        AdjustAlignment(oLastOpener, ALIGNMENT_CHAOTIC, 1);
        {
            int nRandom = d4(1);
            if (nRandom == 1)
            {
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
            }
            else
            {
                FloatingTextStringOnCreature("It appears to be empty.", oLastOpener, FALSE);
            }
        }
    }
    else if (GetTag(OBJECT_SELF) == "dedry_box")
    {
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
            }
        }
    }
    else if (GetTag(OBJECT_SELF) == "dedry_box2")
    {
        {
            int nRandom = d2(1);
            if (nRandom == 1)
            {
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);
            }
            else if (nRandom == 2)
            {
            }
        }
    }


    SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 1);
    ShoutDisturbed();
    // Command added to delay the <span class="highlight">respawn</span>
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 0)));
}
