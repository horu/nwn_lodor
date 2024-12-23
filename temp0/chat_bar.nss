string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iRollTen = d10(1);
int iTalkFlag = 0;
void main()
{
if(d100(1) > 71)            //Gives this script a 30% chance of completing
    {                       //Its execution.  Call it my anti-spam code.  (c:
    if(iRollTen != 0)       //Just in case a 0 slips in though I don't think
        {                   //It's possible.
        switch(iRollTen)    //Jump to the rolled statement number.
            {
            case 1:
            sSayThis = "Thanks for saving my life back there.";
            break;
            case 2:
            sSayThis = "What do you think is in that temple?";
            break;
            case 3:
            sSayThis = "What do you mean, you lost the map?";
            break;
            case 4:
            sSayThis = "Maybe we should just head to the barbarian camp.";
            break;
            case 5:
            sSayThis = "Did you see what he did to that lizard?";
            break;
            case 6:
            sSayThis = "How did you get that scar?";
            break;
            case 7:
            sSayThis = "You can see those wisps coming a mile away.";
            break;
            case 8:
            sSayThis = "There is some valley down south I hear.";
            break;
            case 9:
            sSayThis = "I told him not to go in there...";
            break;
            case 10:
            sSayThis = "I'll bet you this sword that he is in that cave.";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
