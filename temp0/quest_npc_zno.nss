//This is the answer to the NPC is no or some other option
#include "x0_i0_treasure"
#include "nw_i0_plot"

void main()
{
    object oPC = GetPCSpeaker();
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    int nLevel = GetHitDice(oPC);
    int nXP = GetXP(oPC);

    // QUEST 1A  --  Drow Ant Quest
    if (GetTag(OBJECT_SELF) == "nilas_cit_1")
    {
        int nGold = GetLocalInt(oQuest, "qs1a");
        int nCash = nGold - 1;
        int nAdXP = nGold * 3;
        GiveGoldToCreature(oPC, nCash);
        int nXP = GetXP(oPC);
        int nNewXP = nXP + nAdXP;
        if (GetHitDice(oPC) < 6) { SetXP(oPC, nNewXP); }
        SetLocalInt(oQuest, "qs1a", 1);
    }

    // QUEST 1B  --  The Vampire Quest
    else if (GetTag(OBJECT_SELF) == "ld_vasestra")
    {
        DelayCommand(2.0, AdjustReputation(oPC, GetObjectByTag("fac_vampire"), -100));
        DelayCommand(2.0, AssignCommand(oPC, PlaySound("as_mg_telepout1")));
        DelayCommand(2.0, AssignCommand(oPC, JumpToObject(GetWaypointByTag("vamp_getoutn"))));
        string sText = "You may leave here with your life then.";
        SetLocalInt(oQuest, "qs1b", 5);
        ActionSpeakString(sText);
    }

    // QUEST 1E  --  Grogor Manticore Pelt Quest
    else if (GetTag(OBJECT_SELF) == "grogor_cit_4")
    {
        if ((HasItem(oPC, "manticore_pelt")) == TRUE)
        {
            string sText = "I thank you.";
            ActionSpeakString(sText);
            int nPelts = GetNumItems(oPC, "manticore_pelt");
            object oPerson = GetObjectByTag("lodor_lvl5");
            int nXP = GetXP(oPC);
            if (GetHitDice(oPC) < 8)
            {
                DelayCommand(2.0, SetXP(oPC, nXP + nPelts * 5));
            }
            object oItem2 = GetFirstItemInInventory(oPC);
            while (GetIsObjectValid(oItem2))
            {
                if (GetTag(oItem2) == "manticore_pelt")
                {
                    GenerateLowTreasure(oPerson, oPC);
                    DestroyObject(oItem2);
                }
                oItem2 = GetNextItemInInventory(oPC);
            }
        }
        else
        {
            string sText = "You have no pelts!";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1F  --  Crystal Grinder Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLU")
    {
        AdjustReputation(oPC, GetObjectByTag("fac_drgblue"), -100);
        string sText = "You will regret your choice!";
        SetLocalInt(oQuest, "qs1f", 4);
        ActionSpeakString(sText);
        ActionAttack(oPC);
    }

    // QUEST 1H  --  Magic Recharge Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_BLK")
    {
        AdjustReputation(oPC, GetObjectByTag("fac_drgblack"), -100);
        string sText = "You will regret your choice!";
        SetLocalInt(oQuest, "qs1h", 9);
        ActionSpeakString(sText);
        ActionAttack(oPC);
    }

    // QUEST 1L  --  Minotaur Quest
    else if (GetTag(OBJECT_SELF) == "LD_SPHINX_FR")
    {
        if ((GetItemPossessedBy(oPC, "ench_boot_1") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_2") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_3") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_4") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_5") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_6") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_7") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_8") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_9") != OBJECT_INVALID) ||
            (GetItemPossessedBy(oPC, "ench_boot_10") != OBJECT_INVALID))
        {
            int nReward1 = nLevel * 50;
            int nReward2 = nLevel * 113;
            GiveXPToCreature(oPC, nReward1);
            GiveGoldToCreature(oPC, nReward2);
            string sText = "Very well. The secret stays with me.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1l", 2);
            if (GetItemPossessedBy(oPC, "ench_boot_1") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_1"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_2") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_2"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_3") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_3"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_4") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_4"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_5") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_5"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_6") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_6"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_7") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_7"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_8") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_8"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_9") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_9"));
            }
            else if (GetItemPossessedBy(oPC, "ench_boot_10") != OBJECT_INVALID)
            {
                DestroyObject(GetItemPossessedBy(oPC, "ench_boot_10"));
            }
        }
        else
        {
            string sText = "Hmmmm. Where are the boots?";
            ActionSpeakString(sText);
        }
    }

    // QUEST 1M  --  Ogre Quest
    else if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL")
    {
        int nReward1 = nLevel * 100;
        int nReward2 = nXP + nReward1;
        int nReward3 = nLevel * 113;
        SetXP(oPC, nReward2);
        GiveGoldToCreature(oPC, nReward3);
        string sText = "Very well. There will be no story told.";
        ActionSpeakString(sText);
        SetLocalInt(oQuest, "qs1l", 4);
    }

    // QUEST 1O  --  Sprite Quest
    else if (GetTag(OBJECT_SELF) == "qs1o_wizard")
    {
        if (GetItemPossessedBy(oPC, "cyclops_eye") != OBJECT_INVALID)
        {
            int nReward1 = nLevel * 100;
            int nReward2 = nXP + nReward1;
            int nReward3 = nLevel * 113;
            SetXP(oPC, nReward2);
            GiveGoldToCreature(oPC, nReward3);
            string sText = "Very well. The secret stays with me.";
            ActionSpeakString(sText);
            SetLocalInt(oQuest, "qs1o", 2);
        }
        else
        {
            string sText = "Hmmmm. I thought you had the eye?";
            ActionSpeakString(sText);
        }
    }
}
