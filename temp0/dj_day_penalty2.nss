// Checks to see if there is a race penalty for surface light
#include "x2_inc_itemprop"

void main()
{
    object oPC = OBJECT_SELF;
    object oArea = GetArea(oPC);
    int nDark = GetLocalInt(oPC, "darkness");
    int nHP = GetMaxHitPoints(oPC);
    int nDie = nHP + 100;

    // Setup the skill penalties
    object oSkills = GetItemInSlot(INVENTORY_SLOT_CARMOUR, oPC);

    // These Are The Bad Effects
    itemproperty ipRefPen = ItemPropertyReducedSavingThrow(IP_CONST_SAVEBASETYPE_REFLEX, 2);
    itemproperty ipDEXPen = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_DEX, 2);
    itemproperty ipDEXPen2 = ItemPropertyDecreaseAbility(IP_CONST_ABILITY_DEX, 1);
    itemproperty ipParryPen = ItemPropertyDecreaseSkill(SKILL_PARRY, 2);
    itemproperty ipDiscpPen = ItemPropertyDecreaseSkill(SKILL_DISCIPLINE, 2);
    itemproperty ipConcePen = ItemPropertyDecreaseSkill(SKILL_CONCENTRATION, 2);

    // These Are The Good Effects
    itemproperty ipHidePlain = ItemPropertyBonusFeat(FEAT_HIDE_IN_PLAIN_SIGHT);
    itemproperty ipHiding = ItemPropertySkillBonus(SKILL_HIDE, 5);
    itemproperty ipStealth = ItemPropertySkillBonus(SKILL_MOVE_SILENTLY, 5);

    // Now do the work
    if ((GetSubRace(oPC) == "Duergar") || (GetSubRace(oPC) == "Drow") || (GetSubRace(oPC) == "Vampire"))
    {
        if ((GetIsAreaAboveGround(oArea) == AREA_ABOVEGROUND) && (GetIsDay() == TRUE))
        {
            if (nDark == 1)
            {
                /* Do Nothing */
            }
            else
            {
                SetLocalInt(oPC, "darkness", 1);
                if (GetSubRace(oPC) == "Duergar")
                {
                    FloatingTextStringOnCreature("Arrgh! I curse the sun.", oPC, FALSE);
                    IPSafeAddItemProperty(oSkills, ipDEXPen);
                    IPSafeAddItemProperty(oSkills, ipRefPen);
                    IPSafeAddItemProperty(oSkills, ipParryPen);
                    IPSafeAddItemProperty(oSkills, ipDiscpPen);
                    IPSafeAddItemProperty(oSkills, ipConcePen);
                    itemproperty ipLoop = GetFirstItemProperty(oSkills);
                    while (GetIsItemPropertyValid(ipLoop))
                    {
                        if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_BONUS_FEAT ||
                            GetItemPropertyType(ipLoop) == ITEM_PROPERTY_SKILL_BONUS)
                            RemoveItemProperty(oSkills, ipLoop);
                        ipLoop = GetNextItemProperty(oSkills);
                    }
                }

                else if ((GetSubRace(oPC) == "Goblin") || (GetSubRace(oPC) == "Kobold"))
                {
                    DelayCommand(8.0, FloatingTextStringOnCreature("Arrgh! Me hate sun.", oPC, FALSE));
                    IPSafeAddItemProperty(oSkills, ipDEXPen2);
                }

                else if (GetSubRace(oPC) == "Drow")
                {
                    FloatingTextStringOnCreature("Arrgh! I curse the sun.", oPC, FALSE);
                    IPSafeAddItemProperty(oSkills, ipDEXPen2);
                    IPSafeAddItemProperty(oSkills, ipRefPen);
                    IPSafeAddItemProperty(oSkills, ipParryPen);
                    IPSafeAddItemProperty(oSkills, ipDiscpPen);
                    IPSafeAddItemProperty(oSkills, ipConcePen);
                    itemproperty ipLoop = GetFirstItemProperty(oSkills);
                    while (GetIsItemPropertyValid(ipLoop))
                    {
                        if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_SKILL_BONUS)
                            RemoveItemProperty(oSkills, ipLoop);
                        ipLoop = GetNextItemProperty(oSkills);
                    }
                }
                else if (GetSubRace(oPC) == "Vampire")
                {
                    effect eDamage = EffectDamage(nDie, DAMAGE_TYPE_MAGICAL, DAMAGE_POWER_PLUS_FIVE);
                    effect eVis = EffectVisualEffect(VFX_IMP_FLAME_M);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oPC);
                    eDamage = SupernaturalEffect(eDamage);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oPC);
                }
            }
        }

        else
        {
            if (nDark == 0)
            {
                /* Do Nothing */
            }
            else
            {
                SetLocalInt(oPC, "darkness", 0);
                if (GetSubRace(oPC) == "Duergar")
                {
                    FloatingTextStringOnCreature("Ahhh...I welcome the sun's absence.", oPC, FALSE);
                    itemproperty ipLoop = GetFirstItemProperty(oSkills);
                    while (GetIsItemPropertyValid(ipLoop))
                    {
                        if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_ABILITY_SCORE ||
                            GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_SKILL_MODIFIER ||
                            GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_SAVING_THROWS_SPECIFIC)
                            RemoveItemProperty(oSkills, ipLoop);
                        ipLoop = GetNextItemProperty(oSkills);
                    }
                    IPSafeAddItemProperty(oSkills, ipHidePlain);
                    IPSafeAddItemProperty(oSkills, ipHiding);
                    IPSafeAddItemProperty(oSkills, ipStealth);
                }

                else if ((GetSubRace(oPC) == "Goblin") || (GetSubRace(oPC) == "Kobold"))
                {
                    DelayCommand(8.0, FloatingTextStringOnCreature("Ahh...sun gone.", oPC, FALSE));
                    itemproperty ipLoop = GetFirstItemProperty(oSkills);
                    while (GetIsItemPropertyValid(ipLoop))
                    {
                        if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_ABILITY_SCORE)
                            RemoveItemProperty(oSkills, ipLoop);
                        ipLoop = GetNextItemProperty(oSkills);
                    }
                }

                else if (GetSubRace(oPC) == "Drow")
                {
                    FloatingTextStringOnCreature("Ahhh...I welcome the sun's absence.", oPC, FALSE);
                    itemproperty ipLoop = GetFirstItemProperty(oSkills);
                    while (GetIsItemPropertyValid(ipLoop))
                    {
                        if (GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_ABILITY_SCORE ||
                            GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_SKILL_MODIFIER ||
                            GetItemPropertyType(ipLoop) == ITEM_PROPERTY_DECREASED_SAVING_THROWS_SPECIFIC)
                            RemoveItemProperty(oSkills, ipLoop);
                        ipLoop = GetNextItemProperty(oSkills);
                    }
                    IPSafeAddItemProperty(oSkills, ipHiding);
                    IPSafeAddItemProperty(oSkills, ipStealth);
                }
                else if (GetSubRace(oPC) == "Vampire")
                {
                    // DO NOTHING
                }
            }
        }
    }
    else
    {
    }
}
