// Makes it so you have to be next to a fire to cook food.
void main()
{
object oPC = GetEnteringObject();

if ( GetIsPC(oPC) )
    {
    SetLocalInt(oPC,"cookallow",0);
    }
}
