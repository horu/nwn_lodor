// This will reset the fishing area after x seconds
void main()
{
if (GetLocalInt(OBJECT_SELF, "fishset") == 0){}

else {
    SetLocalInt(OBJECT_SELF, "fishset", 0);
    DelayCommand(600.0, SetLocalInt(OBJECT_SELF, "fishable", 0));}
}
