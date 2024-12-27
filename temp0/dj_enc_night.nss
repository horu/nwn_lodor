void ResetEncounter(float fTimeToWait, int nValue, object encounter)
{
    DelayCommand(fTimeToWait, SetEncounterActive(nValue, encounter));
    DelayCommand(fTimeToWait, DeleteLocalInt(encounter, "Disabled"));
}

void main()
{
    object oPlayer = GetEnteringObject();
    if (!GetIsPC(oPlayer)) return;
    int nHour = GetTimeHour();
    if ((nHour <= 6 || nHour >= 18) && GetLocalInt(OBJECT_SELF, "Disabled") == 0)
    {
        SetEncounterActive(TRUE, OBJECT_SELF);
        //300 is 5 minutes
        ResetEncounter(300.0, TRUE, OBJECT_SELF);
        SetLocalInt(OBJECT_SELF, "Disabled", 1);
    }
    ResetEncounter(3.0, FALSE, OBJECT_SELF);
}
