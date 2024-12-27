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
                sSayThis = "Maybe we can find a way through the sewers.";
                break;
            case 2:
                sSayThis = "He was attacked by a bear in Daclor's Crossing.";
                break;
            case 3:
                sSayThis = "Vrugar curses the day we showed up.";
                break;
            case 4:
                sSayThis = "Don't know.  Some say they were once brownies.";
                break;
            case 5:
                sSayThis = "They say he is a vampire now.";
                break;
            case 6:
                sSayThis = "Those pixies had some interesting things.";
                break;
            case 7:
                sSayThis = "The Citadel drove him mad they say.";
                break;
            case 8:
                sSayThis = "I found his body in Nerod Hills.";
                break;
            case 9:
                sSayThis = "I told him the keep was dangerous.";
                break;
            case 10:
                sSayThis = "Another ale over here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
