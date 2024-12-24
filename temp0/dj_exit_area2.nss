// Clear loot bags and items

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
      nPCinArea = TRUE;
      }
    oPC = GetNextPC();
  }
// Master Loop thru all objects in zone
if (nPCinArea == FALSE)
  {
  while (GetIsObjectValid(oTreasure) == TRUE)
    {


    // If has inventory reset do once
//    if (GetHasInventory(oTreasure) == TRUE)
//      {
//      SetLocalInt(oTreasure,"NW_DO_ONCE",0);
//      }
    // if open close
    if (GetIsOpen(oTreasure)== TRUE)
      {
      AssignCommand(oTreasure,ActionCloseDoor(oTreasure));
      }
    // if lockable lock it
//    if (GetLockLockable(oTreasure) == TRUE)
//      {
//        SetLocked(oTreasure,TRUE);
//      }
    // sl: if encounter creature delete it
    // if (GetIsEncounterCreature(oTreasure) == TRUE)
    //  {
    //    DestroyObject(oTreasure);
    //  }
    // sl: if is encounter reset spawn counter
    //if (GetObjectType(oTreasure) == OBJECT_TYPE_ENCOUNTER)
     // {
     //   SetEncounterSpawnsCurrent(0,oTreasure);
     //   SetEncounterActive(TRUE,oTreasure);
     // }
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
    // sl: Have other mobs rest
    //if (GetObjectType(oTreasure) == OBJECT_TYPE_CREATURE){
    //    if (GetLocalInt(oTreasure, "dontkill") == 1){}
    //    else {DestroyObject(oTreasure);}}
    oTreasure = GetNextObjectInArea(oArea);
    }
  }
}
