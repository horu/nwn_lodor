#include "x2_inc_itemprop"
void main()
{
    object oItem = GetModuleItemAcquired();
    object oPC = GetModuleItemAcquiredBy();

    if (GetRacialType(oPC) == IP_CONST_RACIALTYPE_FEY){
    if ((GetBaseItemType(oItem) == BASE_ITEM_ARMOR) ||
        (GetBaseItemType(oItem) == BASE_ITEM_BASTARDSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_BATTLEAXE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_BELT) ||
        (GetBaseItemType(oItem) == BASE_ITEM_BOOTS) ||
        (GetBaseItemType(oItem) == BASE_ITEM_BRACER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_CLOAK) ||
        (GetBaseItemType(oItem) == BASE_ITEM_CLUB) ||
        (GetBaseItemType(oItem) == BASE_ITEM_DAGGER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_DIREMACE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_DOUBLEAXE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_GLOVES) ||
        (GetBaseItemType(oItem) == BASE_ITEM_GREATAXE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_GREATSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HALBERD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HANDAXE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HEAVYCROSSBOW) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HEAVYFLAIL) ||
        (GetBaseItemType(oItem) == BASE_ITEM_HELMET) ||
        (GetBaseItemType(oItem) == BASE_ITEM_KAMA) ||
        (GetBaseItemType(oItem) == BASE_ITEM_KATANA) ||
        (GetBaseItemType(oItem) == BASE_ITEM_KUKRI) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LARGESHIELD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LIGHTCROSSBOW) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LIGHTFLAIL) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LIGHTHAMMER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LIGHTMACE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LONGBOW) ||
        (GetBaseItemType(oItem) == BASE_ITEM_LONGSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_MORNINGSTAR) ||
        (GetBaseItemType(oItem) == BASE_ITEM_QUARTERSTAFF) ||
        (GetBaseItemType(oItem) == BASE_ITEM_RAPIER) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SCIMITAR) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SCYTHE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SHORTBOW) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SHORTSPEAR) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SHORTSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SICKLE) ||
        (GetBaseItemType(oItem) == BASE_ITEM_SMALLSHIELD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_TOWERSHIELD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_TWOBLADEDSWORD) ||
        (GetBaseItemType(oItem) == BASE_ITEM_WARHAMMER)){
           if ((GetTag(oItem) == "NW_ARHE001") ||
               (GetTag(oItem) == "NW_ARHE002") ||
               (GetTag(oItem) == "NW_ARHE003")){
             itemproperty iWeight = ItemPropertyWeightReduction(IP_CONST_REDUCEDWEIGHT_40_PERCENT);
             itemproperty iUserac = ItemPropertyLimitUseByRace(IP_CONST_RACIALTYPE_FEY);
             IPSafeAddItemProperty(oItem, iWeight);
             IPSafeAddItemProperty(oItem, iUserac);
             SetStolenFlag(oItem, TRUE);
             SetPlotFlag(oItem, TRUE);}

           else if (GetIsItemPropertyValid(GetFirstItemProperty(oItem))){
             itemproperty iWeight = ItemPropertyWeightReduction(IP_CONST_REDUCEDWEIGHT_40_PERCENT);
             itemproperty iUserac = ItemPropertyLimitUseByRace(IP_CONST_RACIALTYPE_FEY);
             IPSafeAddItemProperty(oItem, iWeight);
             IPSafeAddItemProperty(oItem, iUserac);
             SetStolenFlag(oItem, TRUE);}
           else {
             itemproperty iWeight = ItemPropertyWeightReduction(IP_CONST_REDUCEDWEIGHT_40_PERCENT);
             itemproperty iUserac = ItemPropertyLimitUseByRace(IP_CONST_RACIALTYPE_FEY);
             IPSafeAddItemProperty(oItem, iWeight);
             IPSafeAddItemProperty(oItem, iUserac);
             SetStolenFlag(oItem, TRUE);
             SetPlotFlag(oItem, TRUE);}}}

    if (GetIsPC(GetItemPossessor(oItem))) {
        DeleteLocalInt(oItem, "CT_DESTRUCT_TIME");
    }

    if (GetTag(oItem) == "ld_craft_glove"){
         itemproperty iSmith1 = ItemPropertyBonusFeat(IP_CONST_FEAT_ARMOR_PROF_HEAVY);
         itemproperty iSmith2 = ItemPropertyBonusFeat(IP_CONST_FEAT_ARMOR_PROF_LIGHT);
         itemproperty iSmith3 = ItemPropertyBonusFeat(IP_CONST_FEAT_ARMOR_PROF_MEDIUM);
         IPSafeAddItemProperty(oItem, iSmith1);
         IPSafeAddItemProperty(oItem, iSmith2);
         IPSafeAddItemProperty(oItem, iSmith3);}
}
