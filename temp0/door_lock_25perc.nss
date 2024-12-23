void main()
{
    int nRandom = d8(1);
    if (nRandom == 1){
      }
    else if (nRandom == 2){
      }
    else if (nRandom == 3){
      }
    else if (nRandom == 4){
      }
    else if (nRandom == 5){
      }
    else if (nRandom == 6){
      }
    else if (nRandom == 7){
      DelayCommand(20.0, SetLocked( OBJECT_SELF, 1));
      ActionWait(3600.0);
      ActionUnlockObject(OBJECT_SELF);}
    else if (nRandom == 8){
      DelayCommand(20.0, SetLocked( OBJECT_SELF, 1));
      ActionWait(3600.0);
      ActionUnlockObject(OBJECT_SELF);}
}
