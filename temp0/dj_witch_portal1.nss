void main()
{
int nHour = GetTimeHour();
object oPC = GetPCSpeaker();

if ((nHour == 0) || (nHour == 12)){
    FloatingTextStringOnCreature("You see a scene of a dark jungle.", oPC, FALSE);}      //Melagan Jungle
else if ((nHour == 1) || (nHour == 13)){
    FloatingTextStringOnCreature("You see a scene of a dry desert.", oPC, FALSE);}       //Wastelands
else if ((nHour == 2) || (nHour == 14)){
    FloatingTextStringOnCreature("You see a scene of a snowy forest.", oPC, FALSE);}     //Shivering Woods
else if ((nHour == 3) || (nHour == 15)){
    FloatingTextStringOnCreature("You see a scene of a dark forest.", oPC, FALSE);}      //Underwood
else if ((nHour == 4) || (nHour == 16)){
    FloatingTextStringOnCreature("You see a scene of a misty swamp.", oPC, FALSE);}      //Saryl Swamp
else if ((nHour == 5) || (nHour == 17)){
    FloatingTextStringOnCreature("You see a scene of underground ruins.", oPC, FALSE);}  //The Ruins Of Jarehar
else if ((nHour == 6) || (nHour == 18)){
    FloatingTextStringOnCreature("You see a scene of a very warm forest.", oPC, FALSE);} //Daclor's Crossing
else if ((nHour == 7) || (nHour == 19)){
    FloatingTextStringOnCreature("You see a scene of underground tunnels.", oPC, FALSE);}//Cave Of Eyes
else if ((nHour == 8) || (nHour == 20)){
    FloatingTextStringOnCreature("You see a scene of a beautiful forest.", oPC, FALSE);} //Clarion Woodlands
else if ((nHour == 9) || (nHour == 21)){
    FloatingTextStringOnCreature("You see a scene of an evil forest.", oPC, FALSE);}     //Cursed Glades
else if ((nHour == 10) || (nHour == 22)){
    FloatingTextStringOnCreature("You see a scene of a mountain pass.", oPC, FALSE);}    //Vegnar Pass
else if ((nHour == 11) || (nHour == 23)){
    FloatingTextStringOnCreature("You see a scene of underground caves.", oPC, FALSE);}  //Under Passage
}
