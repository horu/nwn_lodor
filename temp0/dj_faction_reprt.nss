// This runs a report of the current factions for the PC
void main()
{
object oPC = GetPCSpeaker();
object oFaction = GetItemPossessedBy(oPC, "faction_report");

// These are integer settings for factions
    int nbrown = GetLocalInt(oFaction, "brownie");
    int nquick = GetLocalInt(oFaction, "quickling");
    int nduergar = GetLocalInt(oFaction, "duergar");
    int npixie = GetLocalInt(oFaction, "pixie");
    int nnixie = GetLocalInt(oFaction, "nixie");
    int nsprite = GetLocalInt(oFaction, "sprite");
    int nbrushwood = GetLocalInt(oFaction, "brushwood");
    int nvegnar = GetLocalInt(oFaction, "vegnar");
    int nfaraldor = GetLocalInt(oFaction, "faraldor");
    int ngrogor = GetLocalInt(oFaction, "grogor");
    int ndedry = GetLocalInt(oFaction, "dedry");
    int nnilas = GetLocalInt(oFaction, "nilas");
    int naldur = GetLocalInt(oFaction, "aldur");
    int norcs = GetLocalInt(oFaction, "orcs");
    int ndrogo = GetLocalInt(oFaction, "drogo");
    int ndriders = GetLocalInt(oFaction, "driders");
    int nfirebrand = GetLocalInt(oFaction, "firebrand");
    int nsphinx = GetLocalInt(oFaction, "sphinx");
    int nsylvan = GetLocalInt(oFaction, "sylvan");
    int ndrgred = GetLocalInt(oFaction, "drgred");
    int ndrgwhite = GetLocalInt(oFaction, "drgwhite");
    int ndrgblack = GetLocalInt(oFaction, "drgblack");
    int ndrgblue = GetLocalInt(oFaction, "drgblue");
    int ndrggreen = GetLocalInt(oFaction, "drggreen");
    int ndrgshadow = GetLocalInt(oFaction, "drgshadow");
    int ndrgbrass = GetLocalInt(oFaction, "drgbrass");
    int ndrgcopper = GetLocalInt(oFaction, "drgcopper");
    int ndrgsilver = GetLocalInt(oFaction, "drgsilver");
    int ndrggold = GetLocalInt(oFaction, "drggold");
    int ndrgbronze = GetLocalInt(oFaction, "drgbronze");
    int ndrgprism = GetLocalInt(oFaction, "drgprism");

SendMessageToPC(oPC, "Your faction with the Aldur Humans is " + IntToString(naldur) + ".");
SendMessageToPC(oPC, "Your faction with the Brushwood Halflings is " + IntToString(nbrushwood) + ".");
SendMessageToPC(oPC, "Your faction with the Vegnar Dwarves is " + IntToString(nvegnar) + ".");
SendMessageToPC(oPC, "Your faction with the Faraldor Elves is " + IntToString(nfaraldor) + ".");
SendMessageToPC(oPC, "Your faction with the Wood Elves is " + IntToString(nsylvan) + ".");
SendMessageToPC(oPC, "Your faction with the Dedry Gnomes is " + IntToString(ndedry) + ".");
SendMessageToPC(oPC, "Your faction with the Grogor Orcs is " + IntToString(ngrogor) + ".");
SendMessageToPC(oPC, "Your faction with the Nilas Drows is " + IntToString(nnilas) + ".");
SendMessageToPC(oPC, "Your faction with the Brownies is " + IntToString(nbrown) + ".");
SendMessageToPC(oPC, "Your faction with the Quicklings is " + IntToString(nquick) + ".");
SendMessageToPC(oPC, "Your faction with the Duergars is " + IntToString(nduergar) + ".");
SendMessageToPC(oPC, "Your faction with the Sprites is " + IntToString(nsprite) + ".");
SendMessageToPC(oPC, "Your faction with the Pixies is " + IntToString(npixie) + ".");
SendMessageToPC(oPC, "Your faction with the Nixies is " + IntToString(nnixie) + ".");
SendMessageToPC(oPC, "Your faction with the Vrugar Orcs is " + IntToString(norcs) + ".");
SendMessageToPC(oPC, "Your faction with the Drogo Hobbits is " + IntToString(ndrogo) + ".");
SendMessageToPC(oPC, "Your faction with the Driders is " + IntToString(ndriders) + ".");
SendMessageToPC(oPC, "Your faction with the Firebrands is " + IntToString(nfirebrand) + ".");
SendMessageToPC(oPC, "Your faction with the Sphinx is " + IntToString(nsphinx) + ".");
SendMessageToPC(oPC, "Your faction with Rauget is " + IntToString(ndrgred) + ".");
SendMessageToPC(oPC, "Your faction with Drennyuth is " + IntToString(ndrgwhite) + ".");
SendMessageToPC(oPC, "Your faction with Veeslath is " + IntToString(ndrgblack) + ".");
SendMessageToPC(oPC, "Your faction with Bhoothirth is " + IntToString(ndrgblue) + ".");
SendMessageToPC(oPC, "Your faction with Eubraith is " + IntToString(ndrggreen) + ".");
SendMessageToPC(oPC, "Your faction with Zalkotroth is " + IntToString(ndrgshadow) + ".");
SendMessageToPC(oPC, "Your faction with Jebbeyth is " + IntToString(ndrgbrass) + ".");
SendMessageToPC(oPC, "Your faction with Glieglerth is " + IntToString(ndrgcopper) + ".");
SendMessageToPC(oPC, "Your faction with Acleoth is " + IntToString(ndrgsilver) + ".");
SendMessageToPC(oPC, "Your faction with Rhaizhizth is " + IntToString(ndrggold) + ".");
SendMessageToPC(oPC, "Your faction with Chimnazth is " + IntToString(ndrgbronze) + ".");
SendMessageToPC(oPC, "Your faction with Aabohz is " + IntToString(ndrgprism) + ".");
}
