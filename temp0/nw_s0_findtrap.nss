#include "x2_inc_spellhook"

void main()
{

    if (!X2PreSpellCastCode())
    {
    // If code within the PreSpellCastHook (i.e. UMD) reports FALSE, do not run this spell
        return;
    }

    effect eVis = EffectVisualEffect(VFX_IMP_KNOCK);
    int nCnt = 1;
    object oTrap = GetNearestObject(OBJECT_TYPE_TRIGGER | OBJECT_TYPE_DOOR | OBJECT_TYPE_PLACEABLE, OBJECT_SELF, nCnt);
    while(GetIsObjectValid(oTrap) && GetDistanceToObject(oTrap) <= 30.0)
    {
        if(GetIsTrapped(oTrap))
        {
            SetTrapDetectedBy(oTrap, OBJECT_SELF);
            ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVis, GetLocation(oTrap));
            DelayCommand(2.0, SetTrapDisabled(oTrap));
        }
        nCnt++;
        oTrap = GetNearestObject(OBJECT_TYPE_TRIGGER | OBJECT_TYPE_DOOR | OBJECT_TYPE_PLACEABLE, OBJECT_SELF, nCnt);
    }
// THIS SECTION HAS BEEN ADDED BY DJERYV ////////
// Traps For Lodor
    object LDCaster = GetLastSpellCaster();
    int nMage = GetLocalInt(LDCaster, "scrolltrap");
    object oTrap2 = GetNearestObjectByTag("trap_object", LDCaster);
    if (nMage == 1)
    {
        if((GetLocalInt(oTrap2, "trapped") == 0) || (GetLocalInt(oTrap2, "trapped") == 2))
        {
            AssignCommand(oTrap2, ClearAllActions(TRUE));
            SetLocalInt(oTrap2, "trapped", 1);
            SetLocalInt(oTrap2, "norun", 1);
            FloatingTextStringOnCreature("Hmmm.  I see a trap has been disarmed.", LDCaster, FALSE);
            AssignCommand(LDCaster, PlaySound("gui_spell_mem"));
        }
    }
//////////////////////////////////////////////////
}
