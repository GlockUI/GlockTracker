local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker")

function GlockTracker:PrintSlHerbTooltip(playerName, tooltip)
    local playerHerbs = GlockTracker:GetHerbSlDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["DeathBlossom"],
        L["DeathBlossomLocation"],
        playerHerbs.DeathBlossom.Bag,
        playerHerbs.DeathBlossom.ReagentBank,
        playerHerbs.DeathBlossom.Bank,
        (GlockTracker:GetDeathblossomNeeded() - (playerHerbs.DeathBlossom.Bag + playerHerbs.DeathBlossom.ReagentBank + playerHerbs.DeathBlossom.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Nightshade"],
        L["NightshadeLocation"],
        playerHerbs.NightShade.Bag,
        playerHerbs.NightShade.ReagentBank,
        playerHerbs.NightShade.Bank,
        (GlockTracker:GetNightShadeNeeded() - (playerHerbs.NightShade.Bag + playerHerbs.NightShade.ReagentBank + playerHerbs.NightShade.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["RisingGlory"],
        L["RisingGloryLocation"],
        playerHerbs.RisingGlory.Bag,
        playerHerbs.RisingGlory.ReagentBank,
        playerHerbs.RisingGlory.Bank,
        (GlockTracker:GetRisingGloryNeeded() - (playerHerbs.RisingGlory.Bag + playerHerbs.RisingGlory.ReagentBank + playerHerbs.RisingGlory.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["MarrowRoot"],
        L["MarrowRootLocation"],
        playerHerbs.Marrowroot.Bag,
        playerHerbs.Marrowroot.ReagentBank,
        playerHerbs.Marrowroot.Bank,
        (GlockTracker:GetMarrowRootNeeded() - (playerHerbs.Marrowroot.Bag + playerHerbs.Marrowroot.ReagentBank + playerHerbs.Marrowroot.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Widowbloom"],
        L["WidowbloomLocation"],
        playerHerbs.Widowbloom.Bag,
        playerHerbs.Widowbloom.ReagentBank,
        playerHerbs.Widowbloom.Bank,
        (GlockTracker:GetWidowbloomNeeded() - (playerHerbs.Widowbloom.Bag + playerHerbs.Widowbloom.ReagentBank + playerHerbs.Widowbloom.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["VigilsTorch"],
        L["VigilsTorchLocation"],
        playerHerbs.VigilsTorch.Bag,
        playerHerbs.VigilsTorch.ReagentBank,
        playerHerbs.VigilsTorch.Bank,
        (GlockTracker:GetVigilsTorchNeeded() - (playerHerbs.VigilsTorch.Bag + playerHerbs.VigilsTorch.ReagentBank + playerHerbs.VigilsTorch.Bank)),
        tooltip
    );

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
