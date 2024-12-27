// This will give the PC the status of their pet dragon
void main()
{
    object oPC = GetPCSpeaker();
    object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");

    int nPetXP = GetLocalInt(oWhistle, "petxp");

    int nAC = GetAC(OBJECT_SELF);
    int nCHP = GetCurrentHitPoints(OBJECT_SELF);
    int nMHP = GetMaxHitPoints(OBJECT_SELF);

    SendMessageToPC(oPC, "Armor Class = " + IntToString(nAC) + "");
    SendMessageToPC(oPC, "Current Hit Points = " + IntToString(nCHP) + "");
    SendMessageToPC(oPC, "Maximum Hit Points = " + IntToString(nMHP) + "");
    SendMessageToPC(oPC, "Current Learning Points = " + IntToString(nPetXP) + "");

    if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_1")
    {
        SendMessageToPC(oPC, "Learning Level = 1");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_2")
    {
        SendMessageToPC(oPC, "Learning Level = 2");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_3")
    {
        SendMessageToPC(oPC, "Learning Level = 3");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_4")
    {
        SendMessageToPC(oPC, "Learning Level = 4");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_5")
    {
        SendMessageToPC(oPC, "Learning Level = 5");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_6")
    {
        SendMessageToPC(oPC, "Learning Level = 6");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_7")
    {
        SendMessageToPC(oPC, "Learning Level = 7");
    }
    else if (GetStringLeft(GetTag(OBJECT_SELF), 11) == "ld_dragon_8")
    {
        SendMessageToPC(oPC, "Learning Level = 8");
    }
}
