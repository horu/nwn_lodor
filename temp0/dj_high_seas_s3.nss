//This is to check for an INT to see if the NPC says this line.
int StartingConditional()
{

object oPC = GetPCSpeaker();

// Grogor Docks
if (GetTag(OBJECT_SELF) == "ship_aldur"){
        return TRUE;}

    else {return FALSE;}
}
