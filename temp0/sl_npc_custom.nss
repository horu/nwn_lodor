// Custimize npc
#include "nwnx_creature"

void main()
{
    object npc = OBJECT_SELF;
    int level = GetHitDice(npc);

    int skill = SKILL_DISCIPLINE;

    int rank = GetSkillRank(skill, npc, TRUE);
    int rank_full = GetSkillRank(skill, npc, FALSE);
    int rank_base = rank_full * 2 - rank_full + rank + level / 2;
    if (rank_base > 90)
    {
        rank_base = 90;
    }
    else if (rank_base <= 0)
    {
        rank_base = 2;
    }
    NWNX_Creature_SetSkillRank(npc, skill, rank_base);
    int new_rank = GetSkillRank(skill, npc, TRUE);
    int new_rank_full = GetSkillRank(skill, npc, FALSE);
    PrintString("[sl_npc] [" + GetName(npc) + " " + IntToString(level) + "] Set disc skill "
        + IntToString(rank) + "/" + IntToString(rank_full) + " to "
        + IntToString(new_rank) + "/" + IntToString(new_rank_full));
}
