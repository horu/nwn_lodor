void main()
{
DelayCommand(5.0, ActionCloseDoor(OBJECT_SELF));

object oPC = GetLastOpenedBy();
object oMonster = GetNearestCreature(CREATURE_TYPE_IS_ALIVE, TRUE, oPC);
location lMonster = GetLocation(oMonster);
location lMe = GetLocation(oPC);
float fDistance = GetDistanceBetweenLocations(lMonster, lMe);
int nDistance = FloatToInt(fDistance);
if ((oMonster != OBJECT_INVALID) && (nDistance < 6) && (GetIsPC(oMonster) == FALSE)){
 effect eBad = GetFirstEffect(oPC);
   while(GetIsEffectValid(eBad)){
      if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
         GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY){
            RemoveEffect(oPC, eBad);}
 eBad = GetNextEffect(oPC);}}
}
