#include "NW_O2_CONINCLUDE"
#include "NW_I0_GENERIC"

void main()
{
    SetSpawnInCondition(NW_FLAG_APPEAR_SPAWN_IN_ANIMATION);
    SetListeningPatterns();
    ActionRandomWalk();
}
