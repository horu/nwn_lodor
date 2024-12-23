void main()
{
DelayCommand(299.0, ActionCloseDoor(OBJECT_SELF));
DelayCommand(300.0, SetLocked(OBJECT_SELF, 1));
}
