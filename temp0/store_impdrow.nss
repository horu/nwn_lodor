// This trades magic scrolls for gems
#include "nw_i0_tool"
#include "x0_i0_treasure"
string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iTalkFlag = 0;

void main()
{
    object oPC = GetPCSpeaker();

    // Check to see if PC has any gems
    if ((HasItem(oPC, "NW_IT_GEM001")) || (HasItem(oPC, "NW_IT_GEM007")) || (HasItem(oPC, "NW_IT_GEM002")) || (
        HasItem(oPC, "NW_IT_GEM004")) || (HasItem(oPC, "NW_IT_GEM014")) || (HasItem(oPC, "NW_IT_GEM003")) || (
        HasItem(oPC, "NW_IT_GEM015")) || (HasItem(oPC, "NW_IT_GEM013")) || (HasItem(oPC, "NW_IT_GEM011")) || (
        HasItem(oPC, "NW_IT_GEM010")) || (HasItem(oPC, "NW_IT_GEM008")) || (HasItem(oPC, "NW_IT_GEM009")) || (HasItem(
        oPC,
        "NW_IT_GEM005")) || (HasItem(oPC, "NW_IT_GEM006")) || (HasItem(oPC, "NW_IT_GEM012")))
    {
        // Destroy the gem that is traded
        {
            if (HasItem(oPC, "NW_IT_GEM001"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM001"));
            }
            else if (HasItem(oPC, "NW_IT_GEM007"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM007"));
            }
            else if (HasItem(oPC, "NW_IT_GEM002"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM002"));
            }
            else if (HasItem(oPC, "NW_IT_GEM004"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM004"));
            }
            else if (HasItem(oPC, "NW_IT_GEM014"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM014"));
            }
            else if (HasItem(oPC, "NW_IT_GEM003"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM003"));
            }
            else if (HasItem(oPC, "NW_IT_GEM015"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM015"));
            }
            else if (HasItem(oPC, "NW_IT_GEM013"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM013"));
            }
            else if (HasItem(oPC, "NW_IT_GEM011"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM011"));
            }
            else if (HasItem(oPC, "NW_IT_GEM010"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM010"));
            }
            else if (HasItem(oPC, "NW_IT_GEM008"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM008"));
            }
            else if (HasItem(oPC, "NW_IT_GEM009"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM009"));
            }
            else if (HasItem(oPC, "NW_IT_GEM005"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM005"));
            }
            else if (HasItem(oPC, "NW_IT_GEM006"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM006"));
            }
            else if (HasItem(oPC, "NW_IT_GEM012"))
            {
                DestroyObject(GetItemPossessedBy(oPC, "NW_IT_GEM012"));
            }
        }
        // Good Faction
        if ((GetReputation(OBJECT_SELF, oPC) < 50) && (GetReputation(OBJECT_SELF, oPC) > 34))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                // Gets Nothing
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreateArcaneScroll(oPC, oPC, 1);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                CreateArcaneScroll(oPC, oPC, 2);
            }
        }


        // Better Faction
        else if ((GetReputation(OBJECT_SELF, oPC) < 80) && (GetReputation(OBJECT_SELF, oPC) > 49))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                CreateArcaneScroll(oPC, oPC, 1);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreateArcaneScroll(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                CreateArcaneScroll(oPC, oPC, 2);
            }
        }
        // Best Faction
        else if ((GetReputation(OBJECT_SELF, oPC) < 101) && (GetReputation(OBJECT_SELF, oPC) > 79))
        {
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD)
            {
                CreateArcaneScroll(oPC, oPC, 2);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL)
            {
                CreateArcaneScroll(oPC, oPC, 3);
            }
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
            {
                CreateArcaneScroll(oPC, oPC, 3);
            }
        }
        // If the PC has no gems, say this...
    }
    else
    {
        sSayThis = "Hmmm.  You have no gems to trade.";
        SpeakString(sSayThis, iTalkVolume);
    }
}
