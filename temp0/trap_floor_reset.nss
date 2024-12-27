// Resets the trap
void main()
{
    int nSet = GetLocalInt(OBJECT_SELF, "trapped");
    int nRun = GetLocalInt(OBJECT_SELF, "norun");

    if (nRun == 0)
    {
    }

    else
    {
        if ((nSet == 1) || (nSet == 2))
        {
            SetLocalInt(OBJECT_SELF, "norun", 0);
            DelayCommand(1200.0, SetLocalInt(OBJECT_SELF, "trapped", 0));
        }
        else
        {
        }
    }
}
