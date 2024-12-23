// Dragon Resurrect
#include "nw_i0_tool"
void main()
{
object oPC = GetPCSpeaker();
object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");

if (GetLocalInt(oWhistle, "petdead") == 0){
     FloatingTextStringOnCreature("Your dragon is not dead.", oPC, FALSE);}

else {
     if((!HasItem(oPC, "NW_IT_SPDVSCR702")) == FALSE){
          DestroyObject(GetItemPossessedBy(oPC, "NW_IT_SPDVSCR702"));
          SetLocalInt(oWhistle, "petdead", 0);
          ExecuteScript("dragon_whistle", oPC);}
     else if (GetHasSpell(SPELL_RESURRECTION, oPC) == TRUE){
          SetLocalInt(oWhistle, "petdead", 0);
          ExecuteScript("dragon_whistle", oPC);}
     else {
          FloatingTextStringOnCreature("You need a resurrection scroll.", oPC, FALSE);}
}}
