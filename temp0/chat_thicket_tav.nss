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
                sSayThis = "We can just head back through the Gate.";
                break;
            case 2:
                sSayThis = "Some drow stumbled into Brushwood.  Was he sorry.";
                break;
            case 3:
                sSayThis = "This treasure map says it is all the way across Lodor.";
                break;
            case 4:
                sSayThis = "Maybe he got lost in the Underwood.";
                break;
            case 5:
                sSayThis = "I'll need some reagents before we go.";
                break;
            case 6:
                sSayThis = "I'll bet you 20 gold that he doesn't make it.";
                break;
            case 7:
                sSayThis = "That fool went into the Citadel.";
                break;
            case 8:
                sSayThis = "We should head north if you want to catch up with him.";
                break;
            case 9:
                sSayThis = "I told him not to go in there...";
                break;
            case 10:
                sSayThis = "Another ale over here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
