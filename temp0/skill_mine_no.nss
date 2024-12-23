// Turns off the PC mine ability
void main()
{
object oPC = GetExitingObject();

if (GetIsPC(oPC)){
    SetLocalInt(oPC,"digging",0);}
}
