// Removes the PC from the safe rest area
void main()
{
    object oPC = GetExitingObject();

    if (GetIsPC(oPC))
    {
        if (GetTag(OBJECT_SELF) == "trg_safe_restz")
        {
        }
        else { SendMessageToPC(oPC, "You have left the area for safe rest."); }
        SetLocalInt(oPC, "restallow", 0);
    }
}
