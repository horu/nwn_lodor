//This is for creating a potion
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    int nRoll = d10(1);

    int nNeed = GetLocalInt(oPC, "alchemy_n"); //Skill Needed
    int nSkill = GetLocalInt(oPC, "alchemy_s"); //This is the skill
    string sBottle = GetLocalString(oPC, "alchemy_b"); //This is the bottle tag
    string sReagent = GetLocalString(oPC, "alchemy_r"); //This is the reagent tag
    string sMake = GetLocalString(oPC, "alchemy_m"); //This is the potion tag
    string sBottle2 = GetLocalString(oPC, "alchemy_b2"); //This is the bottle name
    string sReagent2 = GetLocalString(oPC, "alchemy_r2"); //This is the reagent name
    string sMake2 = GetLocalString(oPC, "alchemy_m2"); //This is the potion name

    int nResult = nSkill + nRoll; //Roll Results
    int nCheck = nSkill + 10; //Skill Check

    // If has a bottle or bag
    if ((!HasItem(oPC, sBottle)) == FALSE)
    {
        // If has the reagent
        if ((!HasItem(oPC, sReagent)) == FALSE)
        {
            // If they can never succeed
            if (nNeed > nCheck)
            {
                FloatingTextStringOnCreature("You are not skilled enough to make that.", oPC, FALSE);
            }

            else
            {
                // This is a cleric check for holy water
                if ((GetLocalInt(oPC, "alch_pick") < 42) && (GetLocalInt(oPC, "alch_pick") != 40))
                {
                    // If failed the roll
                    if (nResult < nNeed)
                    {
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                        FloatingTextStringOnCreature("You failed to make the recipe.", oPC, FALSE);
                    }
                    // If successful
                    else if (nResult >= nNeed)
                    {
                        DestroyObject(GetItemPossessedBy(oPC, sBottle));
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                        CreateItemOnObject(sMake, oPC, 1);
                        FloatingTextStringOnCreature("You have created a " + sMake2 + ".", oPC, FALSE);
                    }

                    // They had to roll to succeed
                    if (nSkill > nNeed)
                    {
                    }
                    else
                    {
                        int iCurrent = GetLocalInt(oBook, "alchemy_raise");
                        int iNew = iCurrent + 1;
                        SetLocalInt(oBook, "alchemy_raise", iNew);
                        if (iCurrent >= 4)
                        {
                            int nUp = nSkill + 1;
                            SetLocalInt(oBook, "alchemy_raise", 1);
                            SendMessageToPC(oPC, "Your Alchemy skill has improved.");
                            SetLocalInt(oBook, "alchemy", nUp);
                        }
                    }
                }

                //////////////////////////////////////////////////////////////////////////
                //////////////                 HOLY WATER                /////////////////
                //////////////////////////////////////////////////////////////////////////

                // This is a cleric check for holy water
                else if (GetLocalInt(oPC, "alch_pick") == 40)
                {
                    if (GetLocalInt(oPC, "holyman") == 1)
                    {
                        // If failed the roll
                        if (nResult < nNeed)
                        {
                            DestroyObject(GetItemPossessedBy(oPC, sReagent));
                            FloatingTextStringOnCreature("You failed to make the holy water", oPC, FALSE);
                        }
                        // If successful
                        else if (nResult >= nNeed)
                        {
                            DestroyObject(GetItemPossessedBy(oPC, sBottle));
                            DestroyObject(GetItemPossessedBy(oPC, sReagent));
                            CreateItemOnObject(sMake, oPC, 1);
                            FloatingTextStringOnCreature("You have created " + sMake2 + ".", oPC, FALSE);
                        }

                        // They had to roll to succeed
                        if (nSkill > nNeed)
                        {
                        }
                        else
                        {
                            int iCurrent = GetLocalInt(oBook, "alchemy_raise");
                            int iNew = iCurrent + 1;
                            SetLocalInt(oBook, "alchemy_raise", iNew);
                            if (iCurrent >= 4)
                            {
                                int nUp = nSkill + 1;
                                SetLocalInt(oBook, "alchemy_raise", 1);
                                SendMessageToPC(oPC, "Your Alchemy skill has improved.");
                                SetLocalInt(oBook, "alchemy", nUp);
                            }
                        }
                    }
                    else
                    {
                        FloatingTextStringOnCreature("Only clerics can make Holy Water.", oPC, FALSE);
                    }
                }

                //////////////////////////////////////////////////////////////////////////
                //////////////                  POISONS                  /////////////////
                //////////////////////////////////////////////////////////////////////////
                else if (GetLocalInt(oPC, "alch_pick") > 42)
                {
                    // If failed the roll
                    if (nResult < nNeed)
                    {
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                        FloatingTextStringOnCreature("You failed to make the poison.", oPC, FALSE);
                    }

                    // If successful
                    else if (nResult >= nNeed)
                    {
                        int nPoison1 = GetLocalInt(oPC, "poison_int");
                        int nPoison2 = nPoison1 + 6;
                        int nPoison3 = nPoison1 + 12;
                        int nPoison4 = nPoison1 + 18;
                        int nPoison5 = nPoison1 + 24;
                        string sPoison1 = IntToString(nPoison1);
                        string sPoison2 = IntToString(nPoison2);
                        string sPoison3 = IntToString(nPoison3);
                        string sPoison4 = IntToString(nPoison4);
                        string sPoison5 = IntToString(nPoison5);
                        string sFinalP1 = sMake + sPoison1;
                        string sFinalP2 = sMake + sPoison2;
                        string sFinalP3 = sMake + sPoison3;
                        string sFinalP4 = sMake + sPoison4;
                        string sFinalP5 = sMake + sPoison5;

                        DestroyObject(GetItemPossessedBy(oPC, sBottle));
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                        if ((nResult > 9) && (nResult < 30))
                        {
                            object oYuk = CreateItemOnObject(sFinalP1, oPC, 1);
                            SetIdentified(oYuk, TRUE);
                        }
                        else if ((nResult > 29) && (nResult < 40))
                        {
                            object oYuk = CreateItemOnObject(sFinalP2, oPC, 1);
                            SetIdentified(oYuk, TRUE);
                        }
                        else if ((nResult > 39) && (nResult < 50))
                        {
                            object oYuk = CreateItemOnObject(sFinalP3, oPC, 1);
                            SetIdentified(oYuk, TRUE);
                        }
                        else if ((nResult > 59) && (nResult < 60))
                        {
                            object oYuk = CreateItemOnObject(sFinalP4, oPC, 1);
                            SetIdentified(oYuk, TRUE);
                        }
                        else if (nResult > 59)
                        {
                            object oYuk = CreateItemOnObject(sFinalP5, oPC, 1);
                            SetIdentified(oYuk, TRUE);
                        }
                        FloatingTextStringOnCreature("You have created a " + sMake2 + ".", oPC, FALSE);
                    }

                    // They had to roll to succeed
                    if (nSkill > nNeed)
                    {
                    }
                    else
                    {
                        int iCurrent = GetLocalInt(oBook, "alchemy_raise");
                        int iNew = iCurrent + 1;
                        SetLocalInt(oBook, "alchemy_raise", iNew);
                        if (iCurrent >= 4)
                        {
                            int nUp = nSkill + 1;
                            SetLocalInt(oBook, "alchemy_raise", 1);
                            SendMessageToPC(oPC, "Your Alchemy skill has improved.");
                            SetLocalInt(oBook, "alchemy", nUp);
                        }
                    }
                }
            }
        }

        // If the PC has not reagent, say this...
        else
        {
            FloatingTextStringOnCreature("You need " + sReagent2 + " to make this.", oPC, FALSE);
        }
    }

    // If the PC has not empty bottle, say this...
    else
    {
        FloatingTextStringOnCreature("You need an " + sBottle2 + " to make " + sMake2 + ".", oPC, FALSE);
    }
}
