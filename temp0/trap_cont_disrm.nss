// Gives XP to PC
void main()
{
object oPC = GetLastDisarmed();
int nDC = GetTrapDisarmDC(OBJECT_SELF);
int nSkill = GetSkillRank(SKILL_DISABLE_TRAP, oPC);
int nExp = nDC;// * 2;

if (nSkill >= nDC){}
else {GiveXPToCreature(oPC,nExp);}

}
