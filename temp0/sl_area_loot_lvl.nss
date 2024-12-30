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
    int area_level_sum = GetLocalInt(area, "sl_loot_level_sum");
    int area_level_count = GetLocalInt(area, "sl_loot_level_count");
    int area_level = 0;
    if (area_level_count)
    {
        area_level = area_level_sum / area_level_count;
    }

    area_level_sum += level;
    area_level_count += 1;

    int new_area_level = area_level_sum / area_level_count;
    if (area_level != new_area_level)
    {
        PrintString("[" + GetName(area) + "] Set area loot level "
            + IntToString(new_area_level) +
            " (" + IntToString(area_level_sum) + "/" + IntToString(area_level_count) + ")" );
    }
    SetLocalInt(area, "sl_loot_level_sum", area_level_sum);
    SetLocalInt(area, "sl_loot_level_count", area_level_count);
}
