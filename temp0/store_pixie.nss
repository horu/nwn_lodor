// This trades jewelry for items based on popularity
#include "nw_i0_tool"
#include "x0_i0_treasure"
string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iTalkFlag = 0;

void main()
{
    object oPC = GetPCSpeaker();

    // Check to see if PC has any jewelry
    if ((HasItem(oPC, "NW_IT_MNECK020")) || (HasItem(oPC, "NW_IT_MNECK021")) || (HasItem(oPC, "NW_IT_MNECK022")) || (
        HasItem(oPC, "NW_IT_MNECK023")) || (HasItem(oPC, "NW_IT_MRING021")) || (HasItem(oPC, "NW_IT_MRING022")))
    {
        // Destroy the jewelry that is traded
        {
            if (HasItem(oPC, "NW_IT_MNECK020"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MNECK020"));
            }
            else if (HasItem(oPC, "NW_IT_MNECK021"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MNECK021"));
            }
            else if (HasItem(oPC, "NW_IT_MNECK022"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MNECK022"));
            }
            else if (HasItem(oPC, "NW_IT_MNECK023"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MNECK023"));
            }
            else if (HasItem(oPC, "NW_IT_MRING021"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MRING021"));
            }
            else if (HasItem(oPC, "NW_IT_MRING022"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_MRING022"));
            }
        }
        // Good Faction
        if ((GetReputation(OBJECT_SELF, oPC) < 50) && (GetReputation(OBJECT_SELF, oPC) > 34))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                CreatePotion(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreatePotion(oPC, oPC, 1);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                // Gets Nothing
            }
        }


        // Better Faction
        else if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 49))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                CreateItemOnObject("NW_IT_MSMLMISC19", oPC, 1);
                CreatePotion(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreatePotion(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                CreatePotion(oPC, oPC, 1);
            }
        }
        // Best Faction
        else if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                CreateItemOnObject("NW_IT_MSMLMISC19", oPC, 1);
                SetLocalInt(oPC, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", oPC); //Lodor Specific Items
                ExecuteScript("loot_new_list", oPC); //Lodor Specific Items
                CreatePotion(oPC, oPC, 1);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreateItemOnObject("NW_IT_MSMLMISC19", oPC, 1);
                SetLocalInt(oPC, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", oPC); //Lodor Specific Items
                CreatePotion(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                CreatePotion(oPC, oPC, 1);
                SetLocalInt(oPC, "newloot1", 1); //Select a Potion From
                ExecuteScript("loot_new_list", oPC); //Lodor Specific Items
            }
        }
        // If the PC has no jewelry, say this...
    }
    else
    {
        sSayThis = "Hmmm.  You have no necklaces or rings to trade.";
        SpeakString(sSayThis, iTalkVolume);
    }
}
