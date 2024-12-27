// This sets the INT for the quest to begin
void main()
{
    object oPC = GetPCSpeaker();
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    // QUEST 1B  --  The Vampire Quest
    if (GetTag(OBJECT_SELF) == "vampire_book")
    {
        SetLocalInt(oQuest, "qs1b", 1);
    }

    // QUEST 1C  --  Enter Firebrand Quest
    if (GetTag(OBJECT_SELF) == "ld_fireb_pillar")
    {
        SetLocalInt(oQuest, "qs1c", 1);
    }

    // QUEST 1H  --  Magic Item Recharge Quest
    if (GetTag(OBJECT_SELF) == "qs1h_tome")
    {
        SetLocalInt(oQuest, "qs1h", 1);
    }
    if (GetStringLeft(GetTag(OBJECT_SELF), 9) == "LD_SPHINX")
    {
        SetLocalInt(oQuest, "qs1h", 3);
    }
    if (GetTag(OBJECT_SELF) == "aldur_cit_8")
    {
        SetLocalInt(oQuest, "qs1h", 4);
    }

    // QUEST 1K  --  Magic Boots
    if (GetTag(OBJECT_SELF) == "qs1k_citizen")
    {
        SetLocalInt(oQuest, "qs1k", 2);
    }

    // QUEST 1M  --  Ogre Quest
    if (GetTag(OBJECT_SELF) == "LD_DRAGON_SIL")
    {
        SetLocalInt(oQuest, "qs1m", 1);
    }

    // QUEST 1N  --  Magic Seeds
    if (GetTag(OBJECT_SELF) == "brodak_glbook")
    {
        SetLocalInt(oQuest, "qs1n", 1);
    }
}
