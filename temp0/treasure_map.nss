void main()
{
object oPC = GetItemActivator();
object oMap = GetItemActivated();
int nIntel = GetAbilityScore(oPC, ABILITY_INTELLIGENCE);
AssignCommand (oPC, ActionPlayAnimation (ANIMATION_FIREFORGET_READ));

    if (nIntel >= 17){
        object oMap2 = CreateItemOnObject("treasure_map2", oPC, 1);
        int nWhere = d20(1);
        SetLocalInt(oMap2, "treasure", nWhere);
        FloatingTextStringOnCreature("You have successfully deciphered the map.", oPC, FALSE);
        DestroyObject(oMap);}
    else if ((nIntel >= 12) && (nIntel <= 16)){
        {int nRandom = d4(1);
            if (nRandom == 1){
                FloatingTextStringOnCreature("You cannot make out the map.  Frustrated, you throw it away.", oPC, FALSE);
                DestroyObject(oMap);}
            else {
                object oMap2 = CreateItemOnObject("treasure_map2", oPC, 1);
                int nWhere = d20(1);
                SetLocalInt(oMap2, "treasure", nWhere);
                FloatingTextStringOnCreature("You have successfully deciphered the map.", oPC, FALSE);
                DestroyObject(oMap);}}}
    else if (nIntel <= 11){
        {int nRandom = d2(1);
            if (nRandom == 1){
                FloatingTextStringOnCreature("You cannot make out the map.  Frustrated, you throw it away.", oPC, FALSE);
                DestroyObject(oMap);}
            else {
                object oMap2 = CreateItemOnObject("treasure_map2", oPC, 1);
                int nWhere = d20(1);
                SetLocalInt(oMap2, "treasure", nWhere);
                FloatingTextStringOnCreature("You have successfully deciphered the map.", oPC, FALSE);
                DestroyObject(oMap);}}}

}
