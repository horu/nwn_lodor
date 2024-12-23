// Makes it so you can use the Climbing Rope
#include "nw_i0_tool"
void main()
{
object oPC = GetEnteringObject();

SetLocalInt(oPC,"climb",1);

// Hole Saryl Swamp
if (GetTag(OBJECT_SELF) == "trg_climb_1"){
    SetLocalInt(oPC,"climbing",1);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You could probably use your rope to climb down this hole.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could probably use it to climb down this hole.", oPC, FALSE);}}


// Hole Frozen Trail
else if (GetTag(OBJECT_SELF) == "trg_climb_2"){
    SetLocalInt(oPC,"climbing",2);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You could probably use your rope to climb down this icy chasm.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could probably use it to climb down this icy chasm.", oPC, FALSE);}}

// Brakal's Tower
else if (GetTag(OBJECT_SELF) == "trg_climb_3"){
    SetLocalInt(oPC,"climbing",3);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You could probably use your rope to climb down the side of Brakal's Tower.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could probably use it to climb down the side of Brakal's Tower.", oPC, FALSE);}}

// Altar of Unur (DOWN)
else if (GetTag(OBJECT_SELF) == "trg_climb_4"){
    SetLocalInt(oPC,"climbing",4);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You could probably use your rope to climb down this ledge.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could probably use it to climb down this ledge.", oPC, FALSE);}}

// Altar of Unur (UP)
else if (GetTag(OBJECT_SELF) == "trg_climb_5"){
    SetLocalInt(oPC,"climbing",5);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You see a ledge above you that you could get to with your rope.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You see a ledge above you that you could get to if you had a rope.", oPC, FALSE);}}

// Pit in Daclor's Crossing
else if (GetTag(OBJECT_SELF) == "trg_climb_6"){
    SetLocalInt(oPC,"climbing",6);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You could use your rope to descend into the depths below.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could probably descend into the depths below.", oPC, FALSE);}}

// To Red Dragon Cave in Daclor's Crossing UP
else if (GetTag(OBJECT_SELF) == "trg_climb_7"){
    SetLocalInt(oPC,"climbing",7);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You notice a cave above you.  Your rope might be useful here.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You notice a cave above you.  A rope might be useful here.", oPC, FALSE);}}

// To Red Dragon Cave in Daclor's Crossing DOWN
else if (GetTag(OBJECT_SELF) == "trg_climb_8"){
    SetLocalInt(oPC,"climbing",8);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can use your rope to climb down to the forest floor.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You could use a rope to climb down to the forest floor.", oPC, FALSE);}}

// Clarion Woods (To Cross the Pit I)
else if (GetTag(OBJECT_SELF) == "trg_climb_9"){
    SetLocalInt(oPC,"climbing",9);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("If you use your rope, you can wrap it around that tree on the other side.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could wrap it around that tree on the other side.", oPC, FALSE);}}

// Clarion Woods (To Cross the Pit II)
else if (GetTag(OBJECT_SELF) == "trg_climb_10"){
    SetLocalInt(oPC,"climbing",10);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("If you use your rope, you can wrap it around that tree on the other side.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("If you had a rope, you could wrap it around that tree on the other side.", oPC, FALSE);}}

// Clarion Woods (Harpy Cliffs)
else if (GetTag(OBJECT_SELF) == "trg_climb_11"){
    SetLocalInt(oPC,"climbing",11);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see some cliffs above.  Perhaps your rope can help.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see some cliffs above.  Perhaps a rope could help.", oPC, FALSE);}}

// Prael Cliff (Silver Dragon)
else if (GetTag(OBJECT_SELF) == "trg_climb_12"){
    SetLocalInt(oPC,"climbing",12);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see a forest area below.  Perhaps your rope can help.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see a forest area below.  Perhaps a rope could help.", oPC, FALSE);}}

// Prael Cliff (Silver Dragon)
else if (GetTag(OBJECT_SELF) == "trg_climb_13"){
    SetLocalInt(oPC,"climbing",13);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the cliff above.  Your rope can help you scale the sides.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the cliff above.  A rope could help you scale the sides.", oPC, FALSE);}}

// Shifting Growth (Gold Dragon)
else if (GetTag(OBJECT_SELF) == "trg_climb_14"){
    SetLocalInt(oPC,"climbing",14);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see a castle on the cliff above.  Your rope can help you scale the sides.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see a castle on the cliff above.  A rope could help you scale the sides.", oPC, FALSE);}}

// Shifting Growth (Gold Dragon)
else if (GetTag(OBJECT_SELF) == "trg_climb_15"){
    SetLocalInt(oPC,"climbing",15);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the Shifting Growth below.  Your rope can help you climb down.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the Shifting Growth below.  A rope could help you climb down.", oPC, FALSE);}}

// Glowian Forest (Green Dragon)
else if (GetTag(OBJECT_SELF) == "trg_climb_16"){
    SetLocalInt(oPC,"climbing",16);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the cavern floor below.  Your rope can help you climb down.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the cavern floor below.  A rope could help you climb down.", oPC, FALSE);}}

// Glowian Forest (Cliffs of Fallen)
else if (GetTag(OBJECT_SELF) == "trg_climb_17"){
    SetLocalInt(oPC,"climbing",17);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see some ruins on the cliffs above.  Your rope can help you climb these cliffs.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see some ruins on the cliffs above.  A rope could help you climb these cliffs.", oPC, FALSE);}}

// Cliffs of Fallen
else if (GetTag(OBJECT_SELF) == "trg_climb_18"){
    SetLocalInt(oPC,"climbing",18);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the forest below.  Your rope can help you climb down this cliff.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the forest below.  A rope could help you climb down this cliff.", oPC, FALSE);}}

// Harpy Cliffs
else if (GetTag(OBJECT_SELF) == "trg_climb_19"){
    SetLocalInt(oPC,"climbing",19);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the forest below.  Your rope can help you climb down this cliff.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the forest below.  A rope could help you climb down this cliff.", oPC, FALSE);}}

// Walkway of Wind
else if (GetTag(OBJECT_SELF) == "trg_climb_20"){
    SetLocalInt(oPC,"climbing",20);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("Your rope could probably help you get across this void.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("A rope could probably help you get across this void.", oPC, FALSE);}}

// Walkway of Wind
else if (GetTag(OBJECT_SELF) == "trg_climb_21"){
    SetLocalInt(oPC,"climbing",21);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("Your rope could probably help you get across this void.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("A rope could probably help you get across this void.", oPC, FALSE);}}

// Falcor Nest
else if (GetTag(OBJECT_SELF) == "trg_climb_22"){
    SetLocalInt(oPC,"climbing",22);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the Underwood below.  Perhaps your rope can help.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the Underwood below.  Perhaps a rope can help.", oPC, FALSE);}}

// Dedry Tunnels
else if (GetTag(OBJECT_SELF) == "trg_climb_23"){
    SetLocalInt(oPC,"climbing",23);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("This rope has been cut below.  Perhaps you can use your rope.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("This rope has been cut below.  Too bad you don't have a rope.", oPC, FALSE);}}

// The Hive Hole
else if (GetTag(OBJECT_SELF) == "trg_climb_24"){
    SetLocalInt(oPC,"climbing",24);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see trees above you.  Your rope could help you get up there.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see trees above you.  A rope could help you get up there.", oPC, FALSE);}}

// Vegnar Passageway Bridge
else if (GetTag(OBJECT_SELF) == "trg_climb_25"){
    SetLocalInt(oPC,"climbing",25);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("The bridge that was here has been removed.  Perhaps your rope can get you across.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("The bridge that was here has been removed.  Perhaps a rope could get you across.", oPC, FALSE);}}

// Vegnar Passageway Bridge
else if (GetTag(OBJECT_SELF) == "trg_climb_26"){
    SetLocalInt(oPC,"climbing",26);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("The bridge that was here has been removed.  Perhaps your rope can get you across.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("The bridge that was here has been removed.  Perhaps a rope could get you across.", oPC, FALSE);}}

// Well of Souls
else if (GetTag(OBJECT_SELF) == "trg_climb_27"){
    SetLocalInt(oPC,"climbing",27);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see a faint light below.  Perhaps your rope could help.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see a faint light below.  Perhaps a rope could help.", oPC, FALSE);}}

// Air Witch
else if (GetTag(OBJECT_SELF) == "trg_climb_28"){
    SetLocalInt(oPC,"climbing",28);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the forest floor below.  Your rope can help you climb down.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the forest floor below.  A rope could help you climb down.", oPC, FALSE);}}

// Air Witch
else if (GetTag(OBJECT_SELF) == "trg_climb_29"){
    SetLocalInt(oPC,"climbing",29);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You notice a tree fort above you.  Your rope could help you climb up.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You notice a tree fort above you.  A rope could help you climb up.", oPC, FALSE);}}

// Earth Witch DOWN
else if (GetTag(OBJECT_SELF) == "trg_climb_30"){
    SetLocalInt(oPC,"climbing",30);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can see the poisonous bog below.  Your rope can help you get down.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can see the poisonous bog below.  A rope could help you get down.", oPC, FALSE);}}

// Earth Witch UP
else if (GetTag(OBJECT_SELF) == "trg_climb_31"){
    SetLocalInt(oPC,"climbing",31);
    if((!HasItem(oPC, "climbing_rope")) == FALSE){
        FloatingTextStringOnCreature("You can barely see a house on the mountain above.  Your rope can help you scale the sides.", oPC, FALSE);}
    else {
        FloatingTextStringOnCreature("You can barely see a house on the mountain above.  A rope could help you scale the sides.", oPC, FALSE);}}



}
