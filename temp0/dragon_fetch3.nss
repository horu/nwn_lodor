// Dragon Fetch Me Bolts
void main()
{
object oPC = GetPCSpeaker();
object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");
SetLocalInt(oPC, "dragon_chore", 1);
SetLocalInt(oWhistle, "dragon_bring", 3);
object oActor = GetObjectByTag("fac_brown");
AssignCommand(oActor, DelayCommand(300.0, SetLocalInt(oPC, "dragon_chore", 0)));
string sSayThis = "Call for me soon so I can find my way back.";
SpeakString(sSayThis);
AssignCommand(OBJECT_SELF, ClearAllActions(TRUE));
ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_FNF_SMOKE_PUFF), GetLocation(OBJECT_SELF));
DestroyObject(OBJECT_SELF);
}
