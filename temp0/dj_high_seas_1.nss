//Check to see if they are on shore
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "sailaway") == 1))
        return FALSE;

    return TRUE;
}
