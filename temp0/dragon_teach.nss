// Teach the pet dragon by giving XP
void main()
{
    object oPC = GetPCSpeaker();
    int nXP = GetXP(oPC);
    int nXPnew = nXP - 1000;
    object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");
    int nLearn = GetLocalInt(oWhistle, "petxp");

    if (nLearn >= 5000000)
    {
        FloatingTextStringOnCreature("Your pet has learned all they will learn at this age.", oPC, FALSE);
    }
    else if (nXP >= 1000)
    {
        int nDXPnew = nLearn + 1000;
        SetLocalInt(oWhistle, "petxp", nDXPnew);
        SetXP(oPC, nXPnew);
    }
    else
    {
        FloatingTextStringOnCreature("You know nothing that your pet does not already know.", oPC, FALSE);
    }
}
