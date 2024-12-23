void main()
{
object oPC = GetLastUsedBy();

if (GetSubRace(oPC) == "Vampire"){
    FloatingTextStringOnCreature("Fire troubles you enough that you don't need fire wood.", oPC, FALSE);}
else {
    location lWood = GetLocation(OBJECT_SELF);
    CreateObject(OBJECT_TYPE_PLACEABLE, "spw_lodor", lWood, FALSE, "spw_firewood");
    CreateItemOnObject("fire_wood", oPC, 1);
    FloatingTextStringOnCreature("You have obtained some fire wood.", oPC, TRUE);
    DestroyObject(OBJECT_SELF);}
}
