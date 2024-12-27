void main()
{
    object oPC = GetLastPerceived();
    if (!GetIsPC(oPC)) return;
    if (!GetLastPerceptionSeen()) return;
    if (!GetReputation(OBJECT_SELF, oPC) > 99) return;
    int DoOnce = GetLocalInt(oPC, GetTag(OBJECT_SELF));
    if (DoOnce == TRUE) return;
    SetLocalInt(oPC, GetTag(OBJECT_SELF), TRUE);
    object oTarget = GetObjectByTag("ld_vasestra");
    AssignCommand(oTarget, ActionStartConversation(oPC));

    ExecuteScript("nw_c2_default2", OBJECT_SELF);
}
