//This is for the mining skill
#include "nw_i0_tool"
void main()
{
object oPC = GetItemActivator();
object oBook = GetItemPossessedBy(oPC, "faction_report");
object oArea = GetNearestObjectByTag("trg_mining", oPC);
int nMining = GetLocalInt(oBook, "mining");
int nRoll = d100(1);
int nMineable = GetLocalInt(oArea, "mineable");
int nMinemod = nMineable + 1;

if (nMineable < 10){

if ((nMining >=0) && (nMining <= 9)){
    SetLocalInt(oArea, "mineable", nMinemod);
    {int nRandom = d20(1);
        if (nRandom == 1){
            CreateItemOnObject("x2_it_cmat_iron", oPC, 1);
            FloatingTextStringOnCreature("You dug up some iron and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if (nRandom == 2){
            CreateItemOnObject("x2_it_cmat_steel", oPC, 1);
            FloatingTextStringOnCreature("You dug up some steel and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else {
            FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);}
    }
}


else if ((nMining >=10) && (nMining <= 49)){
    SetLocalInt(oArea, "mineable", nMinemod);
    if (nMining > nRoll){
    {int nRandom = d12(1);
        if ((nRandom >= 1) && (nRandom <=4)){
            CreateItemOnObject("x2_it_cmat_iron", oPC, 1);
            FloatingTextStringOnCreature("You dug up some iron and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if ((nRandom >= 5) && (nRandom <=8)){
            CreateItemOnObject("x2_it_cmat_steel", oPC, 1);
            FloatingTextStringOnCreature("You dug up some steel and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if (nRandom == 9){
            CreateItemOnObject("x2_it_cmat_adam", oPC, 1);
            FloatingTextStringOnCreature("You dug up some adamantine and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}}}
    else {
        FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);}}


else if ((nMining >=50) && (nMining <= 99)){
    SetLocalInt(oArea, "mineable", nMinemod);
    if (nMining > nRoll){
    {int nRandom = d12(1);
        if ((nRandom >= 1) && (nRandom <=8)){
            CreateItemOnObject("x2_it_cmat_iron", oPC, 1);
            FloatingTextStringOnCreature("You dug up some iron and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if ((nRandom >= 9) && (nRandom <=12)){
            CreateItemOnObject("x2_it_cmat_steel", oPC, 1);
            FloatingTextStringOnCreature("You dug up some steel and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if ((nRandom >= 13) && (nRandom <= 15)){
            CreateItemOnObject("x2_it_cmat_adam", oPC, 1);
            FloatingTextStringOnCreature("You dug up some adamantine and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}
        else if (nRandom == 16){
            CreateItemOnObject("x2_it_cmat_mith", oPC, 1);
            FloatingTextStringOnCreature("You dug up some mithral and put it in your pack.", oPC, FALSE);
            int nCurrent = GetLocalInt(oBook, "mine_raise");
            int nNew = nCurrent + 1;
            SetLocalInt(oBook, "mine_raise", nNew);
                if (nCurrent >= 4){
                    int nSkill = nMining + 1;
                    SetLocalInt(oBook, "mine_raise", 1);
                    SendMessageToPC(oPC, "Your Mining skill has improved.");
                    SetLocalInt(oBook, "mining", nSkill);}
                else {}}}}
    else {
        FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);}}


else if (nMining >= 100){
    SetLocalInt(oArea, "mineable", nMinemod);
    if (nMining > nRoll){
    {int nRandom = d10(1);
        if (nRandom == 1){
        CreateItemOnObject("x2_it_cmat_iron", oPC, 1);
        FloatingTextStringOnCreature("You dug up some iron and put it in your pack.", oPC, FALSE);}
        else if (nRandom == 2){
        CreateItemOnObject("x2_it_cmat_steel", oPC, 1);
        FloatingTextStringOnCreature("You dug up some steel and put it in your pack.", oPC, FALSE);}
        else if (nRandom == 3){
        CreateItemOnObject("x2_it_cmat_adam", oPC, 1);
        FloatingTextStringOnCreature("You dug up some adamantine and put it in your pack.", oPC, FALSE);}
        else {
        CreateItemOnObject("x2_it_cmat_mith", oPC, 1);
        FloatingTextStringOnCreature("You dug up some mithral and put it in your pack.", oPC, FALSE);}}}
    else {
        FloatingTextStringOnCreature("You failed to dig up anything useful.", oPC, FALSE);}}


}

else {
    SetLocalInt(oArea, "mineset", 1);
    FloatingTextStringOnCreature("There is no ore here to mine.", oPC, FALSE);}
}
