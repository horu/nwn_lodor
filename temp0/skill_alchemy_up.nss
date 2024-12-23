void main()
{
object oPC = GetPCSpeaker();
int nBrew = GetLocalInt(oPC, "alch_pick");
int nAmount = nBrew + 1;

if (nAmount > 45){
SetLocalInt(oPC, "alch_pick", 45);}

else {
SetLocalInt(oPC, "alch_pick", nAmount);}
}
