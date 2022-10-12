local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:ParseBags(playerName)
	GlockTracker:ShadowlandsParsePersonalBags(playerName);
	if(IsReagentBankUnlocked()) then
		GlockTracker:ShadowlandsParseReagentBank(playerName);
	end
	if (GlockTracker:BankOpen()) then
        GlockTracker:ShadowlandsParsePersonalBank(playerName);
    end    
end

function GlockTracker:CanCollectShadowlands()
	return self.db.profile.Shadowlands.Collect;
end

function GlockTracker:ToggleCollectShadowlands(info, val)
    self.db.profile.Shadowlands.Collect = val;
end

function GlockTracker:CanShowSlCloth(info)
    return self.db.profile.Shadowlands.ShowCloth;
end

function GlockTracker:GetShroudedClothNeeded(info)
    return self.db.profile.Shadowlands.Cloth.ShroudedCloth.Need;
end

function GlockTracker:GetClothDb(playerName)
	return self.db.global[playerName].Shadowlands.Cloth
end

function GlockTracker:GetLightlessSilkNeeded(info)
    return self.db.profile.Shadowlands.Cloth.LightlessSilk.Need;
end

function GlockTracker:ShadowlandsParsePersonalBags(playerName)
    if(GlockTracker:CanCollectShadowlands()) then

	    local herbDBCount = 0;
        local herbNSCount = 0;
        local herbRGCount = 0;
        local herbMTCount = 0;
        local herbWTCount = 0;
        local herbVTCount = 0;
        local fishingLSCount = 0;
        local fishingSPCount = 0;
        local fishingPBCount = 0;
        local fishingIACount = 0;
        local fishingSpineCount = 0;
        local fishingETCount = 0;
        local clothSCCount = 0;
        local clothLSCount = 0;
        local laestriteOreCount = 0;
        local elethiumOreCount = 0;
        local soleniumOreCount = 0;
        local oxxeinOreCount = 0;
        local phaedrumOreCount = 0;
        local sinvyrOreCount = 0;
        local desolateLeatherCount = 0;
        local pallidBoneCount = 0;
        local callousHideCount = 0;
        local meatAetheral = 0;
        local meatCreepyCrawler = 0;
        local meatPhantasmal = 0;
        local meatRawSeraphic = 0;
        local meatShadowy = 0;
        local meatTenebrous = 0;

        for i = 0, 4 do
            local slots = GetContainerNumSlots(i);
            for s = 0, slots do
                icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(i, s);
                --Herbs
                if (itemID == 171315) then
                    herbNSCount = herbNSCount + itemCount;
                elseif (itemID == 169701) then
                    herbDBCount = herbDBCount + itemCount;
                elseif (itemID == 168586) then
                    herbRGCount = herbRGCount + itemCount;
                elseif (itemID == 168589) then
                    herbMTCount = herbMTCount + itemCount;
                elseif (itemID == 168583) then
                    herbWTCount = herbWTCount + itemCount;
                elseif (itemID == 170554) then
                --Fishing
                    herbVTCount = herbVTCount + itemCount;
                elseif (itemID == 173032) then
                    fishingLSCount = fishingLSCount + itemCount;
                elseif (itemID == 173034) then
                    fishingSPCount = fishingSPCount + itemCount;
                elseif (itemID == 173035) then
                    fishingPBCount = fishingPBCount + itemCount;
                elseif (itemID == 173033) then
                    fishingIACount = fishingIACount + itemCount;
                elseif (itemID == 173036) then
                    fishingSpineCount = fishingSpineCount + itemCount;
                elseif (itemID == 173037) then
                    fishingETCount = fishingETCount + itemCount;
                --Cloth
                elseif (itemID == 173202 and GlockTracker:CanShowSlCloth()) then
                    clothSCCount = clothSCCount + itemCount;
                elseif (itemID == 173204 and GlockTracker:CanShowSlCloth()) then
                    clothLSCount = clothLSCount + itemCount;
                --Ore
                elseif (itemID == 171828) then
                    laestriteOreCount = laestriteOreCount + itemCount;
                elseif (itemID == 171833) then
                    elethiumOreCount = elethiumOreCount + itemCount;
                elseif (itemID == 171829) then
                    soleniumOreCount = soleniumOreCount + itemCount;
                elseif (itemID == 171830) then
                    oxxeinOreCount = oxxeinOreCount + itemCount;
                elseif (itemID == 171831) then
                    phaedrumOreCount = phaedrumOreCount + itemCount;
                elseif (itemID == 171832) then
                --leather
                    sinvyrOreCount = sinvyrOreCount + itemCount;
                elseif (itemID == 172089) then
                    desolateLeatherCount = desolateLeatherCount + itemCount;
                elseif (itemID == 172092) then
                    pallidBoneCount = pallidBoneCount + itemCount;
                elseif (itemID == 172094) then
                --meat
                    callousHideCount = callousHideCount + itemCount;
                elseif (itemID == 172052) then
                    meatAetheral = meatAetheral + itemCount;
                elseif (itemID == 179314) then
                    meatCreepyCrawler = meatCreepyCrawler + itemCount;
                elseif (itemID == 172055) then
                    meatPhantasmal = meatPhantasmal + itemCount;
                elseif (itemID == 172054) then
                    meatRawSeraphic = meatRawSeraphic + itemCount;
                elseif (itemID == 179315) then
                    meatShadowy = meatShadowy + itemCount;
                elseif (itemID == 172053) then
                    meatTenebrous = meatTenebrous + itemCount;
                end
            end
        end

        self.db.global[playerName].Shadowlands.Herbs.DeathBlossom.Bag = herbDBCount;
        self.db.global[playerName].Shadowlands.Herbs.NightShade.Bag = herbNSCount;
        self.db.global[playerName].Shadowlands.Herbs.RisingGlory.Bag = herbRGCount;
        self.db.global[playerName].Shadowlands.Herbs.Marrowroot.Bag = herbMTCount;
        self.db.global[playerName].Shadowlands.Herbs.Widowbloom.Bag = herbWTCount;
        self.db.global[playerName].Shadowlands.Herbs.VigilsTorch.Bag = herbVTCount;

        self.db.global[playerName].Shadowlands.Fish.LostSole.Bag = fishingLSCount;
        self.db.global[playerName].Shadowlands.Fish.SilverPike.Bag = fishingSPCount;
        self.db.global[playerName].Shadowlands.Fish.PoketBoneFish.Bag = fishingPBCount;
        self.db.global[playerName].Shadowlands.Fish.Iridescent.Bag = fishingIACount;
        self.db.global[playerName].Shadowlands.Fish.SpinefinPiranha.Bag = fishingSpineCount;
        self.db.global[playerName].Shadowlands.Fish.Elysian.Bag = fishingETCount;
        

        self.db.global[playerName].Shadowlands.Cloth.LightlessSilk.Bag = clothLSCount;
        self.db.global[playerName].Shadowlands.Cloth.ShroudedCloth.Bag = clothSCCount;

        self.db.global[playerName].Shadowlands.Ore.LaestriteOre.Bag = laestriteOreCount;
        self.db.global[playerName].Shadowlands.Ore.ElethiumOre.Bag = elethiumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SoleniumOre.Bag = soleniumOreCount;
        self.db.global[playerName].Shadowlands.Ore.OxxeinOre.Bag = oxxeinOreCount;
        self.db.global[playerName].Shadowlands.Ore.PhaedrumOre.Bag = phaedrumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SinvyrOre.Bag = sinvyrOreCount;

        self.db.global[playerName].Shadowlands.Leather.DesolateLeather.Bag = desolateLeatherCount;
        self.db.global[playerName].Shadowlands.Leather.PallidBone.Bag = pallidBoneCount;
        self.db.global[playerName].Shadowlands.Leather.CallousHide.Bag = callousHideCount;

        self.db.global[playerName].Shadowlands.Meat.Athereal.Bag = meatAetheral;
        self.db.global[playerName].Shadowlands.Meat.CreepingCrawler.Bag = meatCreepyCrawler;
        self.db.global[playerName].Shadowlands.Meat.PhantasmalHaunch.Bag = meatPhantasmal;
        self.db.global[playerName].Shadowlands.Meat.RawSeraphicWing.Bag = meatRawSeraphic;
        self.db.global[playerName].Shadowlands.Meat.ShadowyShank.Bag = meatShadowy;
        self.db.global[playerName].Shadowlands.Meat.TenebrousRibs.Bag = meatTenebrous;
        
    end
end

function GlockTracker:ShadowlandsParseReagentBank(playerName)
    if(GlockTracker:CanCollectShadowlands()) then

	    local herbDBCount = 0;
        local herbNSCount = 0;
        local herbRGCount = 0;
        local herbMTCount = 0;
        local herbWTCount = 0;
        local herbVTCount = 0;
        local fishingLSCount = 0;
        local fishingSPCount = 0;
        local fishingPBCount = 0;
        local fishingIACount = 0;
        local fishingSpineCount = 0;
        local fishingETCount = 0;
        local clothSCCount = 0;
        local clothLSCount = 0;
        local laestriteOreCount = 0;
        local elethiumOreCount = 0;
        local soleniumOreCount = 0;
        local oxxeinOreCount = 0;
        local phaedrumOreCount = 0;
        local sinvyrOreCount = 0;
        local desolateLeatherCount = 0;
        local pallidBoneCount = 0;
        local callousHideCount = 0;
        local meatAetheral = 0;
        local meatCreepyCrawler = 0;
        local meatPhantasmal = 0;
        local meatRawSeraphic = 0;
        local meatShadowy = 0;
        local meatTenebrous = 0;

        local slots = GetContainerNumSlots(-3);
            for s = 0, slots do
                icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(-3, s);
                --Herbs
                if (itemID == 171315) then
                    herbNSCount = herbNSCount + itemCount;
                elseif (itemID == 169701) then
                    herbDBCount = herbDBCount + itemCount;
                elseif (itemID == 168586) then
                    herbRGCount = herbRGCount + itemCount;
                elseif (itemID == 168589) then
                    herbMTCount = herbMTCount + itemCount;
                elseif (itemID == 168583) then
                    herbWTCount = herbWTCount + itemCount;
                elseif (itemID == 170554) then
                --Fishing
                    herbVTCount = herbVTCount + itemCount;
                elseif (itemID == 173032) then
                    fishingLSCount = fishingLSCount + itemCount;
                elseif (itemID == 173034) then
                    fishingSPCount = fishingSPCount + itemCount;
                elseif (itemID == 173035) then
                    fishingPBCount = fishingPBCount + itemCount;
                elseif (itemID == 173033) then
                    fishingIACount = fishingIACount + itemCount;
                elseif (itemID == 173036) then
                    fishingSpineCount = fishingSpineCount + itemCount;
                elseif (itemID == 173037) then
                    fishingETCount = fishingETCount + itemCount;
                --Cloth
                elseif (itemID == 173202 and GlockTracker:CanShowSlCloth()) then
                    clothSCCount = clothSCCount + itemCount;
                elseif (itemID == 173204 and GlockTracker:CanShowSlCloth()) then
                    clothLSCount = clothLSCount + itemCount;
                --Ore
                elseif (itemID == 171828) then
                    laestriteOreCount = laestriteOreCount + itemCount;
                elseif (itemID == 171833) then
                    elethiumOreCount = elethiumOreCount + itemCount;
                elseif (itemID == 171829) then
                    soleniumOreCount = soleniumOreCount + itemCount;
                elseif (itemID == 171830) then
                    oxxeinOreCount = oxxeinOreCount + itemCount;
                elseif (itemID == 171831) then
                    phaedrumOreCount = phaedrumOreCount + itemCount;
                elseif (itemID == 171832) then
                --leather
                    sinvyrOreCount = sinvyrOreCount + itemCount;
                elseif (itemID == 172089) then
                    desolateLeatherCount = desolateLeatherCount + itemCount;
                elseif (itemID == 172092) then
                    pallidBoneCount = pallidBoneCount + itemCount;
                elseif (itemID == 172094) then
                --meat
                    callousHideCount = callousHideCount + itemCount;
                elseif (itemID == 172052) then
                    meatAetheral = meatAetheral + itemCount;
                elseif (itemID == 179314) then
                    meatCreepyCrawler = meatCreepyCrawler + itemCount;
                elseif (itemID == 172055) then
                    meatPhantasmal = meatPhantasmal + itemCount;
                elseif (itemID == 172054) then
                    meatRawSeraphic = meatRawSeraphic + itemCount;
                elseif (itemID == 179315) then
                    meatShadowy = meatShadowy + itemCount;
                elseif (itemID == 172053) then
                    meatTenebrous = meatTenebrous + itemCount;
                end
            end

        self.db.global[playerName].Shadowlands.Herbs.DeathBlossom.ReagentBank  = herbDBCount;
        self.db.global[playerName].Shadowlands.Herbs.NightShade.ReagentBank  = herbNSCount;
        self.db.global[playerName].Shadowlands.Herbs.RisingGlory.ReagentBank  = herbRGCount;
        self.db.global[playerName].Shadowlands.Herbs.Marrowroot.ReagentBank  = herbMTCount;
        self.db.global[playerName].Shadowlands.Herbs.Widowbloom.ReagentBank  = herbWTCount;
        self.db.global[playerName].Shadowlands.Herbs.VigilsTorch.ReagentBank  = herbVTCount;
        

        self.db.global[playerName].Shadowlands.Fish.LostSole.ReagentBank  = fishingLSCount;
        self.db.global[playerName].Shadowlands.Fish.SilverPike.ReagentBank  = fishingSPCount;
        self.db.global[playerName].Shadowlands.Fish.PoketBoneFish.ReagentBank  = fishingPBCount;
        self.db.global[playerName].Shadowlands.Fish.Iridescent.ReagentBank  = fishingIACount;
        self.db.global[playerName].Shadowlands.Fish.SpinefinPiranha.ReagentBank  = fishingSpineCount;
        self.db.global[playerName].Shadowlands.Fish.Elysian.ReagentBank  = fishingETCount;
        

        self.db.global[playerName].Shadowlands.Cloth.LightlessSilk.ReagentBank  = clothLSCount;
        self.db.global[playerName].Shadowlands.Cloth.ShroudedCloth.ReagentBank  = clothSCCount;

        self.db.global[playerName].Shadowlands.Ore.LaestriteOre.ReagentBank  = laestriteOreCount;
        self.db.global[playerName].Shadowlands.Ore.ElethiumOre.ReagentBank  = elethiumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SoleniumOre.ReagentBank  = soleniumOreCount;
        self.db.global[playerName].Shadowlands.Ore.OxxeinOre.ReagentBank  = oxxeinOreCount;
        self.db.global[playerName].Shadowlands.Ore.PhaedrumOre.ReagentBank  = phaedrumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SinvyrOre.ReagentBank  = sinvyrOreCount;

        self.db.global[playerName].Shadowlands.Leather.DesolateLeather.ReagentBank  = desolateLeatherCount;
        self.db.global[playerName].Shadowlands.Leather.PallidBone.ReagentBank  = pallidBoneCount;
        self.db.global[playerName].Shadowlands.Leather.CallousHide.ReagentBank  = callousHideCount;
        
        self.db.global[playerName].Shadowlands.Meat.Athereal.ReagentBank  = meatAetheral;
        self.db.global[playerName].Shadowlands.Meat.CreepingCrawler.ReagentBank  = meatCreepyCrawler;
        self.db.global[playerName].Shadowlands.Meat.PhantasmalHaunch.ReagentBank  = meatPhantasmal;
        self.db.global[playerName].Shadowlands.Meat.RawSeraphicWing.ReagentBank  = meatRawSeraphic;
        self.db.global[playerName].Shadowlands.Meat.ShadowyShank.ReagentBank  = meatShadowy;
        self.db.global[playerName].Shadowlands.Meat.TenebrousRibs.ReagentBank  = meatTenebrous;
        
    end
end

function GlockTracker:ShadowlandsParsePersonalBank(playerName)
    if(GlockTracker:CanCollectShadowlands()) then

	    local herbDBCount = 0;
        local herbNSCount = 0;
        local herbRGCount = 0;
        local herbMTCount = 0;
        local herbWTCount = 0;
        local herbVTCount = 0;
        local fishingLSCount = 0;
        local fishingSPCount = 0;
        local fishingPBCount = 0;
        local fishingIACount = 0;
        local fishingSpineCount = 0;
        local fishingETCount = 0;
        local clothSCCount = 0;
        local clothLSCount = 0;
        local laestriteOreCount = 0;
        local elethiumOreCount = 0;
        local soleniumOreCount = 0;
        local oxxeinOreCount = 0;
        local phaedrumOreCount = 0;
        local sinvyrOreCount = 0;
        local desolateLeatherCount = 0;
        local pallidBoneCount = 0;
        local callousHideCount = 0;
        local meatAetheral = 0;
        local meatCreepyCrawler = 0;
        local meatPhantasmal = 0;
        local meatRawSeraphic = 0;
        local meatShadowy = 0;
        local meatTenebrous = 0;

        for i = 5, 11 do
            local slots = GetContainerNumSlots(i);
            for s = 0, slots do
                icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(i, s);
                --Herbs
                if (itemID == 171315) then
                    herbNSCount = herbNSCount + itemCount;
                elseif (itemID == 169701) then
                    herbDBCount = herbDBCount + itemCount;
                elseif (itemID == 168586) then
                    herbRGCount = herbRGCount + itemCount;
                elseif (itemID == 168589) then
                    herbMTCount = herbMTCount + itemCount;
                elseif (itemID == 168583) then
                    herbWTCount = herbWTCount + itemCount;
                elseif (itemID == 170554) then
                --Fishing
                    herbVTCount = herbVTCount + itemCount;
                elseif (itemID == 173032) then
                    fishingLSCount = fishingLSCount + itemCount;
                elseif (itemID == 173034) then
                    fishingSPCount = fishingSPCount + itemCount;
                elseif (itemID == 173035) then
                    fishingPBCount = fishingPBCount + itemCount;
                elseif (itemID == 173033) then
                    fishingIACount = fishingIACount + itemCount;
                elseif (itemID == 173036) then
                    fishingSpineCount = fishingSpineCount + itemCount;
                elseif (itemID == 173037) then
                    fishingETCount = fishingETCount + itemCount;
                --Cloth
                elseif (itemID == 173202 and GlockTracker:CanShowSlCloth()) then
                    clothSCCount = clothSCCount + itemCount;
                elseif (itemID == 173204 and GlockTracker:CanShowSlCloth()) then
                    clothLSCount = clothLSCount + itemCount;
                --Ore
                elseif (itemID == 171828) then
                    laestriteOreCount = laestriteOreCount + itemCount;
                elseif (itemID == 171833) then
                    elethiumOreCount = elethiumOreCount + itemCount;
                elseif (itemID == 171829) then
                    soleniumOreCount = soleniumOreCount + itemCount;
                elseif (itemID == 171830) then
                    oxxeinOreCount = oxxeinOreCount + itemCount;
                elseif (itemID == 171831) then
                    phaedrumOreCount = phaedrumOreCount + itemCount;
                elseif (itemID == 171832) then
                --leather
                    sinvyrOreCount = sinvyrOreCount + itemCount;
                elseif (itemID == 172089) then
                    desolateLeatherCount = desolateLeatherCount + itemCount;
                elseif (itemID == 172092) then
                    pallidBoneCount = pallidBoneCount + itemCount;
                elseif (itemID == 172094) then
                --meat
                    callousHideCount = callousHideCount + itemCount;
                elseif (itemID == 172052) then
                    meatAetheral = meatAetheral + itemCount;
                elseif (itemID == 179314) then
                    meatCreepyCrawler = meatCreepyCrawler + itemCount;
                elseif (itemID == 172055) then
                    meatPhantasmal = meatPhantasmal + itemCount;
                elseif (itemID == 172054) then
                    meatRawSeraphic = meatRawSeraphic + itemCount;
                elseif (itemID == 179315) then
                    meatShadowy = meatShadowy + itemCount;
                elseif (itemID == 172053) then
                    meatTenebrous = meatTenebrous + itemCount;
                end
            end
        end

        self.db.global[playerName].Shadowlands.Herbs.DeathBlossom.Bank = herbDBCount;
        self.db.global[playerName].Shadowlands.Herbs.NightShade.Bank = herbNSCount;
        self.db.global[playerName].Shadowlands.Herbs.RisingGlory.Bank = herbRGCount;
        self.db.global[playerName].Shadowlands.Herbs.Marrowroot.Bank = herbMTCount;
        self.db.global[playerName].Shadowlands.Herbs.Widowbloom.Bank = herbWTCount;
        self.db.global[playerName].Shadowlands.Herbs.VigilsTorch.Bank = herbVTCount;
        

        self.db.global[playerName].Shadowlands.Fish.LostSole.Bank = fishingLSCount;
        self.db.global[playerName].Shadowlands.Fish.SilverPike.Bank = fishingSPCount;
        self.db.global[playerName].Shadowlands.Fish.PoketBoneFish.Bank = fishingPBCount;
        self.db.global[playerName].Shadowlands.Fish.Iridescent.Bank = fishingIACount;
        self.db.global[playerName].Shadowlands.Fish.SpinefinPiranha.Bank = fishingSpineCount;
        self.db.global[playerName].Shadowlands.Fish.Elysian.Bank = fishingETCount;
        

        self.db.global[playerName].Shadowlands.Cloth.LightlessSilk.Bank = clothLSCount;
        self.db.global[playerName].Shadowlands.Cloth.ShroudedCloth.Bank = clothSCCount;

        self.db.global[playerName].Shadowlands.Ore.LaestriteOre.Bank = laestriteOreCount;
        self.db.global[playerName].Shadowlands.Ore.ElethiumOre.Bank = elethiumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SoleniumOre.Bank = soleniumOreCount;
        self.db.global[playerName].Shadowlands.Ore.OxxeinOre.Bank = oxxeinOreCount;
        self.db.global[playerName].Shadowlands.Ore.PhaedrumOre.Bank = phaedrumOreCount;
        self.db.global[playerName].Shadowlands.Ore.SinvyrOre.Bank = sinvyrOreCount;

        self.db.global[playerName].Shadowlands.Leather.DesolateLeather.Bank = desolateLeatherCount;
        self.db.global[playerName].Shadowlands.Leather.PallidBone.Bank = pallidBoneCount;
        self.db.global[playerName].Shadowlands.Leather.CallousHide.Bank = callousHideCount;
        
        self.db.global[playerName].Shadowlands.Meat.Athereal.Bank = meatAetheral;
        self.db.global[playerName].Shadowlands.Meat.CreepingCrawler.Bank = meatCreepyCrawler;
        self.db.global[playerName].Shadowlands.Meat.PhantasmalHaunch.Bank = meatPhantasmal;
        self.db.global[playerName].Shadowlands.Meat.RawSeraphicWing.Bank = meatRawSeraphic;
        self.db.global[playerName].Shadowlands.Meat.ShadowyShank.Bank = meatShadowy;
        self.db.global[playerName].Shadowlands.Meat.TenebrousRibs.Bank = meatTenebrous;
        
    end
end

function GlockTracker:GetFishSlDb(playerName)
	return self.db.global[playerName].Shadowlands.Fish
end

function GlockTracker:CanShowSlFish(info)
    return self.db.profile.Shadowlands.ShowFish;
end

function GlockTracker:SetLostSoleNeeded(info, val)
    self.db.profile.Shadowlands.Fish.LostSole.Need = val;
end

function GlockTracker:GetLostSoleNeeded(info)
    return self.db.profile.Shadowlands.Fish.LostSole.Need;
end

function GlockTracker:SetSilverPikeNeeded(info, val)
    self.db.profile.Shadowlands.Fish.SilverPike.Need = val;
end

function GlockTracker:GetSilverPikeNeeded(info)
    return self.db.profile.Shadowlands.Fish.SilverPike.Need;
end

function GlockTracker:SetPocketBonefishNeeded(info, val)
    self.db.profile.Shadowlands.Fish.PocketBonefish.Need = val;
end

function GlockTracker:GetPocketBonefishNeeded(info)
    return self.db.profile.Shadowlands.Fish.PocketBonefish.Need;
end

function GlockTracker:SetIridescentNeeded(info, val)
    self.db.profile.Shadowlands.Fish.Iridescent.Need = val;
end

function GlockTracker:GetIridescentNeeded(info)
    return self.db.profile.Shadowlands.Fish.Iridescent.Need;
end

function GlockTracker:SetSpinefinPiranhaNeeded(info, val)
    self.db.profile.Shadowlands.Fish.SpinefinPiranha.Need = val;
end

function GlockTracker:GetSpinefinPiranhaNeeded(info)
    return self.db.profile.Shadowlands.Fish.SpinefinPiranha.Need;
end

function GlockTracker:SetElysianNeeded(info, val)
    self.db.profile.Shadowlands.Fish.Elysian.Need = val;
end

function GlockTracker:GetElysianNeeded(info)
    return self.db.profile.Shadowlands.Fish.Elysian.Need;
end

function GlockTracker:GetHerbSlDb(playerName)
	return self.db.global[playerName].Shadowlands.Herbs
end

function GlockTracker:CanShowSlHerbs(info)
    return self.db.profile.Shadowlands.ShowHerbalism;
end

function GlockTracker:SetDeathblossomNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.DeathBlossom.Need = val;
end

function GlockTracker:GetDeathblossomNeeded(info)
    return self.db.profile.Shadowlands.Herbs.DeathBlossom.Need;
end

function GlockTracker:SetNightShadeNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Nightshade.Need = val;
end

function GlockTracker:GetNightShadeNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Nightshade.Need;
end

function GlockTracker:SetRisingGloryNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.RisingGlory.Need = val;
end

function GlockTracker:GetRisingGloryNeeded(info)
    return self.db.profile.Shadowlands.Herbs.RisingGlory.Need;
end

function GlockTracker:SetMarrowRootNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Marrowroot.Need = val;
end

function GlockTracker:GetMarrowRootNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Marrowroot.Need;
end

function GlockTracker:SetWidowbloomNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Widowbloom.Need = val;
end

function GlockTracker:GetWidowbloomNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Widowbloom.Need;
end

function GlockTracker:SetVigilsTorchNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.VigilsTorch.Need = val;
end

function GlockTracker:GetVigilsTorchNeeded(info)
    return self.db.profile.Shadowlands.Herbs.VigilsTorch.Need;
end

function GlockTracker:GetLeatherSlDb(playerName)
	return self.db.global[playerName].Shadowlands.Leather
end

function GlockTracker:CanShowSlLeather(info)
    return self.db.profile.Shadowlands.ShowLeather;
end

function GlockTracker:SetDesolateNeeded(info, val)
    self.db.profile.Shadowlands.Leather.Desolate.Need = val;
end

function GlockTracker:GetDesolateNeeded(info)
    return self.db.profile.Shadowlands.Leather.Desolate.Need;
end

function GlockTracker:SetPallidBoneNeeded(info, val)
    self.db.profile.Shadowlands.Leather.PallidBone.Need = val;
end

function GlockTracker:GetPallidBoneNeeded(info)
    return self.db.profile.Shadowlands.Leather.PallidBone.Need;
end

function GlockTracker:SetCallousNeeded(info, val)
    self.db.profile.Shadowlands.Leather.Callous.Need = val;
end

function GlockTracker:GetCallousNeeded(info)
    return self.db.profile.Shadowlands.Leather.Callous.Need;
end

function GlockTracker:GetMeatSlDb(playerName)
	return self.db.global[playerName].Shadowlands.Meat
end

function GlockTracker:CanShowSlMeat(info)
    return self.db.profile.Shadowlands.ShowMeat;
end

function GlockTracker:SetAetherealNeeded(info, val)
    self.db.profile.Shadowlands.Meat.Aethereal.Need = val;
end

function GlockTracker:GetAetherealNeeded(info)
    return self.db.profile.Shadowlands.Meat.Aethereal.Need;
end

function GlockTracker:SetCreepingCrawlerMeatNeeded(info, val)
    self.db.profile.Shadowlands.Meat.CreepingCrawler.Need = val;
end

function GlockTracker:GetCreepingCrawlerMeatNeeded(info)
    return self.db.profile.Shadowlands.Meat.CreepingCrawler.Need;
end

function GlockTracker:SetPhantasmalHaunchNeeded(info, val)
    self.db.profile.Shadowlands.Meat.PhantasmalHaunch.Need = val;
end

function GlockTracker:GetPhantasmalHaunchNeeded(info)
    return self.db.profile.Shadowlands.Meat.PhantasmalHaunch.Need;
end

function GlockTracker:SetRawSeraphicWingNeeded(info, val)
    self.db.profile.Shadowlands.Meat.RawSeraphicWing.Need = val;
end

function GlockTracker:GetRawSeraphicWingNeeded(info)
    return self.db.profile.Shadowlands.Meat.RawSeraphicWing.Need;
end

function GlockTracker:SetShadowyShankNeeded(info, val)
    self.db.profile.Shadowlands.Meat.ShadowyShank.Need = val;
end

function GlockTracker:GetShadowyShankNeeded(info)
    return self.db.profile.Shadowlands.Meat.ShadowyShank.Need;
end

function GlockTracker:SetTenebrousRibsNeeded(info, val)
    self.db.profile.Shadowlands.Meat.TenebrousRibs.Need = val;
end

function GlockTracker:GetTenebrousRibsNeeded(info)
    return self.db.profile.Shadowlands.Meat.TenebrousRibs.Need;
end

function GlockTracker:GetOreSlDb(playerName)
	return self.db.global[playerName].Shadowlands.Ore
end

function GlockTracker:CanShowSlOre(info)
    return self.db.profile.Shadowlands.ShowOre;
end

function GlockTracker:SetLaestriteNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Laestrite.Need = val;
end

function GlockTracker:GetLaestriteNeeded(info)
    return self.db.profile.Shadowlands.Ore.Laestrite.Need;
end

function GlockTracker:SetElethiumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Elethium.Need = val;
end

function GlockTracker:GetElethiumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Elethium.Need;
end

function GlockTracker:SetSoleniumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Solenium.Need = val;
end

function GlockTracker:GetSoleniumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Solenium.Need;
end

function GlockTracker:SetOxxeinNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Oxxein.Need = val;
end

function GlockTracker:GetOxxeinNeeded(info)
    return self.db.profile.Shadowlands.Ore.Oxxein.Need;
end

function GlockTracker:SetPhaedrumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Phaedrum.Need = val;
end

function GlockTracker:GetPhaedrumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Phaedrum.Need;
end

function GlockTracker:SetSinvyrNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Sinvyr.Need = val;
end

function GlockTracker:GetSinvyrNeeded(info)
    return self.db.profile.Shadowlands.Ore.Sinvyr.Need;
end