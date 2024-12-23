// This runs a report of the maps the PC currently have
void main()
{
object oPC = GetPCSpeaker();
string sMessage;
object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");
object oMap2 = GetItemPossessedBy(oPC, "vampire_bottle");

if(GetLocalInt(oMap, "map027") == 1){
SendMessageToPC(oPC, "[ Map of Brakal's Tower ]");}
if(GetLocalInt(oMap, "map008") == 1){
SendMessageToPC(oPC, "[ Map of the Bruol Bugbears ]");}
if(GetLocalInt(oMap, "map106") == 1){
SendMessageToPC(oPC, "[ Map of the Citadel ]");}
if(GetLocalInt(oMap, "map043") == 1){
SendMessageToPC(oPC, "[ Map of the Cliffs of the Fallen ]");}
if(GetLocalInt(oMap, "map092") == 1){
SendMessageToPC(oPC, "[ Map of the Cloud City ]");}
if(GetLocalInt(oMap, "map078") == 1){
SendMessageToPC(oPC, "[ Map of Daclor's Mountain ]");}
if(GetLocalInt(oMap, "map070") == 1){
SendMessageToPC(oPC, "[ Map of Dar's Pit ]");}
if(GetLocalInt(oMap, "map083") == 1){
SendMessageToPC(oPC, "[ Map of the Dedry Catacombs ]");}
if(GetLocalInt(oMap, "map069") == 1){
SendMessageToPC(oPC, "[ Map of the Dedry Tunnels ]");}
if(GetLocalInt(oMap, "map025") == 1){
SendMessageToPC(oPC, "[ Map of Drub's Den ]");}
if(GetLocalInt(oMap, "map041") == 1){
SendMessageToPC(oPC, "[ Map of the Drigdug's Lair ]");}
if(GetLocalInt(oMap, "map052") == 1){
SendMessageToPC(oPC, "[ Map of the Faraldor Sewers ]");}
if(GetLocalInt(oMap, "map031") == 1){
SendMessageToPC(oPC, "[ Map of the Frostbite Mines ]");}
if(GetLocalInt(oMap, "map108") == 1){
SendMessageToPC(oPC, "[ Map of Grandul's Hold ]");}
if(GetLocalInt(oMap, "map110") == 1){
SendMessageToPC(oPC, "[ Map of the Gremlin Hole ]");}
if(GetLocalInt(oMap, "map073") == 1){
SendMessageToPC(oPC, "[ Map of the Hive ]");}
if(GetLocalInt(oMap, "map085") == 1){
SendMessageToPC(oPC, "[ Map of Horfilad's Dungeon ]");}
if(GetLocalInt(oMap, "map084") == 1){
SendMessageToPC(oPC, "[ Map of Horfilad Manor ]");}
if(GetLocalInt(oMap, "map042") == 1){
SendMessageToPC(oPC, "[ Map of the Kabard Ruins ]");}
if(GetLocalInt(oMap, "map072") == 1){
SendMessageToPC(oPC, "[ Map of the Manscorpion Nest ]");}
if(GetLocalInt(oMap, "map064") == 1){
SendMessageToPC(oPC, "[ Map of the Manticore Den ]");}
if(GetLocalInt(oMap, "map062") == 1){
SendMessageToPC(oPC, "[ Map of the Melagan Ruins ]");}
if(GetLocalInt(oMap, "map017") == 1){
SendMessageToPC(oPC, "[ Map of Miradir's Castle ]");}
if(GetLocalInt(oMap, "map014") == 1){
SendMessageToPC(oPC, "[ Map of Miradir's Gate ]");}
if(GetLocalInt(oMap, "map006") == 1){
SendMessageToPC(oPC, "[ Map of the Purgs ]");}
if(GetLocalInt(oMap, "map038") == 1){
SendMessageToPC(oPC, "[ Map of the Silver Order Basement ]");}
if(GetLocalInt(oMap, "map009") == 1){
SendMessageToPC(oPC, "[ Map of the Stones of Confusion ]");}
if(GetLocalInt(oMap, "map086") == 1){
SendMessageToPC(oPC, "[ Map of Tarak's Fortress ]");}
if(GetLocalInt(oMap, "map065") == 1){
SendMessageToPC(oPC, "[ Map of the Temple of Tears ]");}
if(GetLocalInt(oMap, "map101") == 1){
SendMessageToPC(oPC, "[ Map of the Tower of the Damned ]");}
if(GetLocalInt(oMap, "map057") == 1){
SendMessageToPC(oPC, "[ Map of the Tower of Runes ]");}
if(GetLocalInt(oMap, "map067") == 1){
SendMessageToPC(oPC, "[ Map of the Vank Caves ]");}
if(GetLocalInt(oMap, "map077") == 1){
SendMessageToPC(oPC, "[ Map of Vegnar Passageway ]");}
if(GetLocalInt(oMap, "map019") == 1){
SendMessageToPC(oPC, "[ Map of the Vile Tower ]");}
if(GetLocalInt(oMap, "map051") == 1){
SendMessageToPC(oPC, "[ Map of the Vrugar Orc Cave ]");}
if(GetLocalInt(oMap, "map034") == 1){
SendMessageToPC(oPC, "[ Map of the Wrok's Lair ]");}
if(GetLocalInt(oMap, "map044") == 1){
SendMessageToPC(oPC, "[ Map of Zaltos' Fortress ]");}



// Vampires
if(GetLocalInt(oMap2, "map027") == 1){
SendMessageToPC(oPC, "[ Map of Brakal's Tower ]");}
if(GetLocalInt(oMap2, "map008") == 1){
SendMessageToPC(oPC, "[ Map of the Bruol Bugbears ]");}
if(GetLocalInt(oMap2, "map106") == 1){
SendMessageToPC(oPC, "[ Map of the Citadel ]");}
if(GetLocalInt(oMap2, "map043") == 1){
SendMessageToPC(oPC, "[ Map of the Cliffs of the Fallen ]");}
if(GetLocalInt(oMap2, "map092") == 1){
SendMessageToPC(oPC, "[ Map of the Cloud City ]");}
if(GetLocalInt(oMap2, "map078") == 1){
SendMessageToPC(oPC, "[ Map of Daclor's Mountain ]");}
if(GetLocalInt(oMap2, "map070") == 1){
SendMessageToPC(oPC, "[ Map of Dar's Pit ]");}
if(GetLocalInt(oMap2, "map083") == 1){
SendMessageToPC(oPC, "[ Map of the Dedry Catacombs ]");}
if(GetLocalInt(oMap2, "map069") == 1){
SendMessageToPC(oPC, "[ Map of the Dedry Tunnels ]");}
if(GetLocalInt(oMap2, "map025") == 1){
SendMessageToPC(oPC, "[ Map of Drub's Den ]");}
if(GetLocalInt(oMap2, "map041") == 1){
SendMessageToPC(oPC, "[ Map of the Drigdug's Lair ]");}
if(GetLocalInt(oMap2, "map052") == 1){
SendMessageToPC(oPC, "[ Map of the Faraldor Sewers ]");}
if(GetLocalInt(oMap2, "map031") == 1){
SendMessageToPC(oPC, "[ Map of the Frostbite Mines ]");}
if(GetLocalInt(oMap2, "map108") == 1){
SendMessageToPC(oPC, "[ Map of Grandul's Hold ]");}
if(GetLocalInt(oMap2, "map110") == 1){
SendMessageToPC(oPC, "[ Map of the Gremlin Hole ]");}
if(GetLocalInt(oMap2, "map073") == 1){
SendMessageToPC(oPC, "[ Map of the Hive ]");}
if(GetLocalInt(oMap2, "map085") == 1){
SendMessageToPC(oPC, "[ Map of Horfilad's Dungeon ]");}
if(GetLocalInt(oMap2, "map084") == 1){
SendMessageToPC(oPC, "[ Map of Horfilad Manor ]");}
if(GetLocalInt(oMap2, "map042") == 1){
SendMessageToPC(oPC, "[ Map of the Kabard Ruins ]");}
if(GetLocalInt(oMap2, "map072") == 1){
SendMessageToPC(oPC, "[ Map of the Manscorpion Nest ]");}
if(GetLocalInt(oMap2, "map064") == 1){
SendMessageToPC(oPC, "[ Map of the Manticore Den ]");}
if(GetLocalInt(oMap2, "map062") == 1){
SendMessageToPC(oPC, "[ Map of the Melagan Ruins ]");}
if(GetLocalInt(oMap2, "map017") == 1){
SendMessageToPC(oPC, "[ Map of Miradir's Castle ]");}
if(GetLocalInt(oMap2, "map014") == 1){
SendMessageToPC(oPC, "[ Map of Miradir's Gate ]");}
if(GetLocalInt(oMap2, "map006") == 1){
SendMessageToPC(oPC, "[ Map of the Purgs ]");}
if(GetLocalInt(oMap2, "map038") == 1){
SendMessageToPC(oPC, "[ Map of the Silver Order Basement ]");}
if(GetLocalInt(oMap2, "map009") == 1){
SendMessageToPC(oPC, "[ Map of the Stones of Confusion ]");}
if(GetLocalInt(oMap2, "map086") == 1){
SendMessageToPC(oPC, "[ Map of Tarak's Fortress ]");}
if(GetLocalInt(oMap2, "map065") == 1){
SendMessageToPC(oPC, "[ Map of the Temple of Tears ]");}
if(GetLocalInt(oMap2, "map101") == 1){
SendMessageToPC(oPC, "[ Map of the Tower of the Damned ]");}
if(GetLocalInt(oMap2, "map057") == 1){
SendMessageToPC(oPC, "[ Map of the Tower of Runes ]");}
if(GetLocalInt(oMap2, "map067") == 1){
SendMessageToPC(oPC, "[ Map of the Vank Caves ]");}
if(GetLocalInt(oMap2, "map077") == 1){
SendMessageToPC(oPC, "[ Map of Vegnar Passageway ]");}
if(GetLocalInt(oMap2, "map019") == 1){
SendMessageToPC(oPC, "[ Map of the Vile Tower ]");}
if(GetLocalInt(oMap2, "map051") == 1){
SendMessageToPC(oPC, "[ Map of the Vrugar Orc Cave ]");}
if(GetLocalInt(oMap2, "map034") == 1){
SendMessageToPC(oPC, "[ Map of the Wrok's Lair ]");}
if(GetLocalInt(oMap2, "map044") == 1){
SendMessageToPC(oPC, "[ Map of Zaltos' Fortress ]");}
}
