// Turn into a bat and fly with no rope //
void main()
{
    object oPC = GetPCSpeaker();
    location lMe = GetLocation(oPC);
    object oTree = GetNearestObjectByTag("magic_plant", oPC);
    location lTree = GetLocation(oTree);
    float fDistance = GetDistanceBetweenLocations(lTree, lMe);
    int nDistance = FloatToInt(fDistance);
    object oBottle = GetItemPossessedBy(oPC, "vampire_bottle");
    int nBlood = GetLocalInt(oBottle, "blood");
    int nNew = nBlood - 5;

    if ((GetAppearanceType(oPC) != APPEARANCE_TYPE_DOG_SHADOW_MASTIF) ||
        (GetAppearanceType(oPC) != APPEARANCE_TYPE_BAT))
    {
        if (nBlood < 5)
        {
            FloatingTextStringOnCreature("You do not have enough blood for bat form.", oPC, FALSE);
        }

        else
        {
            if (GetLocalInt(oPC, "climb") == 1)
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
                // Change the PC back to normal...
                int nReal = GetLocalInt(oBottle, "realApp");
                if (nReal > 0)
                {
                    DelayCommand(12.0, SetCreatureAppearanceType(oPC, nReal - 1));
                }
            }

            else if ((oTree != OBJECT_INVALID) && (nDistance < 6))
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
                DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("feefifofum"))));
                // Change the PC back to normal...
                int nReal = GetLocalInt(oBottle, "realApp");
                if (nReal > 0)
                {
                    DelayCommand(12.0, SetCreatureAppearanceType(oPC, nReal - 1));
                }
            }

            else
            {
                FloatingTextStringOnCreature("You have nowhere to fly.", oPC, FALSE);
            }


            // Go to the climbing point
            {
                object oFollow1 = GetAssociate(ASSOCIATE_TYPE_FAMILIAR, oPC);
                object oFollow2 = GetAssociate(ASSOCIATE_TYPE_ANIMALCOMPANION, oPC);
                object oFollow3 = GetAssociate(ASSOCIATE_TYPE_DOMINATED, oPC);
                object oFollow4 = GetAssociate(ASSOCIATE_TYPE_HENCHMAN, oPC);
                object oFollow5 = GetAssociate(ASSOCIATE_TYPE_SUMMONED, oPC);

                // Hole in Saryl Swamp
                if (GetLocalInt(oPC, "climbing") == 1)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("veeslath_at_up"))));
                }

                // Hole in Frozen Trail
                else if (GetLocalInt(oPC, "climbing") == 2)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("frozen_deep_up"))));
                }

                // Brakal's Tower
                else if (GetLocalInt(oPC, "climbing") == 3)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("brakal_twr_down"))));
                }

                // Altar Of Unur (DOWN)
                else if (GetLocalInt(oPC, "climbing") == 4)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("unur_wp"))));
                }

                // Altar Of Unur (UP)
                else if (GetLocalInt(oPC, "climbing") == 5)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("unur_daclor"))));
                }

                // Pit In Daclor's Crossing
                else if (GetLocalInt(oPC, "climbing") == 6)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_form_hole"))));
                }

                // Red Dragon Up In Daclor
                else if (GetLocalInt(oPC, "climbing") == 7)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_reddrg_up"))));
                }

                // Red Dragon Down In Daclor
                else if (GetLocalInt(oPC, "climbing") == 8)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_reddrg_dwn"))));
                }

                // Clarion TightRope I
                else if (GetLocalInt(oPC, "climbing") == 9)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("clarion_pit_1"))));
                }

                // Clarion TightRope II
                else if (GetLocalInt(oPC, "climbing") == 10)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("clarion_pit_2"))));
                }

                // Clarion Harpies
                else if (GetLocalInt(oPC, "climbing") == 11)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("harpy_up"))));
                }

                // Prael Cliffs
                else if (GetLocalInt(oPC, "climbing") == 12)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("prael_downadee"))));
                }

                // Sliver Dragon
                else if (GetLocalInt(oPC, "climbing") == 13)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("prael_upadee"))));
                }

                // Shifting Growth
                else if (GetLocalInt(oPC, "climbing") == 14)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_shift_drgup"))));
                }

                // Gold Dragon
                else if (GetLocalInt(oPC, "climbing") == 15)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("wp_shift_drgdwn"))));
                }

                // Green Dragon
                else if (GetLocalInt(oPC, "climbing") == 16)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("green_drg_dn"))));
                }

                // Cliffs Of Fallen Up
                else if (GetLocalInt(oPC, "climbing") == 17)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("clif_fal_1"))));
                }

                // Cliffs Of Fallen Down
                else if (GetLocalInt(oPC, "climbing") == 18)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("clif_fal_2"))));
                }

                // Harpy Cliffs
                else if (GetLocalInt(oPC, "climbing") == 19)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("harpy_down"))));
                }

                // Walkway of Wind I
                else if (GetLocalInt(oPC, "climbing") == 20)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("walkwindwp2"))));
                }

                // Walkway of Wind II
                else if (GetLocalInt(oPC, "climbing") == 21)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("walkwindwp1"))));
                }

                // Falcor Nest
                else if (GetLocalInt(oPC, "climbing") == 22)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("falcor_down"))));
                }

                // Dedry Tunnels
                else if (GetLocalInt(oPC, "climbing") == 23)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("dar_ropdown"))));
                }

                // The Hive Hole
                else if (GetLocalInt(oPC, "climbing") == 24)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("dac_holdhive"))));
                }

                // Vegnar Passageway
                else if (GetLocalInt(oPC, "climbing") == 25)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("vegnarrope1"))));
                }

                // Vegnar Passageway
                else if (GetLocalInt(oPC, "climbing") == 26)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                    DelayCommand(3.0, AssignCommand(oFollow1, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                    DelayCommand(3.0, AssignCommand(oFollow2, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                    DelayCommand(3.0, AssignCommand(oFollow3, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                    DelayCommand(3.0, AssignCommand(oFollow4, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                    DelayCommand(3.0, AssignCommand(oFollow5, JumpToObject(GetWaypointByTag("vegnarrope2"))));
                }

                // Well Of Souls
                else if (GetLocalInt(oPC, "climbing") == 27)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("well_imhere"))));
                }

                // Air Witch
                else if (GetLocalInt(oPC, "climbing") == 28)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("air_witch_low"))));
                }

                // Air Witch
                else if (GetLocalInt(oPC, "climbing") == 29)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("air_witch_top"))));
                }

                // Earth Witch DOWN
                else if (GetLocalInt(oPC, "climbing") == 30)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("eat_witch_low"))));
                }

                // Earth Witch UP
                else if (GetLocalInt(oPC, "climbing") == 31)
                {
                    DelayCommand(3.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("eat_witch_top"))));
                }

                else
                {
                }
            }
        }
    }

    // End Climbing Section

    else
    {
        FloatingTextStringOnCreature("You are already in animal form.", oPC, FALSE);
    }
}
