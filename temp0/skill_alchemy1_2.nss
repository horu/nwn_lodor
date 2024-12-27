//This is for creating the crystals
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
                FloatingTextStringOnCreature("You are not skilled enough to make this.", oPC, FALSE);
            }

            else
            {
                // If failed the roll
                if (nResult < nNeed)
                {
                    object oReagent = GetItemPossessedBy(oPC, sReagent);
                    int nCount = GetItemStackSize(oReagent);
                    int nNewR = nCount - 1;
                    if (nCount > 1)
                    {
                        SetItemStackSize(oReagent, nNewR);
                    }
                    else
                    {
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                    }
                    FloatingTextStringOnCreature("You failed to make the crystals.", oPC, FALSE);
                }
                // If successful
                else if (nResult >= nNeed)
                {
                    DestroyObject(GetItemPossessedBy(oPC, sBottle));
                    object oReagent = GetItemPossessedBy(oPC, sReagent);
                    int nCount = GetItemStackSize(oReagent);
                    int nNewR = nCount - 1;
                    if (nCount > 1)
                    {
                        SetItemStackSize(oReagent, nNewR);
                    }
                    else
                    {
                        DestroyObject(GetItemPossessedBy(oPC, sReagent));
                    }
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
        }

        // If the PC has not reagent, say this...
        else
        {
            FloatingTextStringOnCreature("You need a " + sReagent2 + " to make this.", oPC, FALSE);
        }
    }

    // If the PC has not empty bottle, say this...
    else
    {
        FloatingTextStringOnCreature("You need a " + sBottle2 + " to make " + sMake2 + ".", oPC, FALSE);
    }
}
