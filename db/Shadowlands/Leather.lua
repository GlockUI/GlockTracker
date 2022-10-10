local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlLeather(playerLeather, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Leather");

    grp:AddChild(GlockTracker:CreateRow(
        L["Desolate"],
        playerLeather.DesolateLeather.Bag,
        playerLeather.DesolateLeather.ReagentBank,
        playerLeather.DesolateLeather.Bank,
        (GlockTracker:GetDesolateNeeded() - (playerLeather.DesolateLeather.Bag + playerLeather.DesolateLeather.ReagentBank + playerLeather.DesolateLeather.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["PallidBone"],
        playerLeather.PallidBone.Bag,
        playerLeather.PallidBone.ReagentBank,
        playerLeather.PallidBone.Bank,
        (GlockTracker:GetPallidBoneNeeded() - (playerLeather.PallidBone.Bag + playerLeather.PallidBone.ReagentBank + playerLeather.PallidBone.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["CallousHide"],
        playerLeather.CallousHide.Bag,
        playerLeather.CallousHide.ReagentBank,
        playerLeather.CallousHide.Bank,
        (GlockTracker:GetCallousNeeded() - (playerLeather.CallousHide.Bag + playerLeather.CallousHide.ReagentBank + playerLeather.CallousHide.Bank))
    ));

    itemFrame:AddChild(grp)
end

function GlockTracker:CanShowSlLeather(info)
    return self.db.profile.Shadowlands.ShowLeather;
end

function GlockTracker:SetDesolateNeeded(info, val)
    self.db.profile.Shadowlands.Leather.Desolate.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetDesolateNeeded(info)
    return self.db.profile.Shadowlands.Leather.Desolate.Need;
end

function GlockTracker:SetPallidBoneNeeded(info, val)
    self.db.profile.Shadowlands.Leather.PallidBone.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetPallidBoneNeeded(info)
    return self.db.profile.Shadowlands.Leather.PallidBone.Need;
end

function GlockTracker:SetCallousNeeded(info, val)
    self.db.profile.Shadowlands.Leather.Callous.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetCallousNeeded(info)
    return self.db.profile.Shadowlands.Leather.Callous.Need;
end