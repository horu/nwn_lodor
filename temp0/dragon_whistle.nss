// Dragon Whistle
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    location lSpawn = GetLocation(oPC);
    object oHench = GetHenchman(oPC);
    object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");
    string sName = GetName(oPC);
    int nChore = GetLocalInt(oPC, "dragon_chore");

    int nDead = GetLocalInt(oWhistle, "petdead");

    // IF PET IS DEAD
    if (nDead == 1)
    {
        FloatingTextStringOnCreature("Unfortunately, your pet dragon is dead.", oPC, FALSE);
    }

    // DRAGON IS ON A ERRAND
    else if (nChore == 1)
    {
        FloatingTextStringOnCreature("Your pet is on an errand.  Try calling them in a few minutes.", oPC, FALSE);
    }

    // IF PET IS WITH YOU NOW
    else
    {
        if (GetStringLeft(GetTag(oHench), 10) == "ld_dragon_")
        {
            FloatingTextStringOnCreature("Your dragon is already with you.", oPC, FALSE);
        }
        else
        {
            // IF PC HAS RAW MEAT
            if ((!HasItem(oPC, "lodoc_meat")) == FALSE)
            {
                DestroyObject(GetItemPossessedBy(oPC, "lodoc_meat"));
                PlaySound("as_an_songbird1");
                string sDragon = GetLocalString(oWhistle, "petdragon");
                int nPet = GetLocalInt(oWhistle, "petxp");
                string sType = GetStringRight(sDragon, 4);
                string sWhole = GetStringLeft(sDragon, 10);

                if ((nPet >= 0) && (nPet < 50000))
                {
                    string sLevel = "1";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 50000) && (nPet < 100000))
                {
                    string sLevel = "2";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 100000) && (nPet < 150000))
                {
                    string sLevel = "3";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 150000) && (nPet < 200000))
                {
                    string sLevel = "4";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 200000) && (nPet < 250000))
                {
                    string sLevel = "5";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 250000) && (nPet < 300000))
                {
                    string sLevel = "6";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 300000) && (nPet < 350000))
                {
                    string sLevel = "7";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
                else if ((nPet >= 400000) && (nPet < 500000))
                {
                    string sLevel = "8";
                    string sBuilt = sWhole + sLevel + sType;
                    SetLocalString(oWhistle, "petdragon", sBuilt);
                    object oDragon = CreateObject(OBJECT_TYPE_CREATURE, sBuilt, lSpawn, TRUE);
                    AddHenchman(oPC, oDragon);
                    SetLocalString(oDragon, "Owner", sName);
                    // IF THE DRAGON WAS ON AN ERRAND, BRING STUFF
                    if (GetLocalInt(oWhistle, "dragon_bring") == 1)
                    {
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        CreateItemOnObject("lodoc_meat2", oPC, 1);
                        CreateItemOnObject("lodoc_waterr", oPC, 1);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 2)
                    {
                        CreateItemOnObject("NW_WAMBU001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 3)
                    {
                        CreateItemOnObject("NW_WAMBO001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                    else if (GetLocalInt(oWhistle, "dragon_bring") == 4)
                    {
                        CreateItemOnObject("NW_WAMAR001", oPC, 30);
                        SetLocalInt(oPC, "dragon_bring", 0);
                    }
                }
            }
            else
            {
                FloatingTextStringOnCreature("You need raw meat to call your pet.", oPC, FALSE);
            }
        }
    }
}
