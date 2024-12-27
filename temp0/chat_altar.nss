// This checks for Drow before starting a converstion with the altar
string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iTalkFlag = 0;
#include "nw_i0_tool"

void main()
{
    object oPC = GetLastUsedBy();

    // Vampires can't join religions no longer
    if (GetSubRace(oPC) == "Vampire")
    {
        sSayThis = "This god has no place for me anymore.";
        AssignCommand(oPC, SpeakString(sSayThis, iTalkVolume));
    }

    else if (GetTag(OBJECT_SELF) != "altar_torm")
    {
        AssignCommand(oPC, ClearAllActions(TRUE));
        ActionStartConversation(oPC, "", TRUE);
    }
    else
    {
        if (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0)
        {
            sSayThis = "I have already chosen to server Torm.";
            AssignCommand(oPC, SpeakString(sSayThis, iTalkVolume));
        }
        else
        {
            AssignCommand(oPC, ClearAllActions(TRUE));
            ActionStartConversation(oPC, "", TRUE);
        }
    }
}
