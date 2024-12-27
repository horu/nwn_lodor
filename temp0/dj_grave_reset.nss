// This will reset the grave after x seconds
void main()
{
    if (GetLocalInt(OBJECT_SELF, "gravetime") == 0)
    {
    }

    else
    {
        SetLocalInt(OBJECT_SELF, "gravetime", 0);
        DelayCommand(600.0, SetLocalInt(OBJECT_SELF, "graveset", 0));
    }
}
