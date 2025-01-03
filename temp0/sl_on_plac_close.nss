#include "nwnx_events"

void sl_destroy_body_bag(object bag)
{
    object item = GetFirstItemInInventory(bag);
    while (GetIsObjectValid(item))
    {
        DestroyObject(item);
        item = GetNextItemInInventory(bag);
    }
    DestroyObject(bag);
}

void main()
{
    object closed_object = OBJECT_SELF;
    if (!GetIsObjectValid(closed_object))
    {
        return;
    }

    if (GetTag(closed_object) == "BodyBag")
    {
        DelayCommand(60.0, sl_destroy_body_bag(closed_object));
    }
}
