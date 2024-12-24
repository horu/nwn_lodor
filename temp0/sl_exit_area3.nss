// Clear creatures

void main()
{
object oArea = GetArea(OBJECT_SELF);
object oPC = GetFirstPC();
object oTreasure = GetFirstObjectInArea(oArea);
object oIItem;
int nPCinArea = 0;

// Check to make sure no PC's In Area
while (GetIsObjectValid(oPC) == TRUE)
{
    if (GetArea(oPC) == oArea)
    {
        return;
    }
    oPC = GetNextPC();
}
// Master Loop thru all objects in zone

while (GetIsObjectValid(oTreasure) == TRUE)
{
    // sl: if encounter creature delete it
    if (GetIsEncounterCreature(oTreasure) == TRUE)
    {
        DestroyObject(oTreasure);
    }
    // encounter reset spawn counter
    if (GetObjectType(oTreasure) == OBJECT_TYPE_ENCOUNTER)
    {
        SetEncounterSpawnsCurrent(0,oTreasure);
        SetEncounterActive(TRUE,oTreasure);
    }
    // delete loot bags
    if (GetTag(oTreasure) == "BodyBag")
      {
        // delete items in loot bag
        oIItem = GetFirstItemInInventory(oTreasure);
        while (GetIsObjectValid(oIItem) == TRUE)
          {
            DestroyObject(oIItem);
            oIItem = GetNextItemInInventory(oTreasure);
          }
        DestroyObject(oTreasure);
      }
    // delete items
    if (GetObjectType(oTreasure) == OBJECT_TYPE_ITEM)
      {
        DestroyObject(oTreasure);
      }
    // Have other mobs rest
    if (GetObjectType(oTreasure) == OBJECT_TYPE_CREATURE){
        if (GetLocalInt(oTreasure, "dontkill") == 1){}
        else {DestroyObject(oTreasure);}}
    oTreasure = GetNextObjectInArea(oArea);
    }

}
