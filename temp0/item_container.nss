#include "NW_O2_CONINCLUDE"
#include "x0_i0_treasure"
void main()
{
object oPC = GetLastKiller();
location lSpot = GetLocation(OBJECT_SELF);
object oFaction = GetItemPossessedBy(oPC, "faction_report");

    {int nRandom = d6(1);
        if (nRandom == 1){
            CreateObject(OBJECT_TYPE_ITEM, "x2_it_cmat_ironw", lSpot, FALSE);}
        else if (nRandom == 2){
            CreateObject(OBJECT_TYPE_ITEM, "x2_it_cmat_elmw", lSpot, FALSE);}
        else if (nRandom == 3){
            CreateObject(OBJECT_TYPE_ITEM, "x2_it_cmat_oakw", lSpot, FALSE);}
        else {}}

if (GetLocalInt(OBJECT_SELF, "opened") == 1){}
else {

if (GetTag(OBJECT_SELF) == "lodor_barrel_low"){
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_barrel");
    }

else if (GetTag(OBJECT_SELF) == "lodor_crate"){
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_crate");
    }

else if (GetTag(OBJECT_SELF) == "dj_full_wagon"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_wagonf");
    }

else if (GetTag(OBJECT_SELF) == "lodor_crate2"){
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_crate2");
    }

else if (GetTag(OBJECT_SELF) == "vamp_armoire"){
    if (GetSubRace(oPC) != "Vampire"){GenerateLowTreasure(oPC, OBJECT_SELF);}
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_vampa");
    }

else if (GetTag(OBJECT_SELF) == "miradir_chest"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradir");
    }

else if (GetTag(OBJECT_SELF) == "miradir_chest2"){
GenerateHighTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradir2");
    }

else if (GetTag(OBJECT_SELF) == "horfilad_chest"){
GenerateMediumTreasure(oPC, OBJECT_SELF);
GenerateMediumTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_horfchst");
    }

else if (GetTag(OBJECT_SELF) == "miradir_chest3"){
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradir3");
    }

else if (GetTag(OBJECT_SELF) == "gnoll_chest"){
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_gnollchst");
    }

else if (GetTag(OBJECT_SELF) == "miradir_crate"){
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradir4");
    }

else if (GetTag(OBJECT_SELF) == "miradir_armoire"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_miradir5");
    }

else if (GetTag(OBJECT_SELF) == "dracz_armoire"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_draczarm");
    }

else if (GetTag(OBJECT_SELF) == "zaltos_armoire"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_zaltosarm");
    }

else if (GetTag(OBJECT_SELF) == "ld_broke_wagon"){
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_brokewgon");
    }

else if (GetTag(OBJECT_SELF) == "brakal_chest"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_brakalchst");
    }

else if (GetTag(OBJECT_SELF) == "ld_wheelbarrow"){
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_wheelbrow");
    }

else if (GetTag(OBJECT_SELF) == "secret_chest"){
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateHighTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_secrtchst");
    }

else if (GetTag(OBJECT_SELF) == "vrugar_barrel"){
GenerateLowTreasure(oPC, OBJECT_SELF);
SendMessageToPC(oPC, "Your faction with the Vrugar Orcs is worse.");
int iLevel = GetLocalInt(oFaction, "orcs");
int nFaction = iLevel - 5;
SetLocalInt(oFaction, "orcs", nFaction);
AdjustReputation(oPC, GetObjectByTag("fac_orcs"), -100);
AdjustReputation(oPC, GetObjectByTag("fac_orcs"), nFaction);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_vrugarb");
    }

else if (GetTag(OBJECT_SELF) == "vrugar_crate"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
SendMessageToPC(oPC, "Your faction with the Vrugar Orcs is worse.");
int iLevel = GetLocalInt(oFaction, "orcs");
int nFaction = iLevel - 5;
SetLocalInt(oFaction, "orcs", nFaction);
AdjustReputation(oPC, GetObjectByTag("fac_orcs"), -100);
AdjustReputation(oPC, GetObjectByTag("fac_orcs"), nFaction);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_vrugarc");
    }

else if (GetTag(OBJECT_SELF) == "drogo_barrel"){
GenerateLowTreasure(oPC, OBJECT_SELF);
SendMessageToPC(oPC, "Your faction with the Drogo Hobbits is worse.");
int iLevel = GetLocalInt(oFaction, "drogo");
int nFaction = iLevel - 5;
SetLocalInt(oFaction, "drogo", nFaction);
AdjustReputation(oPC, GetObjectByTag("fac_drogo"), -100);
AdjustReputation(oPC, GetObjectByTag("fac_drogo"), nFaction);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_drogob");
    }

else if (GetTag(OBJECT_SELF) == "drogo_crate"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
SendMessageToPC(oPC, "Your faction with the Drogo Hobbits is worse.");
int iLevel = GetLocalInt(oFaction, "drogo");
int nFaction = iLevel - 5;
SetLocalInt(oFaction, "drogo", nFaction);
AdjustReputation(oPC, GetObjectByTag("fac_drogo"), -100);
AdjustReputation(oPC, GetObjectByTag("fac_drogo"), nFaction);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_drogoc");
    }

else if (GetTag(OBJECT_SELF) == "horfilad_armoire"){
GenerateLowTreasure(oPC, OBJECT_SELF);
GenerateLowTreasure(oPC, OBJECT_SELF);
CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lSpot, FALSE, "spw_horfarm");
    }



}
}
