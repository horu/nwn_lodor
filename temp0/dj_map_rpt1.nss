// This runs a report of the maps the PC currently have
void main()
{
    object oPC = GetPCSpeaker();
    string sMessage;
    object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");
    object oMap2 = GetItemPossessedBy(oPC, "vampire_bottle");

    if (GetLocalInt(oMap, "map029") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Aldur Village ]");
    }
    if (GetLocalInt(oMap, "map074") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Arid Dunes ]");
    }
    if (GetLocalInt(oMap, "map082") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Bandit Camp ]");
    }
    if (GetLocalInt(oMap, "map046") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Baol Tribe Camp ]");
    }
    if (GetLocalInt(oMap, "map075") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Brodak Ruins ]");
    }
    if (GetLocalInt(oMap, "map001") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Brushwood Valley ]");
    }
    if (GetLocalInt(oMap, "map036") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Clarion Woodlands ]");
    }
    if (GetLocalInt(oMap, "map002") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Clouded Veil ]");
    }
    if (GetLocalInt(oMap, "map055") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Cursed Glades ]");
    }
    if (GetLocalInt(oMap, "map028") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Daclor's Crossing ]");
    }
    if (GetLocalInt(oMap, "map080") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Dedry Cemetery ]");
    }
    if (GetLocalInt(oMap, "map081") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Dedry Woods ]");
    }
    if (GetLocalInt(oMap, "map068") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Dedry Hamlet ]");
    }
    if (GetLocalInt(oMap, "map049") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Delir Forest ]");
    }
    if (GetLocalInt(oMap, "map048") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Faraldor City ]");
    }
    if (GetLocalInt(oMap, "map030") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Frostbite Hills ]");
    }
    if (GetLocalInt(oMap, "map026") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Frozen Trail ]");
    }
    if (GetLocalInt(oMap, "map039") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Glowian Forest ]");
    }
    if (GetLocalInt(oMap, "map013") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Great Oak Village ]");
    }
    if (GetLocalInt(oMap, "map107") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Grandul Ruins ]");
    }
    if (GetLocalInt(oMap, "map066") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Grogor Jungle ]");
    }
    if (GetLocalInt(oMap, "map060") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Grogor Village ]");
    }
    if (GetLocalInt(oMap, "map047") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Harpy Cliffs ]");
    }
    if (GetLocalInt(oMap, "map012") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Hidden Grove ]");
    }
    if (GetLocalInt(oMap, "map059") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Maple Wood ]");
    }
    if (GetLocalInt(oMap, "map109") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Melagan Jungle ]");
    }
    if (GetLocalInt(oMap, "map016") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Miradir's Path ]");
    }
    if (GetLocalInt(oMap, "map033") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Nerod Hills ]");
    }
    if (GetLocalInt(oMap, "map054") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Nilas Forest ]");
    }
    if (GetLocalInt(oMap, "map076") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Oasis ]");
    }
    if (GetLocalInt(oMap, "map021") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Prael Cliffs ]");
    }
    if (GetLocalInt(oMap, "map020") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Prael Hills ]");
    }
    if (GetLocalInt(oMap, "map063") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Rakshasa Camp ]");
    }
    if (GetLocalInt(oMap, "map111") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Sapharal Coastline ]");
    }
    if (GetLocalInt(oMap, "map018") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Saryl Swamp ]");
    }
    if (GetLocalInt(oMap, "map011") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Shifting Growth ]");
    }
    if (GetLocalInt(oMap, "map058") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Shira's Web ]");
    }
    if (GetLocalInt(oMap, "map022") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Shivering Woods ]");
    }
    if (GetLocalInt(oMap, "map050") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Sparkling Wood ]");
    }
    if (GetLocalInt(oMap, "map037") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Tower of the Silver Order ]");
    }
    if (GetLocalInt(oMap, "map024") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Turan Battlefield ]");
    }
    if (GetLocalInt(oMap, "map005") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Underwood ]");
    }
    if (GetLocalInt(oMap, "map003") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Mountain ]");
    }
    if (GetLocalInt(oMap, "map040") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Pass ]");
    }
    if (GetLocalInt(oMap, "map045") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Plains ]");
    }
    if (GetLocalInt(oMap, "map006") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Vile Bog ]");
    }
    if (GetLocalInt(oMap, "map071") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Wastelands ]");
    }
    if (GetLocalInt(oMap, "map061") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Weary Way ]");
    }
    if (GetLocalInt(oMap, "map035") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Whispering Woods ]");
    }
    if (GetLocalInt(oMap, "map015") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Wicked Marsh ]");
    }


    // Vampires
    if (GetLocalInt(oMap2, "map029") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Aldur Village ]");
    }
    if (GetLocalInt(oMap2, "map074") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Arid Dunes ]");
    }
    if (GetLocalInt(oMap2, "map082") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Bandit Camp ]");
    }
    if (GetLocalInt(oMap2, "map046") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Baol Tribe Camp ]");
    }
    if (GetLocalInt(oMap2, "map075") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Brodak Ruins ]");
    }
    if (GetLocalInt(oMap2, "map001") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Brushwood Valley ]");
    }
    if (GetLocalInt(oMap2, "map036") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Clarion Woodlands ]");
    }
    if (GetLocalInt(oMap2, "map002") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Clouded Veil ]");
    }
    if (GetLocalInt(oMap2, "map055") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Cursed Glades ]");
    }
    if (GetLocalInt(oMap2, "map028") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Daclor's Crossing ]");
    }
    if (GetLocalInt(oMap2, "map080") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Dedry Cemetery ]");
    }
    if (GetLocalInt(oMap2, "map081") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Dedry Woods ]");
    }
    if (GetLocalInt(oMap2, "map068") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Dedry Hamlet ]");
    }
    if (GetLocalInt(oMap2, "map049") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Delir Forest ]");
    }
    if (GetLocalInt(oMap2, "map048") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Faraldor City ]");
    }
    if (GetLocalInt(oMap2, "map030") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Frostbite Hills ]");
    }
    if (GetLocalInt(oMap2, "map026") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Frozen Trail ]");
    }
    if (GetLocalInt(oMap2, "map039") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Glowian Forest ]");
    }
    if (GetLocalInt(oMap2, "map013") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Great Oak Village ]");
    }
    if (GetLocalInt(oMap2, "map107") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Grandul Ruins ]");
    }
    if (GetLocalInt(oMap2, "map066") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Grogor Jungle ]");
    }
    if (GetLocalInt(oMap2, "map060") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Grogor Village ]");
    }
    if (GetLocalInt(oMap2, "map047") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Harpy Cliffs ]");
    }
    if (GetLocalInt(oMap2, "map012") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Hidden Grove ]");
    }
    if (GetLocalInt(oMap2, "map059") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Maple Wood ]");
    }
    if (GetLocalInt(oMap2, "map109") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Melagan Jungle ]");
    }
    if (GetLocalInt(oMap2, "map016") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Miradir's Path ]");
    }
    if (GetLocalInt(oMap2, "map033") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Nerod Hills ]");
    }
    if (GetLocalInt(oMap2, "map054") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Nilas Forest ]");
    }
    if (GetLocalInt(oMap2, "map076") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Oasis ]");
    }
    if (GetLocalInt(oMap2, "map021") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Prael Cliffs ]");
    }
    if (GetLocalInt(oMap2, "map020") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Prael Hills ]");
    }
    if (GetLocalInt(oMap2, "map063") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Rakshasa Camp ]");
    }
    if (GetLocalInt(oMap2, "map111") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Sapharal Coastline ]");
    }
    if (GetLocalInt(oMap2, "map018") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Saryl Swamp ]");
    }
    if (GetLocalInt(oMap2, "map011") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Shifting Growth ]");
    }
    if (GetLocalInt(oMap2, "map058") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Shira's Web ]");
    }
    if (GetLocalInt(oMap2, "map022") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Shivering Woods ]");
    }
    if (GetLocalInt(oMap2, "map050") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Sparkling Wood ]");
    }
    if (GetLocalInt(oMap2, "map037") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Tower of the Silver Order ]");
    }
    if (GetLocalInt(oMap2, "map024") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Turan Battlefield ]");
    }
    if (GetLocalInt(oMap2, "map005") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Underwood ]");
    }
    if (GetLocalInt(oMap2, "map003") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Mountain ]");
    }
    if (GetLocalInt(oMap2, "map040") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Pass ]");
    }
    if (GetLocalInt(oMap2, "map045") == 1)
    {
        SendMessageToPC(oPC, "[ Map of Vegnar Plains ]");
    }
    if (GetLocalInt(oMap2, "map006") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Vile Bog ]");
    }
    if (GetLocalInt(oMap2, "map071") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Wastelands ]");
    }
    if (GetLocalInt(oMap2, "map061") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Weary Way ]");
    }
    if (GetLocalInt(oMap2, "map035") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Whispering Woods ]");
    }
    if (GetLocalInt(oMap2, "map015") == 1)
    {
        SendMessageToPC(oPC, "[ Map of the Wicked Marsh ]");
    }
}
