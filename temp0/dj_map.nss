// Checks to see if the PC has a map of the area.
void main()
{
    object oPC = GetEnteringObject();
    object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");
    object oMap2 = GetItemPossessedBy(oPC, "vampire_bottle");

    if (GetSubRace(oPC) != "Vampire")
    {
        if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "TheAltar")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 6) == "LairOf")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetTag(OBJECT_SELF) == "BrushwoodValley")
        {
            if (GetLocalInt(oMap, "map001") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShadedWood")
        {
            if (GetLocalInt(oMap, "map002") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarMountain")
        {
            if (GetLocalInt(oMap, "map003") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasMountain")
        {
            if (GetLocalInt(oMap, "map004") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasMountain2")
        {
            if (GetLocalInt(oMap, "map004") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheUnderwood")
        {
            if (GetLocalInt(oMap, "map005") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ThePurgs")
        {
            if (GetLocalInt(oMap, "map006") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVileBog")
        {
            if (GetLocalInt(oMap, "map007") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheBruolBugbears")
        {
            if (GetLocalInt(oMap, "map008") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheStonesOfConfusion")
        {
            if (GetLocalInt(oMap, "map009") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasFields")
        {
            if (GetLocalInt(oMap, "map010") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShiftingGrowth")
        {
            if (GetLocalInt(oMap, "map011") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheHiddenGrove")
        {
            if (GetLocalInt(oMap, "map012") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheGreatOakVillage")
        {
            if (GetLocalInt(oMap, "map013") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsGate")
        {
            if (GetLocalInt(oMap, "map014") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsGate2")
        {
            if (GetLocalInt(oMap, "map014") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheWickedMarsh")
        {
            if (GetLocalInt(oMap, "map015") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PathOfMiradir")
        {
            if (GetLocalInt(oMap, "map016") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsCastle")
        {
            if (GetLocalInt(oMap, "map017") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SarylSwamp")
        {
            if (GetLocalInt(oMap, "map018") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVileTower")
        {
            if (GetLocalInt(oMap, "map019") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PaelHills")
        {
            if (GetLocalInt(oMap, "map020") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PraelCliffs")
        {
            if (GetLocalInt(oMap, "map021") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShiveringWoods")
        {
            if (GetLocalInt(oMap, "map022") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheDig")
        {
            if (GetLocalInt(oMap, "map023") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheTuranBattlefield")
        {
            if (GetLocalInt(oMap, "map024") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DenOfDrub")
        {
            if (GetLocalInt(oMap, "map025") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrozenTrail")
        {
            if (GetLocalInt(oMap, "map026") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrozenDepths")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetTag(OBJECT_SELF) == "TowerBrakal2")
        {
            if (GetLocalInt(oMap, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerOfBrakal")
        {
            if (GetLocalInt(oMap, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerBrakal3")
        {
            if (GetLocalInt(oMap, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DaclorsCrossing")
        {
            if (GetLocalInt(oMap, "map028") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VillageOfAldur")
        {
            if (GetLocalInt(oMap, "map029") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrostbiteHills")
        {
            if (GetLocalInt(oMap, "map030") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrostbiteMines")
        {
            if (GetLocalInt(oMap, "map031") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PitsOfFrost")
        {
            if (GetLocalInt(oMap, "map032") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NerodHills")
        {
            if (GetLocalInt(oMap, "map033") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WroksLair")
        {
            if (GetLocalInt(oMap, "map034") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WhisperingWoods")
        {
            if (GetLocalInt(oMap, "map035") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ClarionWoodlands")
        {
            if (GetLocalInt(oMap, "map036") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheTowerOfTheSilverOrder")
        {
            if (GetLocalInt(oMap, "map037") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Basement")
        {
            if (GetLocalInt(oMap, "map038") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GlowianForest")
        {
            if (GetLocalInt(oMap, "map039") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPass")
        {
            if (GetLocalInt(oMap, "map040") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DrigdugsLair")
        {
            if (GetLocalInt(oMap, "map041") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "KabardRuins")
        {
            if (GetLocalInt(oMap, "map042") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 17) == "CliffsOfTheFallen")
        {
            if (GetLocalInt(oMap, "map043") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 16) == "FortressOfZaltos")
        {
            if (GetLocalInt(oMap, "map044") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPlains")
        {
            if (GetLocalInt(oMap, "map045") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BaolTribe")
        {
            if (GetLocalInt(oMap, "map046") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HarpyCliffs")
        {
            if (GetLocalInt(oMap, "map047") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CityOfFaraldor")
        {
            if (GetLocalInt(oMap, "map048") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DelirForest")
        {
            if (GetLocalInt(oMap, "map049") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SparklingWood")
        {
            if (GetLocalInt(oMap, "map050") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VrugarOrcTribe")
        {
            if (GetLocalInt(oMap, "map051") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Sewers")
        {
            if (GetLocalInt(oMap, "map052") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WalkwayOfWind")
        {
            if (GetLocalInt(oMap, "map053") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasForest")
        {
            if (GetLocalInt(oMap, "map054") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FalcorNest")
        {
            if (GetLocalInt(oMap, "map055") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CursedGlades")
        {
            if (GetLocalInt(oMap, "map056") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerOfRunes")
        {
            if (GetLocalInt(oMap, "map057") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WebOfShira")
        {
            if (GetLocalInt(oMap, "map058") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MelaganJungle")
        {
            if (GetLocalInt(oMap, "map059") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VillageOfGrogor")
        {
            if (GetLocalInt(oMap, "map060") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WearyWay")
        {
            if (GetLocalInt(oMap, "map061") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MelaganRuins")
        {
            if (GetLocalInt(oMap, "map062") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BeneathMelaganRuins")
        {
            if (GetLocalInt(oMap, "map062") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RakshasaCamp")
        {
            if (GetLocalInt(oMap, "map063") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ManticoreDen")
        {
            if (GetLocalInt(oMap, "map064") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "TempleOfTears")
        {
            if (GetLocalInt(oMap, "map065") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GrogorJungle")
        {
            if (GetLocalInt(oMap, "map066") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VankCaves")
        {
            if (GetLocalInt(oMap, "map067") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryHamlet")
        {
            if (GetLocalInt(oMap, "map068") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryTunnels")
        {
            if (GetLocalInt(oMap, "map069") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PitOfDar")
        {
            if (GetLocalInt(oMap, "map070") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Wastelands")
        {
            if (GetLocalInt(oMap, "map071") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NestOfManscorpions")
        {
            if (GetLocalInt(oMap, "map072") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheHive")
        {
            if (GetLocalInt(oMap, "map073") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "AridDunes")
        {
            if (GetLocalInt(oMap, "map074") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RuinsOfBrodak")
        {
            if (GetLocalInt(oMap, "map075") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Oasis")
        {
            if (GetLocalInt(oMap, "map076") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPassageway")
        {
            if (GetLocalInt(oMap, "map077") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 15) == "DaclorsMountain")
        {
            if (GetLocalInt(oMap, "map078") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "FirebrandKeep")
        {
            if (GetLocalInt(oMap, "map079") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryCemetery")
        {
            if (GetLocalInt(oMap, "map080") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryWoods")
        {
            if (GetLocalInt(oMap, "map081") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BanditCamp")
        {
            if (GetLocalInt(oMap, "map082") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryCatacombs")
        {
            if (GetLocalInt(oMap, "map083") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HorfiladManor")
        {
            if (GetLocalInt(oMap, "map084") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HorfiladsDungeon")
        {
            if (GetLocalInt(oMap, "map085") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TaraksFortress")
        {
            if (GetLocalInt(oMap, "map086") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BeetleNest")
        {
            if (GetLocalInt(oMap, "map087") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PiratesCove")
        {
            if (GetLocalInt(oMap, "map088") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheBorbanPit")
        {
            if (GetLocalInt(oMap, "map089") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HollowScreams")
        {
            if (GetLocalInt(oMap, "map090") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "UnderPassage")
        {
            if (GetLocalInt(oMap, "map091") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Clouds")
        {
            if (GetLocalInt(oMap, "map092") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 7) == "OldCity")
        {
            if (GetLocalInt(oMap, "map093") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HallsOfStone")
        {
            if (GetLocalInt(oMap, "map094") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CaveOfEyes")
        {
            if (GetLocalInt(oMap, "map095") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 18) == "FortressOfGlomarin")
        {
            if (GetLocalInt(oMap, "map096") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WellOfSouls")
        {
            if (GetLocalInt(oMap, "map097") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheScorn")
        {
            if (GetLocalInt(oMap, "map098") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheCrypts")
        {
            if (GetLocalInt(oMap, "map099") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVault")
        {
            if (GetLocalInt(oMap, "map100") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 16) == "TowerOfTheDamned")
        {
            if (GetLocalInt(oMap, "map101") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RuinsOfJarehar")
        {
            if (GetLocalInt(oMap, "map102") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FieldOfSilence")
        {
            if (GetLocalInt(oMap, "map103") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "PalaceOfDracz")
        {
            if (GetLocalInt(oMap, "map104") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "CityOfThought")
        {
            if (GetLocalInt(oMap, "map105") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 12) == "CitadelLevel")
        {
            if (GetLocalInt(oMap, "map106") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(GetArea(oPC)) == "GrandulRuins")
        {
            if (GetLocalInt(oMap, "map107") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 12) == "GrandulsHold")
        {
            if (GetLocalInt(oMap, "map108") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MapleWood")
        {
            if (GetLocalInt(oMap, "map109") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GremlinHole")
        {
            if (GetLocalInt(oMap, "map110") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SapharalCoastline")
        {
            if (GetLocalInt(oMap, "map111") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
    }


    // Vampires
    else
    {
        if (GetStringLeft(GetTag(OBJECT_SELF), 8) == "TheAltar")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 6) == "LairOf")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetTag(OBJECT_SELF) == "BrushwoodValley")
        {
            if (GetLocalInt(oMap2, "map001") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShadedWood")
        {
            if (GetLocalInt(oMap2, "map002") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarMountain")
        {
            if (GetLocalInt(oMap2, "map003") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasMountain")
        {
            if (GetLocalInt(oMap2, "map004") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasMountain2")
        {
            if (GetLocalInt(oMap2, "map004") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheUnderwood")
        {
            if (GetLocalInt(oMap2, "map005") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ThePurgs")
        {
            if (GetLocalInt(oMap2, "map006") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVileBog")
        {
            if (GetLocalInt(oMap2, "map007") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheBruolBugbears")
        {
            if (GetLocalInt(oMap2, "map008") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheStonesOfConfusion")
        {
            if (GetLocalInt(oMap2, "map009") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasFields")
        {
            if (GetLocalInt(oMap2, "map010") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShiftingGrowth")
        {
            if (GetLocalInt(oMap2, "map011") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheHiddenGrove")
        {
            if (GetLocalInt(oMap2, "map012") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheGreatOakVillage")
        {
            if (GetLocalInt(oMap2, "map013") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsGate")
        {
            if (GetLocalInt(oMap2, "map014") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsGate2")
        {
            if (GetLocalInt(oMap2, "map014") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheWickedMarsh")
        {
            if (GetLocalInt(oMap2, "map015") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PathOfMiradir")
        {
            if (GetLocalInt(oMap2, "map016") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MiradirsCastle")
        {
            if (GetLocalInt(oMap2, "map017") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SarylSwamp")
        {
            if (GetLocalInt(oMap2, "map018") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVileTower")
        {
            if (GetLocalInt(oMap2, "map019") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PaelHills")
        {
            if (GetLocalInt(oMap2, "map020") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PraelCliffs")
        {
            if (GetLocalInt(oMap2, "map021") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheShiveringWoods")
        {
            if (GetLocalInt(oMap2, "map022") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheDig")
        {
            if (GetLocalInt(oMap2, "map023") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheTuranBattlefield")
        {
            if (GetLocalInt(oMap2, "map024") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DenOfDrub")
        {
            if (GetLocalInt(oMap2, "map025") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrozenTrail")
        {
            if (GetLocalInt(oMap2, "map026") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrozenDepths")
        {
            ExploreAreaForPlayer(OBJECT_SELF, oPC);
        }
        else if (GetTag(OBJECT_SELF) == "TowerBrakal2")
        {
            if (GetLocalInt(oMap2, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerOfBrakal")
        {
            if (GetLocalInt(oMap2, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerBrakal3")
        {
            if (GetLocalInt(oMap2, "map027") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DaclorsCrossing")
        {
            if (GetLocalInt(oMap2, "map028") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VillageOfAldur")
        {
            if (GetLocalInt(oMap2, "map029") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrostbiteHills")
        {
            if (GetLocalInt(oMap2, "map030") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FrostbiteMines")
        {
            if (GetLocalInt(oMap2, "map031") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PitsOfFrost")
        {
            if (GetLocalInt(oMap2, "map032") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NerodHills")
        {
            if (GetLocalInt(oMap2, "map033") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WroksLair")
        {
            if (GetLocalInt(oMap2, "map034") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WhisperingWoods")
        {
            if (GetLocalInt(oMap2, "map035") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ClarionWoodlands")
        {
            if (GetLocalInt(oMap2, "map036") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheTowerOfTheSilverOrder")
        {
            if (GetLocalInt(oMap2, "map037") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Basement")
        {
            if (GetLocalInt(oMap2, "map038") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GlowianForest")
        {
            if (GetLocalInt(oMap2, "map039") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPass")
        {
            if (GetLocalInt(oMap2, "map040") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DrigdugsLair")
        {
            if (GetLocalInt(oMap2, "map041") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "KabardRuins")
        {
            if (GetLocalInt(oMap2, "map042") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 17) == "CliffsOfTheFallen")
        {
            if (GetLocalInt(oMap2, "map043") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(OBJECT_SELF), 16) == "FortressOfZaltos")
        {
            if (GetLocalInt(oMap2, "map044") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPlains")
        {
            if (GetLocalInt(oMap2, "map045") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BaolTribe")
        {
            if (GetLocalInt(oMap2, "map046") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HarpyCliffs")
        {
            if (GetLocalInt(oMap2, "map047") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CityOfFaraldor")
        {
            if (GetLocalInt(oMap2, "map048") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DelirForest")
        {
            if (GetLocalInt(oMap2, "map049") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SparklingWood")
        {
            if (GetLocalInt(oMap2, "map050") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VrugarOrcTribe")
        {
            if (GetLocalInt(oMap2, "map051") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Sewers")
        {
            if (GetLocalInt(oMap2, "map052") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WalkwayOfWind")
        {
            if (GetLocalInt(oMap2, "map053") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NilasForest")
        {
            if (GetLocalInt(oMap2, "map054") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FalcorNest")
        {
            if (GetLocalInt(oMap2, "map055") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CursedGlades")
        {
            if (GetLocalInt(oMap2, "map056") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TowerOfRunes")
        {
            if (GetLocalInt(oMap2, "map057") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WebOfShira")
        {
            if (GetLocalInt(oMap2, "map058") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MelaganJungle")
        {
            if (GetLocalInt(oMap2, "map059") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VillageOfGrogor")
        {
            if (GetLocalInt(oMap2, "map060") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WearyWay")
        {
            if (GetLocalInt(oMap2, "map061") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MelaganRuins")
        {
            if (GetLocalInt(oMap2, "map062") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BeneathMelaganRuins")
        {
            if (GetLocalInt(oMap2, "map062") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RakshasaCamp")
        {
            if (GetLocalInt(oMap2, "map063") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "ManticoreDen")
        {
            if (GetLocalInt(oMap2, "map064") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "TempleOfTears")
        {
            if (GetLocalInt(oMap2, "map065") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GrogorJungle")
        {
            if (GetLocalInt(oMap2, "map066") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VankCaves")
        {
            if (GetLocalInt(oMap2, "map067") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryHamlet")
        {
            if (GetLocalInt(oMap2, "map068") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryTunnels")
        {
            if (GetLocalInt(oMap2, "map069") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PitOfDar")
        {
            if (GetLocalInt(oMap2, "map070") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Wastelands")
        {
            if (GetLocalInt(oMap2, "map071") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "NestOfManscorpions")
        {
            if (GetLocalInt(oMap2, "map072") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheHive")
        {
            if (GetLocalInt(oMap2, "map073") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "AridDunes")
        {
            if (GetLocalInt(oMap2, "map074") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RuinsOfBrodak")
        {
            if (GetLocalInt(oMap2, "map075") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Oasis")
        {
            if (GetLocalInt(oMap2, "map076") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "VegnarPassageway")
        {
            if (GetLocalInt(oMap2, "map077") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 15) == "DaclorsMountain")
        {
            if (GetLocalInt(oMap2, "map078") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "FirebrandKeep")
        {
            if (GetLocalInt(oMap2, "map079") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryCemetery")
        {
            if (GetLocalInt(oMap2, "map080") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryWoods")
        {
            if (GetLocalInt(oMap2, "map081") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BanditCamp")
        {
            if (GetLocalInt(oMap2, "map082") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "DedryCatacombs")
        {
            if (GetLocalInt(oMap2, "map083") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HorfiladManor")
        {
            if (GetLocalInt(oMap2, "map084") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HorfiladsDungeon")
        {
            if (GetLocalInt(oMap2, "map085") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TaraksFortress")
        {
            if (GetLocalInt(oMap2, "map086") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "BeetleNest")
        {
            if (GetLocalInt(oMap2, "map087") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "PiratesCove")
        {
            if (GetLocalInt(oMap2, "map088") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheBorbanPit")
        {
            if (GetLocalInt(oMap2, "map089") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HollowScreams")
        {
            if (GetLocalInt(oMap2, "map090") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "UnderPassage")
        {
            if (GetLocalInt(oMap2, "map091") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "Clouds")
        {
            if (GetLocalInt(oMap2, "map092") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 7) == "OldCity")
        {
            if (GetLocalInt(oMap2, "map093") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "HallsOfStone")
        {
            if (GetLocalInt(oMap2, "map094") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "CaveOfEyes")
        {
            if (GetLocalInt(oMap2, "map095") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 18) == "FortressOfGlomarin")
        {
            if (GetLocalInt(oMap2, "map096") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "WellOfSouls")
        {
            if (GetLocalInt(oMap2, "map097") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheScorn")
        {
            if (GetLocalInt(oMap2, "map098") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheCrypts")
        {
            if (GetLocalInt(oMap2, "map099") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "TheVault")
        {
            if (GetLocalInt(oMap2, "map100") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 16) == "TowerOfTheDamned")
        {
            if (GetLocalInt(oMap2, "map101") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "RuinsOfJarehar")
        {
            if (GetLocalInt(oMap2, "map102") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "FieldOfSilence")
        {
            if (GetLocalInt(oMap2, "map103") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "PalaceOfDracz")
        {
            if (GetLocalInt(oMap2, "map104") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 13) == "CityOfThought")
        {
            if (GetLocalInt(oMap2, "map105") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 12) == "CitadelLevel")
        {
            if (GetLocalInt(oMap2, "map106") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(GetArea(oPC)) == "GrandulRuins")
        {
            if (GetLocalInt(oMap2, "map107") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetStringLeft(GetTag(GetArea(oPC)), 12) == "GrandulsHold")
        {
            if (GetLocalInt(oMap2, "map108") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "MapleWood")
        {
            if (GetLocalInt(oMap2, "map109") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "GremlinHole")
        {
            if (GetLocalInt(oMap2, "map110") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
        else if (GetTag(OBJECT_SELF) == "SapharalCoastline")
        {
            if (GetLocalInt(oMap2, "map111") == 1)
            {
                ExploreAreaForPlayer(OBJECT_SELF, oPC);
            }
        }
    }
}
