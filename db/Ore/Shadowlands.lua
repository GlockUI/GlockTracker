local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker")

function GlockTracker:PrintSlOreTooltip(playerName, tooltip)

    local playerOre = GlockTracker:GetOreSlDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["Laestrite"],
        L["LaestriteLocation"],
        playerOre.LaestriteOre.Bag,
        playerOre.LaestriteOre.ReagentBank,
        playerOre.LaestriteOre.Bank,
        (GlockTracker:GetLaestriteNeeded() - (playerOre.LaestriteOre.Bag + playerOre.LaestriteOre.ReagentBank + playerOre.LaestriteOre.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Elethium"],
        L["ElethiumLocation"],
        playerOre.ElethiumOre.Bag,
        playerOre.ElethiumOre.ReagentBank,
        playerOre.ElethiumOre.Bank,
        (GlockTracker:GetElethiumNeeded() - (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Solenium"],
        L["SoleniumLocation"],
        playerOre.SoleniumOre.Bag,
        playerOre.SoleniumOre.ReagentBank,
        playerOre.SoleniumOre.Bank,
        (GlockTracker:GetSoleniumNeeded() - (playerOre.SoleniumOre.Bag + playerOre.SoleniumOre.ReagentBank + playerOre.SoleniumOre.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Oxxein"],
        L["OxxeinLocation"],
        playerOre.OxxeinOre.Bag,
        playerOre.OxxeinOre.ReagentBank,
        playerOre.OxxeinOre.Bank,
        (GlockTracker:GetOxxeinNeeded() - (playerOre.OxxeinOre.Bag + playerOre.OxxeinOre.ReagentBank + playerOre.OxxeinOre.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Phaedrum"],
        L["PhaedrumLocation"],
        playerOre.PhaedrumOre.Bag,
        playerOre.PhaedrumOre.ReagentBank,
        playerOre.PhaedrumOre.Bank,
        (GlockTracker:GetPhaedrumNeeded() - (playerOre.PhaedrumOre.Bag + playerOre.PhaedrumOre.ReagentBank + playerOre.PhaedrumOre.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["Sinvyr"],
        L["SinvyrLocation"],
        playerOre.SinvyrOre.Bag,
        playerOre.SinvyrOre.ReagentBank,
        playerOre.SinvyrOre.Bank,
        (GlockTracker:GetSinvyrNeeded() - (playerOre.SinvyrOre.Bag + playerOre.SinvyrOre.ReagentBank + playerOre.SinvyrOre.Bank)),
        tooltip
    );
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