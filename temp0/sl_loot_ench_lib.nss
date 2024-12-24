// loot_ench_arm

int sl_get_appr_type(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET || base_type == BASE_ITEM_ARMOR)
    {
        return ITEM_APPR_TYPE_ARMOR_MODEL;
    }
    return ITEM_APPR_TYPE_SIMPLE_MODEL;
}

int sl_get_random_appr_model(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_ARMOR)
    {
        return Random(ITEM_APPR_ARMOR_NUM_MODELS);
    }
    return 0;
}

int sl_get_random_appr(object item)
{
    int base_type = GetBaseItemType(item);
    if (base_type == BASE_ITEM_HELMET) { return Random(110); }
    if (base_type == BASE_ITEM_AMULET) { return Random(75); }
    if (base_type == BASE_ITEM_CLOAK) { return Random(60); }
    if (base_type == BASE_ITEM_ARMOR) { return Random(200); }
    if (base_type == BASE_ITEM_SMALLSHIELD) { return Random(90); }
    if (base_type == BASE_ITEM_LARGESHIELD) { return Random(200); }
    if (base_type == BASE_ITEM_TOWERSHIELD) { return Random(200); }
    if (base_type == BASE_ITEM_BRACER ) { return Random(61); }
    if (base_type == BASE_ITEM_RING ) { return Random(131); }
    if (base_type == BASE_ITEM_BELT) { return Random(60); }
    if (base_type == BASE_ITEM_BOOTS) { return Random(45); }
    return Random(200);
}

void sl_sort_inventory(object holder)
{
    object item = GetFirstItemInInventory(holder);
    while (item != OBJECT_INVALID)
    {
        string name = GetName(item);
        //SendMessageToPC(GetFirstPC(), name);
        ActionGiveItem(item, holder);
        item = GetNextItemInInventory(holder);
    }
}

object sl_modify_appr(object item)
{
    int appr_type = sl_get_appr_type(item);
    int appr_model = sl_get_random_appr_model(item);

    int i = 0;
    while (i < 50) {
        i++;
        int appr = sl_get_random_appr(item);
        object new_item = CopyItemAndModify(item, appr_type, appr_model, appr);
        if (new_item != OBJECT_INVALID) {
            //SendMessageToPC(GetFirstPC(),IntToString(i) + " " + IntToString(appr_type) + " " + IntToString(appr_model) +" " + IntToString(appr));
            DestroyObject(item);
            item = new_item;
            break;
        }
    }
    return item;
}

object sl_create_ench_item(string template, object holder)
{
    object temp_storage = GetObjectByTag("sl_ench_loot_storage");
    object item = CreateItemOnObject(template, temp_storage, 1);
    item = sl_modify_appr(item);
    object new_item = CopyItem(item, holder);
    DestroyObject(item);
    return new_item;
}
