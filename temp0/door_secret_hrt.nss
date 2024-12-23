// This will make a point to spawn a secret door when detected.
void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation=TRUE);

void main()
{
int nRun = GetLocalInt(OBJECT_SELF, "runthis");

if (nRun == 0){
   SetLocalInt(OBJECT_SELF, "runthis", 1);

   if (GetTag(OBJECT_SELF) == "lodor_doormaker"){
      DelayCommand(2.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodor_sdspwn", GetLocation(OBJECT_SELF)));
      DelayCommand(3.0, DestroyObject(OBJECT_SELF));}
   else {
      DelayCommand(180.0, DestroyObject(OBJECT_SELF));}}

else {}

}

void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation=TRUE)
{
    CreateObject(nObjectType, sTemplate, lLocation, bUseAppearAnimation);
    return;
}
