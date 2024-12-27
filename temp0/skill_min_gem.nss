//This is for the mining skill in Frostbite
//There are jewels in there.
/*
NW_IT_GEM001      7    //Greenstone
NW_IT_GEM007      8    //Malachite
NW_IT_GEM002     10    //Fire Agate
NW_IT_GEM004     20    //Phenalope
NW_IT_GEM014     20    //Aventurine
NW_IT_GEM003     40    //Amethyst

NW_IT_GEM015     50    //Fluorspar
NW_IT_GEM013    145    //Alexandrite
NW_IT_GEM011    120    //Garnet
NW_IT_GEM010    250    //Topaz

NW_IT_GEM008   1000    //Sapphire
NW_IT_GEM009   1500    //Fire Opal
NW_IT_GEM005   2000    //Diamond
NW_IT_GEM006   3000    //Ruby
NW_IT_GEM012   4000    //Emerald

Blue Light Gem      x2_it_lightgem001
Green Light Gem     x2_it_lightgem005
Orange Light Gem    x2_it_lightgem006
Purple Light Gem    x2_it_lightgem003
Red Light Gem       x2_it_lightgem004
White Light Gem     x2_it_lightgem007
Yellow Light Gem    x2_it_lightgem002
*/
#include "nw_i0_tool"

void main()
{
    object oPC = GetItemActivator();
    object oBook = GetItemPossessedBy(oPC, "faction_report");
    object oArea = GetNearestObjectByTag("trg_mining", oPC);
    int nMining = GetLocalInt(oBook, "mining");
    int nRoll = d100(1);
    int nMineable = GetLocalInt(oArea, "mineable");
    int nMinemod = nMineable + 1;

    if (nMineable < 10)
    {
        if ((nMining >= 50) && (nMining <= 69))
        {
            SetLocalInt(oArea, "mineable", nMinemod);
            {
                int nRandom = d10(1);
                if (nRandom == 1)
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM001", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a greenstone and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM007", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some malachite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM002", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a fire agate and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM004", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a phenalope and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM014", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up an aventuring and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM003", oPC, 1);
                            FloatingTextStringOnCreature("You dug up an amethyst and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else
                {
                    FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);
                }
            }
        }


        else if ((nMining >= 70) && (nMining <= 99))
        {
            SetLocalInt(oArea, "mineable", nMinemod);
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 4))
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM001", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a greenstone and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM007", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some malachite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM002", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a fire agate and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM004", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a phenalope and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM014", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up an aventuring and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM003", oPC, 1);
                            FloatingTextStringOnCreature("You dug up an amethyst and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else if (nRandom == 4)
                {
                    {
                        int nRandom = d4(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM015", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fluorspar and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM013", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some alexandrite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM011", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a garnet and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM010", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a topaz and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else
                {
                    FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);
                }
            }
        }


        else if ((nMining >= 100) && (nMining <= 149))
        {
            SetLocalInt(oArea, "mineable", nMinemod);
            {
                int nRandom = d10(1);
                if ((nRandom > 0) && (nRandom < 6))
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM001", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a greenstone and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM007", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some malachite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM002", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a fire agate and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM004", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a phenalope and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM014", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up an aventuring and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM003", oPC, 1);
                            FloatingTextStringOnCreature("You dug up an amethyst and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else if ((nRandom > 5) && (nRandom < 8))
                {
                    {
                        int nRandom = d4(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM015", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fluorspar and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM013", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some alexandrite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM011", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a garnet and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM010", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a topaz and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else if (nRandom == 4)
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM008", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a sapphire and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM009", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fire opal and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM005", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a diamond and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM006", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a ruby and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM008", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a sapphire and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM012", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a emerald and put it in your pack.", oPC, FALSE);
                        }
                    }
                    int nCurrent = GetLocalInt(oBook, "mine_raise");
                    int nNew = nCurrent + 1;
                    SetLocalInt(oBook, "mine_raise", nNew);
                    if (nCurrent >= 4)
                    {
                        int nSkill = nMining + 1;
                        SetLocalInt(oBook, "mine_raise", 1);
                        SendMessageToPC(oPC, "Your Mining skill has improved.");
                        SetLocalInt(oBook, "mining", nSkill);
                    }
                    else
                    {
                    }
                }
                else
                {
                    FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);
                }
            }
        }


        else if (nMining >= 150)
        {
            SetLocalInt(oArea, "mineable", nMinemod);
            {
                int nRandom = d10(1);
                if (nRandom < 4)
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM001", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a greenstone and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM007", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some malachite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM002", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a fire agate and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM004", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a phenalope and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM014", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up an aventuring and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM003", oPC, 1);
                            FloatingTextStringOnCreature("You dug up an amethyst and put it in your pack.", oPC, FALSE);
                        }
                    }
                }
                else if ((nRandom > 3) && (nRandom < 7))
                {
                    {
                        int nRandom = d4(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM015", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fluorspar and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM013", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up some alexandrite and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM011", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a garnet and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM010", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a topaz and put it in your pack.", oPC, FALSE);
                        }
                    }
                }
                else if ((nRandom > 6) && (nRandom < 9))
                {
                    {
                        int nRandom = d6(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("NW_IT_GEM008", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a sapphire and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("NW_IT_GEM009", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fire opal and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("NW_IT_GEM005", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a diamond and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("NW_IT_GEM006", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a ruby and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("NW_IT_GEM008", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a sapphire and put it in your pack.", oPC, FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("NW_IT_GEM012", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a emerald and put it in your pack.", oPC, FALSE);
                        }
                    }
                }
                else if (nRandom == 9)
                {
                    {
                        int nRandom = d8(1);
                        if (nRandom == 1)
                        {
                            CreateItemOnObject("x2_it_lightgem001", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a blue light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 2)
                        {
                            CreateItemOnObject("x2_it_lightgem005", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a green light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 3)
                        {
                            CreateItemOnObject("x2_it_lightgem006", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a orange light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 4)
                        {
                            CreateItemOnObject("x2_it_lightgem003", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a purple light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 5)
                        {
                            CreateItemOnObject("x2_it_lightgem004", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a red light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 6)
                        {
                            CreateItemOnObject("x2_it_lightgem007", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a white light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 7)
                        {
                            CreateItemOnObject("x2_it_lightgem002", oPC, 1);
                            FloatingTextStringOnCreature(
                                "You dug up a yellow light gem and put it in your pack.",
                                oPC,
                                FALSE);
                        }
                        else if (nRandom == 8)
                        {
                            CreateItemOnObject("NW_IT_GEM009", oPC, 1);
                            FloatingTextStringOnCreature("You dug up a fire opal and put it in your pack.", oPC, FALSE);
                        }
                    }
                }
                else
                {
                    FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);
                }
            }
        }
    }
    else
    {
        SetLocalInt(oArea, "mineset", 1);
        FloatingTextStringOnCreature("There are no gems here to mine.", oPC, FALSE);
    }
}
