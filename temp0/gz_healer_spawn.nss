#include "NW_O2_CONINCLUDE"
#include "NW_I0_GENERIC"

void main()
{
    SetListeningPatterns();
    WalkWayPoints();
    SignalEvent(OBJECT_SELF, EventUserDefined(5000));
}
