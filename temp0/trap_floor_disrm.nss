// This disarms the nearby trap
void main()
{
    object oPC = GetPCSpeaker();
    object oTrap = GetNearestObjectByTag("trap_object", oPC);
    int nDC = GetLocalInt(oTrap, "level");
    int nSkill = GetSkillRank(SKILL_DISABLE_TRAP, oPC);
    int nExp = nDC; // * 2;
    int nDice = d20(1);
    int nTotal = nDice + nSkill;
    int nFound = GetLocalInt(oPC, "trapfind");
    int nSet = GetLocalInt(oTrap, "trapped");

    if (nFound == 0)
    {
        FloatingTextStringOnCreature("You don't see any traps nearby.", oPC, FALSE);
    }
    else
    {
        if (nSet == 0)
        {
            if (nTotal > nDC)
            {
                FloatingTextStringOnCreature("You successfully disarmed the trap.", oPC, FALSE);
                if (nSkill >= nDC)
                {
                }
                else { GiveXPToCreature(oPC, nExp); }
                SetLocalInt(oTrap, "norun", 1);
                SetLocalInt(oTrap, "trapped", 1);
            }
            else
            {
                FloatingTextStringOnCreature("You failed to disarm the trap.", oPC, FALSE);
                SetLocalInt(oTrap, "norun", 1);
                SetLocalInt(oTrap, "trapped", 2);
                ExecuteScript("trap_floor_fail", OBJECT_SELF);
            }
        }
        else if (nSet == 1)
        {
            FloatingTextStringOnCreature("The trap is already disarmed.", oPC, FALSE);
        }
        else if (nSet == 2)
        {
            FloatingTextStringOnCreature("The trap has been tampered with and cannot be disarmed.", oPC, FALSE);
        }
    }
}
