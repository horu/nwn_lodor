void main()
{
    object oPC = GetPCSpeaker();
    AssignCommand(oPC, ClearAllActions());
    AssignCommand(oPC, ActionPauseConversation());
    AssignCommand(oPC, ActionWait(5.0));
    AssignCommand(oPC, ActionResumeConversation());
}
