local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlOre(playerOre, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Ore");

    grp:AddChild(GlockTracker:CreateRow(
        L["Laestrite"],
        playerOre.LaestriteOre.Bag,
        playerOre.LaestriteOre.ReagentBank,
        playerOre.LaestriteOre.Bank,
        (GlockTracker:GetLaestriteNeeded() - (playerOre.LaestriteOre.Bag + playerOre.LaestriteOre.ReagentBank + playerOre.LaestriteOre.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Elethium"],
        playerOre.ElethiumOre.Bag,
        playerOre.ElethiumOre.ReagentBank,
        playerOre.ElethiumOre.Bank,
        (GlockTracker:GetElethiumNeeded() - (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Solenium"],
        playerOre.SoleniumOre.Bag,
        playerOre.SoleniumOre.ReagentBank,
        playerOre.SoleniumOre.Bank,
        (GlockTracker:GetSoleniumNeeded() - (playerOre.SoleniumOre.Bag + playerOre.SoleniumOre.ReagentBank + playerOre.SoleniumOre.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Oxxein"],
        playerOre.OxxeinOre.Bag,
        playerOre.OxxeinOre.ReagentBank,
        playerOre.OxxeinOre.Bank,
        (GlockTracker:GetOxxeinNeeded() - (playerOre.OxxeinOre.Bag + playerOre.OxxeinOre.ReagentBank + playerOre.OxxeinOre.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Phaedrum"],
        playerOre.PhaedrumOre.Bag,
        playerOre.PhaedrumOre.ReagentBank,
        playerOre.PhaedrumOre.Bank,
        (GlockTracker:GetPhaedrumNeeded() - (playerOre.PhaedrumOre.Bag + playerOre.PhaedrumOre.ReagentBank + playerOre.PhaedrumOre.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Sinvyr"],
        playerOre.SinvyrOre.Bag,
        playerOre.SinvyrOre.ReagentBank,
        playerOre.SinvyrOre.Bank,
        (GlockTracker:GetSinvyrNeeded() - (playerOre.SinvyrOre.Bag + playerOre.SinvyrOre.ReagentBank + playerOre.SinvyrOre.Bank))
    ));

    itemFrame:AddChild(grp)
end

function GlockTracker:CanShowSlOre(info)
    return self.db.profile.Shadowlands.ShowOre;
end

function GlockTracker:SetLaestriteNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Laestrite.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetLaestriteNeeded(info)
    return self.db.profile.Shadowlands.Ore.Laestrite.Need;
end

function GlockTracker:SetElethiumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Elethium.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetElethiumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Elethium.Need;
end

function GlockTracker:SetSoleniumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Solenium.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetSoleniumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Solenium.Need;
end

function GlockTracker:SetOxxeinNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Oxxein.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetOxxeinNeeded(info)
    return self.db.profile.Shadowlands.Ore.Oxxein.Need;
end

function GlockTracker:SetPhaedrumNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Phaedrum.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetPhaedrumNeeded(info)
    return self.db.profile.Shadowlands.Ore.Phaedrum.Need;
end

function GlockTracker:SetSinvyrNeeded(info, val)
    self.db.profile.Shadowlands.Ore.Sinvyr.Need = val;
    --GlockTracker:ReloadLabel();
end

function GlockTracker:GetSinvyrNeeded(info)
    return self.db.profile.Shadowlands.Ore.Sinvyr.Need;
end