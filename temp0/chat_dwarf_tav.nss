string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iRollTen = d10(1);
int iTalkFlag = 0;

void main()
{
    ExecuteScript("nw_c2_default1", OBJECT_SELF);
    if (d100(1) > 71) //Gives this script a 30% chance of completing
    {
        //Its execution.  Call it my anti-spam code.  (c:
        if (iRollTen != 0) //Just in case a 0 slips in though I don't think
        {
            //It's possible.
            switch (iRollTen) //Jump to the rolled statement number.
            {
            case 1:
                sSayThis = "We lost him in those crypts up there.";
                break;
            case 2:
                sSayThis = "Those dogmen came out of nowhere.  We barely escaped.";
                break;
            case 3:
                sSayThis = "That troll killed my friend.";
                break;
            case 4:
                sSayThis = "Wrok is no ordinary hill giant.  Something has cursed him.";
                break;
            case 5:
                sSayThis = "Rest up.  We will face Daclor again.";
                break;
            case 6:
                sSayThis = "I'll bet you 30 gold that he doesn't make it.";
                break;
            case 7:
                sSayThis = "No one dares enter the Citadel.";
                break;
            case 8:
                sSayThis = "We could head to the Depths, if you are up to it.";
                break;
            case 9:
                sSayThis = "Then he said, kneel before me...";
                break;
            case 10:
                sSayThis = "Another ale over here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
