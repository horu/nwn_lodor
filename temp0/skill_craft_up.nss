void main()
{
object oPC = GetPCSpeaker();
int nCraft = GetLocalInt(oPC, "skil_craft");
int nAmount = nCraft + 1;

//Delete all the variable used
DeleteLocalInt(oPC, "enchability");
DeleteLocalInt(oPC, "enchabiplus");
DeleteLocalInt(oPC, "enchatmod");
DeleteLocalInt(oPC, "enchalign");
DeleteLocalInt(oPC, "enchrace");
DeleteLocalInt(oPC, "enchsalign");
DeleteLocalInt(oPC, "enchdamtyp");
DeleteLocalInt(oPC, "enchimmun");
DeleteLocalInt(oPC, "enchimmisc");
DeleteLocalInt(oPC, "enchsplres");
DeleteLocalInt(oPC, "enchfeat");
DeleteLocalInt(oPC, "enchfeat1");
DeleteLocalInt(oPC, "enchdamred");
DeleteLocalInt(oPC, "enchdamred1");
DeleteLocalInt(oPC, "enchdamres");
DeleteLocalInt(oPC, "enchbright");
DeleteLocalInt(oPC, "enchcolor");
DeleteLocalInt(oPC, "enchskill");
DeleteLocalInt(oPC, "enchsave");
DeleteLocalInt(oPC, "enchsaves");
DeleteLocalInt(oPC, "enchsptimes");
DeleteLocalInt(oPC, "enchcast");
DeleteLocalInt(oPC, "enchspell");

if (nAmount > 20){
SetLocalInt(oPC, "skil_craft", 20);}

else {
SetLocalInt(oPC, "skil_craft", nAmount);}
}
