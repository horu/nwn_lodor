// This script is called from the OnRest script.
// It sees what monsters to spawn in case the rest
// is interrupted.
void main()
{
object oPC = GetLastPCRested();
int iAllow = GetLocalInt(oPC,"restallow");
location lSpawn = GetLocation(oPC);

if (iAllow != 1){
    {int nRandom = d6(1);
        if (nRandom == 1){
            if (GetTag(GetArea(oPC)) == "TheShadedWood"){
                        CreateObject(OBJECT_TYPE_CREATURE, "goblina001", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "ThePurgs"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "gobwiza001", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "goblina001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheUnderwood"){
                        CreateObject(OBJECT_TYPE_CREATURE, "bugbeara001", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "MiradirsGate"){
                        CreateObject(OBJECT_TYPE_CREATURE, "creature", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheVileBog"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_swamp_dragon", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "spidgiant001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheBruolBugbears"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "bugbeara001", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "bugchiefa001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "NilasFields"){
                        CreateObject(OBJECT_TYPE_CREATURE, "deeprothe002", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "HarpyCliffs"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_harpy", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheStonesOfConfusion"){
                        CreateObject(OBJECT_TYPE_CREATURE, "minotaur001", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheShiftingGrowth"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_walkwood", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "zep_owlbear001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "MiradirsGate"){
                        CreateObject(OBJECT_TYPE_CREATURE, "creature", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheWickedMarsh"){
                        CreateObject(OBJECT_TYPE_CREATURE, "dj_boarbeast", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "MiradirsGate2"){
                        CreateObject(OBJECT_TYPE_CREATURE, "umberhulk", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "MiradirsCastle"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "dj_bone_gol", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "dj_clay_gol", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "SarylSwamp"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "oldwarb001", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "oldwarb001", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "oldwarb001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheVileTower"){
                        CreateObject(OBJECT_TYPE_CREATURE, "vileskull", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "PaelHills"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giantetn", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "PraelCliffs"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ogre", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FortressOfZaltos"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_constructmg", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheShiveringWoods"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_skeleton", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheDig"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ant", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_antsol", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheTuranBattlefield"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "turanwarrior", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_turan", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "DenOfDrub"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ogre", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ogrechief", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "FrozenTrail"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_wolfwint", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_icecrawl", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TowerBrakal2"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_wolfwint", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "FrozenDepths"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_iceelly", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TowerOfBrakal"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstf", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TowerBrakal3"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstf", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_giant_frstm", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "DaclorsCrossing"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_btlstag", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FrostbiteHills"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstkobld", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FrostbiteMines"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstkobld", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstkobldw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "PitsOfFrost"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstdemon", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "NerodHills"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnthill", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "WroksLair"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ogre", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnthill", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "WhisperingWoods"){
                if (GetSubRace(oPC) != "Vampire"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_thrall", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shadhound", lSpawn, FALSE);}}}}
            else if (GetTag(GetArea(oPC)) == "ClarionWoodlands"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_btlbomb", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "Basement"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_grymp001", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_grymp", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_smspider", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "GlowianForest"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_troll", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "VegnarPass"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_knoll", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "DrigdugsLair"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_troll", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_troll", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_troll", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "KabardRuins"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "KabardRuins2"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gnoll", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "CliffsOfTheFallen"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_fallenwa", lSpawn, FALSE);}
            else if (GetStringLeft(GetTag(GetArea(oPC)),16) == "FortressOfZaltos"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_battdevour", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_battdevour", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_helmhorr", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_battdevour", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "VegnarPlains"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hobgoblin", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "BaolTribe"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hobgoblin", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hobgoblinw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "DelirForest"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gagorc", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gagorc", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gagorc", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "VrugarOrcTribe"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gagorc2", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gagorcw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "Sewers"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ratman", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "spidgiant001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "NilasForest"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_skeleton", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FalcorNest"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_falcor", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "CursedGlades"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_skeleton", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "zombie002", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TowerOfRunes"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellyair", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellyearth", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellyfire", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellywtr", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "WebOfShira"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shirwar", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shirwar", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shirwar", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "MelaganJungle"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_melaganw", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_melaganw", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_melaganw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "WearyWay"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_malar", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_jcrawler", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "MelaganRuins"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_melaganc", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_melaganw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "RakshasaCamp"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_rakshasi", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_rakshasa", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "ManticoreDen"){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_manticore", lSpawn, FALSE);}
            else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "TempleOfTears"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_yuan_ti2", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_yuan_ti", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "GrogorJungle"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_btlfire", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstkobld001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "VankCaves"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_vankkbldw", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_frstkobld001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "PitOfDar"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephited", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephite", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephitem", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_mephites", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "Wastelands"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrp", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hive", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "NestOfManscorpions"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrpk", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_manscrpw", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheHive"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hivec", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hivew", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "AridDunes"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_hive", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "Oasis"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_lavagolem", lSpawn, FALSE);}
            else if (GetStringLeft(GetTag(GetArea(oPC)),15) == "DaclorsMountain"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gntfirem", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hellhound", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "DedryWoods"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_bandit", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "DedryCemetery"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ghoul", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_skeleton", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "BanditCamp"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bandit", lSpawn, FALSE);
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bandit", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bandit", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "DedryCatacombs"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ghast", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "wraith001", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "HorfiladManor"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_wight", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hfservant2", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "HorfiladsDungeon"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_wight", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hfservant2", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TaraksFortress"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_taraklizc", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_tarakliz", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "BeetleNest"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_btlstink", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TreeTop"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_ellyairw", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "IslandOfAncientStone"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_ellywatw", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "MountainOfPestilence"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_rockgol", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "PiratesCove"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_pirate_skel", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_pirate_zom", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "HollowScreams"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_mushroom", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "GremlinHole"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_gremlin", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "Clouds"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_cyclops", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "OldCity2"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "dj_goblin_dug", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_kobold", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "OldCity"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_brute", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "HallsOfStone"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_maedar", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_medusa", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "CaveOfEyes"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_gazer1", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FortressOfGlomarin3"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_golemiron", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "FortressOfGlomarin"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_golemmith", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_golemadm", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "WellOfSouls"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_succubus", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_vrock", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheScorn"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "druzkuwarrior", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_garxlo", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TheCrypts"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_skeldevour", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "TheVault"){
                {int nRandom = d6(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_vaultogre", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_gargoyle", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hhorror", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_devour", lSpawn, FALSE);}
                    else if (nRandom == 5){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_grayrend", lSpawn, FALSE);}
                    else if (nRandom == 6){
                        CreateObject(OBJECT_TYPE_CREATURE, "NW_UMBERHULK", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "TowerOfTheDamned2"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shadhound", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_thrall", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "RuinsOfJarehar"){
                if (GetSubRace(oPC) == "Vampire"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_shfiend", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ghouldrav", lSpawn, FALSE);}}}
                else {
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_vampire", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_thrall", lSpawn, FALSE);}}}}
            else if (GetTag(GetArea(oPC)) == "TowerOfTheDamned"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_vampire", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_thrall", lSpawn, FALSE);}}}
            else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "PalaceOfDracz"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcd", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcp", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrci", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_ellydrcmc", lSpawn, FALSE);}}}
            else if (GetStringLeft(GetTag(GetArea(oPC)),13) == "CityOfThought"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_mindflayer2", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelOne"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hellhound2", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_hellion", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelTwo"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_citzombie001", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_citzombie", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelThree"){
                 CreateObject(OBJECT_TYPE_CREATURE, "grave_digger", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelFour"){
                {int nRandom = d4(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_clay", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_crystal", lSpawn, FALSE);}
                    else if (nRandom == 3){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_shroom", lSpawn, FALSE);}
                    else if (nRandom == 4){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_doll_skel", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelFive"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_skel_knight", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelSix"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_citwarrior", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "CitadelLevelSeven"){
                CreateObject(OBJECT_TYPE_CREATURE, "ld_citwarrior", lSpawn, FALSE);}
            else if (GetTag(GetArea(oPC)) == "GrandulsHold"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_skelbrute2", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_lizman2", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "GrandulsHold2"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_bloodspid", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_granduloy", lSpawn, FALSE);}}}
            else if (GetTag(GetArea(oPC)) == "SapharalCoastline"){
                {int nRandom = d2(1);
                    if (nRandom == 1){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_seahag", lSpawn, FALSE);}
                    else if (nRandom == 2){
                        CreateObject(OBJECT_TYPE_CREATURE, "ld_sirine", lSpawn, FALSE);}}}


            else {
                // Do Nothing
                }}}}
else {}
}
