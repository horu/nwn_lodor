void main()
{
object oPC = GetEnteringObject();

AssignCommand(oPC, JumpToObject(GetNearestObjectByTag("water_swim", oPC)));
FloatingTextStringOnCreature("The water is to deep to go further.", oPC, FALSE);
}
