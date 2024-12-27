// This checks over the PC and sees if they are worthy of joining this god.
#include "nw_i0_tool"

void main()
{
    object oPC = GetPCSpeaker();
    object oInfo = GetItemPossessedBy(oPC, "faction_report");
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);
    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_WORSHIP, 1.0, 5.0));
    ExecuteScript("altar_remove", OBJECT_SELF);
    SetLocalInt(oQuest, "qs1d", 0);

    // Beginning of the section for Calyril /////////////////////////////////////////////////////
    if (GetTag(OBJECT_SELF) == "altar_calyril")
    {
        if ((GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL) || (GetAlignmentLawChaos(oPC) == ALIGNMENT_NEUTRAL))
        {
            if (GetHitDice(oPC) <= 4)
            {
                string sSayThis = "You must first explore life before giving yours to me.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                if ((!HasItem(oPC, "altar_quest_leaf")) == FALSE)
                {
                    SetDeity(oPC, "Calyril");
                    SetLocalInt(oQuest, "qs1d1", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "altar_quest_leaf"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_calyril1", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Calyril. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d1", 1);
                    string sSayThis = "You must first seek the Kelam Leaf in the Vile Bog.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                if ((!HasItem(oPC, "altar_quest_cal1")) == FALSE)
                {
                    SetDeity(oPC, "Calyril");
                    SetLocalInt(oQuest, "qs1d1", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "altar_quest_cal1"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_calyril2", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Calyril. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d1", 1);
                    string sSayThis = "You must first acquire a prize from the Faerie Dragons that live to the north.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                if ((!HasItem(oPC, "altar_quest_cal2")) == FALSE)
                {
                    SetDeity(oPC, "Calyril");
                    SetLocalInt(oQuest, "qs1d1", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "altar_quest_cal2"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_calyril3", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Calyril. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d1", 1);
                    string sSayThis = "You must first acquire the head of a Demon.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                if ((!HasItem(oPC, "alter_qst_cal4")) == FALSE)
                {
                    SetDeity(oPC, "Calyril");
                    SetLocalInt(oQuest, "qs1d1", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_cal4"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_calyril4", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Calyril. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d1", 1);
                    string sSayThis = "You must first slay the Ogre known as Drub.";
                    SpeakString(sSayThis);
                }
            }
        }

        else
        {
            string sSayThis = "Your heart is not worthy of me.";
            SpeakString(sSayThis);
        }
    }

    // Ending of the section for Calyril ///////////////////////////////////////////////////////

    // Beginning of the section for Fradoc /////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_fradoc")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must first explore life before giving yours to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "alter_quest_burlop")) == FALSE)
            {
                SetDeity(oPC, "Fradoc");
                SetLocalInt(oQuest, "qs1d2", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_quest_burlop"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_fradoc1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Fradoc. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d2", 1);
                string sSayThis = "You must first slay the bugbear known as Burlop.  Return here with his head.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "altar_quest_cal3")) == FALSE)
            {
                SetDeity(oPC, "Fradoc");
                SetLocalInt(oQuest, "qs1d2", 0);
                DestroyObject(GetItemPossessedBy(oPC, "altar_quest_cal3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_fradoc2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Fradoc. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d2", 1);
                string sSayThis = "You must defeat the wizard that has polluted the bog.  Bring his skull to me.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "altar_quest_cal5")) == FALSE)
            {
                SetDeity(oPC, "Fradoc");
                SetLocalInt(oQuest, "qs1d2", 0);
                DestroyObject(GetItemPossessedBy(oPC, "altar_quest_cal5"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_fradoc3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Fradoc. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d2", 1);
                string sSayThis = "You must first retrieve the Tablet Of Concealed from Garv the gnoll.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "altar_quest_cal6")) == FALSE)
            {
                SetDeity(oPC, "Fradoc");
                SetLocalInt(oQuest, "qs1d2", 0);
                DestroyObject(GetItemPossessedBy(oPC, "altar_quest_cal6"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_fradoc4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Fradoc. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d2", 1);
                string sSayThis =
                    "You must first take Samtharia's Scroll of Ice Fall from her cold dead hands.  That witch lives to the north.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Fradoc ////////////////////////////////////////////////////////

    // Beginning of the section for Shyvaa /////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_shyvaa")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must brave the cold longer before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "alter_qst_shyva1")) == FALSE)
            {
                SetDeity(oPC, "Shyvaa");
                SetLocalInt(oQuest, "qs1d3", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_shyva1"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_shyvaa1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Shyvaa. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d3", 1);
                string sSayThis = "You must first seek the helm of the late Captain Tork.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "alter_qst_shyva2")) == FALSE)
            {
                SetDeity(oPC, "Shyvaa");
                SetLocalInt(oQuest, "qs1d3", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_shyva2"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_shyvaa2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Shyvaa. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d3", 1);
                string sSayThis = "You must first obtain the Ice Crystal from Zaltos' Fortress.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "gazer_eye")) == FALSE)
            {
                SetDeity(oPC, "Shyvaa");
                SetLocalInt(oQuest, "qs1d3", 0);
                DestroyObject(GetItemPossessedBy(oPC, "gazer_eye"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_shyvaa3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Shyvaa. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d3", 1);
                string sSayThis = "You must bring me the sight of a gazer.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_shyva4")) == FALSE)
            {
                SetDeity(oPC, "Shyvaa");
                SetLocalInt(oQuest, "qs1d3", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_shyva4"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_shyvaa4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Shyvaa. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d3", 1);
                string sSayThis = "You must first bring me the heart of the dragon known as Veeslath.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Shyvaa ////////////////////////////////////////////////////////

    // Beginning of the section for Somry /////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_somry")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must win many battles before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "alter_qst_somry1")) == FALSE)
            {
                SetDeity(oPC, "Somry");
                SetLocalInt(oQuest, "qs1d4", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_somry1"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_somry1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Somry. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d4", 1);
                string sSayThis = "You must first seek the Heart Of The Jungle.  Melagan may have it in his lair.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "ld_troll_blood")) == FALSE)
            {
                SetDeity(oPC, "Somry");
                SetLocalInt(oQuest, "qs1d4", 0);
                DestroyObject(GetItemPossessedBy(oPC, "ld_troll_blood"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_somry2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Somry. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d4", 1);
                string sSayThis = "You must first bring me the blood of a troll.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "alter_qst_somry3")) == FALSE)
            {
                SetDeity(oPC, "Somry");
                SetLocalInt(oQuest, "qs1d4", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_somry3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_somry3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Somry. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d4", 1);
                string sSayThis = "You must first get me Shira's spell book from her cold dead hands.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_somry4")) == FALSE)
            {
                SetDeity(oPC, "Somry");
                SetLocalInt(oQuest, "qs1d4", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_somry4"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_somry4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Somry. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d4", 1);
                string sSayThis = "You must first bring me Daclor's Might.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Somry ////////////////////////////////////////////////////////

    // Beginning of the section for Oweodd /////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_oweodd")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must win many battles before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "reagnt_mephit")) == FALSE)
            {
                SetDeity(oPC, "Oweodd");
                SetLocalInt(oQuest, "qs1d5", 0);
                DestroyObject(GetItemPossessedBy(oPC, "reagnt_mephit"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_oweodd1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Oweodd. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d5", 1);
                string sSayThis = "You must first bring me a mephit's wing.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "alter_qst_oweod2")) == FALSE)
            {
                SetDeity(oPC, "Oweodd");
                SetLocalInt(oQuest, "qs1d5", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_oweod2"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_oweodd2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Oweodd. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d5", 1);
                string sSayThis = "You must bring me the Flaming Eye from Tarak's Fortress.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "alter_qst_oweod3")) == FALSE)
            {
                SetDeity(oPC, "Oweodd");
                SetLocalInt(oQuest, "qs1d5", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_oweod3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_oweodd3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Oweodd. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d5", 1);
                string sSayThis = "You must bring me the Tears of the Temple.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_oweod4")) == FALSE)
            {
                SetDeity(oPC, "Oweodd");
                SetLocalInt(oQuest, "qs1d5", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_oweod4"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_oweodd4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Oweodd. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d5", 1);
                string sSayThis = "You must first bring me the head of Brakal.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Oweodd ////////////////////////////////////////////////////////

    // Beginning of the section for Unur ///////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_unur")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must obtain mindful discipline before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "harpy_egg")) == FALSE)
            {
                SetDeity(oPC, "Unur");
                SetLocalInt(oQuest, "qs1d6", 0);
                DestroyObject(GetItemPossessedBy(oPC, "harpy_egg"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_unur1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Unur. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d6", 1);
                string sSayThis = "You must first bring me a egg of a harpy.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "alter_qst_unur2")) == FALSE)
            {
                SetDeity(oPC, "Unur");
                SetLocalInt(oQuest, "qs1d6", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_unur2"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_unur2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Unur. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d6", 1);
                string sSayThis = "You must bring me the Goblet Of Radrel from beneath the Melagan Ruins.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "alter_qst_unur3")) == FALSE)
            {
                SetDeity(oPC, "Unur");
                SetLocalInt(oQuest, "qs1d6", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_unur3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_unur3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Unur. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d6", 1);
                string sSayThis = "You must bring me the fluid from the elder brain.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_unur4")) == FALSE)
            {
                SetDeity(oPC, "Unur");
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_unur4"));
                SetLocalInt(oInfo, "godlove", 4);
                SetLocalInt(oQuest, "qs1d6", 0);
                CreateItemOnObject("ring_unur4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Unur. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d6", 1);
                string sSayThis = "Eubraith has taken the Sphere of Intellect.  Retrieve it for me.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Unur //////////////////////////////////////////////////////////

    // Beginning of the section for Torm ///////////////////////////////////////////////////////
    if (GetTag(OBJECT_SELF) == "altar_torm")
    {
        if (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0)
        {
            if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                SetDeity(oPC, "Torm");
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_torm1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis = "You are already a child of Torm. Take this ring. Serve me well.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                SetDeity(oPC, "Torm");
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_torm2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis = "You are already a child of Torm. Take this ring. Serve me well.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                SetDeity(oPC, "Torm");
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_torm3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis = "You are already a child of Torm. Take this ring. Serve me well.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                SetDeity(oPC, "Torm");
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_torm4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis = "You are already a child of Torm. Take this ring. Serve me well.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD) && (GetAlignmentLawChaos(oPC) == ALIGNMENT_LAWFUL))
        {
            if (GetHitDice(oPC) <= 4)
            {
                string sSayThis = "You must first explore life before giving yours to me.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                if ((!HasItem(oPC, "alter_qst_torm1")) == FALSE)
                {
                    SetDeity(oPC, "Torm");
                    SetLocalInt(oQuest, "qs1d7", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_torm1"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_torm1", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Torm. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d7", 2);
                    string sSayThis = "You must first slay the evil Horfilad.  Bring his wand to me."; //Horfilad Manor
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                if ((!HasItem(oPC, "alter_qst_torm2")) == FALSE)
                {
                    SetDeity(oPC, "Torm");
                    SetLocalInt(oQuest, "qs1d7", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_torm2"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_torm2", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Torm. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d7", 1);
                    string sSayThis = "You must first brave the Tower of the Damned and find Barkled's Blood.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                if ((!HasItem(oPC, "alter_qst_torm3")) == FALSE)
                {
                    SetDeity(oPC, "Torm");
                    SetLocalInt(oQuest, "qs1d7", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_torm3"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_torm3", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Torm. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d7", 1);
                    string sSayThis = "You must first seek the Stone of the Wise Man from the Vault.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                if ((!HasItem(oPC, "alter_qst_torm4")) == FALSE)
                {
                    SetDeity(oPC, "Torm");
                    SetLocalInt(oQuest, "qs1d7", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_torm4"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_torm4", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Torm. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d7", 1);
                    string sSayThis = "You must first slay the enemy of Aabohz, known as Dracz.  Bring his ear to me.";
                    SpeakString(sSayThis);
                }
            }
        }
        else
        {
            string sSayThis = "Your heart is not worthy of me.";
            SpeakString(sSayThis);
        }
    }

    // Ending of the section for Torm /////////////////////////////////////////////////////////

    // Beginning of the section for Malad /////////////////////////////////////////////////////
    if (GetTag(OBJECT_SELF) == "altar_malad")
    {
        if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
        {
            if (GetHitDice(oPC) <= 4)
            {
                string sSayThis = "You must first explore death before giving your life to me.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                if ((!HasItem(oPC, "alter_qst_malad1")) == FALSE)
                {
                    SetDeity(oPC, "Malad");
                    SetLocalInt(oQuest, "qs1d8", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_malad1"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_malad1", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Malad. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d8", 1);
                    string sSayThis = "You must slay the nixie S'oquar.  Bring his dust to me.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                if ((!HasItem(oPC, "alter_qst_malad2")) == FALSE)
                {
                    SetDeity(oPC, "Malad");
                    SetLocalInt(oQuest, "qs1d8", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_malad2"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_malad2", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Malad. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d8", 1);
                    string sSayThis = "You must bring me the skull of the Fallen priest, Torgal.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                if ((!HasItem(oPC, "alter_qst_malad3")) == FALSE)
                {
                    SetDeity(oPC, "Malad");
                    SetLocalInt(oQuest, "qs1d8", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_malad3"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_malad3", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Malad. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d8", 1);
                    string sSayThis = "You must first get the Eye of Sin from the Brodak Ruins.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                if ((!HasItem(oPC, "alter_qst_malad4")) == FALSE)
                {
                    SetDeity(oPC, "Malad");
                    SetLocalInt(oQuest, "qs1d8", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_malad4"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_malad4", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Malad. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d8", 1);
                    string sSayThis = "You must first slay the Demon of the Well, Radhael.  Bring his hand to me.";
                    //Well of Souls
                    SpeakString(sSayThis);
                }
            }
        }
        else
        {
            string sSayThis = "Your virtues disgust me!  Leave this place!";
            SpeakString(sSayThis);
        }
    }

    // Ending of the section for Malad ///////////////////////////////////////////////////////

    // Beginning of the section for Belulas //////////////////////////////////////////////////
    if (GetTag(OBJECT_SELF) == "altar_belulas")
    {
        if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL)
        {
            if (GetHitDice(oPC) <= 4)
            {
                string sSayThis = "You must obtain mindful discipline before you give your life to me.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                if ((!HasItem(oPC, "alter_qst_belul1")) == FALSE)
                {
                    SetDeity(oPC, "Belulas");
                    SetLocalInt(oQuest, "qs1d9", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_belul1"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_belulas1", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Belulas. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d9", 1);
                    string sSayThis = "You must bring me the heart of the ant queen."; //The Dig
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                if ((!HasItem(oPC, "alter_qst_belul2")) == FALSE)
                {
                    SetDeity(oPC, "Belulas");
                    SetLocalInt(oQuest, "qs1d9", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_belul2"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_belulas2", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Belulas. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d9", 1);
                    string sSayThis = "You must seek the Axe of Sickness from the Stones of Confusion.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                if ((!HasItem(oPC, "alter_qst_belul3")) == FALSE)
                {
                    SetDeity(oPC, "Belulas");
                    SetLocalInt(oQuest, "qs1d9", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_belul3"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_belulas3", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Belulas. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d9", 1);
                    string sSayThis = "The Druzku possess the Tome Of Radhael.  Get it for me before the Garxlo do.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                if ((!HasItem(oPC, "alter_qst_belul4")) == FALSE)
                {
                    SetDeity(oPC, "Belulas");
                    SetLocalInt(oQuest, "qs1d9", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_belul4"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_belulas4", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a servant of Belulas. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d9", 1);
                    string sSayThis = "Seek the dragon known as Rhaizhizth.  Destroy him and bring me his claw.";
                    //Gold Dragon
                    SpeakString(sSayThis);
                }
            }
        }
        else
        {
            string sSayThis = "Your virtues disgust me!  Leave this place!";
            SpeakString(sSayThis);
        }
    }

    // Ending of the section for Belulas ///////////////////////////////////////////////////////

    // Beginning of the section for Puril //////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_puril")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must win many battles before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "alter_qst_puril2")) == FALSE)
            {
                SetDeity(oPC, "Puril");
                SetLocalInt(oQuest, "qs1d10", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_puril2"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_puril1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Puril. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d10", 1);
                string sSayThis = "Seek the ancient crystals in the old city.  Bring them to me.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "alter_qst_puril1")) == FALSE)
            {
                SetDeity(oPC, "Puril");
                SetLocalInt(oQuest, "qs1d10", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_puril1"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_puril2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Puril. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d10", 1);
                string sSayThis = "You must first bring me the Talisman Of The Spider.  The driders have taken it.";
                //This is in THE UNDER PASSAGE
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "alter_qst_puril3")) == FALSE)
            {
                SetDeity(oPC, "Puril");
                SetLocalInt(oQuest, "qs1d10", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_puril3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_puril3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Puril. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d10", 1);
                string sSayThis = "You must bring me the Crown of Doroxt the Fallen."; //The CLIFF OF THE FALLEN
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_puril4")) == FALSE)
            {
                SetDeity(oPC, "Puril");
                SetLocalInt(oQuest, "qs1d10", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_puril4"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_puril4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Puril. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d10", 1);
                string sSayThis = "You must first slay the dragon, Glieglerth.  Bring his written riddles to me.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Puril /////////////////////////////////////////////////////////

    // Beginning of the section for Rimyr //////////////////////////////////////////////////////

    else if (GetTag(OBJECT_SELF) == "altar_rimyr")
    {
        if (GetHitDice(oPC) <= 4)
        {
            string sSayThis = "You must win many battles before you give your life to me.";
            SpeakString(sSayThis);
        }
        else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
        {
            if ((!HasItem(oPC, "alter_qst_rimyr1")) == FALSE)
            {
                SetDeity(oPC, "Rimyr");
                SetLocalInt(oQuest, "qs1d11", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_rimyr1"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_rimyr1", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Rimyr. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d11", 1);
                string sSayThis = "You must first face the vile Baol in combat.";
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
        {
            if ((!HasItem(oPC, "alter_qst_rimyr2")) == FALSE)
            {
                SetDeity(oPC, "Rimyr");
                SetLocalInt(oQuest, "qs1d11", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_rimyr2"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_rimyr2", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Rimyr. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d11", 1);
                string sSayThis = "You must bring me the Sword of Dareg, who was slain by Horfilad.";
                //This is in Horfilad Manor
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
        {
            if ((!HasItem(oPC, "alter_qst_rimyr3")) == FALSE)
            {
                SetDeity(oPC, "Rimyr");
                SetLocalInt(oQuest, "qs1d11", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_rimyr3"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_rimyr3", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Rimyr. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d11", 1);
                string sSayThis = "You must bring me the head of Drigdug."; //The CLIFF OF THE FALLEN
                SpeakString(sSayThis);
            }
        }
        else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
        {
            if ((!HasItem(oPC, "alter_qst_rimyr4")) == FALSE)
            {
                SetDeity(oPC, "Rimyr");
                SetLocalInt(oQuest, "qs1d11", 0);
                DestroyObject(GetItemPossessedBy(oPC, "alter_qst_rimyr4"));
                SetLocalInt(oInfo, "godlove", 4);
                CreateItemOnObject("ring_rimyr4", oPC, 1);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                string sSayThis =
                    "You are now a disciple of Rimyr. Wear this ring and never remove it from your hand. Serve me well.";
                SpeakString(sSayThis);
            }
            else
            {
                SetLocalInt(oQuest, "qs1d11", 1);
                string sSayThis = "You must first slay the dragon, Rauget.";
                SpeakString(sSayThis);
            }
        }
    }
    // Ending of the section for Rimyr /////////////////////////////////////////////////////////

    // Beginning of the section for Uronia /////////////////////////////////////////////////////
    if (GetTag(OBJECT_SELF) == "altar_uronia")
    {
        if (GetAlignmentLawChaos(oPC) == ALIGNMENT_LAWFUL)
        {
            if (GetHitDice(oPC) <= 4)
            {
                string sSayThis = "You must spread the virtue of order before giving me your allegiance.";
                SpeakString(sSayThis);
            }
            else if ((GetHitDice(oPC) >= 5) && (GetHitDice(oPC) <= 9))
            {
                if ((!HasItem(oPC, "alter_qst_uroni1")) == FALSE)
                {
                    SetDeity(oPC, "Uronia");
                    SetLocalInt(oQuest, "qs1d12", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_uroni1"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_uronia1", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Uronia. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d12", 1);
                    string sSayThis = "You must first seek the Summoning Stone from the northeast tower.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 10) && (GetHitDice(oPC) <= 14))
            {
                if ((!HasItem(oPC, "alter_qst_uroni2")) == FALSE)
                {
                    SetDeity(oPC, "Uronia");
                    SetLocalInt(oQuest, "qs1d12", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_uroni2"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_uronia2", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Uronia. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d12", 1);
                    string sSayThis =
                        "You must seek the Cloak of Uronia from once kind ruler of the Dedry Kingdom known as Yarbek.";
                    //Dedry Catacombs
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 15) && (GetHitDice(oPC) <= 19))
            {
                if ((!HasItem(oPC, "alter_qst_uroni3")) == FALSE)
                {
                    SetDeity(oPC, "Uronia");
                    SetLocalInt(oQuest, "qs1d12", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_uroni3"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_uronia3", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Uronia. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d12", 1);
                    string sSayThis = "You must first bring me a stone from the Jarehar pillars.";
                    SpeakString(sSayThis);
                }
            }
            else if ((GetHitDice(oPC) >= 20) && (GetHitDice(oPC) <= 40))
            {
                if ((!HasItem(oPC, "alter_qst_uroni4")) == FALSE)
                {
                    SetDeity(oPC, "Uronia");
                    SetLocalInt(oQuest, "qs1d12", 0);
                    DestroyObject(GetItemPossessedBy(oPC, "alter_qst_uroni4"));
                    SetLocalInt(oInfo, "godlove", 4);
                    CreateItemOnObject("ring_uronia4", oPC, 1);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_BIGBYS_FORCEFUL_HAND), oPC);
                    string sSayThis =
                        "You are now a child of Uronia. Wear this ring and never remove it from your hand. Serve me well.";
                    SpeakString(sSayThis);
                }
                else
                {
                    SetLocalInt(oQuest, "qs1d12", 1);
                    string sSayThis =
                        "Seek the wizard Glomarin and send his soul back to his crystal prison.  Then bring his ring to me.";
                    SpeakString(sSayThis);
                }
            }
        }
        else
        {
            string sSayThis = "You have no sense of order to be my disciple.";
            SpeakString(sSayThis);
        }
    }

    // Ending of the section for Uronia //////////////////////////////////////////////////////////
}
