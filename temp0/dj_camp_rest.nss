void main()
{
object oPC = GetPCSpeaker();
int nRest = GetLocalInt(oPC,"restallow");

if (GetSubRace(oPC) == "Vampire"){
FloatingTextStringOnCreature("You cannot stand the sight of this fire.", oPC, TRUE);}

else {
if (nRest == 0){
if (GetTag(GetArea(oPC)) == "ThePurgs"){
    FloatingTextStringOnCreature("You cannot rest safely with all the goblins about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TheBruolBugbears"){
    FloatingTextStringOnCreature("You cannot rest safely with all the bugbears about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TheStonesOfConfusion"){
    FloatingTextStringOnCreature("You cannot rest safely with all the minotaurs about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "VankCaves"){
    FloatingTextStringOnCreature("You cannot rest safely with all the kobolds about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "MiradirsGate2"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest within the gate.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "MiradirsCastle"){
    FloatingTextStringOnCreature("You cannot rest safely with all the golems about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TheVileTower"){
    FloatingTextStringOnCreature("You cannot rest safely with all the undead about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "DenOfDrub"){
    FloatingTextStringOnCreature("You cannot rest safely with all the ogres about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "FrozenDepths"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest in this frozen cave.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerBrakal2"){
    FloatingTextStringOnCreature("You cannot rest safely with all the frost giants about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerOfBrakal"){
    FloatingTextStringOnCreature("You cannot rest safely with all the frost giants about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerBrakal3"){
    FloatingTextStringOnCreature("You cannot rest safely with all the frost giants about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "FrostbiteMines"){
    FloatingTextStringOnCreature("You cannot rest safely with all the kobolds about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "PitsOfFrost"){
    FloatingTextStringOnCreature("You cannot rest safely with all the frost demons about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "DrigdugsLair"){
    FloatingTextStringOnCreature("You cannot rest safely with all the trolls about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "KabardRuins"){
    FloatingTextStringOnCreature("You cannot rest safely with all the gnolls about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "KabardRuins2"){
    FloatingTextStringOnCreature("You cannot rest safely with all the gnolls about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "CliffsOfTheFallen"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest within these crypts.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "FortressOfZaltos2"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest within this fortress.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "BaolTribe"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest within this camp.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "Sewers"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest with all the creatures about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "VrugarOrcTribe"){
    FloatingTextStringOnCreature("Hmmmm.  There are alot of orcs in here.", oPC, TRUE);
    DelayCommand(1.0, AssignCommand(oPC, ActionRest()));}
else if (GetTag(GetArea(oPC)) == "FalcorNest"){
    FloatingTextStringOnCreature("You don't feel that you can safely rest way up here.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerOfRunes"){
    FloatingTextStringOnCreature("You don't feel that you can safely within this place.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "WebOfShira"){
    FloatingTextStringOnCreature("You cannot rest safely with all the spiders about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "MelaganRuins"){
    FloatingTextStringOnCreature("You cannot rest safely with all these lizards about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "RakshasaCamp"){
    FloatingTextStringOnCreature("You cannot rest safely with all these cat people about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "ManticoreDen"){
    FloatingTextStringOnCreature("You cannot rest safely.  A manticore may return soon.", oPC, TRUE);}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "TempleOfTears"){
    FloatingTextStringOnCreature("You cannot rest safely within this temple.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "PitOfDar"){
    FloatingTextStringOnCreature("You cannot rest safely with Dar's mephits all about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "NestOfManscorpions"){
    FloatingTextStringOnCreature("You cannot rest safely down in this nest.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TheHive"){
    FloatingTextStringOnCreature("You cannot rest safely down in the Hive.", oPC, TRUE);}
else if (GetStringLeft(GetTag(GetArea(oPC)),15) == "DaclorsMountain"){
    FloatingTextStringOnCreature("You cannot rest safely within this mountain.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "BanditCamp"){
    FloatingTextStringOnCreature("You cannot rest safely with all the bandits about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "DedryCatacombs"){
    FloatingTextStringOnCreature("You cannot rest safely within these catacombs.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "HorfiladManor"){
    FloatingTextStringOnCreature("You cannot rest safely within this manor.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "HorfiladsDungeon"){
    FloatingTextStringOnCreature("You cannot rest safely below the manor.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TaraksFortress"){
    FloatingTextStringOnCreature("You cannot rest safely with all the lizards about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "BeetleNest"){
    FloatingTextStringOnCreature("You cannot rest safely with all the beetles about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TreeTop"){
    FloatingTextStringOnCreature("You cannot rest safely when an air elemental may appear at any moment.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "IslandOfAncientStone"){
    FloatingTextStringOnCreature("You cannot rest safely when a water elemental may appear at any moment.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "MountainOfPestilence"){
    FloatingTextStringOnCreature("You cannot rest safely when a rock golem may appear at any moment.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "Clouds"){
    FloatingTextStringOnCreature("You cannot rest safely up here in the clouds.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "HallsOfStone"){
    FloatingTextStringOnCreature("You cannot rest safely in these halls.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "CaveOfEyes"){
    FloatingTextStringOnCreature("You cannot rest safely with all the gazers about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "FortressOfGlomarin3"){
    FloatingTextStringOnCreature("You cannot rest safely with all the golems about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "FortressOfGlomarin"){
    FloatingTextStringOnCreature("You cannot rest safely with all the golems about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "WellOfSouls"){
    FloatingTextStringOnCreature("You cannot rest safely with all the demons about.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TheCrypts"){
    FloatingTextStringOnCreature("You cannot rest safely within this crypt.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerOfTheDamned2"){
    FloatingTextStringOnCreature("You cannot rest safely near this evil tower.", oPC, TRUE);}
else if (GetTag(GetArea(oPC)) == "TowerOfTheDamned"){
    FloatingTextStringOnCreature("You cannot rest safely with all the vampires about.", oPC, TRUE);}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "PalaceOfDracz"){
    FloatingTextStringOnCreature("You cannot rest safely with all the elementals about.", oPC, TRUE);}
else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "CityOfThought"){
    FloatingTextStringOnCreature("You cannot rest safely with all the illithids about.", oPC, TRUE);}
else if (GetStringLeft(GetTag(GetArea(oPC)),12) == "CitadelLevel"){
    FloatingTextStringOnCreature("You cannot rest safely within the Citadel.", oPC, TRUE);}


else {
    SetLocalInt(oPC,"restallow",1);
    DelayCommand(2.0, AssignCommand(oPC, ActionRest()));
    DelayCommand(5.0, SetLocalInt(oPC,"restallow",0));}}

else {
    DelayCommand(2.0, AssignCommand(oPC, ActionRest()));}}
}
