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
            sSayThis = "Drub killed my friend during the last moon.";
            break;
            case 2:
            sSayThis = "Where do you think that hole leads to?";
            break;
            case 3:
            sSayThis = "We went to check out that battlefield.  That was a mistake.";
            break;
            case 4:
            sSayThis = "I tried to get to Brushwood.  Miradir's guards were too strong.";
            break;
            case 5:
            sSayThis = "Where do you think that witch lives?";
            break;
            case 6:
            sSayThis = "When it hatched...it attacked us.  Just throw them away.";
            break;
            case 7:
            sSayThis = "That wizard gets his goods from Faraldor somehow.";
            break;
            case 8:
            sSayThis = "The forest is too dense.  How can we get to Brakal?";
            break;
            case 9:
            sSayThis = "If we had a rope we could have checked it out.";
            break;
            case 10:
            sSayThis = "He wanted to trade these strange crystals.  They felt like ice.";
            break;
            } //End Switch Statement
        SpeakString(sSayThis, iTalkVolume);       //Make the NPC talk
        }  //End If Statement
    }  //End If Statement
}  //End Main
