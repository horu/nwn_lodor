void main()
{
object oPC = GetPCSpeaker();
object oTrap = GetNearestObjectByTag("trap_object", oPC);
string sType = GetLocalString(oTrap, "type");
int nLevel = GetLocalInt(oTrap, "level");
int nFound = GetLocalInt(oPC, "trapfind");
int nSet = GetLocalInt(oTrap, "trapped");
int nSkill = GetSkillRank(SKILL_DISABLE_TRAP, oPC);
int nRoll1 = nSkill + 20;
int nRoll2 = nSkill + 10;

if (nSet == 0){
   if (nFound == 1){
      FloatingTextStringOnCreature("This appears to be a " + sType + ".", oPC, FALSE);
      if (nLevel > nRoll1){
         FloatingTextStringOnCreature("It would be impossible to disarm.", oPC, FALSE);}
      else if (nSkill > nLevel){
         FloatingTextStringOnCreature("It would be easy to disarm.", oPC, FALSE);}
      else if ((nLevel < nRoll1) && (nLevel > nRoll2)){
         FloatingTextStringOnCreature("It would be difficult to disarm.", oPC, FALSE);}
      else if ((nLevel < nRoll2) && (nLevel > nSkill)){
         FloatingTextStringOnCreature("It would be possible to disarm.", oPC, FALSE);}
   }
   else {
      FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);
   }
}

else if (nSet == 1){
   if (nFound == 1){
      FloatingTextStringOnCreature("This appears to be a " + sType + ".", oPC, FALSE);
      FloatingTextStringOnCreature("It is already disarmed.", oPC, FALSE);
   }
   else {
      FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);
   }
}

else if (nSet == 2){
   if (nFound == 1){
      FloatingTextStringOnCreature("This appears to be a " + sType + ".", oPC, FALSE);
      FloatingTextStringOnCreature("It has been tampered with and cannot be disarmed.", oPC, FALSE);
   }
   else {
      FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);
   }
}
}
