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
            sSayThis = "We face Daclor.  He strong and kill friends.";
            break;
            case 2:
            sSayThis = "Give me more drink!";
            break;
            case 3:
            sSayThis = "I try to make map of jungle.  I can make no map.";
            break;
            case 4:
            sSayThis = "We sneak past Tarak.  Get to desert.";
            break;
            case 5:
            sSayThis = "He take Grogor to big tower.  Tower is very bad.";
            break;
            case 6:
            sSayThis = "I think this shiny stone say you can't.";
            break;
            case 7:
            sSayThis = "Little man came here.  Little man got eaten.";
            break;
            case 8:
            sSayThis = "We will face him in battle together.";
            break;
            case 9:
            sSayThis = "Then he breath fire at him...";
            break;
            case 10:
            sSayThis = "More food to eat here!";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
