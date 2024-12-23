// Checks the level of the PCs in Lodor.
// This is used for matching services.
string GetClassLevels(object oPC)
{
    string sClassLevels = "";
    int iClsIdx;
    int iClsType;
    string sClsName;
    int iClsLvl;
    for (iClsIdx = 1; iClsIdx <= 3; iClsIdx++) {
        iClsType = GetClassByPosition(iClsIdx, oPC);
        if (iClsType != CLASS_TYPE_INVALID) {
            switch (iClsType) {
                case CLASS_TYPE_BARBARIAN: sClsName = "Bbn"; break;
                case CLASS_TYPE_BARD: sClsName = "Brd"; break;
                case CLASS_TYPE_CLERIC: sClsName = "Clr"; break;
                case CLASS_TYPE_DRUID: sClsName = "Drd"; break;
                case CLASS_TYPE_FIGHTER: sClsName = "Ftr"; break;
                case CLASS_TYPE_MONK: sClsName = "Mnk"; break;
                case CLASS_TYPE_PALADIN: sClsName = "Pal"; break;
                case CLASS_TYPE_RANGER: sClsName = "Rgr"; break;
                case CLASS_TYPE_ROGUE: sClsName = "Rog"; break;
                case CLASS_TYPE_SORCERER: sClsName = "Sor"; break;
                case CLASS_TYPE_WIZARD: sClsName = "Wiz"; break;
                case CLASS_TYPE_ARCANE_ARCHER: sClsName = "Arc"; break;
                case CLASS_TYPE_BLACKGUARD: sClsName = "Blk"; break;
                case CLASS_TYPE_HARPER: sClsName = "Hrp"; break;
                case CLASS_TYPE_SHADOWDANCER: sClsName = "Shd"; break;
                case CLASS_TYPE_WEAPON_MASTER: sClsName = "Wep"; break;
                case CLASS_TYPE_SHIFTER: sClsName = "Shf"; break;
                case CLASS_TYPE_PALEMASTER: sClsName = "Plm"; break;
                case CLASS_TYPE_DWARVENDEFENDER: sClsName = "Dwv"; break;
                case CLASS_TYPE_DRAGONDISCIPLE: sClsName = "Drg"; break;
                case CLASS_TYPE_DIVINECHAMPION: sClsName = "Chp"; break;
                default: sClsName = "?" + IntToString(iClsType) + "?";
            }
            iClsLvl = GetLevelByClass(iClsType, oPC);

            if (sClassLevels != "") {
                sClassLevels = sClassLevels + "/"; }

            sClassLevels = sClassLevels + IntToString(iClsLvl) + " " + sClsName;
        }
    }
    return sClassLevels + " ";
}
void main()
{
object oUser = GetPCSpeaker();

int iPCTot = 0;  /* total PC's */
string sPCName;
string sPCLevel;
string sPCClass;
string sMessage1;
string sMessage2;
string sReligion;
string sRace;
string sAccount;

object oPC = GetFirstPC();

while (oPC != OBJECT_INVALID)
{
    iPCTot++;
        if (GetSubRace(oPC) == "Drow"){SetLocalString(oPC, "race", "Drow");}
        else if (GetSubRace(oPC) == "Quickling"){SetLocalString(oPC, "race", "Quickling");}
        else if (GetSubRace(oPC) == "Brownie"){SetLocalString(oPC, "race", "Brownie");}
        else if (GetSubRace(oPC) == "Vampire"){SetLocalString(oPC, "race", "Vampire");}
        else if (GetSubRace(oPC) == "Duergar"){SetLocalString(oPC, "race", "Duergar");}
        else if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "race", "Minotaur");}
        else if (GetSubRace(oPC) == "Goblin"){SetLocalString(oPC, "race", "Goblin");}
        else if (GetSubRace(oPC) == "Bugbear"){SetLocalString(oPC, "race", "Bugbear");}
        else if (GetSubRace(oPC) == "Lizardman"){SetLocalString(oPC, "race", "Lizardman");}
        else if (GetSubRace(oPC) == "Kobold"){SetLocalString(oPC, "race", "Kobold");}
        else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "race", "Ogre");}
        else if (GetSubRace(oPC) == "Sylvan"){SetLocalString(oPC, "race", "Sylvan");}
        else if (GetSubRace(oPC) == "Sprite"){SetLocalString(oPC, "race", "Sprite");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_ELF){SetLocalString(oPC, "race", "Elf");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_DWARF){SetLocalString(oPC, "race", "Dwarf");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_HUMAN){SetLocalString(oPC, "race", "Human");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_GNOME){SetLocalString(oPC, "race", "Gnome");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_HALFELF){SetLocalString(oPC, "race", "HalfElf");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_HALFLING){SetLocalString(oPC, "race", "Halfling");}
        else if (GetRacialType(oPC) == RACIAL_TYPE_HALFORC){SetLocalString(oPC, "race", "HalfOrc");}
        if (GetDeity(oPC) != ""){SetLocalString(oPC, "srelig", " [ Worships " + GetDeity(oPC) + " ]");}

        sPCName = "[ " + GetName(oPC) + " ] ";
        sPCLevel = "[ L" + IntToString(GetHitDice(oPC)) + " ] ";
        sPCClass = "[ " + GetClassLevels(oPC) +" ]";
        sRace = "        [ " + GetLocalString(oPC, "race") + " ] ";
        sAccount = "[ " + GetPCPlayerName(oPC) + " ] ";
        sReligion = GetLocalString(oPC, "srelig");
        sMessage1 = sAccount + sPCName + sPCClass;
        sMessage2 = sRace + sReligion;
        SendMessageToPC(oUser, sMessage1);
        SendMessageToPC(oUser, sMessage2);
    oPC = GetNextPC();}

if (iPCTot == 1){
SendMessageToPC(oUser, "There is " + IntToString(iPCTot) + " Adventurer in Lodor");}
else {
SendMessageToPC(oUser, "There are " + IntToString(iPCTot) + " Adventurers in Lodor");}
}
