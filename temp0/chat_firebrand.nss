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
            sSayThis = "Those beetles really slow down the mining.";
            break;
            case 2:
            sSayThis = "Dwarves live in the mountain nearby.";
            break;
            case 3:
            sSayThis = "He did return.  He said it was filled with demons.";
            break;
            case 4:
            sSayThis = "Those beasties make good hunting.";
            break;
            case 5:
            sSayThis = "That stinking Drider was waiting out the door.";
            break;
            case 6:
            sSayThis = "There is some crypts I found in the Scorn.";
            break;
            case 7:
            sSayThis = "I think the Citadel is responsible for the war.";
            break;
            case 8:
            sSayThis = "I don't want to go to the surface.";
            break;
            case 9:
            sSayThis = "He said he was lost for days in some maze.";
            break;
            case 10:
            sSayThis = "Another drink over here!";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
