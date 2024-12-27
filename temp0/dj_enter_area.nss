// Marks the PCs current zone
#include "nw_i0_tool"

void main()
{
    object oPC = GetEnteringObject();

    if (GetIsPC(oPC) == TRUE)
    {
        ExecuteScript("dj_check_god", OBJECT_SELF);
        DelayCommand(2.0, ExecuteScript("dj_map", OBJECT_SELF));
        DelayCommand(5.0, ExecuteScript("dj_map", OBJECT_SELF));
        ExecuteScript("dj_day_penalty", OBJECT_SELF);
        ExecuteScript("dj_abilities2", OBJECT_SELF);
        DelayCommand(5.0, ExecuteScript("dj_save_loc", oPC));

        // FIX THE RACIAL TYPE ENCHANTED ITEMS /////////////////////////////////////////
        if ((GetLocalInt(oPC, "enchrace") == 0) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_ANIMAL) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_FEY) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_ELF) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_GNOME) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFELF) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFLING) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HALFORC) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMAN) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMANOID_GOBLINOID) ||
            (GetLocalInt(oPC, "enchrace") == IP_CONST_RACIALTYPE_HUMANOID_ORC))
        {
            {
                int nRandom = d12(1);
                if (nRandom == 1) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_ABERRATION); }
                else if (nRandom == 2) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_BEAST); }
                else if (nRandom == 3) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_CONSTRUCT); }
                else if (nRandom == 4) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_DRAGON); }
                else if (nRandom == 5) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_GIANT); }
                else if (nRandom == 6) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_HUMANOID_MONSTROUS); }
                else if (nRandom == 7) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_UNDEAD); }
                else if (nRandom == 8) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_HUMANOID_REPTILIAN); }
                else if (nRandom == 9) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_MAGICAL_BEAST); }
                else if (nRandom == 10) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_OUTSIDER); }
                else if (nRandom == 11) { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_VERMIN); }
                else { SetLocalInt(oPC, "enchrace", IP_CONST_RACIALTYPE_ELEMENTAL); }
            }
        }
        ////////////////////////////////////////////////////////////////////////////////

        if (GetLevelByClass(CLASS_TYPE_DRUID, oPC) > 0)
        {
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), -50);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -50);
        }
        else if (GetLevelByClass(CLASS_TYPE_RANGER, oPC) > 0)
        {
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), -50);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -50);
        }
        else if (GetSubRace(oPC) == "Sylvan")
        {
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), -50);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -50);
        }
        else if (GetSubRace(oPC) == "Sprite")
        {
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), 100);
            AdjustReputation(oPC, GetObjectByTag("fac_animal"), -50);
            AdjustReputation(oPC, GetObjectByTag("fac_animalhost"), -50);
        }
    }
}
