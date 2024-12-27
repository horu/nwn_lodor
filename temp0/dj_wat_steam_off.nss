// Turns off monster steam
void main()
{
    object oMonster = GetExitingObject();

    if (GetTag(oMonster) == "LD_LAVAGOLEM")
    {
        SetLocalInt(oMonster, "steam", 0);
    }
}
