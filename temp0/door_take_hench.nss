// This will teleport all of your followers if you go
// through a transistion in the same zone.
void main()
{
  object oClicker = GetClickingObject();
  object oTarget = GetTransitionTarget(OBJECT_SELF);
  location lLoc = GetLocation(oTarget);
  object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oClicker);
  object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oClicker);
  object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oClicker);
  object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oClicker);
  object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oClicker);

  AssignCommand(oClicker,JumpToLocation(lLoc));
  AssignCommand(oFollow1,JumpToLocation(lLoc));
  AssignCommand(oFollow2,JumpToLocation(lLoc));
  AssignCommand(oFollow3,JumpToLocation(lLoc));
  AssignCommand(oFollow4,JumpToLocation(lLoc));
  AssignCommand(oFollow5,JumpToLocation(lLoc));

  float fFace = GetFacingFromLocation(lLoc);
  int iFace = FloatToInt(fFace);
  if (iFace > 179){
    int iNewFace = iFace - 180;
    float fNewFace = IntToFloat(iNewFace);
    DelayCommand(1.0, AssignCommand(oClicker, SetFacing(fNewFace)));}
  else {
    int iNewFace = iFace + 180;
    float fNewFace = IntToFloat(iNewFace);
    DelayCommand(1.0, AssignCommand(oClicker, SetFacing(fNewFace)));}
}
