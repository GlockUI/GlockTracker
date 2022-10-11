local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlFishTooltip(playerName, tooltip)
    local playerFish = GlockTracker:GetFishSlDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["LostSole"],
        L["LostSoleLocation"],
        playerFish.LostSole.Bag,
        playerFish.LostSole.ReagentBank,
        playerFish.LostSole.Bank,
        (GlockTracker:GetLostSoleNeeded() - (playerFish.LostSole.Bag + playerFish.LostSole.ReagentBank + playerFish.LostSole.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["SilverPike"],
        L["SilverPikeLocation"],
        playerFish.SilverPike.Bag,
        playerFish.SilverPike.ReagentBank,
        playerFish.SilverPike.Bank,
        (GlockTracker:GetSilverPikeNeeded() - (playerFish.SilverPike.Bag + playerFish.SilverPike.ReagentBank + playerFish.SilverPike.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["PocketBonefish"],
        L["PocketBonefishLocation"],
        playerFish.PoketBoneFish.Bag,
        playerFish.PoketBoneFish.ReagentBank,
        playerFish.PoketBoneFish.Bank,
        (GlockTracker:GetPocketBonefishNeeded() - (playerFish.PoketBoneFish.Bag + playerFish.PoketBoneFish.ReagentBank + playerFish.PoketBoneFish.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Iridescent"],
        L["IridescentLocation"],
        playerFish.Iridescent.Bag,
        playerFish.Iridescent.ReagentBank,
        playerFish.Iridescent.Bank,
        (GlockTracker:GetIridescentNeeded() - (playerFish.Iridescent.Bag + playerFish.Iridescent.ReagentBank + playerFish.Iridescent.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["SpinefinPiranha"],
        L["SpinefinPiranhaLocation"],
        playerFish.SpinefinPiranha.Bag,
        playerFish.SpinefinPiranha.ReagentBank,
        playerFish.SpinefinPiranha.Bank,
        (GlockTracker:GetSpinefinPiranhaNeeded() - (playerFish.SpinefinPiranha.Bag + playerFish.SpinefinPiranha.ReagentBank + playerFish.SpinefinPiranha.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Elysian"],
        L["ElysianLocation"],
        playerFish.Elysian.Bag,
        playerFish.Elysian.ReagentBank,
        playerFish.Elysian.Bank,
        (GlockTracker:GetElysianNeeded() - (playerFish.Elysian.Bag + playerFish.Elysian.ReagentBank + playerFish.Elysian.Bank)),
        tooltip
    );

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