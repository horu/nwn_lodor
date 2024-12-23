void main()
{
object oPC = GetPCSpeaker();
object oBook = GetItemPossessedBy(oPC, "faction_report");
int nAlchemy = GetLocalInt(oBook, "alchemy");

     // If they have Brew Potion, they get a bonus
     if (GetHasFeat(FEAT_BREW_POTION, oPC)){
          int nSkill = nAlchemy + 20;
          SetLocalInt(oPC, "alchemy_s", nSkill);}
     else {
          SetLocalInt(oPC, "alchemy_s", nAlchemy);}

if (GetLocalInt(oPC, "alch_pick2") == 1){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM001");
     SetLocalString(oPC, "alchemy_m", "ld_crys_acid");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Greenstone");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Acid Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 2){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM007");
     SetLocalString(oPC, "alchemy_m", "ld_crys_conf");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Malachite");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Confusion Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 3){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM011");
     SetLocalString(oPC, "alchemy_m", "ld_crys_resist");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Garnet");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Resist Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 4){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM004");
     SetLocalString(oPC, "alchemy_m", "ld_crys_shad");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Phenalope");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Shadow Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 5){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM014");
     SetLocalString(oPC, "alchemy_m", "ld_crys_sppr");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Aventurine");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Spell Protection Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 6){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM003");
     SetLocalString(oPC, "alchemy_m", "ld_crys_amne");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Amethyst");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Amnesia Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 7){
     SetLocalInt(oPC, "alchemy_n", 80);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM015");
     SetLocalString(oPC, "alchemy_m", "ld_crys_disp");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Fluorspar");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Magic Dispel Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 8){
     SetLocalInt(oPC, "alchemy_n", 80);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM013");
     SetLocalString(oPC, "alchemy_m", "ld_crys_shld");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Alexandrite");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Shield Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 9){
     SetLocalInt(oPC, "alchemy_n", 80);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM002");
     SetLocalString(oPC, "alchemy_m", "ld_crys_burn");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Fire Agate");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Burning Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 10){
     SetLocalInt(oPC, "alchemy_n", 80);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM009");
     SetLocalString(oPC, "alchemy_m", "ld_crys_flm");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Fire Opal");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Flame Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 11){
     SetLocalInt(oPC, "alchemy_n", 90);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM008");
     SetLocalString(oPC, "alchemy_m", "ld_crys_tang");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Sapphire");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Tangle Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 12){
     SetLocalInt(oPC, "alchemy_n", 90);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM010");
     SetLocalString(oPC, "alchemy_m", "ld_crys_implo");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Topaz");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Implosion Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 13){
     SetLocalInt(oPC, "alchemy_n", 90);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM005");
     SetLocalString(oPC, "alchemy_m", "ld_crys_shrp");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Diamond");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Sharp Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 14){
     SetLocalInt(oPC, "alchemy_n", 90);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM006");
     SetLocalString(oPC, "alchemy_m", "ld_crys_fire");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Ruby");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Fire Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 15){
     SetLocalInt(oPC, "alchemy_n", 90);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "NW_IT_GEM012");
     SetLocalString(oPC, "alchemy_m", "ld_crys_contr");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Emerald");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Control Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 16){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem001");
     SetLocalString(oPC, "alchemy_m", "ld_crys_blind");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Blue Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Blinding Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 17){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem005");
     SetLocalString(oPC, "alchemy_m", "ld_crys_cham");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Green Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Chameleon Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 18){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem006");
     SetLocalString(oPC, "alchemy_m", "ld_crys_mcharm");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Orange Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Charm Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 19){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem003");
     SetLocalString(oPC, "alchemy_m", "ld_crys_haste");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Purple Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Speed Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 20){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem004");
     SetLocalString(oPC, "alchemy_m", "ld_crys_heal");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Red Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Healing Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 21){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem007");
     SetLocalString(oPC, "alchemy_m", "ld_crys_metor");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "White Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Meteor Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 22){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "x2_it_lightgem002");
     SetLocalString(oPC, "alchemy_m", "ld_crys_live");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Yellow Light Gem");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Resurrection Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 23){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "lodor_frostcrys");
     SetLocalString(oPC, "alchemy_m", "ld_crys_frst");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Frost Crystal");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Ice Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 24){
     SetLocalInt(oPC, "alchemy_n", 100);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "ld_dragon_tooth");
     SetLocalString(oPC, "alchemy_m", "ld_crys_drgn");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Dragon Tooth");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Dragon Crystals");}

if (GetLocalInt(oPC, "alch_pick2") == 25){
     SetLocalInt(oPC, "alchemy_n", 70);
     SetLocalString(oPC, "alchemy_b", "lodoc_pwdbag");
     SetLocalString(oPC, "alchemy_r", "wisp_corpse");
     SetLocalString(oPC, "alchemy_m", "lodor_wisp_dust");
     SetLocalString(oPC, "alchemy_b2", "Powder Bag");
     SetLocalString(oPC, "alchemy_r2", "Wisp Corpse");
     SetLocalString(oPC, "alchemy_m2", "Pouch of Wisp Dust Crystals");}

ExecuteScript("skill_alchemy1_2", oPC);
}
