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
                sSayThis = "A quickling came into the grove the other day.";
                break;
            case 2:
                sSayThis = "That owlbear almost squashed me dead.";
                break;
            case 3:
                sSayThis = "I'll bet you 10 gold he doesn't make it to the swamp.";
                break;
            case 4:
                sSayThis = "He was captured by those ogrillons.  Poor soul.";
                break;
            case 5:
                sSayThis = "I'll need some reagents before we go hunting.";
                break;
            case 6:
                sSayThis = "Rhaizhizth's castle is high on the western cliffs.";
                break;
            case 7:
                sSayThis = "I made it in the hole just before he could grab me.";
                break;
            case 8:
                sSayThis = "Those little tree people are not as fragile as they look.";
                break;
            case 9:
                sSayThis = "I told him not to go out there...";
                break;
            case 10:
                sSayThis = "Another ale over here!";
                break;
            } //End Switch Statement
            SpeakString(sSayThis, iTalkVolume); //Make the NPC talk
        } //End If Statement
    } //End If Statement
} //End Main
