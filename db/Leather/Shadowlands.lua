local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker")

function GlockTracker:PrintSlLeatherTooltip(playerName, tooltip)

    local playerLeather = GlockTracker:GetLeatherSlDb(playerName);

    tooltip:AddHeader("Shadowlands:");

    GlockTracker:CreateLine(
        L["Desolate"],
        L["DesolateLocation"],
        playerLeather.DesolateLeather.Bag,
        playerLeather.DesolateLeather.ReagentBank,
        playerLeather.DesolateLeather.Bank,
        (GlockTracker:GetDesolateNeeded() - (playerLeather.DesolateLeather.Bag + playerLeather.DesolateLeather.ReagentBank + playerLeather.DesolateLeather.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["PallidBone"],
        L["PallidBoneLocation"],
        playerLeather.PallidBone.Bag,
        playerLeather.PallidBone.ReagentBank,
        playerLeather.PallidBone.Bank,
        (GlockTracker:GetPallidBoneNeeded() - (playerLeather.PallidBone.Bag + playerLeather.PallidBone.ReagentBank + playerLeather.PallidBone.Bank)),
        tooltip
    );

    GlockTracker:CreateLine(
        L["CallousHide"],
        L["CallousHideLocation"],
        playerLeather.CallousHide.Bag,
        playerLeather.CallousHide.ReagentBank,
        playerLeather.CallousHide.Bank,
        (GlockTracker:GetCallousNeeded() - (playerLeather.CallousHide.Bag + playerLeather.CallousHide.ReagentBank + playerLeather.CallousHide.Bank)),
        tooltip
    );
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