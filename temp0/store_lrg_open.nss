void main()
{
    object oPC = GetPCSpeaker();
    object oStore = GetObjectByTag("OgreStore");
    OpenStore(oStore, oPC);
}
