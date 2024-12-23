// Let's the PC dig graves if they have a shovel
void main()
{
object oPC = GetEnteringObject();

if (GetIsPC(oPC)){
    SetLocalInt(oPC,"digging",3);}
}
