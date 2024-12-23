// Makes an area safe to rest in
void main()
{
object oPC = GetEnteringObject();
DelayCommand(5.0, ExecuteScript("dj_save_loc", oPC));

if ( GetIsPC(oPC) ){
    if (GetTag(OBJECT_SELF) == "trg_safe_restz"){}
    else if (GetTag(OBJECT_SELF) == "trg_safe_vampire"){
         if (GetSubRace(oPC) == "Vampire"){
              SendMessageToPC(oPC,"You feel safe enough to rest here.");
              SetLocalInt(oPC,"restallow",1);}}
    else {
        SendMessageToPC(oPC,"You feel safe enough to rest here.");
        SetLocalInt(oPC,"restallow",1);}
}}
