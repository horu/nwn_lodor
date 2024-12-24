// Low Level Box Loot List
#include "x0_i0_treasure"
void main()
{

object oPC = GetLastOpenedBy();
object oMonster = GetNearestCreature(CREATURE_TYPE_IS_ALIVE, TRUE, oPC);
location lMonster = GetLocation(oMonster);
location lMe = GetLocation(oPC);
float fDistance = GetDistanceBetweenLocations(lMonster, lMe);
int nDistance = FloatToInt(fDistance);
if ((oMonster != OBJECT_INVALID) && (nDistance < 6) && (GetIsPC(oMonster) == FALSE)){
 effect eBad = GetFirstEffect(oPC);
   while(GetIsEffectValid(eBad)){
      if (GetEffectType(eBad) == EFFECT_TYPE_IMPROVEDINVISIBILITY ||
         GetEffectType(eBad) == EFFECT_TYPE_INVISIBILITY){
            RemoveEffect(oPC, eBad);}
 eBad = GetNextEffect(oPC);}}

DelayCommand(890.0, ExecuteScript("treasure_cleanup", OBJECT_SELF));

    // Set respawntime float to the number of seconds.
    float respawntime = 0.1;
    if (GetLocalInt(OBJECT_SELF,"NW_DO_ONCE") != 0)
    {
       return;
    }
    object oLastOpener = GetLastOpener();
    SetLocalInt(OBJECT_SELF, "opened", 1);
    object oFaction = GetItemPossessedBy(oPC, "faction_report");

    if (d100(2) == 2){CreateItemOnObject("treasure_map", OBJECT_SELF, 1);}

    if (d20(1) == 1){
        SetLocalInt(OBJECT_SELF, "newloot2", 1);     //Select a Reagent From
        ExecuteScript("loot_new_list", OBJECT_SELF);}//Lodor Specific Items
    // sl:
    int loot_cap = 1000 - GetHitDice(oPC)/5;
    SendMessageToPC(GetFirstPC(), IntToString(loot_cap));
    if (d100(1) <= loot_cap){ExecuteScript("loot_ench_arm", OBJECT_SELF);}
    if (d100(1) <= loot_cap){ExecuteScript("loot_ench_wep", OBJECT_SELF);}

    if (GetTag(OBJECT_SELF) == "lodor_barrel_low"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "grandul_tomb"){
        GenerateHighTreasure(oLastOpener, OBJECT_SELF);
        if (d4(1) < 4){ExecuteScript("loot_ench_wep", OBJECT_SELF);}}
    else if (GetTag(OBJECT_SELF) == "lodor_crate"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "dj_full_wagon"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "flayer_box"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "lodor_crate2"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "miradir_chest"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "miradir_armoire"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "dracz_armoire"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "vamp_armoire"){
        if (GetSubRace(oLastOpener) != "Vampire"){}
            GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "brakal_chest"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "ld_corpse"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "toy_box"){
        location lSpawn = GetLocation(OBJECT_SELF);
        {int nRandom = d6(1);
             if (nRandom == 1){
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_clay", lSpawn, FALSE);}
             else if (nRandom == 2){
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_clay", lSpawn, FALSE);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_crystal", lSpawn, FALSE);}
             else if (nRandom == 3){
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  GenerateMediumTreasure(oLastOpener, OBJECT_SELF);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_clay", lSpawn, FALSE);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_crystal", lSpawn, FALSE);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_shroom", lSpawn, FALSE);}
             else if (nRandom == 4){
                  GenerateLowTreasure(oLastOpener, OBJECT_SELF);
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_skel", lSpawn, FALSE);}
             else if (nRandom == 5){
                  CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_drow", lSpawn, FALSE);}}}
    else if (GetTag(OBJECT_SELF) == "zaltos_armoire"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "ld_harpy_hold"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "vrugar_barrel"){
        if (GetSubRace(oLastOpener) != "Vampire"){
        SendMessageToPC(oLastOpener, "Your faction with the Vrugar Orcs is worse.");
        int iLevel = GetLocalInt(oFaction, "orcs");
        int nFaction = iLevel - 5;
        SetLocalInt(oFaction, "orcs", nFaction);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_orcs"), -100);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_orcs"), nFaction);}
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "vrugar_crate"){
        if (GetSubRace(oLastOpener) != "Vampire"){
        SendMessageToPC(oLastOpener, "Your faction with the Vrugar Orcs is worse.");
        int iLevel = GetLocalInt(oFaction, "orcs");
        int nFaction = iLevel - 5;
        SetLocalInt(oFaction, "orcs", nFaction);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_orcs"), -100);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_orcs"), nFaction);}
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "drogo_barrel"){
        if (GetSubRace(oLastOpener) != "Vampire"){
        SendMessageToPC(oLastOpener, "Your faction with the Drogo Hobbits is worse.");
        int iLevel = GetLocalInt(oFaction, "drogo");
        int nFaction = iLevel - 5;
        SetLocalInt(oFaction, "drogo", nFaction);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_drogo"), -100);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_drogo"), nFaction);}
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "drogo_crate"){
        if (GetSubRace(oLastOpener) != "Vampire"){
        SendMessageToPC(oLastOpener, "Your faction with the Drogo Hobbits is worse.");
        int iLevel = GetLocalInt(oFaction, "drogo");
        int nFaction = iLevel - 5;
        SetLocalInt(oFaction, "drogo", nFaction);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_drogo"), -100);
        AdjustReputation(oLastOpener, GetObjectByTag("fac_drogo"), nFaction);}
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "ld_wov_basket"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "LD_SAFE"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "daclor_box"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "horfilad_armoire"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "medusa_urn"){
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);
        GenerateLowTreasure(oLastOpener, OBJECT_SELF);}
    else if (GetTag(OBJECT_SELF) == "food_barrel"){
        {int nRandom = d4(1);
            if (nRandom == 1){
                 CreateItemOnObject("lodoc_meat2", OBJECT_SELF, 2);}
            else if (nRandom == 2){
                 CreateItemOnObject("lodoc_fish", OBJECT_SELF, 2);}
            else if (nRandom == 3){
                 CreateItemOnObject("lodoc_waterr", OBJECT_SELF, 2);}
            else {
                 CreateItemOnObject("lodoc_ration", OBJECT_SELF, 2);}}}
    else if (GetTag(OBJECT_SELF) == "alchemy_barrel"){
        {int nRandom = d8(1);
            if (nRandom == 1){
                SetLocalInt(OBJECT_SELF, "newloot2", 1);     //Select a Reagent From
                ExecuteScript("loot_new_list", OBJECT_SELF); //Lodor Specific Items
                ExecuteScript("loot_new_list", OBJECT_SELF);}
            else if (nRandom == 2){
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);}
            else if (nRandom == 3){
                CreateArcaneScroll(OBJECT_SELF, OBJECT_SELF, 2);}
            else if (nRandom == 4){
                CreatePotion(OBJECT_SELF, OBJECT_SELF, 2);
                SetLocalInt(OBJECT_SELF, "newloot1", 1);      //Select a Potion From
                ExecuteScript("loot_new_list", OBJECT_SELF);} //Lodor Specific Items
            else if (nRandom == 5){
                GenerateLowTreasure(oLastOpener, OBJECT_SELF);}}}












    SetLocalInt(OBJECT_SELF,"NW_DO_ONCE",1);
    ShoutDisturbed();
    // Command added to delay the <span class="highlight">respawn</span>
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "NW_DO_ONCE", 0)));
    AssignCommand(OBJECT_SELF, DelayCommand(respawntime, SetLocalInt(OBJECT_SELF, "opened", 0)));
}
