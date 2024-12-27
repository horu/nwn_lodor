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
                sSayThis = "Maybe we can find a way through the catacombs.";
                break;
            case 2:
                sSayThis = "Those bandits are good with their bows.";
                break;
            case 3:
                sSayThis = "Last time I saw him, he was digging up bodies.";
                break;
            case 4:
                sSayThis = "I thought they were scorpions, but the upper part was man.";
                break;
            case 5:
                sSayThis = "You could see that brass dragon in a distance.";
                break;
            case 6:
                sSayThis = "He said the sphinx would not help him.";
                break;
            case 7:
                sSayThis = "Do you think the legends are true?  About the skull?";
                break;
            case 8:
                sSayThis = "May Oweodd protect that poor soul.";
                break;
            case 9:
                sSayThis = "Those fools went in that hole anyway.";
                break;
            case 10:
                sSayThis = "Another ale over here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
