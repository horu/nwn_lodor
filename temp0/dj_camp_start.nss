void main()
{
    object oActivator = GetItemActivator();

    if (GetSubRace(oActivator) == "Vampire")
    {
        FloatingTextStringOnCreature("Fire troubles you enough that you don't need to start one.", oActivator, FALSE);
    }

    else
    {
        if (GetTag(GetArea(oActivator)) == "HairfootGoods")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Hairfoot Goods.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "HobbitsHerbs")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Hobbit's Herbs.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "DragrinsForge")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Dragrin's Forge.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "ThicketTavern")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Thicket Tavern.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheGreatOakVillage")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Great Oak.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheWinterJewel")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Winter Jewel.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheFrozenForge")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Frozen Forge.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "BarbleysGoods")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Barbley's Goods.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "AldursHold")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Aldur's Hold.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "MurvedsTower")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Murved's Tower.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "HilltopTavern")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Hilltop Tavern.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheTowerOfTheSilverOrder")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Silver Order.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "VegnarMountain")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Vegnar Mountain.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheDrowsVault")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Drow's Vault.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheSunkenGarden")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Sunken Garden.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheDeepArcane")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Deep Arcane.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheMountainHall")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Mountain Hall.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "BankOfFaraldor")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Faraldor Bank.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheElvenArms")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Elven Arms.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheForestsFriend")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Forest's Friend.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TempleOfUronia")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Temple of Uronia.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TowerOfArcaneArts")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Tower of Arcane Arts.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "StarshineTavern")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Starshine Tavern.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheSturjsBlud")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Sturjs Blud.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheOrksSafe")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Orks Safe.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "FerTheJurney")
        {
            FloatingTextStringOnCreature("You cannot start a fire in this tent.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "TheShamunsTowur")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Shamuns Towur.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "WalkwayOfWind")
        {
            FloatingTextStringOnCreature(
                "You cannot start a fire in this windy void.  Perhaps a torch?",
                oActivator,
                FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "MinersGold")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Miner's Gold.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "DedrySupplies")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Dedry Supplies.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "GnomesGuard")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Gnome's Guard.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "DedrysGrown")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Dedry's Grown.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "EnchantedHermit")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Enchanted Hermit.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "RestfulInn")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Restful Inn.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "UnderearthBank")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Underearth Bank.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "BlackenedOre")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Blackened Ore.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "FertileDeep")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Fertile Deep.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "DarkArts")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Dark Arts.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "DrunkenDepths")
        {
            FloatingTextStringOnCreature("You cannot start a fire in the Drunken Depths.", oActivator, FALSE);
        }
        else if (GetTag(GetArea(oActivator)) == "VrethamsTower")
        {
            FloatingTextStringOnCreature("You cannot start a fire in Vretham's Tower.", oActivator, FALSE);
        }


        else
        {
            location oLocation = GetLocation(oActivator);
            SetPlaceableIllumination(oActivator, TRUE);
            DelayCommand(0.5, RecomputeStaticLighting(GetArea(oActivator)));
            CreateObject(OBJECT_TYPE_PLACEABLE, "lodoc_campfire", oLocation, TRUE);
        }
    }
}
