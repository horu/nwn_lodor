// Turn into a bat and fly back to the grave //
void main()
{
    object oPC = GetPCSpeaker();
    location lMe = GetLocation(oPC);
    object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNew = nBlood - 10;
    object oBook = GetItemPossessedBy(oPC, "faction_report");

    if ((GetAppearanceType(oPC) != APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
        (GetAppearanceType(oPC) != APPEARANCE_TYPE_BAT))
    {
        if (nBlood < 10)
        {
            FloatingTextStringOnCreature("You do not have enough blood for the journey.", oPC, FALSE);
        }

        else
        {
            // Change the PC to a bat...
            int nRealMe = GetAppearanceType(oPC);
            SetLocalInt(oBottle, "blood", nNew);
            SetLocalInt(oBottle, "realApp", nRealMe + 1);
            DelayCommand(
                1.0,
                ApplyEffectAtLocation(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_IMP_DUST_EXPLOSION), lMe));
            AssignCommand(oPC, PlaySound("as_an_bat1"));
            DelayCommand(1.0, AssignCommand(oPC, PlaySound("as_an_batflap2")));
            DelayCommand(2.0, AssignCommand(oPC, PlaySound("as_an_bat2")));
            DelayCommand(1.0, SetCreatureAppearanceType(oPC, APPEARANCE_TYPE_BAT));

            if (GetLocalInt(oBook, "bind_tree") == 13)
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_tower"))));
            }
            else if (GetLocalInt(oBook, "bind_tree") == 14)
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_fall"))));
            }
            else if (GetLocalInt(oBook, "bind_tree") == 15)
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_cata"))));
            }
            else if (GetLocalInt(oBook, "bind_tree") == 16)
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_ruin"))));
            }
            else if (GetLocalInt(oBook, "bind_tree") == 17)
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetObjectByTag("bind_coffin_crypt"))));
            }
            else
            {
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("LOC_VAMPIRE"))));
            }

            // Change the PC back to normal...
            int nReal = GetLocalInt(oBottle, "realApp");
            if (nReal > 0)
            {
                DelayCommand(12.0, SetCreatureAppearanceType(oPC, nReal - 1));
            }
        }
    }

    else
    {
        FloatingTextStringOnCreature("You are already in animal form.", oPC, FALSE);
    }
}
