/////////////////////////////
// TeleportParty
//
// By: Bandito
// ggutenberg@rogers.com
// http://eotb2.no-ip.com
// Bandito1032327355909teleportparty.nss
/////////////////////////////

// To be used in conjunction with TeleportParty, but may be used on its own
// Teleports an individual (oTarget) to location lDestination
// Option fHeightFallen parameter simulates fall damage according to 3e rules
// nVis:                0 - No visual effect
//                      1 - Effect BEFORE Teleport
//                      2 - Effect AFTER Teleport
//                      3 - Effect BEFORE & AFTER Teleport
// nVisID:              VFX_ Constant
// fVisDelay:           Delay before teleporting, usually based on the duration of the Visual Effect
void TeleportIndividual(object oTarget, location lDestination, float fHeightFallen = 0.0, int nVis = 0, int nVisID = VFX_NONE, float fVisDelay = 0.0);

// oTarget:             Party Member to teleport (should be a PC, but not 100% necessary)
// lDestination:        The destination to teleport to (location-type)
// bAssociates:         Set to FALSE if only Player Characters should be teleported
// bParty:              Set to FALSE if only oTarget should be teleported and no party members
// fHeightFallen:       Pass a value (in meters) to simulate fall damage
// fAllowedDistance:    The distance which party members and associates must be from oTarget or they will not go with him/her
// nVis:                0 - No visual effect
//                      1 - Effect BEFORE Teleport
//                      2 - Effect AFTER Teleport
//                      3 - Effect BEFORE & AFTER Teleport
// nVisID:              VFX_ Constant
// fVisDelay:           Delay before teleporting, usually based on the duration of the Visual Effect
// Ignores dead allies
void TeleportParty(object oTarget, location lDestination, int bAssociates = TRUE, int bParty = TRUE, float fHeightFallen = 0.0, float fAllowedDistance = 10.0, int nVis = 0, int nVisID = VFX_NONE, float fVisDelay = 0.0);





/*****************************************/
/****** Actual Functions Begin Here ******/
/*****************************************/

/*****************************************************************************
 * TeleportIndividual *
 **********************
 * To be used in conjunction with TeleportParty, but may be used on its own
 * Teleports an individual (oTarget) to location lDestination
 * Option fHeightFallen parameter simulates fall damage according to 3e rules
 * nVis: 0 - No visual effect
 *       1 - Effect BEFORE Teleport
 *       2 - Effect AFTER Teleport
 *       3 - Effect BEFORE & AFTER Teleport
 *****************************************************************************/
void TeleportIndividual(object oTarget, location lDestination, float fHeightFallen = 0.0, int nVis = 0, int nVisID = VFX_NONE, float fVisDelay = 0.0)
{
    int nLevel;
    int nDamageDice, nDamage;
    effect eDamage, eKnockdown, eFall;
    float fDelay = fVisDelay;

    effect eVis = EffectVisualEffect(nVisID);

    if(nVis == 1 || nVis == 3)  // Effect BEFORE Teleport
    {
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eVis, oTarget, fVisDelay);
        fDelay = fDelay + 1.0;
    }

    DelayCommand(fDelay, AssignCommand(oTarget, JumpToLocation(lDestination)));

    if(nVis == 2 || nVis == 3)  // Effect AFTER Teleport
    {
        DelayCommand(fDelay + 0.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget));
    }

    // Calculate and apply damage

    // Monk Damage Reduction
    if (GetClassByPosition(1, oTarget) == CLASS_TYPE_MONK ||
        GetClassByPosition(2, oTarget) == CLASS_TYPE_MONK ||
        GetClassByPosition(3, oTarget) == CLASS_TYPE_MONK)
    {
        nLevel = GetLevelByClass(CLASS_TYPE_MONK, oTarget);
        if(nLevel >= 8)
            fHeightFallen -= 15.0;
        else if(nLevel >= 6)
            fHeightFallen -= 10.0;
        else if(nLevel >= 4)
            fHeightFallen -= 6.0;
    }

    if(fHeightFallen < 3.0)
        return;

    nDamageDice = FloatToInt(fHeightFallen / 3.0);
    if(ReflexSave(oTarget, 15))
        nDamageDice -= 1;

    if(nDamageDice <= 0)
        return;

    nDamage = d6(nDamageDice);
    eDamage = EffectDamage(nDamage);
    eKnockdown = EffectKnockdown();
    eFall = EffectLinkEffects(eDamage, eKnockdown);
    DelayCommand(fDelay + 0.1, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eFall, oTarget, 4.0));
}

/*****************************************************************************************************************************
 * TeleportParty *
 *****************
 * oTarget:             Party Member to teleport (should be a PC, but not 100% necessary)
 * lDestination:        The destination to teleport to (location-type)
 * bAssociates:         Set to FALSE if only Player Characters should be teleported
 * bParty:              Set to FALSE if only oTarget should be teleported and no party members
 * fHeightFallen:       Pass a value (in meters) to simulate fall damage
 * fAllowedDistance:    The distance which party members and associates must be from oTarget or they will not go with him/her
 *
 * Ignores dead allies
 *****************************************************************************************************************************/
void TeleportParty(object oTarget, location lDestination, int bAssociates = TRUE, int bParty = TRUE, float fHeightFallen = 0.0, float fAllowedDistance = 10.0, int nVis = 0, int nVisID = VFX_NONE, float fVisDelay = 0.0)
{
    // Variable Declarations
    object oPC;
    object oHenchman, oFamiliar, oSummoned, oAnimal, oDominated;
    float fPartyMemberDistance;
    float fHenchman, fFamiliar, fSummoned, fAnimal, fDominated;

    if (bParty == TRUE)
    {
        // Check distance between party members
        oPC = GetFirstFactionMember(oTarget, TRUE);
        while(GetIsObjectValid(oPC))
        {
            // Ignore dead party members
            if(GetIsDead(oPC))
                continue;

            // Exit if any party member is > 10.0 m away from oTarget
            fPartyMemberDistance = GetDistanceBetween(oTarget, oPC);
            if(fPartyMemberDistance > fAllowedDistance)
            {
                AssignCommand(oTarget, SpeakString("You must gather your party before venturing forth"));
                return;
            }
            oPC = GetNextFactionMember(oTarget, TRUE);
        }

        // Teleport Associates
        oPC = GetFirstFactionMember(oTarget, TRUE);
        while (GetIsObjectValid(oPC))
        {
            if(bAssociates == TRUE)
            {
                oHenchman   = GetHenchman(oPC);
                oFamiliar   = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
                oSummoned   = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);
                oAnimal     = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
                oDominated  = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);

                fHenchman   = GetDistanceBetween(oPC, oHenchman);
                fFamiliar   = GetDistanceBetween(oPC, oFamiliar);
                fSummoned   = GetDistanceBetween(oPC, oSummoned);
                fAnimal     = GetDistanceBetween(oPC, oAnimal);
                fDominated  = GetDistanceBetween(oPC, oDominated);

                if (fHenchman < fAllowedDistance && !GetIsDead(oHenchman))
                    TeleportIndividual(oHenchman, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
                if (fFamiliar < fAllowedDistance && !GetIsDead(oFamiliar))
                    TeleportIndividual(oFamiliar, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
                if (fSummoned < fAllowedDistance && !GetIsDead(oSummoned))
                    TeleportIndividual(oSummoned, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
                if (fAnimal < fAllowedDistance && !GetIsDead(oAnimal))
                    TeleportIndividual(oAnimal, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
                if (fDominated < fAllowedDistance && !GetIsDead(oDominated))
                    TeleportIndividual(oDominated, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            }

            TeleportIndividual(oPC, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            oPC = GetNextFactionMember(oTarget, TRUE);
        }
    }
    else    // bParty == FALSE
    {
        oPC = oTarget;
        if(bAssociates == TRUE)
        {
            oHenchman   = GetHenchman(oPC);
            oFamiliar   = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
            oSummoned   = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);
            oAnimal     = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
            oDominated  = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);

            fHenchman   = GetDistanceBetween(oPC, oHenchman);
            fFamiliar   = GetDistanceBetween(oPC, oFamiliar);
            fSummoned   = GetDistanceBetween(oPC, oSummoned);
            fAnimal     = GetDistanceBetween(oPC, oAnimal);
            fDominated  = GetDistanceBetween(oPC, oDominated);

            if (fHenchman < fAllowedDistance && !GetIsDead(oHenchman))
                TeleportIndividual(oHenchman, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            if (fFamiliar < fAllowedDistance && !GetIsDead(oFamiliar))
                TeleportIndividual(oFamiliar, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            if (fSummoned < fAllowedDistance && !GetIsDead(oSummoned))
                TeleportIndividual(oSummoned, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            if (fAnimal < fAllowedDistance && !GetIsDead(oAnimal))
                TeleportIndividual(oAnimal, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
            if (fDominated < fAllowedDistance && !GetIsDead(oDominated))
                TeleportIndividual(oDominated, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
        }

        TeleportIndividual(oPC, lDestination, fHeightFallen, nVis, nVisID, fVisDelay);
    }
}

