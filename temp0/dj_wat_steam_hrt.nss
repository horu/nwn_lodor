#include "nw_i0_generic"
void main()
{

// Steam if in water
int nSteam = GetLocalInt(OBJECT_SELF,"steam");
{if (nSteam == 1){
   effect eVis = EffectVisualEffect(VFX_FNF_SMOKE_PUFF);
   AssignCommand(OBJECT_SELF, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF));
   AssignCommand(OBJECT_SELF, DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF)));
   AssignCommand(OBJECT_SELF, DelayCommand(4.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF)));
   AssignCommand(OBJECT_SELF, DelayCommand(6.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF)));
}}


    if (GetAILevel() == AI_LEVEL_VERY_LOW) return;
    if(GetSpawnInCondition(NW_FLAG_FAST_BUFF_ENEMY))
    {
        if(TalentAdvancedBuff(40.0))
        {
            SetSpawnInCondition(NW_FLAG_FAST_BUFF_ENEMY, FALSE);
            return;
        }
    }

    if(GetHasEffect(EFFECT_TYPE_SLEEP))
    {
        if(GetSpawnInCondition(NW_FLAG_SLEEPING_AT_NIGHT))
        {
            effect eVis = EffectVisualEffect(VFX_IMP_SLEEP);
            if(d10() > 6)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF);
            }
        }
    }
    else if ( GetWalkCondition(NW_WALK_FLAG_CONSTANT) )
    {
        WalkWayPoints();
    }
    else if ( !GetIsObjectValid(GetAttemptedAttackTarget())
          && !GetIsObjectValid(GetAttemptedSpellTarget())
          && !GetIsObjectValid(GetNearestSeenEnemy()))
    {
        if (GetBehaviorState(NW_FLAG_BEHAVIOR_SPECIAL) || GetBehaviorState(NW_FLAG_BEHAVIOR_OMNIVORE) ||
            GetBehaviorState(NW_FLAG_BEHAVIOR_HERBIVORE))
        {
            DetermineSpecialBehavior();
        }
        else if (!IsInConversation(OBJECT_SELF))
        {
            if (GetSpawnInCondition(NW_FLAG_AMBIENT_ANIMATIONS)
                || GetSpawnInCondition(NW_FLAG_AMBIENT_ANIMATIONS_AVIAN)
                || GetIsEncounterCreature())
            {
                PlayMobileAmbientAnimations();
            }
            else if (GetSpawnInCondition(NW_FLAG_IMMOBILE_AMBIENT_ANIMATIONS))
            {
                PlayImmobileAmbientAnimations();
            }
        }
    }
    if(GetSpawnInCondition(NW_FLAG_HEARTBEAT_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(EVENT_HEARTBEAT));
    }
}
