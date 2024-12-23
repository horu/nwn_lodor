void main()
{
    object oDoor = OBJECT_SELF;
    int iDoorLocked = GetLocked(oDoor);
if(GetIsDay()) {
    SetLocked(oDoor, FALSE);
    DelayCommand(5.0, ActionCloseDoor( OBJECT_SELF));
    }
else {
    SetLocked(oDoor, TRUE);
    }
}
