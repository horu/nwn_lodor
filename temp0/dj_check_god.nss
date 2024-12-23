// Checks the Deity for the PC
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();
object oInfo = GetItemPossessedBy(oPC, "faction_report");
object oRingL = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
object oRingR = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);
int nGod = GetLocalInt(oInfo, "godlove");

if (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0){
    if (GetDeity(oPC) == "Torm"){
        //Do Nothing
        }
    else {
        SetDeity(oPC, "");
        ExecuteScript("dj_remove_god", OBJECT_SELF);}}

else if (GetLevelByClass(CLASS_TYPE_SHIFTER, oPC) > 0){
    if(nGod > 0){
        //Do Nothing
        }
    else {
        SetDeity(oPC, "");
        ExecuteScript("dj_remove_god", OBJECT_SELF);}}

else {
////////////////////////////////////////////////////////////////////////////////
        if (GetDeity(oPC) == "Belulas"){
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL){
                if(nGod > 0){
                    if(GetStringLeft(GetTag(oRingL),16)=="POW_ring_belulas"){
                        //Do Nothing
                    }
                    else if(GetStringLeft(GetTag(oRingR),16)=="POW_ring_belulas"){
                        //Do Nothing
                    }
                    else {
                        SetDeity(oPC, "");
                        ExecuteScript("dj_remove_god", OBJECT_SELF);
                    }
            }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Puril"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),14)=="POW_ring_puril"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),14)=="POW_ring_puril"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Somry"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),14)=="POW_ring_somry"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),14)=="POW_ring_somry"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Oweodd"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),15)=="POW_ring_oweodd"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),15)=="POW_ring_oweodd"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Rimyr"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),14)=="POW_ring_rimyr"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),14)=="POW_ring_rimyr"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Shyvaa"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),15)=="POW_ring_shyvaa"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),15)=="POW_ring_shyvaa"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Unur"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),13)=="POW_ring_unur"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),13)=="POW_ring_unur"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Fradoc"){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),15)=="POW_ring_fradoc"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),15)=="POW_ring_fradoc"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);
            }}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Calyril"){
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_NEUTRAL){
                if(nGod > 0){
                    if(GetStringLeft(GetTag(oRingL),16)=="POW_ring_calyril"){
                        //Do Nothing
                        }
                    else if(GetStringLeft(GetTag(oRingR),16)=="POW_ring_calyril"){
                        //Do Nothing
                        }
                    else {
                        SetDeity(oPC, "");
                        ExecuteScript("dj_remove_god", OBJECT_SELF);
                        }
                }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else if (GetAlignmentLawChaos(oPC) == ALIGNMENT_NEUTRAL){
                if(nGod > 0){
                    if(GetStringLeft(GetTag(oRingL),16)=="POW_ring_calyril"){
                        //Do Nothing
                        }
                    else if(GetStringLeft(GetTag(oRingR),16)=="POW_ring_calyril"){
                        //Do Nothing
                        }
                    else {
                        SetDeity(oPC, "");
                        ExecuteScript("dj_remove_god", OBJECT_SELF);
                        }
                }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Malad"){
            if (GetAlignmentGoodEvil(oPC) == ALIGNMENT_EVIL){
                if(nGod > 0){
                    if(GetStringLeft(GetTag(oRingL),14)=="POW_ring_malad"){
                        //Do Nothing
                    }
                    else if(GetStringLeft(GetTag(oRingR),14)=="POW_ring_malad"){
                        //Do Nothing
                    }
                    else {
                        SetDeity(oPC, "");
                        ExecuteScript("dj_remove_god", OBJECT_SELF);
                    }
            }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Uronia"){
            if (GetAlignmentLawChaos(oPC) == ALIGNMENT_LAWFUL){
            if(nGod > 0){
                if(GetStringLeft(GetTag(oRingL),15)=="POW_ring_uronia"){
                    //Do Nothing
                }
                else if(GetStringLeft(GetTag(oRingR),15)=="POW_ring_uronia"){
                    //Do Nothing
                }
                else {
                    SetDeity(oPC, "");
                    ExecuteScript("dj_remove_god", OBJECT_SELF);
                }
            }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Torm"){
            if (GetLevelByClass(CLASS_TYPE_DIVINECHAMPION, oPC) > 0){
                // Do Nothing
                }
            else if ((GetAlignmentGoodEvil(oPC) == ALIGNMENT_GOOD) && (GetAlignmentLawChaos(oPC) == ALIGNMENT_LAWFUL)){
                if(nGod > 0){
                    if(GetStringLeft(GetTag(oRingL),13)=="POW_ring_torm"){
                        //Do Nothing
                        }
                    else if(GetStringLeft(GetTag(oRingR),13)=="POW_ring_torm"){
                        //Do Nothing
                        }
                    else {
                        SetDeity(oPC, "");
                        ExecuteScript("dj_remove_god", OBJECT_SELF);
                        }
                }
                else {
                SetDeity(oPC, "");
                ExecuteScript("dj_remove_god", OBJECT_SELF);
                }}
            else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}}
////////////////////////////////////////////////////////////////////////////////
        else if (GetDeity(oPC) == "Vardolos"){}
////////////////////////////////////////////////////////////////////////////////
        else {
            SetDeity(oPC, "");
            ExecuteScript("dj_remove_god", OBJECT_SELF);}
}}
