// Removes the PC from the trapped area
void main()
{
object oPC = GetExitingObject();

if (GetIsPC(oPC)){
     SetLocalInt(oPC, "trapfind", 0);}
}
