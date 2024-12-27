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
                sSayThis = "Two of those pig heads where waiting by the hole.";
                break;
            case 2:
                sSayThis = "He went into the Citadel and we haven't seen him since.";
                break;
            case 3:
                sSayThis = "I'll bet you this scroll that he doesn't make it through Daclor's Crossing.";
                break;
            case 4:
                sSayThis = "We I killed one, smoke rose from the body.";
                break;
            case 5:
                sSayThis = "I think there are five witches.";
                break;
            case 6:
                sSayThis = "If we go in a group, it would be safe.";
                break;
            case 7:
                sSayThis = "He raised that dragon all by herself.";
                break;
            case 8:
                sSayThis = "Those blasted plant men are hard to kill.";
                break;
            case 9:
                sSayThis = "We can try going into that keep.  If you are ready.";
                break;
            case 10:
                sSayThis = "Some more wine here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
