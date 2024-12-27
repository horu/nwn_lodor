// This will reset the mining area after x seconds
void main()
{
    if (GetLocalInt(OBJECT_SELF, "mineset") == 0)
    {
    }

    else
    {
        SetLocalInt(OBJECT_SELF, "mineset", 0);
        DelayCommand(600.0, SetLocalInt(OBJECT_SELF, "mineable", 0));
    }
}
