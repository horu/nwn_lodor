void main()
{
object oPC = GetPCSpeaker();
object oHammer = GetItemInSlot(INVENTORY_SLOT_ARMS, oPC);
SetLocalInt(oHammer, "smith", 3);
}
