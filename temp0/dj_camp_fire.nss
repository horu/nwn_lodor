//Campfire destroys itself in 5 minutes.
void main()
{
    DelayCommand(298.5, SetPlaceableIllumination(OBJECT_SELF, FALSE));
    DelayCommand(299.0, RecomputeStaticLighting(GetArea(OBJECT_SELF)));
    DestroyObject(OBJECT_SELF, 300.0);
}
