// Pet Dragon Death
#include "nw_i0_tool"
void main()
{
object oPC = GetMaster(OBJECT_SELF);
object oKiller = GetLastKiller();
string sKiller = GetName(GetLastKiller());
object oWhistle = GetItemPossessedBy(oPC, "dragon_whistle");
string sOwner = GetLocalString(OBJECT_SELF, "Owner");

SetLocalInt(oWhistle, "petdead", 1);

if (sKiller == sOwner){
AssignCommand(oKiller, DestroyObject(oWhistle));}
}
