// This will make crates, chests, ect...respawn when destroyed.
void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE);

//This is for digging up treasure
#include "nw_i0_tool"

void main()
{
    object oPC = GetItemActivator();
    location lMe = GetLocation(oPC);
    int nWhere = GetLocalInt(oPC, "treasureup");

    if (nWhere > 0)
    {
        DelayCommand(1.0, AssignCommand(oPC, PlaySound("as_cv_mineshovl2")));
        DelayCommand(3.0, CreateObject2(OBJECT_TYPE_PLACEABLE, "chest_goodies", lMe, FALSE));
        DelayCommand(4.0, FloatingTextStringOnCreature("I found it!", oPC, TRUE));
        SetLocalInt(oPC, "treasureup", 0);
    }

    else
    {
        FloatingTextStringOnCreature("There is nothing to dig here.", oPC, FALSE);
    }
}

void CreateObject2(int nObjectType, string sTemplate, location lLocation, int bUseAppearAnimation = TRUE)
{
    CreateObject(nObjectType, sTemplate, lLocation, bUseAppearAnimation);
    return;
}
