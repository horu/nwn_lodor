string sSayThis;
int iTalkVolume = TALKVOLUME_TALK;
int iRollTen = d10(1);
int iTalkFlag = 0;
void main()
{
ExecuteScript("nw_c2_default1", OBJECT_SELF);
if(d100(1) > 71)            //Gives this script a 30% chance of completing
    {                       //Its execution.  Call it my anti-spam code.  (c:
    if(iRollTen != 0)       //Just in case a 0 slips in though I don't think
        {                   //It's possible.
        switch(iRollTen)    //Jump to the rolled statement number.
            {
            case 1:
            sSayThis = "We showed those Drogos a thing or two.";
            break;
            case 2:
            sSayThis = "We don't want to get caught by Shira.  We will travel the Depths.";
            break;
            case 3:
            sSayThis = "Horfilad Manor?  I hear it is void of riches.";
            break;
            case 4:
            sSayThis = "Dont' worry.  I got a map of the entire maze.";
            break;
            case 5:
            sSayThis = "They say that Dracz is drunk with power.  That he may return.";
            break;
            case 6:
            sSayThis = "I'll bet you 50 gold he will find the temple.";
            break;
            case 7:
            sSayThis = "I think Glomarin built it.  Don't know about the creatures though.";
            break;
            case 8:
            sSayThis = "Some say Puril is more powerful than Malad.";
            break;
            case 9:
            sSayThis = "We didn't know that Trandugar was still in there.";
            break;
            case 10:
            sSayThis = "If we work together...we can get past the ruins.";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
