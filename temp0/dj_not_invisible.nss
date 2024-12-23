// Remove the Invisible Effect
void main()
{
object oPC = OBJECT_SELF;

effect eBad = GetFirstEffect(oPC);
   while(GetIsEffectValid(eBad)){
      if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
         GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY){
            RemoveEffect(oPC, eBad);}
eBad = GetNextEffect(oPC);}
}
