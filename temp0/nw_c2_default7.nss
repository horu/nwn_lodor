//:://////////////////////////////////////////////////
//:: NW_C2_DEFAULT7
/*
  Default OnDeath event handler for NPCs.

  Adjusts killer's alignment if appropriate and
  alerts allies to our death.
 */
//:://////////////////////////////////////////////////
//:: Copyright (c) 2002 Floodgate Entertainment
//:: Created By: Naomi Novik
//:: Created On: 12/22/2002
//:://////////////////////////////////////////////////

#include "x2_inc_compon"
#include "x0_i0_spawncond"

void main()
{
    int nClass = GetLevelByClass(CLASS_TYPE_COMMONER);
    int nAlign = GetAlignmentGoodEvil(OBJECT_SELF);
    object oKiller = GetLastKiller();

    // If we're a good/neutral commoner,
    // adjust the killer's alignment evil
    if(nClass > 0 && (nAlign == ALIGNMENT_GOOD || nAlign == ALIGNMENT_NEUTRAL))
    {
        AdjustAlignment(oKiller, ALIGNMENT_EVIL, 5);
    }

    // Call to allies to let them know we're dead
    SpeakString("NW_I_AM_DEAD", TALKVOLUME_SILENT_TALK);

    //Shout Attack my target, only works with the On Spawn In setup
    SpeakString("NW_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);

    // NOTE: the OnDeath user-defined event does not
    // trigger reliably and should probably be removed
    if(GetSpawnInCondition(NW_FLAG_DEATH_EVENT))
    {
         SignalEvent(OBJECT_SELF, EventUserDefined(1007));
    }
    craft_drop_items(oKiller);


    // Vampire Blood Letting
    object oBottle = GetItemPossessedBy(oKiller, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNewB = nBlood + 1;
    if ((GetRacialType(OBJECT_SELF) == RACIAL_TYPE_OUTSIDER) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_CONSTRUCT) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ELEMENTAL) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_UNDEAD) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_ABERRATION) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_OOZE) ||
        (GetRacialType(OBJECT_SELF) == RACIAL_TYPE_VERMIN)){}
    else{SetLocalInt(oBottle, "blood", nNewB);}
}
