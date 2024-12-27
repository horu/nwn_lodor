#include "nw_i0_tool"

void main()
{
    object oItem = GetItemActivated();
    object oPC = GetItemActivator();
    string sItem = GetTag(oItem);
    int iSkill = GetSkillRank(SKILL_PERFORM, oPC); //Skill Modifier for ranks in perform
    int iRoll = d20(); //Skill Roll
    int iTotal = iRoll + iSkill; //DC Check
    string sTotal = IntToString(iTotal);
    effect eSong = EffectVisualEffect(VFX_DUR_BARD_SONG);

    if (sItem == "Drum")
    {
        int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);
        if (iBard > 0)
        {
            if (iTotal >= 15) //DC for using a Drum is 15
            {
                int i;
                int done;
                effect eHaste;
                object oGroup;
                effect eCast = EffectVisualEffect(VFX_IMP_HASTE);
                FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 15");
                eHaste = EffectHaste();
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oPC);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHaste, oPC, 18.0);
                for (i = 0; i < 6 && !done; i++) //Apply Bardsong to up to 6 faction members (PCs) within 30 meters
                {
                    oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);
                    if (oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0))
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHaste, oGroup, 18.0);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oGroup);
                    }
                    else
                    {
                        done = TRUE;
                    }
                }
            }
            else
            {
                FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 15");
            }
        }
        else
        {
            AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
        }
    }

    if (sItem == "Mandolin")
    {
        int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);
        if (iBard > 0)
        {
            if (iTotal >= 15) //DC for using a Mandolin is 15
            {
                int i;
                int done;
                effect eRegen;
                object oGroup;
                effect eCast = EffectVisualEffect(VFX_IMP_HEALING_G);
                FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 15");
                eRegen = EffectRegenerate(1, 3.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eRegen, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oPC);
                for (i = 0; i < 6 && !done; i++) //Apply Bardsong to up to 6 faction members (PCs) within 30 meters
                {
                    oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);
                    if (oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0))
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eRegen, oGroup, 18.0);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oGroup);
                    }
                    else
                    {
                        done = TRUE;
                    }
                }
            }
            else
            {
                FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 15");
            }
        }
        else
        {
            AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
        }
    }

    if (sItem == "Pipes")
    {
        int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);
        if (iBard > 0)
        {
            if (iTotal >= 18) //DC for using Pipes is 18
            {
                int i;
                int done;
                effect eInvis;
                object oGroup;
                FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 18");
                eInvis = EffectInvisibility(INVISIBILITY_TYPE_NORMAL);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eInvis, oPC, 18.0);
                for (i = 0; i < 6 && !done; i++) //Apply Bardsong to up to 6 faction members (PCs) within 30 meters
                {
                    oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);
                    if (oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0))
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eInvis, oGroup, 18.0);
                    else
                        done = TRUE;
                }
            }
            else
            {
                FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 18");
            }
        }
        else
        {
            AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
        }
    }

    if (sItem == "Horn")
    {
        int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);
        if (iBard > 0)
        {
            if (iTotal >= 18) //DC for using a Horn is 18
            {
                int i;
                int done;
                effect eShield;
                object oGroup;
                effect eCast = EffectVisualEffect(VFX_IMP_AC_BONUS);
                FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 18");
                eShield = EffectDamageShield(1, DAMAGE_BONUS_1d10, DAMAGE_TYPE_SONIC);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oPC);
                for (i = 0; i < 6 && !done; i++) //Apply Bardsong to up to 6 faction members (PCs) within 30 meters
                {
                    oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);
                    if (oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0))
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eShield, oGroup, 18.0);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oGroup);
                    }
                    else
                    {
                        done = TRUE;
                    }
                }
            }
            else
            {
                FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 18");
            }
        }
        else
        {
            AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
        }
    }

    if (sItem == "Harp")
    {
        int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);
        if (iBard > 0)
        {
            if (iTotal >= 21) //DC for using a Harp is 21
            {
                int i;
                int done;
                effect eSpell;
                object oGroup;
                effect eCast = EffectVisualEffect(VFX_IMP_GLOBE_USE);
                FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 21");
                eSpell = EffectSpellImmunity(SPELL_ALL_SPELLS);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpell, oPC, 18.0);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oPC);
                for (i = 0; i < 6 && !done; i++) //Apply Bardsong to up to 6 faction members (PCs) within 30 meters
                {
                    oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);
                    if (oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0))
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpell, oGroup, 18.0);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oGroup);
                    }
                    else
                    {
                        done = TRUE;
                    }
                }
            }
            else
            {
                FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
                SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC 21");
            }
        }
        else
        {
            AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
        }
    }
}

//Example Instrument Template for custom instruments.
//This template is set up only bonus effects with the Cast Spell: Unique Power Self Only item power
//Setting up this script for effects that damage nearby enemies would take a little work with the for statement. But still uses the Self Only power.
//Create an instrument or song sheet and give it the Unique Power: Self Only (Unlimited Uses) power
//It isn't necessary to set the item up to be used by bards only as this script checks for that, but you can anyway. I did.
//
//
//  if (sItem == "*InstrumentTagHere*")                          //Place the Tag of the Instrument you create
//      {
//      int iBard = GetLevelByClass(CLASS_TYPE_BARD, oPC);       //Redundant class check considering you can set the item to be bard only
//      if (iBard > 0)
//            {
//        if (iTotal >=*DCHere*                                 //Place the DC (difficulty) here (ex: 15)
//            {
//            int i;
//            int done;
//            effect *eEffectHere*;                             //Name the effect (ex: eLightning)
//            object oGroup;
//            effect eCast = EffectVisualEffect(*VFX_HERE*);                                    //Place the VFX you wish to use here
//            FloatingTextStringOnCreature("*Bard Song Success*", oPC, TRUE);
//            SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC *DCHere*");           //Repeat the DC you used previously for PC alert message
//            *eEffectHere* = *EffectWanted()*;                                                             //Repeat the effect you used previously. Make sure to check the Effect Function and make sure additional variables aren't required (see my regeneration effect for an example)
//            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSong, oPC, 18.0);                               //Applies the standard bardsong effect on the player for 3 rounds (18.0sec)
//            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, *eEffectHere*, oPC, 18.0);                       //Repeat the eEffect you used previously. If this is a song to attack an enemy, omit/comment out this line
//            ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oPC);                                       //This will play the VFX you set to eCast a few lines up
//            for (i = 0; i < 6 && !done; i++)                                                              //If you don't want the effect to hit PCs surrounding the bard, comment these lines out until the //Stop comments line
//                {
//                oGroup = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_FRIEND, oPC, i);    //To set this script up to effect enemies, adjust the CREATURE_TYPE_* and REPUTATION_TYPE_* (ex: CREATURE_TYPE_RACIAL_TYPE, RACIAL_TYPE_UNDEAD)
//                if ( oGroup != OBJECT_INVALID && (GetDistanceBetween(oPC, oGroup) <= 30.0) )              //You can change 30.0 to a smaller or larger distance. It is in meters.
//                    {
//                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSpell, oGroup, 18.0);
//                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eCast, oGroup);
//                    }
//                else
//                    {
//                    done = TRUE;
//                    }
//                }                                                                                         //Stop Comments for disabling group effect
//            }
//        else
//            {
//            FloatingTextStringOnCreature("*Bard Song Failure*", oPC, TRUE);
//            SendMessageToPC(oPC, "Skill Roll: " + sTotal + ". Target DC *DCHere*");           //Repeat the DC you used previously for PC alert message
//            }
//        }
//    else
//        {
//        AssignCommand(oPC, ActionSpeakString("Only a bard has the experience to use this item properly."));
//        }
//    }
//}
