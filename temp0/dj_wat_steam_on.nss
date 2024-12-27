// Let's the Monster steam up if they go into water.
void main()
{
    object oMonster = GetEnteringObject();

    if (GetTag(oMonster) == "LD_LAVAGOLEM")
    {
        SetLocalInt(oMonster, "steam", 1);
        effect eVis = EffectVisualEffect(VFX_FNF_SMOKE_PUFF);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oMonster);
        AssignCommand(oMonster, DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oMonster)));
        AssignCommand(oMonster, DelayCommand(4.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oMonster)));
        AssignCommand(oMonster, DelayCommand(6.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oMonster)));
    }
}
