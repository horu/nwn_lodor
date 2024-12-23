// On Spawn for Herbivores
#include "NW_I0_GENERIC"
#include "NW_O2_CONINCLUDE"
void main()
{
    SetBehaviorState(NW_FLAG_BEHAVIOR_SPECIAL);
    SetBehaviorState(NW_FLAG_BEHAVIOR_HERBIVORE);
    SetListeningPatterns();
    ActionRandomWalk();
}
