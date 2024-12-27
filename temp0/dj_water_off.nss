// Makes it so you have to fill flasks next to rivers and wells.
void main()
{
    object oPC = GetEnteringObject();

    if (GetIsPC(oPC))
    {
        SetLocalInt(oPC, "wetallow", 0);
    }
}
