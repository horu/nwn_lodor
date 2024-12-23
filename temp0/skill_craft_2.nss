void main()
{
object oPC = GetPCSpeaker();

// Black Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 1){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_blk");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_blk");}
     SetLocalString(oPC, "craft_sk_r2", "Black Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Black Dragon Scales");}

// Blue Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 2){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_blu");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_blue");}
     SetLocalString(oPC, "craft_sk_r2", "Blue Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Blue Dragon Scales");}

// Brass Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 3){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_brs");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_brs");}
     SetLocalString(oPC, "craft_sk_r2", "Brass Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Brass Dragon Scales");}

// Bronze Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 4){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_bnz");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_brnz");}
     SetLocalString(oPC, "craft_sk_r2", "Bronze Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Bronze Dragon Scales");}

// Copper Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 5){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_cop");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_cop");}
     SetLocalString(oPC, "craft_sk_r2", "Copper Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Copper Dragon Scales");}

// Gold Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 6){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_gld");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_gold");}
     SetLocalString(oPC, "craft_sk_r2", "Gold Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Gold Dragon Scales");}

// Green Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 7){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_grn");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_grn");}
     SetLocalString(oPC, "craft_sk_r2", "Green Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Green Dragon Scales");}

// Prismatic Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 8){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_psm");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_prsm");}
     SetLocalString(oPC, "craft_sk_r2", "Prismatic Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Prismatic Dragon Scales");}

// Red Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 9){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_red");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_red");}
     SetLocalString(oPC, "craft_sk_r2", "Red Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Red Dragon Scales");}

// Shadow Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 10){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_shd");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_shad");}
     SetLocalString(oPC, "craft_sk_r2", "Shadow Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Shadow Dragon Scales");}

// Silver Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 11){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_sil");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_silv");}
     SetLocalString(oPC, "craft_sk_r2", "Silver Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Silver Dragon Scales");}

// White Dragon Scales
if (GetLocalInt(oPC, "skil_craft") == 12){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "ld_drgn_hide_wht");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_meddrg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_meddrg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_wht");}
     SetLocalString(oPC, "craft_sk_r2", "White Dragon Hide");
     SetLocalString(oPC, "craft_sk_m2", "White Dragon Scales");}

// Basilisk Armor
if (GetLocalInt(oPC, "skil_craft") == 13){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_basilisk_pl");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_litb");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_litb");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_bask");}
     SetLocalString(oPC, "craft_sk_r2", "Basilisk Hide");
     SetLocalString(oPC, "craft_sk_m2", "Basilisk Armor");}

// Hell Hound Armor
if (GetLocalInt(oPC, "skil_craft") == 14){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_hellhnd_skin");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_litf");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_litf");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_hh");}
     SetLocalString(oPC, "craft_sk_r2", "Hell Hound Skin");
     SetLocalString(oPC, "craft_sk_m2", "Hell Hound Armor");}

// Malar Panther Armor
if (GetLocalInt(oPC, "skil_craft") == 15){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_mpanther_hd");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_litp");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_litp");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_malp");}
     SetLocalString(oPC, "craft_sk_r2", "Malar Panther Hide");
     SetLocalString(oPC, "craft_sk_m2", "Malar Panther Armor");}

// Shadow Hound Armor
if (GetLocalInt(oPC, "skil_craft") == 16){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_shound_pelt");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_lits");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_lits");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_shnd");}
     SetLocalString(oPC, "craft_sk_r2", "Shadow Hound Hide");
     SetLocalString(oPC, "craft_sk_m2", "Shadow Hound Armor");}

// Winter Wolf Armor
if (GetLocalInt(oPC, "skil_craft") == 17){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_wwolf_pelt");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_litw");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_litw");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_ww");}
     SetLocalString(oPC, "craft_sk_r2", "Winter Wolf Hide");
     SetLocalString(oPC, "craft_sk_m2", "Winter Wolf Armor");}

// Demon Mail
if (GetLocalInt(oPC, "skil_craft") == 18){
     SetLocalInt(oPC, "craft_sk_n", 8);
     SetLocalString(oPC, "craft_sk_r", "demon_skin");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_hevd");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_hevd");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_demn");}
     SetLocalString(oPC, "craft_sk_r2", "Demon Skin");
     SetLocalString(oPC, "craft_sk_m2", "Demon Mail");}

// Gorgon Mail
if (GetLocalInt(oPC, "skil_craft") == 19){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_gorgon_pl");
     if (GetSubRace(oPC) == "Minotaur"){SetLocalString(oPC, "craft_sk_m", "eq_mino_hevg");}
     else if (GetSubRace(oPC) == "Ogre"){SetLocalString(oPC, "craft_sk_m", "eq_ogre_hevg");}
     else {SetLocalString(oPC, "craft_sk_m", "ld_armur_gorg");}
     SetLocalString(oPC, "craft_sk_r2", "Gorgon Hide");
     SetLocalString(oPC, "craft_sk_m2", "Gorgon Mail");}

// Shadow Pack
if (GetLocalInt(oPC, "skil_craft") == 20){
     SetLocalInt(oPC, "craft_sk_n", 4);
     SetLocalString(oPC, "craft_sk_r", "ld_shound_pelt");
     SetLocalString(oPC, "craft_sk_m", "ld_armur_spac");
     SetLocalString(oPC, "craft_sk_r2", "Shadow Hound Hide");
     SetLocalString(oPC, "craft_sk_m2", "Shadow Pack");}

ExecuteScript("skill_craft", oPC);
}
