// Turns off the PC grave digging
void main()
{
    object oPC = GetExitingObject();

    if (GetIsPC(oPC))
    {
        SetLocalInt(oPC, "digging", 0);
    }
}
