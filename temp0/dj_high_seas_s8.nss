//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{

object oPC = GetPCSpeaker();

// Brushwood Docks to Hidden Grove
if (GetTag(OBJECT_SELF) == "ship_brown"){
        return TRUE;}

    else {return FALSE;}
}
