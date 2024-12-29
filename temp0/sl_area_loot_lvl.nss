int sl_get_level(object creature)
{
    int level = GetHitDice(creature);
    if (level > 40)
    {
        return 40;
    }
    return level;
}

void main()
{
    object creature = OBJECT_SELF;

    int level = sl_get_level(creature);
    object area = GetArea(creature);
    int area_level = GetLocalInt(area, "sl_loot_level");
    int new_area_level;
    if (!area_level)
    {
        new_area_level = level;
    }
    else
    {
        new_area_level = (area_level + level) / 2;
    }

    if (area_level != new_area_level)
    {
        PrintString("[" + GetName(area) + "] Set area loot level " + IntToString(new_area_level));
        SetLocalInt(area, "sl_loot_level", new_area_level);
    }
}
