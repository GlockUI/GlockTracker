local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlClothTooltip(playerName, tooltip)
    local playerCloth = GlockTracker:GetClothDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["ShroudedCloth"],
        L["ShroudedClothLocation"],
        playerCloth.ShroudedCloth.Bag,
        playerCloth.ShroudedCloth.ReagentBank,
        playerCloth.ShroudedCloth.Bank,
        (GlockTracker:GetShroudedClothNeeded() - (playerCloth.ShroudedCloth.Bag + playerCloth.ShroudedCloth.ReagentBank + playerCloth.ShroudedCloth.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["LightlessSilk"],
        L["LightlessSilkLocation"],
        playerCloth.LightlessSilk.Bag,
        playerCloth.LightlessSilk.ReagentBank,
        playerCloth.LightlessSilk.Bank,
        (GlockTracker:GetLightlessSilkNeeded() - (playerCloth.LightlessSilk.Bag + playerCloth.LightlessSilk.ReagentBank + playerCloth.LightlessSilk.Bank)),
        tooltip
    );
end

function GlockTracker:CanShowSlCloth(info)
    return self.db.profile.Shadowlands.ShowCloth;
end

function GlockTracker:GetShroudedClothNeeded(info)
    return self.db.profile.Shadowlands.Cloth.ShroudedCloth.Need;
end

function GlockTracker:GetClothDb(playerName)
	return self.db.global[playerName].Shadowlands.Herbs
end

function GlockTracker:GetLightlessSilkNeeded(info)
    return self.db.profile.Shadowlands.Cloth.LightlessSilk.Need;
end