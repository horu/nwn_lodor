// This will make crates, chests, ect...respawn when destroyed.
void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE);

void main()
{
    if (GetLocalInt(OBJECT_SELF, "respawn") == 1)
    {
    }

    else
    {
        if (GetTag(OBJECT_SELF) == "spw_firewood")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodoc_woodpile", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "chest_goodies")
        {
            DelayCommand(30.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "player_tomb")
        {
            if (GetFirstItemInInventory(OBJECT_SELF) == OBJECT_INVALID)
            {
                DestroyObject(OBJECT_SELF);
            }
            else
            {
                DelayCommand(1200.0, DestroyObject(OBJECT_SELF));
            }
        }
        else if (GetTag(OBJECT_SELF) == "demon_lightp1")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_qs1j")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn1", OBJECT_SELF)),
                        TRUE);
                }
                else if (nRandom == 2)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn2", OBJECT_SELF)),
                        TRUE);
                }
                else if (nRandom == 3)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn3", OBJECT_SELF)),
                        TRUE);
                }
                else if (nRandom == 4)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn4", OBJECT_SELF)),
                        TRUE);
                }
                else if (nRandom == 5)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn5", OBJECT_SELF)),
                        TRUE);
                }
                else if (nRandom == 6)
                {
                    CreateObject(
                        OBJECT_TYPE_PLACEABLE,
                        "qs1j_chest",
                        GetLocation(GetNearestObjectByTag("qs1j_spwn6", OBJECT_SELF)),
                        TRUE);
                }
            }
            DelayCommand(1.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "demon_lightp2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "citadel_cage")
        {
            location lDied = GetLocation(OBJECT_SELF);
            CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lDied, FALSE, "spw_citcage");
        }
        else if (GetTag(OBJECT_SELF) == "spw_citcage")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(999.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "citadel_cage", GetLocation(OBJECT_SELF)));
            DelayCommand(1000.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_wagon")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodor_wagon", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_omeraz")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_omerstat", GetLocation(GetObjectByTag("om_sta_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_draczarm")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(1799.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "dracz_armoire", GetLocation(OBJECT_SELF)));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "drunkdeep_door")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(1799.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "drunkdeep_spw", GetLocation(OBJECT_SELF)));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_barrel")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodor_barrel_low", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_vampa")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "vamp_armoire", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_vrugarb")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "vrugar_barrel", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_vrugarc")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "vrugar_crate", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_drogob")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "drogo_barrel", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_drogoc")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "drogo_crate", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_crate")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodor_crate", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_kelambush")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "kelambush", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_drub")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_drub", GetLocation(GetWaypointByTag("drub_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_dracz")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "dracz", GetLocation(GetWaypointByTag("dracz_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_vasestra")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_vasestra", GetLocation(GetWaypointByTag("vastr_spwn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_jarehar")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_jarehar", GetLocation(GetWaypointByTag("jareh_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_collect")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_collect", GetLocation(GetWaypointByTag("demon_portal1"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_zaltosd")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_zaltos", GetLocation(GetWaypointByTag("zaltos_spawnp"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_lastrow")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_lastrow", GetLocation(GetWaypointByTag("lastrow_spawnp"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_glomarin")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_glomarin", GetLocation(GetWaypointByTag("glom_spawnpnt1"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_sapelek")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_sapelek", GetLocation(GetWaypointByTag("sapelek_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_bruol")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "bugbearboss001", GetLocation(GetWaypointByTag("bruol_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_hawtral")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d4(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        3599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_falcormg",
                            GetLocation(GetWaypointByTag("falcor_spwn1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        3599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_falcormg",
                            GetLocation(GetWaypointByTag("falcor_spwn2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        3599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_falcormg",
                            GetLocation(GetWaypointByTag("falcor_spwn3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        3599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_falcormg",
                            GetLocation(GetWaypointByTag("falcor_spwn4"))));
                }
            }
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_burlop")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        1799.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "bugchiefa002",
                            GetLocation(GetWaypointByTag("burlop_spawn6"))));
                }
            }
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_frost_gnt")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_giant_frstm1",
                            GetLocation(GetWaypointByTag("frstkey_spwn6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_flaykey")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mindflayer2k",
                            GetLocation(GetWaypointByTag("flayerkeyp6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_glfam")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_mephitwq",
                            GetLocation(GetWaypointByTag("glfam_spwn6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_wagonf")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "dj_full_wagon", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_crate2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lodor_crate2", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradir")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "miradir_chest", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_horfchst")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "horfilad_chest", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_lichlord")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_chess_knight", GetLocation(GetObjectByTag("spw_chess1"))));
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_chess_bishop", GetLocation(GetObjectByTag("spw_chess2"))));
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_chess_king", GetLocation(GetObjectByTag("spw_chess3"))));
            DelayCommand(1800.0, DestroyObject(GetObjectByTag("spw_chess1")));
            DelayCommand(1800.0, DestroyObject(GetObjectByTag("spw_chess2")));
            DelayCommand(1800.0, DestroyObject(GetObjectByTag("spw_chess3")));
            DelayCommand(1801.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradir2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "miradir_chest2", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradir3")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "miradir_chest3", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_gnollchst")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "gnoll_chest", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradir4")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "miradir_crate", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradir5")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "miradir_armoire", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_zaltosarm")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "zaltos_armoire", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_horfarm")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "horfilad_armoire", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_brakalchst")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "brakal_chest", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_cocoon")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_cocoon", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_cocoonbie")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_cocoonbie", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_brokewgon")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_broke_wagon", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_wheelbrow")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_wheelbarrow", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "dracz_keychest")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "dracz_keychest",
                            GetLocation(GetWaypointByTag("drac_spwkey6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "vault_bag")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "vault_bag",
                            GetLocation(GetWaypointByTag("vault_keyb6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradirbg1")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag1",
                            GetLocation(GetWaypointByTag("miradir_key1_6"))));
                }
            }
            DelayCommand(100.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_miradirbg2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        99.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "miradir_bag2",
                            GetLocation(GetWaypointByTag("miradir_key2_6"))));
                }
            }
            DelayCommand(100.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_taresa")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_taresa", GetLocation(GetWaypointByTag("taresa_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_reanimde")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_reanimde", GetLocation(GetWaypointByTag("reanimde_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_bartuzol")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_bartuzol", GetLocation(GetWaypointByTag("bartuzol_spwn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_witch_ice")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ice_queen", GetLocation(GetWaypointByTag("witchi_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_witch_dirt")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "witch_earth", GetLocation(GetWaypointByTag("valestra_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_witch_wat")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "witch_water", GetLocation(GetWaypointByTag("wterwich_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_witch_air")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "witch_air", GetLocation(GetWaypointByTag("air_witchspwn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_witch_fire")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "witch_fire", GetLocation(GetWaypointByTag("fire_witchspwn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_brakal")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_brakal", GetLocation(GetWaypointByTag("brakal_spwnpnt"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_horfilad")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_horfilad", GetLocation(GetWaypointByTag("horfilad_spawner"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_cyclops")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_cyclops1", GetLocation(GetWaypointByTag("cyclops_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_tarak")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_tarak", GetLocation(GetWaypointByTag("tarak_spawner"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_daclor")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_daclor", GetLocation(GetWaypointByTag("daclor_spawnp"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_ketryl")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_ketryl", GetLocation(GetWaypointByTag("ketryl_spwnpnt"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_doroxt")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_doroxt", GetLocation(GetWaypointByTag("doroxt_spwnpon"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_vilith")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_CREATURE,
                            "ld_kblkvilth",
                            GetLocation(GetWaypointByTag("kobold_boss_6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_medusa")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_medusa2", GetLocation(GetWaypointByTag("medusa_sp6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_warpek")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_warpek", GetLocation(GetWaypointByTag("warpek_spwnpnt"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_xor")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(OBJECT_TYPE_CREATURE, "ld_xor", GetLocation(GetWaypointByTag("xor_sp6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_wrok")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_wrok", GetLocation(GetWaypointByTag("spawn_wrok"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_marculos")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_marculos", GetLocation(GetWaypointByTag("marculos_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_black_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_blk", GetLocation(GetWaypointByTag("spwn_blkdrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_copper_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_cop", GetLocation(GetWaypointByTag("copwpspwn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_prism_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_psm", GetLocation(GetWaypointByTag("spwn_prism"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_bronze_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_brz", GetLocation(GetWaypointByTag("spwn_brzdrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_shd_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_shd", GetLocation(GetWaypointByTag("zalk_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_red_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_red", GetLocation(GetWaypointByTag("spwn_reddrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_white_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_wht", GetLocation(GetWaypointByTag("spwn_whtdrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_blu_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_blu", GetLocation(GetWaypointByTag("spwn_bludrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_sil_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_sil", GetLocation(GetWaypointByTag("spwn_sildrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_brs_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_brs", GetLocation(GetWaypointByTag("spwn_brsdrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_dracolich")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                ApplyEffectAtLocation(
                    DURATION_TYPE_INSTANT,
                    EffectVisualEffect(VFX_FNF_FIRESTORM),
                    GetLocation(GetWaypointByTag("dracolich_spawn"))));
            DelayCommand(
                3599.0,
                CreateObject2(
                    OBJECT_TYPE_CREATURE,
                    "ld_dragon_lich",
                    GetLocation(GetWaypointByTag("dracolich_spawn"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_gld_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_gld", GetLocation(GetWaypointByTag("spwn_glddrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_grn_drg")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                3599.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dragon_grn", GetLocation(GetWaypointByTag("spwn_grndrg"))));
            DelayCommand(3600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_drigdug")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_trollb", GetLocation(GetWaypointByTag("spwn_drigdugs"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_garv")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_gnollb", GetLocation(GetWaypointByTag("spwn_garvsp"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_taresa")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_taresa", GetLocation(GetWaypointByTag("taresa_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_reanimde")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1999.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_reanimde", GetLocation(GetWaypointByTag("reanimde_spwn"))));
            DelayCommand(2000.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "fallen_box")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "fallen_box", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "citadel_tomb")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "citadel_tomb", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "medusa_urn")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "medusa_urn", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "daclor_box")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d12(1);
                if (nRandom == 1)
                {
                    DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "daclor_box", GetLocation(OBJECT_SELF)));
                    DelayCommand(600.0, DestroyObject(OBJECT_SELF));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "daclor_box2", GetLocation(OBJECT_SELF)));
                    DelayCommand(600.0, DestroyObject(OBJECT_SELF));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "daclor_box3", GetLocation(OBJECT_SELF)));
                    DelayCommand(600.0, DestroyObject(OBJECT_SELF));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "daclor_box3", GetLocation(OBJECT_SELF)));
                    DelayCommand(600.0, DestroyObject(OBJECT_SELF));
                }
            }
        }
        else if (GetTag(OBJECT_SELF) == "lastrow_box")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "lastrow_box", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_secrtchst")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(1799.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "secret_chest", GetLocation(OBJECT_SELF)));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "magic_plant")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(299.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "magic_plant2", GetLocation(OBJECT_SELF)));
            DelayCommand(300.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "magic_plant2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject2(OBJECT_TYPE_PLACEABLE, "magic_plant3", GetLocation(OBJECT_SELF));
            DestroyObject(OBJECT_SELF);
        }
        else if (GetTag(OBJECT_SELF) == "magic_plant3")
        {
            DestroyObject(OBJECT_SELF);
        }
        else if (GetTag(OBJECT_SELF) == "spw_fallenbag")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d10(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_6"))));
                }
                else if (nRandom == 7)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_7"))));
                }
                else if (nRandom == 8)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_8"))));
                }
                else if (nRandom == 9)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_9"))));
                }
                else if (nRandom == 10)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "fallen_bag",
                            GetLocation(GetWaypointByTag("fallen_key1_10"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_zalchkys")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "zaltoskeychest")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "zaltoskeychest",
                            GetLocation(GetWaypointByTag("zalwpforchst6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_sewerbag")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            {
                int nRandom = d6(1);
                if (nRandom == 1)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_1"))));
                }
                else if (nRandom == 2)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_2"))));
                }
                else if (nRandom == 3)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_3"))));
                }
                else if (nRandom == 4)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_4"))));
                }
                else if (nRandom == 5)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_5"))));
                }
                else if (nRandom == 6)
                {
                    DelayCommand(
                        599.0,
                        CreateObject2(
                            OBJECT_TYPE_PLACEABLE,
                            "sewer_bag",
                            GetLocation(GetWaypointByTag("sewer_spwn_6"))));
                }
            }
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_shira")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_shira", GetLocation(GetWaypointByTag("shira_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "cata_lever")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(60.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_cavein")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(59.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "ld_medusa_ci", GetLocation(OBJECT_SELF)));
            DelayCommand(60.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_melgan")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_melaruler", GetLocation(GetWaypointByTag("melgn_spawnpt"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_raksha")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_maharajah", GetLocation(GetWaypointByTag("mahraj_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_trasaa")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_trasaa", GetLocation(GetWaypointByTag("trasaa_spwnp"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_dar")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_dar", GetLocation(GetWaypointByTag("dar_spawner"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_hivemom")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_hivemoth", GetLocation(GetWaypointByTag("hivemom_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_quasco")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_quascar", GetLocation(GetWaypointByTag("manqua_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_hvqueen")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_hvqueen", GetLocation(GetWaypointByTag("hvqueen_spwn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "dedry_box")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(1799.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "dedry_box", GetLocation(OBJECT_SELF)));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "dedry_box2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(599.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "dedry_box2", GetLocation(OBJECT_SELF)));
            DelayCommand(600.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_yarbek")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_ghoullord", GetLocation(GetWaypointByTag("yarbek_spawn"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "spw_olarius")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(
                1799.0,
                CreateObject2(OBJECT_TYPE_CREATURE, "ld_olarius", GetLocation(GetWaypointByTag("olarius_spw"))));
            DelayCommand(1800.0, DestroyObject(OBJECT_SELF));
        }


        // Rune Stones for the Tower of Runes
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator1")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1a");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1b");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator3")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1c");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator4")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2a");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator5")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2b");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator6")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2c");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator7")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3a");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator8")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3b");
            DestroyObject(OBJECT_SELF, 1.0);
        }
        else if (GetTag(OBJECT_SELF) == "rn_stn_creator9")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3c");
            DestroyObject(OBJECT_SELF, 1.0);
        }

        else if (GetTag(OBJECT_SELF) == "ld_twrrn_1a")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake1");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker1a");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_1b")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake1");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker1b");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_1c")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake1");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker1c");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_2a")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake2");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker2a");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_2b")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake2");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker2b");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_2c")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake2");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker2c");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_3a")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake3");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker3a");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_3b")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake3");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker3b");
        }
        else if (GetTag(OBJECT_SELF) == "ld_twrrn_3c")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            object oRune = GetObjectByTag("rune_prtmake3");
            int nRune1 = GetLocalInt(oRune, "runeface");
            int nRune2 = nRune1 + 1;
            SetLocalInt(oRune, "runeface", nRune2);
            CreateObject(OBJECT_TYPE_PLACEABLE, "rune_pmarker", GetLocation(OBJECT_SELF), FALSE, "rune_pmarker3c");
        }

        else if (GetTag(OBJECT_SELF) == "rune_prtmake1")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") > 2)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "rune_master", GetLocation(OBJECT_SELF), FALSE, "rune_master1");
                ApplyEffectAtLocation(
                    DURATION_TYPE_INSTANT,
                    EffectVisualEffect(VFX_FNF_SUMMON_GATE),
                    GetLocation(OBJECT_SELF));
                SetLocalInt(OBJECT_SELF, "runeface", 0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_prtmake2")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") > 2)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "rune_master", GetLocation(OBJECT_SELF), FALSE, "rune_master2");
                ApplyEffectAtLocation(
                    DURATION_TYPE_INSTANT,
                    EffectVisualEffect(VFX_FNF_SUMMON_GATE),
                    GetLocation(OBJECT_SELF));
                SetLocalInt(OBJECT_SELF, "runeface", 0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_prtmake3")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") > 2)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "rune_master", GetLocation(OBJECT_SELF), FALSE, "rune_master3");
                ApplyEffectAtLocation(
                    DURATION_TYPE_INSTANT,
                    EffectVisualEffect(VFX_FNF_SUMMON_GATE),
                    GetLocation(OBJECT_SELF));
                SetLocalInt(OBJECT_SELF, "runeface", 0);
            }
        }

        else if (GetTag(OBJECT_SELF) == "rune_pmarker1a")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1a");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker1b")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1b");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker1c")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_1c");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker2a")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2a");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker2b")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2b");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker2c")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_2c");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker3a")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_1", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3a");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker3b")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_2", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3b");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }
        else if (GetTag(OBJECT_SELF) == "rune_pmarker3c")
        {
            if (GetLocalInt(OBJECT_SELF, "runeface") == 1)
            {
                CreateObject(OBJECT_TYPE_PLACEABLE, "ld_twrrn_3", GetLocation(OBJECT_SELF), FALSE, "ld_twrrn_3c");
                DestroyObject(OBJECT_SELF, 1.0);
            }
        }

        else if (GetTag(OBJECT_SELF) == "rune_master1")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker1a"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker1b"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker1c"), "runeface", 1));
            DelayCommand(300.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "rune_master2")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker2a"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker2b"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker2c"), "runeface", 1));
            DelayCommand(300.0, DestroyObject(OBJECT_SELF));
        }
        else if (GetTag(OBJECT_SELF) == "rune_master3")
        {
            SetLocalInt(OBJECT_SELF, "respawn", 1);
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker3a"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker3b"), "runeface", 1));
            DelayCommand(299.0, SetLocalInt(GetObjectByTag("rune_pmarker3c"), "runeface", 1));
            DelayCommand(300.0, DestroyObject(OBJECT_SELF));
        }
        // End of Rune Section
    }
}

void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE)
{
    CreateObject(nObjectType, sTemplate, lLocation, bUseAppearAnimation);
    return;
}
