//This sets the encounter for day/night
void main()
{
if (GetIsDay() == TRUE){
SetEncounterActive(FALSE, OBJECT_SELF);}
else{
SetEncounterActive(TRUE, OBJECT_SELF);}
}
