//TORCHES BURN OUT
void    ProcessTorches(object oPC)
{
    object  oTorch;
    string  sTorch;
    int     iBurnout;
    int     iBurnoutTime = 200;
    oTorch = GetItemInSlot (INVENTORY_SLOT_LEFTHAND,oPC);
    if (GetIsObjectValid(oTorch))
    {   // player is carrying something in his left hand
        sTorch = GetTag(oTorch);
        if(sTorch == "NW_IT_TORCH001")
        {   // player is carrying a torch in their left hand
            iBurnout = GetLocalInt(oTorch, "burnout");
            if(iBurnout++ > iBurnoutTime)
            {   // torch has burnt out
                SendMessageToPC(oPC, "Your torch fizzles out and dies");
                DestroyObject(oTorch);
            }
            else
            {   // update burnout count on torch
                if (iBurnout == iBurnoutTime - 5)
                {
                    SendMessageToPC(oPC, "Your torch starts to splutter");
                }
                else if (iBurnout == iBurnoutTime - 2)
                {
                    SendMessageToPC(oPC, "Your torch is all but burnt out");
                }
                SetLocalInt(oTorch, "burnout", iBurnout);
            }
        }
    }
}
void main()
{
    object oPC = GetFirstPC();
        while(GetIsObjectValid(oPC) && (GetTag(GetArea(oPC)) != "Welcome") && (GetArea(oPC) != OBJECT_INVALID)) {
            // Keep track of torches
            ProcessTorches(oPC);

            // See if PC has a map (failsafe)
            ExecuteScript("dj_map2", oPC);

            // Set The Death INT If Player Is Alive
            object oInfo = GetItemPossessedBy(oPC, "faction_report");
            if (GetIsDead(oPC) == FALSE){SetLocalInt(oInfo, "ijustdied", 0);}

            // Record HP
            int oHP = GetCurrentHitPoints(oPC);
            int oMax = GetMaxHitPoints(oPC);
            SetLocalInt(oInfo, "maxhp", oMax);
            SetLocalInt(oInfo, "hitpoints", oHP);

            // Record Location
            location lPlace = GetLocation(oPC);
            string sPlace = GetTag(GetArea(oPC));
            SetLocalLocation(oInfo, "iamhere", lPlace);
            SetLocalString(oInfo, "iamherea", sPlace);

            // If dead, pop up a GUI
            if (GetIsDead(oPC)){PopUpGUIPanel(oPC, GUI_PANEL_PLAYER_DEATH);}

            // See if day/night penalties apply for surface world
            object oArea = GetArea(oPC);
            int nDark = GetLocalInt(oPC, "darkness");
            if ((GetSubRace(oPC) == "Duergar") || (GetSubRace(oPC) == "Drow") || (GetSubRace(oPC) == "Vampire")){
                AssignCommand(oPC, ExecuteScript("dj_day_penalty2", OBJECT_SELF));}
        oPC = GetNextPC();}
}
