void main()
{
    object oPC = GetPCSpeaker();
    object oQuest = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    string sName = GetLocalString(oQuest, "qs1jpart1");
    string sThing = GetLocalString(oQuest, "qs1jpart2");
    string sPlace = GetLocalString(oQuest, "qs1jpart5");

    string sSayThis = "" + sName + " told me they seek the " + sThing + " in " + sPlace + ".  Can you remember that?";
    SendMessageToPC(
        oPC,
        "" + sName + " told me they seek the " + sThing + " in " + sPlace + ".  Can you remember that?");
    SpeakString(sSayThis);
}
