void main()
{
    object oPC = GetPCSpeaker();

    // Get the object
    object oItem = GetItemInSlot(INVENTORY_SLOT_BOOTS, oPC);

    // What it would cost to insure
    int nCost = GetLocalInt(OBJECT_SELF, "cost_ins");

    // Get the cost of the item
    int nItem = GetGoldPieceValue(oItem);

    // Set the price for insurance
    int nPrice = nItem / nCost;

    // Get the PC's total gold
    int nGold = GetGold(oPC);

    // Get the name of the item being insured
    string sItem = GetName(oItem);

    if (oItem != OBJECT_INVALID)
    {
        if (GetLocalInt(oItem, "insured") == 1)
        {
            SendMessageToPC(oPC, "You don't need to insure the " + sItem + ".");
        }

        else
        {
            if (nGold >= nPrice)
            {
                SendMessageToPC(oPC, "The " + sItem + " is now insured.");
                AssignCommand(oPC, TakeGoldFromCreature(nPrice, oPC, TRUE));
                SetLocalInt(oItem, "insured", 1);
            }
            else
            {
                SendMessageToPC(oPC, "You need to have " + IntToString(nPrice) + " gold to insure the " + sItem + ".");
            }
        }
    }

    else
    {
        SendMessageToPC(oPC, "You need to choose an item to insure.");
    }
}
