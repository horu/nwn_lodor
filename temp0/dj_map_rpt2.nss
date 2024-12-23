// This runs a report of the maps in the underworld
void main()
{
object oPC = GetPCSpeaker();
string sMessage;
object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");
object oMap2 = GetItemPossessedBy(oPC, "vampire_bottle");

if(GetLocalInt(oMap, "map087") == 1){
SendMessageToPC(oPC, "[ Map of the Beetle Nest ]");}
if(GetLocalInt(oMap, "map089") == 1){
SendMessageToPC(oPC, "[ Map of the Borban Pit ]");}
if(GetLocalInt(oMap, "map095") == 1){
SendMessageToPC(oPC, "[ Map of the Cave of Eyes ]");}
if(GetLocalInt(oMap, "map105") == 1){
SendMessageToPC(oPC, "[ Map of the City of Thought ]");}
if(GetLocalInt(oMap, "map099") == 1){
SendMessageToPC(oPC, "[ Map of the Crypts ]");}
if(GetLocalInt(oMap, "map023") == 1){
SendMessageToPC(oPC, "[ Map of the Dig ]");}
if(GetLocalInt(oMap, "map104") == 1){
SendMessageToPC(oPC, "[ Map of the Dracz's Palace ]");}
if(GetLocalInt(oMap, "map103") == 1){
SendMessageToPC(oPC, "[ Map of the Field of Silence ]");}
if(GetLocalInt(oMap, "map079") == 1){
SendMessageToPC(oPC, "[ Map of Firebrand Keep ]");}
if(GetLocalInt(oMap, "map096") == 1){
SendMessageToPC(oPC, "[ Map of Glomarin's Fortress ]");}
if(GetLocalInt(oMap, "map094") == 1){
SendMessageToPC(oPC, "[ Map of the Halls of Stone ]");}
if(GetLocalInt(oMap, "map090") == 1){
SendMessageToPC(oPC, "[ Map of the Hollow Screams ]");}
if(GetLocalInt(oMap, "map102") == 1){
SendMessageToPC(oPC, "[ Map of the Jarehar Ruins ]");}
if(GetLocalInt(oMap, "map010") == 1){
SendMessageToPC(oPC, "[ Map of Nilas Fields ]");}
if(GetLocalInt(oMap, "map004") == 1){
SendMessageToPC(oPC, "[ Map of Nilas Mountain ]");}
if(GetLocalInt(oMap, "map093") == 1){
SendMessageToPC(oPC, "[ Map of the Old City ]");}
if(GetLocalInt(oMap, "map088") == 1){
SendMessageToPC(oPC, "[ Map of Pirate's Cove ]");}
if(GetLocalInt(oMap, "map032") == 1){
SendMessageToPC(oPC, "[ Map of the Pits of Frost ]");}
if(GetLocalInt(oMap, "map098") == 1){
SendMessageToPC(oPC, "[ Map of the Scorn ]");}
if(GetLocalInt(oMap, "map091") == 1){
SendMessageToPC(oPC, "[ Map of the Under Passage ]");}
if(GetLocalInt(oMap, "map100") == 1){
SendMessageToPC(oPC, "[ Map of the Vault ]");}
if(GetLocalInt(oMap, "map053") == 1){
SendMessageToPC(oPC, "[ Map of the Walkway of Wind ]");}
if(GetLocalInt(oMap, "map097") == 1){
SendMessageToPC(oPC, "[ Map of the Well of Souls ]");}



// Vampires
if(GetLocalInt(oMap2, "map087") == 1){
SendMessageToPC(oPC, "[ Map of the Beetle Nest ]");}
if(GetLocalInt(oMap2, "map089") == 1){
SendMessageToPC(oPC, "[ Map of the Borban Pit ]");}
if(GetLocalInt(oMap2, "map095") == 1){
SendMessageToPC(oPC, "[ Map of the Cave of Eyes ]");}
if(GetLocalInt(oMap2, "map105") == 1){
SendMessageToPC(oPC, "[ Map of the City of Thought ]");}
if(GetLocalInt(oMap2, "map099") == 1){
SendMessageToPC(oPC, "[ Map of the Crypts ]");}
if(GetLocalInt(oMap2, "map023") == 1){
SendMessageToPC(oPC, "[ Map of the Dig ]");}
if(GetLocalInt(oMap2, "map104") == 1){
SendMessageToPC(oPC, "[ Map of the Dracz's Palace ]");}
if(GetLocalInt(oMap2, "map103") == 1){
SendMessageToPC(oPC, "[ Map of the Field of Silence ]");}
if(GetLocalInt(oMap2, "map079") == 1){
SendMessageToPC(oPC, "[ Map of Firebrand Keep ]");}
if(GetLocalInt(oMap2, "map096") == 1){
SendMessageToPC(oPC, "[ Map of Glomarin's Fortress ]");}
if(GetLocalInt(oMap2, "map094") == 1){
SendMessageToPC(oPC, "[ Map of the Halls of Stone ]");}
if(GetLocalInt(oMap2, "map090") == 1){
SendMessageToPC(oPC, "[ Map of the Hollow Screams ]");}
if(GetLocalInt(oMap2, "map102") == 1){
SendMessageToPC(oPC, "[ Map of the Jarehar Ruins ]");}
if(GetLocalInt(oMap2, "map010") == 1){
SendMessageToPC(oPC, "[ Map of Nilas Fields ]");}
if(GetLocalInt(oMap2, "map004") == 1){
SendMessageToPC(oPC, "[ Map of Nilas Mountain ]");}
if(GetLocalInt(oMap2, "map093") == 1){
SendMessageToPC(oPC, "[ Map of the Old City ]");}
if(GetLocalInt(oMap2, "map088") == 1){
SendMessageToPC(oPC, "[ Map of Pirate's Cove ]");}
if(GetLocalInt(oMap2, "map032") == 1){
SendMessageToPC(oPC, "[ Map of the Pits of Frost ]");}
if(GetLocalInt(oMap2, "map098") == 1){
SendMessageToPC(oPC, "[ Map of the Scorn ]");}
if(GetLocalInt(oMap2, "map091") == 1){
SendMessageToPC(oPC, "[ Map of the Under Passage ]");}
if(GetLocalInt(oMap2, "map100") == 1){
SendMessageToPC(oPC, "[ Map of the Vault ]");}
if(GetLocalInt(oMap2, "map053") == 1){
SendMessageToPC(oPC, "[ Map of the Walkway of Wind ]");}
if(GetLocalInt(oMap2, "map097") == 1){
SendMessageToPC(oPC, "[ Map of the Well of Souls ]");}
}
