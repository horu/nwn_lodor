// Shows the Baby Dragon Learning Table to the PC
void main()
{
object oPC = GetPCSpeaker();

SendMessageToPC(oPC, "Level 1  0 - 50000");
SendMessageToPC(oPC, "Level 2  50000 - 100000");
SendMessageToPC(oPC, "Level 3  100000 - 150000");
SendMessageToPC(oPC, "Level 4  150000 - 200000");
SendMessageToPC(oPC, "Level 5  200000 - 250000");
SendMessageToPC(oPC, "Level 6  250000 - 300000");
SendMessageToPC(oPC, "Level 7  300000 - 350000");
SendMessageToPC(oPC, "Level 8  400000");
}
