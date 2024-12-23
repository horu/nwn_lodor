#include "x2_inc_compon"
#include "x0_i0_spawncond"

void main()
{
object oMurder = GetLastKiller();
object oMaster = GetMaster(oMurder);

if (oMaster != OBJECT_INVALID){
    SetLocalObject(oMurder, "killer", oMaster);}
else {
    SetLocalObject(oMurder, "killer", oMurder);}

object oKiller = GetLocalObject(oMurder, "killer");
object oBook = GetItemPossessedBy(oKiller, "faction_report");

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

else if (GetSubRace(oKiller) == "Sylvan"){
AdjustReputation(oKiller, OBJECT_SELF, 100);
AdjustReputation(oKiller, OBJECT_SELF, -50);
  SendMessageToPC(oKiller,"Your faction with the Wood Elves is worse.");
  int iSylvan = GetLocalInt(oBook, "sylvan");
  int iAdjust = iSylvan - 5;
  SetLocalInt(oBook, "sylvan", iAdjust);
  AdjustReputation(oKiller, GetObjectByTag("fac_sylvan"), -100);
  AdjustReputation(oKiller, GetObjectByTag("fac_sylvan"), iAdjust);}
else {
AdjustReputation(oKiller, OBJECT_SELF, 100);
AdjustReputation(oKiller, OBJECT_SELF, -50);}
}
