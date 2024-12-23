//Set the price for the insurance
void main()
{
object oPC = GetPCSpeaker();

// What it would cost to insure
int nCost = 50;
SetLocalInt(OBJECT_SELF, "cost_ins", 50);

//CHECK FOR GOD RING!!!!!!!!!!!!!!!!

// Get the items in the slots
object oItem1 = GetItemInSlot(INVENTORY_SLOT_ARMS, oPC);
object oItem3 = GetItemInSlot(INVENTORY_SLOT_BELT, oPC);
object oItem5 = GetItemInSlot(INVENTORY_SLOT_BOOTS, oPC);
object oItem7 = GetItemInSlot(INVENTORY_SLOT_CHEST, oPC);
object oItem8 = GetItemInSlot(INVENTORY_SLOT_CLOAK, oPC);
object oItem9 = GetItemInSlot(INVENTORY_SLOT_HEAD, oPC);
object oItem10 = GetItemInSlot(INVENTORY_SLOT_LEFTHAND, oPC);
object oItem11 = GetItemInSlot(INVENTORY_SLOT_LEFTRING, oPC);
object oItem12 = GetItemInSlot(INVENTORY_SLOT_NECK, oPC);
object oItem13 = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
object oItem14 = GetItemInSlot(INVENTORY_SLOT_RIGHTRING, oPC);

// Get the cost of the item
int nItem1 = GetGoldPieceValue(oItem1);
int nItem3 = GetGoldPieceValue(oItem3);
int nItem5 = GetGoldPieceValue(oItem5);
int nItem7 = GetGoldPieceValue(oItem7);
int nItem8 = GetGoldPieceValue(oItem8);
int nItem9 = GetGoldPieceValue(oItem9);
int nItem10 = GetGoldPieceValue(oItem10);
int nItem11 = GetGoldPieceValue(oItem11);
int nItem12 = GetGoldPieceValue(oItem12);
int nItem13 = GetGoldPieceValue(oItem13);
int nItem14 = GetGoldPieceValue(oItem14);

// Set the price for insurance
int nCost1 = nItem1 / nCost;
int nCost3 = nItem3 / nCost;
int nCost5 = nItem5 / nCost;
int nCost7 = nItem7 / nCost;
int nCost8 = nItem8 / nCost;
int nCost9 = nItem9 / nCost;
int nCost10 = nItem10 / nCost;
int nCost11 = nItem11 / nCost;
int nCost12 = nItem12 / nCost;
int nCost13 = nItem13 / nCost;
int nCost14 = nItem14 / nCost;

// Set the variables to you see them in the conversation (the cost that is)
SetCustomToken(141,IntToString(nCost1));
SetCustomToken(143,IntToString(nCost3));
SetCustomToken(145,IntToString(nCost5));
SetCustomToken(147,IntToString(nCost7));
SetCustomToken(148,IntToString(nCost8));
SetCustomToken(149,IntToString(nCost9));
SetCustomToken(150,IntToString(nCost10));
SetCustomToken(151,IntToString(nCost11));
SetCustomToken(152,IntToString(nCost12));
SetCustomToken(153,IntToString(nCost13));
SetCustomToken(154,IntToString(nCost14));
SetCustomToken(155, GetName(oItem1));
SetCustomToken(157, GetName(oItem3));
SetCustomToken(159, GetName(oItem5));
SetCustomToken(161, GetName(oItem7));
SetCustomToken(162, GetName(oItem8));
SetCustomToken(163, GetName(oItem9));
SetCustomToken(164, GetName(oItem10));
SetCustomToken(165, GetName(oItem11));
SetCustomToken(166, GetName(oItem12));
SetCustomToken(167, GetName(oItem13));
SetCustomToken(168, GetName(oItem14));


string sSay = "[Insured]";
string sRing = "[No Insurance Needed]";

if (GetLocalInt(oItem1, "insured") == 1){SetCustomToken(169, sSay);} else {SetCustomToken(169, "");}
if (GetLocalInt(oItem3, "insured") == 1){SetCustomToken(170, sSay);} else {SetCustomToken(170, "");}
if (GetLocalInt(oItem5, "insured") == 1){SetCustomToken(171, sSay);} else {SetCustomToken(171, "");}
if (GetLocalInt(oItem7, "insured") == 1){SetCustomToken(172, sSay);} else {SetCustomToken(172, "");}
if (GetLocalInt(oItem8, "insured") == 1){SetCustomToken(173, sSay);} else {SetCustomToken(173, "");}
if (GetLocalInt(oItem9, "insured") == 1){SetCustomToken(174, sSay);} else {SetCustomToken(174, "");}
if (GetLocalInt(oItem10, "insured") == 1){SetCustomToken(175, sSay);} else {SetCustomToken(175, "");}
if (GetLocalInt(oItem11, "insured") == 1){SetCustomToken(176, sSay);} else if (GetStringLeft(GetTag(oItem11),8)=="POW_ring"){SetCustomToken(176, sRing);} else {SetCustomToken(176, "");}
if (GetLocalInt(oItem12, "insured") == 1){SetCustomToken(177, sSay);} else {SetCustomToken(177, "");}
if (GetLocalInt(oItem13, "insured") == 1){SetCustomToken(178, sSay);} else {SetCustomToken(178, "");}
if (GetLocalInt(oItem14, "insured") == 1){SetCustomToken(179, sSay);} else if (GetStringLeft(GetTag(oItem14),8)=="POW_ring"){SetCustomToken(179, sRing);} else {SetCustomToken(179, "");}
}
