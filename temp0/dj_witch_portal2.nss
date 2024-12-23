void main()
{
int nHour = GetTimeHour();
object oPC = GetPCSpeaker();

if ((nHour == 0) || (nHour == 12)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_1")));}
else if ((nHour == 1) || (nHour == 13)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_2")));}
else if ((nHour == 2) || (nHour == 14)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_3")));}
else if ((nHour == 3) || (nHour == 15)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_4")));}
else if ((nHour == 4) || (nHour == 16)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_5")));}
else if ((nHour == 5) || (nHour == 17)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_6")));}
else if ((nHour == 6) || (nHour == 18)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_7")));}
else if ((nHour == 7) || (nHour == 19)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_8")));}
else if ((nHour == 8) || (nHour == 20)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_9")));}
else if ((nHour == 9) || (nHour == 21)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_10")));}
else if ((nHour == 10) || (nHour == 22)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_11")));}
else if ((nHour == 11) || (nHour == 23)){
    AssignCommand(oPC, JumpToObject(GetWaypointByTag("witch_pordes_12")));}
}
