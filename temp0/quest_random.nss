void main()
{
object oPC = GetPCSpeaker();
object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
string sName = RandomName();
int nLevel = GetHitDice(oPC);

SetLocalString(oQuest, "qs1jpart1", sName);
SetLocalInt(oQuest, "qs1jpart8", 0);

object oItem = GetFirstItemInInventory(oPC);
  while(GetIsObjectValid(oItem)) {
    if(GetStringLeft(GetTag(oItem),9)=="qs1j_item"){
       DestroyObject(oItem);}
    oItem=GetNextItemInInventory(oPC);
  }

if (GetTag(OBJECT_SELF) == "faraldor_cit_br4"){
     SetLocalInt(oQuest, "qs1j", 1);
     SetLocalString(oQuest, "qs1jpart6", "Faraldor Elves");
     SetLocalString(oQuest, "qs1jpart7", "fac_faraldor");}
else if (GetTag(OBJECT_SELF) == "nilas_cit_gob1"){
     SetLocalInt(oQuest, "qs1j", 2);
     SetLocalString(oQuest, "qs1jpart6", "Grogor Orcs");
     SetLocalString(oQuest, "qs1jpart7", "fac_grogor");}
else if (GetTag(OBJECT_SELF) == "vegnar_cit_8"){
     SetLocalInt(oQuest, "qs1j", 3);
     SetLocalString(oQuest, "qs1jpart6", "Vegnar Dwarves");
     SetLocalString(oQuest, "qs1jpart7", "fac_vegnar");}
else if (GetTag(OBJECT_SELF) == "dedry_cit_cler"){
     SetLocalInt(oQuest, "qs1j", 4);
     SetLocalString(oQuest, "qs1jpart6", "Dedry Gnomes");
     SetLocalString(oQuest, "qs1jpart7", "fac_dedry");}
else if (GetTag(OBJECT_SELF) == "brushwood_cit_5"){
     SetLocalInt(oQuest, "qs1j", 5);
     SetLocalString(oQuest, "qs1jpart6", "Brushwood Halflings");
     SetLocalString(oQuest, "qs1jpart7", "fac_brushwood");}
else if (GetTag(OBJECT_SELF) == "aldur_cit_13"){
     SetLocalInt(oQuest, "qs1j", 6);
     SetLocalString(oQuest, "qs1jpart6", "Aldur Citizens");
     SetLocalString(oQuest, "qs1jpart7", "fac_aldur");}
else if (GetTag(OBJECT_SELF) == "nilas_cit_bar1"){
     SetLocalInt(oQuest, "qs1j", 7);
     SetLocalString(oQuest, "qs1jpart6", "Nilas Drows");
     SetLocalString(oQuest, "qs1jpart7", "fac_nilas");}
else if (GetTag(OBJECT_SELF) == "duergar_cit_bar3"){
     SetLocalInt(oQuest, "qs1j", 8);
     SetLocalString(oQuest, "qs1jpart6", "Duergars");
     SetLocalString(oQuest, "qs1jpart7", "fac_duergar");}
else if (GetTag(OBJECT_SELF) == "quickling_cit_13"){
     SetLocalInt(oQuest, "qs1j", 9);
     SetLocalString(oQuest, "qs1jpart6", "Quicklings");
     SetLocalString(oQuest, "qs1jpart7", "fac_quick");}
else if (GetTag(OBJECT_SELF) == "sylvan_cit_9"){
     SetLocalInt(oQuest, "qs1j", 10);
     SetLocalString(oQuest, "qs1jpart6", "Wood Elves");
     SetLocalString(oQuest, "qs1jpart7", "fac_sylvan");}

{int nRandom = d20(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item1");
       SetLocalString(oQuest, "qs1jpart2", "Ancient Arrowhead");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item2");
       SetLocalString(oQuest, "qs1jpart2", "Oweodd Charm");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item3");
       SetLocalString(oQuest, "qs1jpart2", "Hydra Tooth");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item4");
       SetLocalString(oQuest, "qs1jpart2", "Voodoo Doll");}
   else if (nRandom == 5){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item5");
       SetLocalString(oQuest, "qs1jpart2", "Tears Of Stone");}
   else if (nRandom == 6){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item6");
       SetLocalString(oQuest, "qs1jpart2", "Heart Of Nilas");}
   else if (nRandom == 7){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item7");
       SetLocalString(oQuest, "qs1jpart2", "Sign of Daclor");}
   else if (nRandom == 8){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item8");
       SetLocalString(oQuest, "qs1jpart2", "Jade Tooth");}
   else if (nRandom == 9){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item9");
       SetLocalString(oQuest, "qs1jpart2", "Gold Harpy Egg");}
   else if (nRandom == 10){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item10");
       SetLocalString(oQuest, "qs1jpart2", "Eye Of Dracz");}
   else if (nRandom == 11){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item11");
       SetLocalString(oQuest, "qs1jpart2", "Gold Spider");}
   else if (nRandom == 12){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item12");
       SetLocalString(oQuest, "qs1jpart2", "Silver Spider");}
   else if (nRandom == 13){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item13");
       SetLocalString(oQuest, "qs1jpart2", "Crystal Ball Of Kabard");}
   else if (nRandom == 14){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item14");
       SetLocalString(oQuest, "qs1jpart2", "Piece Of Brakal's Crown");}
   else if (nRandom == 15){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item15");
       SetLocalString(oQuest, "qs1jpart2", "Amulet Of Miradir");}
   else if (nRandom == 16){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item16");
       SetLocalString(oQuest, "qs1jpart2", "Pendant Of Malad");}
   else if (nRandom == 17){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item17");
       SetLocalString(oQuest, "qs1jpart2", "Orb Of Trandugar");}
   else if (nRandom == 18){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item18");
       SetLocalString(oQuest, "qs1jpart2", "Symbol Of Puril");}
   else if (nRandom == 19){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item19");
       SetLocalString(oQuest, "qs1jpart2", "Wheel Of Souls");}
   else if (nRandom == 20){
       SetLocalString(oQuest, "qs1jpart3", "qs1j_item20");
       SetLocalString(oQuest, "qs1jpart2", "Dark Ooze Ink");}}

if (nLevel < 5){
  if ((GetSubRace(oPC) == "Ogre") ||
      (GetSubRace(oPC) == "Quickling") ||
      (GetSubRace(oPC) == "Duergar") ||
      (GetSubRace(oPC) == "Drow") ||
      (GetRacialType(oPC) == RACIAL_TYPE_HALFORC)){
   {int nRandom = d4(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart4", "PiratesCove");
       SetLocalString(oQuest, "qs1jpart5", "the Pirate's Cove east of the Borban Pit");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart4", "HorfiladManor");
       SetLocalString(oQuest, "qs1jpart5", "Horfilad's Manor west of Nilas Mountain");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart4", "HorfiladsDungeon");
       SetLocalString(oQuest, "qs1jpart5", "Horfilad's Dungeon west of Nilas Mountain");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart4", "VankCaves");
       SetLocalString(oQuest, "qs1jpart5", "the Vank Caves east of Grogor Village");}}}
  else {
   {int nRandom = d6(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart4", "ThePurgs");
       SetLocalString(oQuest, "qs1jpart5", "the Purgs lair east of Brushwood Valley");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart4", "TheTuranBattlefield");
       SetLocalString(oQuest, "qs1jpart5", "the Turan Battlefield south of Aldur Village");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart4", "FrostbiteMines");
       SetLocalString(oQuest, "qs1jpart5", "the Frostbite Mines east of Aldur Village");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart4", "BaolTribe");
       SetLocalString(oQuest, "qs1jpart5", "the Baol Tribe west of Vegnar Mountain");}
   else if (nRandom == 5){
       SetLocalString(oQuest, "qs1jpart4", "Sewers");
       SetLocalString(oQuest, "qs1jpart5", "the Faraldor City sewers");}
   else if (nRandom == 6){
       SetLocalString(oQuest, "qs1jpart4", "BanditCamp");
       SetLocalString(oQuest, "qs1jpart5", "the bandit camp west of the Dedry Hamlet");}}}}

else if ((nLevel > 4) && (nLevel < 9)){
   {int nRandom = d12(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart4", "TheVileTower");
       SetLocalString(oQuest, "qs1jpart5", "the Vile Tower northwest of Brushwood Valley");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart4", "KabardRuins");
       SetLocalString(oQuest, "qs1jpart5", "the Kabard Ruins east of Vegnar Mountain");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart4", "TowerOfRunes");
       SetLocalString(oQuest, "qs1jpart5", "the Tower of Runes east of Faraldor City");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart4", "PitOfDar");
       SetLocalString(oQuest, "qs1jpart5", "the Pit of Dar below the Dedry Mines");}
   else if (nRandom == 5){
       SetLocalString(oQuest, "qs1jpart4", "DedryCatacombs");
       SetLocalString(oQuest, "qs1jpart5", "the Dedry Catacombs southwest of the Dedry Hamlet");}
   else if (nRandom == 6){
       SetLocalString(oQuest, "qs1jpart4", "TheBruolBugbears");
       SetLocalString(oQuest, "qs1jpart5", "the Bruol Bugbear cave southwest of Brushwood Valley");}
   else if (nRandom == 7){
       SetLocalString(oQuest, "qs1jpart4", "MelaganRuins");
       SetLocalString(oQuest, "qs1jpart5", "the Melagan Ruins northeast of Grogor Village");}
   else if (nRandom == 8){
       SetLocalString(oQuest, "qs1jpart4", "TheStonesOfConfusion");
       SetLocalString(oQuest, "qs1jpart5", "Glomarin's Minotaur Maze below the Bruol Bugbear caves");}
   else if (nRandom == 9){
       SetLocalString(oQuest, "qs1jpart4", "MiradirsGate2");
       SetLocalString(oQuest, "qs1jpart5", "Miradir's Gate west of Brushwood Valley");}
   else if (nRandom == 10){
       SetLocalString(oQuest, "qs1jpart4", "TempleOfTears");
       SetLocalString(oQuest, "qs1jpart5", "the Temple of Tears west of Nilas Mountain");}
   else if (nRandom == 11){
       SetLocalString(oQuest, "qs1jpart4", "HallsOfStone");
       SetLocalString(oQuest, "qs1jpart5", "the Halls of Stone beneath the Melagan Ruins");}
   else if (nRandom == 12){
       SetLocalString(oQuest, "qs1jpart4", "OldCity");
       SetLocalString(oQuest, "qs1jpart5", "the old Duergar city below the Borban Pit");}}}

else if ((nLevel > 8) && (nLevel < 11)){
   {int nRandom = d8(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart4", "FortressOfZaltos2");
       SetLocalString(oQuest, "qs1jpart5", "Zaltos' Fortress");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart4", "TheVault");
       SetLocalString(oQuest, "qs1jpart5", "the Vault under Lodor");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart4", "MiradirsCastle");
       SetLocalString(oQuest, "qs1jpart5", "Miradir's Castle");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart4", "CliffsOfTheFallen");
       SetLocalString(oQuest, "qs1jpart5", "the Cliffs of the Fallen");}
   else if (nRandom == 5){
       SetLocalString(oQuest, "qs1jpart4", "TaraksFortress");
       SetLocalString(oQuest, "qs1jpart5", "Tarak's Fortress");}
   else if (nRandom == 6){
       SetLocalString(oQuest, "qs1jpart4", "TowerOfTheDamned");
       SetLocalString(oQuest, "qs1jpart5", "the Vampire Tower");}
   else if (nRandom == 7){
       SetLocalString(oQuest, "qs1jpart4", "NestOfManscorpions");
       SetLocalString(oQuest, "qs1jpart5", "the Manscorpion Nest");}
   else if (nRandom == 8){
       SetLocalString(oQuest, "qs1jpart4", "TheHive");
       SetLocalString(oQuest, "qs1jpart5", "the ant people's lair");}}}

else if ((nLevel > 10) && (nLevel < 13)){
   {int nRandom = d6(1);
   if (nRandom == 1){
       SetLocalString(oQuest, "qs1jpart4", "DenOfDrub");
       SetLocalString(oQuest, "qs1jpart5", "Drub's Den");}
   else if (nRandom == 2){
       SetLocalString(oQuest, "qs1jpart4", "TowerOfBrakal");
       SetLocalString(oQuest, "qs1jpart5", "Brakal's Tower");}
   else if (nRandom == 3){
       SetLocalString(oQuest, "qs1jpart4", "PitsOfFrost");
       SetLocalString(oQuest, "qs1jpart5", "the Pits of Frost deep below Lodor");}
   else if (nRandom == 4){
       SetLocalString(oQuest, "qs1jpart4", "WroksLair");
       SetLocalString(oQuest, "qs1jpart5", "Wrok's Lair");}
   else if (nRandom == 5){
       SetLocalString(oQuest, "qs1jpart4", "DrigdugsLair");
       SetLocalString(oQuest, "qs1jpart5", "Drigdug's Lair");}
   else if (nRandom == 6){
       SetLocalString(oQuest, "qs1jpart4", "PaelHills");
       SetLocalString(oQuest, "qs1jpart5", "the Mountain Giant Camp in Prael Hills");}}}

string sThing = GetLocalString(oQuest, "qs1jpart2");
string sPlace = GetLocalString(oQuest, "qs1jpart5");

string sSayThis = "" + sName + " told me they seek the " + sThing + " in " + sPlace + ".  Find it and bring it to me.";
SendMessageToPC(oPC, "" + sName + " told me they seek the " + sThing + " in " + sPlace + ".  Find it and bring it to me.");
SpeakString(sSayThis);
}
