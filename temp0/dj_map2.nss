// Checks to see if the PC has a map of the area.
void main()
{
object oPC = OBJECT_SELF;
object oMap = GetItemPossessedBy(oPC, "lodoc_waterem");
object oMap2 = GetItemPossessedBy(oPC, "vampire_bottle");

if (GetSubRace(oPC) != "Vampire"){
if (GetStringLeft(GetTag(GetArea(oPC)),8) == "TheAltar"){
    ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetStringLeft(GetTag(GetArea(oPC)),6) == "LairOf"){
    ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetTag(GetArea(oPC)) == "BrushwoodValley"){
    if(GetLocalInt(oMap, "map001") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShadedWood"){
    if(GetLocalInt(oMap, "map002") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarMountain"){
    if(GetLocalInt(oMap, "map003") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasMountain"){
    if(GetLocalInt(oMap, "map004") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasMountain2"){
    if(GetLocalInt(oMap, "map004") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheUnderwood"){
    if(GetLocalInt(oMap, "map005") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ThePurgs"){
    if(GetLocalInt(oMap, "map006") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVileBog"){
    if(GetLocalInt(oMap, "map007") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheBruolBugbears"){
    if(GetLocalInt(oMap, "map008") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheStonesOfConfusion"){
    if(GetLocalInt(oMap, "map009") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasFields"){
    if(GetLocalInt(oMap, "map010") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShiftingGrowth"){
    if(GetLocalInt(oMap, "map011") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheHiddenGrove"){
    if(GetLocalInt(oMap, "map012") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheGreatOakVillage"){
    if(GetLocalInt(oMap, "map013") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsGate"){
    if(GetLocalInt(oMap, "map014") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsGate2"){
    if(GetLocalInt(oMap, "map014") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheWickedMarsh"){
    if(GetLocalInt(oMap, "map015") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PathOfMiradir"){
    if(GetLocalInt(oMap, "map016") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsCastle"){
    if(GetLocalInt(oMap, "map017") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SarylSwamp"){
    if(GetLocalInt(oMap, "map018") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVileTower"){
    if(GetLocalInt(oMap, "map019") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PaelHills"){
    if(GetLocalInt(oMap, "map020") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PraelCliffs"){
    if(GetLocalInt(oMap, "map021") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShiveringWoods"){
    if(GetLocalInt(oMap, "map022") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheDig"){
    if(GetLocalInt(oMap, "map023") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheTuranBattlefield"){
    if(GetLocalInt(oMap, "map024") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DenOfDrub"){
    if(GetLocalInt(oMap, "map025") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrozenTrail"){
    if(GetLocalInt(oMap, "map026") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrozenDepths"){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetTag(GetArea(oPC)) == "TowerBrakal2"){
    if(GetLocalInt(oMap, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerOfBrakal"){
    if(GetLocalInt(oMap, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerBrakal3"){
    if(GetLocalInt(oMap, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DaclorsCrossing"){
    if(GetLocalInt(oMap, "map028") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VillageOfAldur"){
    if(GetLocalInt(oMap, "map029") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrostbiteHills"){
    if(GetLocalInt(oMap, "map030") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrostbiteMines"){
    if(GetLocalInt(oMap, "map031") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PitsOfFrost"){
    if(GetLocalInt(oMap, "map032") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NerodHills"){
    if(GetLocalInt(oMap, "map033") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WroksLair"){
    if(GetLocalInt(oMap, "map034") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WhisperingWoods"){
    if(GetLocalInt(oMap, "map035") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ClarionWoodlands"){
    if(GetLocalInt(oMap, "map036") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheTowerOfTheSilverOrder"){
    if(GetLocalInt(oMap, "map037") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Basement"){
    if(GetLocalInt(oMap, "map038") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GlowianForest"){
    if(GetLocalInt(oMap, "map039") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPass"){
    if(GetLocalInt(oMap, "map040") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DrigdugsLair"){
    if(GetLocalInt(oMap, "map041") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "KabardRuins"){
    if(GetLocalInt(oMap, "map042") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),17) == "CliffsOfTheFallen"){
    if(GetLocalInt(oMap, "map043") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),16) == "FortressOfZaltos"){
    if(GetLocalInt(oMap, "map044") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPlains"){
    if(GetLocalInt(oMap, "map045") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BaolTribe"){
    if(GetLocalInt(oMap, "map046") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HarpyCliffs"){
    if(GetLocalInt(oMap, "map047") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CityOfFaraldor"){
    if(GetLocalInt(oMap, "map048") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DelirForest"){
    if(GetLocalInt(oMap, "map049") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SparklingWood"){
    if(GetLocalInt(oMap, "map050") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VrugarOrcTribe"){
    if(GetLocalInt(oMap, "map051") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Sewers"){
    if(GetLocalInt(oMap, "map052") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WalkwayOfWind"){
    if(GetLocalInt(oMap, "map053") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasForest"){
    if(GetLocalInt(oMap, "map054") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FalcorNest"){
    if(GetLocalInt(oMap, "map055") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CursedGlades"){
    if(GetLocalInt(oMap, "map056") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerOfRunes"){
    if(GetLocalInt(oMap, "map057") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WebOfShira"){
    if(GetLocalInt(oMap, "map058") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MelaganJungle"){
    if(GetLocalInt(oMap, "map059") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VillageOfGrogor"){
    if(GetLocalInt(oMap, "map060") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WearyWay"){
    if(GetLocalInt(oMap, "map061") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MelaganRuins"){
    if(GetLocalInt(oMap, "map062") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BeneathMelaganRuins"){
    if(GetLocalInt(oMap, "map062") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RakshasaCamp"){
    if(GetLocalInt(oMap, "map063") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ManticoreDen"){
    if(GetLocalInt(oMap, "map064") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "TempleOfTears"){
    if(GetLocalInt(oMap, "map065") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GrogorJungle"){
    if(GetLocalInt(oMap, "map066") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VankCaves"){
    if(GetLocalInt(oMap, "map067") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryHamlet"){
    if(GetLocalInt(oMap, "map068") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryTunnels"){
    if(GetLocalInt(oMap, "map069") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PitOfDar"){
    if(GetLocalInt(oMap, "map070") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Wastelands"){
    if(GetLocalInt(oMap, "map071") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NestOfManscorpions"){
    if(GetLocalInt(oMap, "map072") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheHive"){
    if(GetLocalInt(oMap, "map073") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "AridDunes"){
    if(GetLocalInt(oMap, "map074") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RuinsOfBrodak"){
    if(GetLocalInt(oMap, "map075") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Oasis"){
    if(GetLocalInt(oMap, "map076") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPassageway"){
    if(GetLocalInt(oMap, "map077") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),15) == "DaclorsMountain"){
    if(GetLocalInt(oMap, "map078") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "FirebrandKeep"){
    if(GetLocalInt(oMap, "map079") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryCemetery"){
    if(GetLocalInt(oMap, "map080") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryWoods"){
    if(GetLocalInt(oMap, "map081") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BanditCamp"){
    if(GetLocalInt(oMap, "map082") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryCatacombs"){
    if(GetLocalInt(oMap, "map083") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HorfiladManor"){
    if(GetLocalInt(oMap, "map084") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HorfiladsDungeon"){
    if(GetLocalInt(oMap, "map085") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TaraksFortress"){
    if(GetLocalInt(oMap, "map086") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BeetleNest"){
    if(GetLocalInt(oMap, "map087") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PiratesCove"){
    if(GetLocalInt(oMap, "map088") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheBorbanPit"){
    if(GetLocalInt(oMap, "map089") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HollowScreams"){
    if(GetLocalInt(oMap, "map090") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "UnderPassage"){
    if(GetLocalInt(oMap, "map091") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Clouds"){
    if(GetLocalInt(oMap, "map092") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),7) == "OldCity"){
    if(GetLocalInt(oMap, "map093") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HallsOfStone"){
    if(GetLocalInt(oMap, "map094") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CaveOfEyes"){
    if(GetLocalInt(oMap, "map095") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),18) == "FortressOfGlomarin"){
    if(GetLocalInt(oMap, "map096") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WellOfSouls"){
    if(GetLocalInt(oMap, "map097") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheScorn"){
    if(GetLocalInt(oMap, "map098") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheCrypts"){
    if(GetLocalInt(oMap, "map099") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVault"){
    if(GetLocalInt(oMap, "map100") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),16) == "TowerOfTheDamned"){
    if(GetLocalInt(oMap, "map101") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RuinsOfJarehar"){
    if(GetLocalInt(oMap, "map102") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FieldOfSilence"){
    if(GetLocalInt(oMap, "map103") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "PalaceOfDracz"){
    if(GetLocalInt(oMap, "map104") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "CityOfThought"){
    if(GetLocalInt(oMap, "map105") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),12) == "CitadelLevel"){
    if(GetLocalInt(oMap, "map106") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GrandulRuins"){
    if(GetLocalInt(oMap, "map107") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),12) == "GrandulsHold"){
    if(GetLocalInt(oMap, "map108") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MapleWood"){
    if(GetLocalInt(oMap, "map109") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GremlinHole"){
    if(GetLocalInt(oMap, "map110") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SapharalCoastline"){
    if(GetLocalInt(oMap, "map111") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}}



// Vampires
else {
if (GetStringLeft(GetTag(GetArea(oPC)),8) == "TheAltar"){
    ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetStringLeft(GetTag(GetArea(oPC)),6) == "LairOf"){
    ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetTag(GetArea(oPC)) == "BrushwoodValley"){
    if(GetLocalInt(oMap2, "map001") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShadedWood"){
    if(GetLocalInt(oMap2, "map002") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarMountain"){
    if(GetLocalInt(oMap2, "map003") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasMountain"){
    if(GetLocalInt(oMap2, "map004") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasMountain2"){
    if(GetLocalInt(oMap2, "map004") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheUnderwood"){
    if(GetLocalInt(oMap2, "map005") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ThePurgs"){
    if(GetLocalInt(oMap2, "map006") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVileBog"){
    if(GetLocalInt(oMap2, "map007") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheBruolBugbears"){
    if(GetLocalInt(oMap2, "map008") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheStonesOfConfusion"){
    if(GetLocalInt(oMap2, "map009") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasFields"){
    if(GetLocalInt(oMap2, "map010") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShiftingGrowth"){
    if(GetLocalInt(oMap2, "map011") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheHiddenGrove"){
    if(GetLocalInt(oMap2, "map012") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheGreatOakVillage"){
    if(GetLocalInt(oMap2, "map013") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsGate"){
    if(GetLocalInt(oMap2, "map014") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsGate2"){
    if(GetLocalInt(oMap2, "map014") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheWickedMarsh"){
    if(GetLocalInt(oMap2, "map015") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PathOfMiradir"){
    if(GetLocalInt(oMap2, "map016") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MiradirsCastle"){
    if(GetLocalInt(oMap2, "map017") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SarylSwamp"){
    if(GetLocalInt(oMap2, "map018") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVileTower"){
    if(GetLocalInt(oMap2, "map019") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PaelHills"){
    if(GetLocalInt(oMap2, "map020") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PraelCliffs"){
    if(GetLocalInt(oMap2, "map021") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheShiveringWoods"){
    if(GetLocalInt(oMap2, "map022") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheDig"){
    if(GetLocalInt(oMap2, "map023") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheTuranBattlefield"){
    if(GetLocalInt(oMap2, "map024") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DenOfDrub"){
    if(GetLocalInt(oMap2, "map025") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrozenTrail"){
    if(GetLocalInt(oMap2, "map026") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrozenDepths"){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}
else if (GetTag(GetArea(oPC)) == "TowerBrakal2"){
    if(GetLocalInt(oMap2, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerOfBrakal"){
    if(GetLocalInt(oMap2, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerBrakal3"){
    if(GetLocalInt(oMap2, "map027") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DaclorsCrossing"){
    if(GetLocalInt(oMap2, "map028") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VillageOfAldur"){
    if(GetLocalInt(oMap2, "map029") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrostbiteHills"){
    if(GetLocalInt(oMap2, "map030") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FrostbiteMines"){
    if(GetLocalInt(oMap2, "map031") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PitsOfFrost"){
    if(GetLocalInt(oMap2, "map032") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NerodHills"){
    if(GetLocalInt(oMap2, "map033") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WroksLair"){
    if(GetLocalInt(oMap2, "map034") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WhisperingWoods"){
    if(GetLocalInt(oMap2, "map035") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ClarionWoodlands"){
    if(GetLocalInt(oMap2, "map036") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheTowerOfTheSilverOrder"){
    if(GetLocalInt(oMap2, "map037") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Basement"){
    if(GetLocalInt(oMap2, "map038") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GlowianForest"){
    if(GetLocalInt(oMap2, "map039") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPass"){
    if(GetLocalInt(oMap2, "map040") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DrigdugsLair"){
    if(GetLocalInt(oMap2, "map041") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "KabardRuins"){
    if(GetLocalInt(oMap2, "map042") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),17) == "CliffsOfTheFallen"){
    if(GetLocalInt(oMap2, "map043") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),16) == "FortressOfZaltos"){
    if(GetLocalInt(oMap2, "map044") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPlains"){
    if(GetLocalInt(oMap2, "map045") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BaolTribe"){
    if(GetLocalInt(oMap2, "map046") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HarpyCliffs"){
    if(GetLocalInt(oMap2, "map047") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CityOfFaraldor"){
    if(GetLocalInt(oMap2, "map048") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DelirForest"){
    if(GetLocalInt(oMap2, "map049") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SparklingWood"){
    if(GetLocalInt(oMap2, "map050") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VrugarOrcTribe"){
    if(GetLocalInt(oMap2, "map051") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Sewers"){
    if(GetLocalInt(oMap2, "map052") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WalkwayOfWind"){
    if(GetLocalInt(oMap2, "map053") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NilasForest"){
    if(GetLocalInt(oMap2, "map054") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FalcorNest"){
    if(GetLocalInt(oMap2, "map055") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CursedGlades"){
    if(GetLocalInt(oMap2, "map056") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TowerOfRunes"){
    if(GetLocalInt(oMap2, "map057") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WebOfShira"){
    if(GetLocalInt(oMap2, "map058") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MelaganJungle"){
    if(GetLocalInt(oMap2, "map059") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VillageOfGrogor"){
    if(GetLocalInt(oMap2, "map060") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WearyWay"){
    if(GetLocalInt(oMap2, "map061") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MelaganRuins"){
    if(GetLocalInt(oMap2, "map062") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BeneathMelaganRuins"){
    if(GetLocalInt(oMap2, "map062") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RakshasaCamp"){
    if(GetLocalInt(oMap2, "map063") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "ManticoreDen"){
    if(GetLocalInt(oMap2, "map064") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "TempleOfTears"){
    if(GetLocalInt(oMap2, "map065") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GrogorJungle"){
    if(GetLocalInt(oMap2, "map066") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VankCaves"){
    if(GetLocalInt(oMap2, "map067") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryHamlet"){
    if(GetLocalInt(oMap2, "map068") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryTunnels"){
    if(GetLocalInt(oMap2, "map069") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PitOfDar"){
    if(GetLocalInt(oMap2, "map070") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Wastelands"){
    if(GetLocalInt(oMap2, "map071") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "NestOfManscorpions"){
    if(GetLocalInt(oMap2, "map072") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheHive"){
    if(GetLocalInt(oMap2, "map073") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "AridDunes"){
    if(GetLocalInt(oMap2, "map074") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RuinsOfBrodak"){
    if(GetLocalInt(oMap2, "map075") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Oasis"){
    if(GetLocalInt(oMap2, "map076") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "VegnarPassageway"){
    if(GetLocalInt(oMap2, "map077") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),15) == "DaclorsMountain"){
    if(GetLocalInt(oMap2, "map078") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "FirebrandKeep"){
    if(GetLocalInt(oMap2, "map079") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryCemetery"){
    if(GetLocalInt(oMap2, "map080") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryWoods"){
    if(GetLocalInt(oMap2, "map081") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BanditCamp"){
    if(GetLocalInt(oMap2, "map082") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "DedryCatacombs"){
    if(GetLocalInt(oMap2, "map083") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HorfiladManor"){
    if(GetLocalInt(oMap2, "map084") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HorfiladsDungeon"){
    if(GetLocalInt(oMap2, "map085") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TaraksFortress"){
    if(GetLocalInt(oMap2, "map086") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "BeetleNest"){
    if(GetLocalInt(oMap2, "map087") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "PiratesCove"){
    if(GetLocalInt(oMap2, "map088") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheBorbanPit"){
    if(GetLocalInt(oMap2, "map089") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HollowScreams"){
    if(GetLocalInt(oMap2, "map090") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "UnderPassage"){
    if(GetLocalInt(oMap2, "map091") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "Clouds"){
    if(GetLocalInt(oMap2, "map092") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),7) == "OldCity"){
    if(GetLocalInt(oMap2, "map093") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "HallsOfStone"){
    if(GetLocalInt(oMap2, "map094") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "CaveOfEyes"){
    if(GetLocalInt(oMap2, "map095") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),18) == "FortressOfGlomarin"){
    if(GetLocalInt(oMap2, "map096") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "WellOfSouls"){
    if(GetLocalInt(oMap2, "map097") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheScorn"){
    if(GetLocalInt(oMap2, "map098") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheCrypts"){
    if(GetLocalInt(oMap2, "map099") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "TheVault"){
    if(GetLocalInt(oMap2, "map100") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),16) == "TowerOfTheDamned"){
    if(GetLocalInt(oMap2, "map101") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "RuinsOfJarehar"){
    if(GetLocalInt(oMap2, "map102") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "FieldOfSilence"){
    if(GetLocalInt(oMap2, "map103") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "PalaceOfDracz"){
    if(GetLocalInt(oMap2, "map104") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "CityOfThought"){
    if(GetLocalInt(oMap2, "map105") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),12) == "CitadelLevel"){
    if(GetLocalInt(oMap2, "map106") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GrandulRuins"){
    if(GetLocalInt(oMap2, "map107") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetStringLeft(GetTag(GetArea(oPC)),12) == "GrandulsHold"){
    if(GetLocalInt(oMap2, "map108") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "MapleWood"){
    if(GetLocalInt(oMap2, "map109") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "GremlinHole"){
    if(GetLocalInt(oMap2, "map110") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}
else if (GetTag(GetArea(oPC)) == "SapharalCoastline"){
    if(GetLocalInt(oMap2, "map111") == 1){
        ExploreAreaForPlayer(GetArea(oPC), oPC);}}}

}
