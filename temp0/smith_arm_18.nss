void main()
{
object oPC = GetPCSpeaker();
object oArmor = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
int nAppear = GetItemAppearance(oArmor, ITEM_APPR_TYPE_ARMOR_MODEL, ITEM_APPR_ARMOR_MODEL_RTHIGH);
if (nAppear > 13){
   int nNewApr = 0;
   object oItem = CopyItemAndModify(oArmor, ITEM_APPR_TYPE_ARMOR_MODEL, ITEM_APPR_ARMOR_MODEL_RTHIGH, nNewApr, TRUE);
   DestroyObject(oArmor, 1.0);
   DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CHEST)));}
else {
   int nNewApr = nAppear + 1;
   object oItem = CopyItemAndModify(oArmor, ITEM_APPR_TYPE_ARMOR_MODEL, ITEM_APPR_ARMOR_MODEL_RTHIGH, nNewApr, TRUE);
   DestroyObject(oArmor, 1.0);
   DelayCommand(2.0, AssignCommand(oPC, ActionEquipItem(oItem, INVENTORY_SLOT_CHEST)));}
}
