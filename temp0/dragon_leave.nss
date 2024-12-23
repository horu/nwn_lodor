void main()
{
AssignCommand(OBJECT_SELF, ClearAllActions(TRUE));
ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_FNF_SMOKE_PUFF), GetLocation(OBJECT_SELF));
DestroyObject(OBJECT_SELF);
}
