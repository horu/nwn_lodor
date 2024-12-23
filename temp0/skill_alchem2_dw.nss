void main()
{
object oPC = GetPCSpeaker();
int nBrew = GetLocalInt(oPC, "alch_pick2");
int nAmount = nBrew - 1;

if (nAmount < 1){
SetLocalInt(oPC, "alch_pick2", 1);}

else {
SetLocalInt(oPC, "alch_pick2", nAmount);}
}
