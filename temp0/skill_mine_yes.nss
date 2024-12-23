// Let's the PC mine if they have a shovel
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC)){
    SetLocalInt(oPC,"digging",1);}
}
