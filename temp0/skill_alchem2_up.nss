void main()
{
    object oPC = GetPCSpeaker();
    int nBrew = GetLocalInt(oPC, "alch_pick2");
    int nAmount = nBrew + 1;

    if (nAmount > 25)
    {
        SetLocalInt(oPC, "alch_pick2", 25);
    }

    else
    {
        SetLocalInt(oPC, "alch_pick2", nAmount);
    }
}
