// Turn into a wolf and run fast //
#include "x2_inc_itemprop"

void main()
{
    object oPC = GetPCSpeaker();
    object oVampire = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    location lMe = GetLocation(oPC);
    object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNew = nBlood - 10;
    itemproperty vampRun = ItemPropertyHaste();

    if ((GetAppearanceType(oPC) != APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
        (GetAppearanceType(oPC) != APPEARANCE_TYPE_BAT))
    {
        if (nBlood < 10)
        {
            FloatingTextStringOnCreature("You do not have enough blood for wolf form.", oPC, FALSE);
        }

        else
        {
            // Change the PC to a wolf...
            int nRealMe = GetAppearanceType(oPC);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), 50);
            SetLocalInt(oBottle, "wolf", 1);
            SetLocalInt(oBottle, "blood", nNew);
            SetLocalInt(oBottle, "realApp", nRealMe + 1);
            DelayCommand(
                1.0,
                ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lMe));
            AssignCommand(oPC, PlaySound("as_an_wolfhowl1"));
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_DOG_SHADOW_MASTIF));
            IPSafeAddItemProperty(oVampire, vampRun);
        }
    }

    else
    {
        FloatingTextStringOnCreature("You are already in animal form.", oPC, FALSE);
    }
}
