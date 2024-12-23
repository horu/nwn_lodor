// Makes it so you cannot climb anything
void main()
{
object oPC = GetEnteringObject();

SetLocalInt(oPC,"climb",0);
SetLocalInt(oPC,"climbing",0);
}
