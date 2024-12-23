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
            sSayThis = "Just keep asking her for wine.  She'll let you in.";
            break;
            case 2:
            sSayThis = "That mushroom came alive and attacked us.";
            break;
            case 3:
            sSayThis = "Those ships sunk in the cove many years ago.";
            break;
            case 4:
            sSayThis = "We have safe passage through the Under Passage.";
            break;
            case 5:
            sSayThis = "I think that blue crystal has possessed him.";
            break;
            case 6:
            sSayThis = "There are gazers there.  We can't get through.";
            break;
            case 7:
            sSayThis = "I think Glomarin built it.  Don't know about the creatures though.";
            break;
            case 8:
            sSayThis = "Those ruins must be important.  They keep bringing Trandugar back to life.";
            break;
            case 9:
            sSayThis = "We should have not used those seeds.  Those cyclops dwell up there.";
            break;
            case 10:
            sSayThis = "Some speak of a vault past the gazer cave.";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
