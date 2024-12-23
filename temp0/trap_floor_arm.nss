// This arms the nearby trap
void main()
{
object oPC = GetPCSpeaker();
object oTrap = GetNearestObjectByTag("trap_object", oPC);
object oMark = GetNearestObjectByTag("trap_marker", oPC);
int nDC = GetLocalInt(oTrap, "level");
int nSkill = GetSkillRank(SKILL_DISABLE_TRAP, oPC);
int nDice = d20(1);
int nTotal = nDice + nSkill;
int nFound = GetLocalInt(oPC, "trapfind");
int nSet = GetLocalInt(oTrap, "trapped");
int nMarked = GetLocalInt(oTrap, "marked");

if (nFound == 0){
   FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);}
else {
   if (nSet == 1){
      if (nTotal > nDC){
         FloatingTextStringOnCreature("You successfully armed the trap.", oPC, FALSE);
         AssignCommand(oTrap, ClearAllActions(TRUE));
         SetLocalInt(oTrap, "norun", 0);
         if (nMarked == 1){
            SetLocalInt(oTrap, "marked", 0);
            DestroyObject(oMark);}
         SetLocalInt(oTrap, "trapped", 0);}
      else {
         FloatingTextStringOnCreature("You failed to arm the trap.", oPC, FALSE);
         AssignCommand(oTrap, ClearAllActions(TRUE));
         SetLocalInt(oTrap, "norun", 1);
         SetLocalInt(oTrap, "trapped", 2);}}
   else if (nSet == 0){
      FloatingTextStringOnCreature("The trap is already armed.", oPC, FALSE);}
   else if (nSet == 2){
      FloatingTextStringOnCreature("The trap has been tampered with and cannot be armed.", oPC, FALSE);}
      }
}
