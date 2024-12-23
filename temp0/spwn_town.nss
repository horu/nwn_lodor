// The OnSpawn script for standard NPCs
#include "x0_i0_anims"
#include "x0_i0_treasure"
#include "x2_inc_switches"
void main()
{
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_STEALTH) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_STEALTH);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_SEARCH) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_SEARCH);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT_IMMOBILE) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_IMMOBILE_AMBIENT_ANIMATIONS);
    }

    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_USE_SPAWN_AMBIENT) == TRUE)
    {
        SetSpawnInCondition(NW_FLAG_AMBIENT_ANIMATIONS);
    }

    SetListeningPatterns();
    WalkWayPoints();

    // Treasure Section for the NPC
    // Runs the appropriate treasure script for the NPC
    ExecuteScript("loot_town_npc", OBJECT_SELF);

    //float fFacing = GetFacing(GetNextWalkWayPoint(OBJECT_SELF));
    //SetFacing(fFacing);
}
