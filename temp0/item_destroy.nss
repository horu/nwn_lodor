void main()
{
    if (GetTag(OBJECT_SELF) == "player_tomb")
    {
        AssignCommand(OBJECT_SELF, DestroyObject(OBJECT_SELF, 1200.0));
    }
    else
    {
        AssignCommand(OBJECT_SELF, DestroyObject(OBJECT_SELF, 1.0));
    }
}
