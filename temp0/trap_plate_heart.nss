void main()
{
object oTrap = GetNearestObjectByTag("trap_object", OBJECT_SELF);
int nSet = GetLocalInt(oTrap, "trapped");

if (nSet == 1){
SetLocalInt(oTrap, "marked", 0);
DelayCommand(1.0, DestroyObject(OBJECT_SELF));}

DelayCommand(1199.0, DestroyObject(OBJECT_SELF));
DelayCommand(1199.0, SetLocalInt(oTrap, "marked", 0));
}
