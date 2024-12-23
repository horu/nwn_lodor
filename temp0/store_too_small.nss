void main()
{

if (GetRacialType(GetLastSpeaker()) == RACIAL_TYPE_FEY){
     string sSayThis = "Sorry little one.  My wares are too big for you to use.";
     SpeakString(sSayThis);}
else {
     ExecuteScript("nw_c2_default4", OBJECT_SELF);}
}
