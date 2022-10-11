local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker")

function GlockTracker:PrintSlMeat(playerMeat, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Ore");

    grp:AddChild(GlockTracker:CreateRow(
        L["Aethereal"],
        playerMeat.Athereal.Bag,
        playerMeat.Athereal.ReagentBank,
        playerMeat.Athereal.Bank,
        (GlockTracker:GetAetherealNeeded() - (playerMeat.Athereal.Bag + playerMeat.Athereal.ReagentBank + playerMeat.Athereal.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["CreepingCrawler"],
        playerMeat.CreepingCrawler.Bag,
        playerMeat.CreepingCrawler.ReagentBank,
        playerMeat.CreepingCrawler.Bank,
        (GlockTracker:GetCreepingCrawlerMeatNeeded() - (playerMeat.CreepingCrawler.Bag + playerMeat.CreepingCrawler.ReagentBank + playerMeat.CreepingCrawler.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["PhantasmalHaunch"],
        playerMeat.PhantasmalHaunch.Bag,
        playerMeat.PhantasmalHaunch.ReagentBank,
        playerMeat.PhantasmalHaunch.Bank,
        (GlockTracker:GetPhantasmalHaunchNeeded() - (playerMeat.PhantasmalHaunch.Bag + playerMeat.PhantasmalHaunch.ReagentBank + playerMeat.PhantasmalHaunch.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["RawSeraphicWing"],
        playerMeat.RawSeraphicWing.Bag,
        playerMeat.RawSeraphicWing.ReagentBank,
        playerMeat.RawSeraphicWing.Bank,
        (GlockTracker:GetRawSeraphicWingNeeded() - (playerMeat.RawSeraphicWing.Bag + playerMeat.RawSeraphicWing.ReagentBank + playerMeat.RawSeraphicWing.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["ShadowyShank"],
        playerMeat.ShadowyShank.Bag,
        playerMeat.ShadowyShank.ReagentBank,
        playerMeat.ShadowyShank.Bank,
        (GlockTracker:GetShadowyShankNeeded() - (playerMeat.ShadowyShank.Bag + playerMeat.ShadowyShank.ReagentBank + playerMeat.ShadowyShank.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["TenebrousRibs"],
        playerMeat.TenebrousRibs.Bag,
        playerMeat.TenebrousRibs.ReagentBank,
        playerMeat.TenebrousRibs.Bank,
        (GlockTracker:GetTenebrousRibsNeeded() - (playerMeat.TenebrousRibs.Bag + playerMeat.TenebrousRibs.ReagentBank + playerMeat.TenebrousRibs.Bank))
    ));

    itemFrame:AddChild(grp)
end

function GlockTracker:PrintSlMeatTooltip(playerName, tooltip)

    local playerMeat = GlockTracker:GetMeatSlDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["Aethereal"],
        L["AetherealLocation"],
        playerMeat.Athereal.Bag,
        playerMeat.Athereal.ReagentBank,
        playerMeat.Athereal.Bank,
        (GlockTracker:GetAetherealNeeded() - (playerMeat.Athereal.Bag + playerMeat.Athereal.ReagentBank + playerMeat.Athereal.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["CreepingCrawler"],
        L["CreepingCrawlerLocation"],
        playerMeat.CreepingCrawler.Bag,
        playerMeat.CreepingCrawler.ReagentBank,
        playerMeat.CreepingCrawler.Bank,
        (GlockTracker:GetCreepingCrawlerMeatNeeded() - (playerMeat.CreepingCrawler.Bag + playerMeat.CreepingCrawler.ReagentBank + playerMeat.CreepingCrawler.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["PhantasmalHaunch"],
        L["PhantasmalHaunchLocation"],
        playerMeat.PhantasmalHaunch.Bag,
        playerMeat.PhantasmalHaunch.ReagentBank,
        playerMeat.PhantasmalHaunch.Bank,
        (GlockTracker:GetPhantasmalHaunchNeeded() - (playerMeat.PhantasmalHaunch.Bag + playerMeat.PhantasmalHaunch.ReagentBank + playerMeat.PhantasmalHaunch.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["RawSeraphicWing"],
        L["RawSeraphicWingLocation"],
        playerMeat.RawSeraphicWing.Bag,
        playerMeat.RawSeraphicWing.ReagentBank,
        playerMeat.RawSeraphicWing.Bank,
        (GlockTracker:GetRawSeraphicWingNeeded() - (playerMeat.RawSeraphicWing.Bag + playerMeat.RawSeraphicWing.ReagentBank + playerMeat.RawSeraphicWing.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["ShadowyShank"],
        L["ShadowyShankLocation"],
        playerMeat.ShadowyShank.Bag,
        playerMeat.ShadowyShank.ReagentBank,
        playerMeat.ShadowyShank.Bank,
        (GlockTracker:GetShadowyShankNeeded() - (playerMeat.ShadowyShank.Bag + playerMeat.ShadowyShank.ReagentBank + playerMeat.ShadowyShank.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["TenebrousRibs"],
        L["TenebrousRibsLocation"],
        playerMeat.TenebrousRibs.Bag,
        playerMeat.TenebrousRibs.ReagentBank,
        playerMeat.TenebrousRibs.Bank,
        (GlockTracker:GetTenebrousRibsNeeded() - (playerMeat.TenebrousRibs.Bag + playerMeat.TenebrousRibs.ReagentBank + playerMeat.TenebrousRibs.Bank)),
        tooltip
    );
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