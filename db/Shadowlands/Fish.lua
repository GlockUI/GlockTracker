local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlFish(playerFish, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Fish");

    grp:AddChild(GlockTracker:CreateRow(
        L["LostSole"],
        playerFish.LostSole.Bag,
        playerFish.LostSole.ReagentBank,
        playerFish.LostSole.Bank,
        (GlockTracker:GetLostSoleNeeded() - (playerFish.LostSole.Bag + playerFish.LostSole.ReagentBank + playerFish.LostSole.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["SilverPike"],
        playerFish.SilverPike.Bag,
        playerFish.SilverPike.ReagentBank,
        playerFish.SilverPike.Bank,
        (GlockTracker:GetSilverPikeNeeded() - (playerFish.SilverPike.Bag + playerFish.SilverPike.ReagentBank + playerFish.SilverPike.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["PocketBonefish"],
        playerFish.PoketBoneFish.Bag,
        playerFish.PoketBoneFish.ReagentBank,
        playerFish.PoketBoneFish.Bank,
        (GlockTracker:GetPocketBonefishNeeded() - (playerFish.PoketBoneFish.Bag + playerFish.PoketBoneFish.ReagentBank + playerFish.PoketBoneFish.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Iridescent"],
        playerFish.Iridescent.Bag,
        playerFish.Iridescent.ReagentBank,
        playerFish.Iridescent.Bank,
        (GlockTracker:GetIridescentNeeded() - (playerFish.Iridescent.Bag + playerFish.Iridescent.ReagentBank + playerFish.Iridescent.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["SpinefinPiranha"],
        playerFish.SpinefinPiranha.Bag,
        playerFish.SpinefinPiranha.ReagentBank,
        playerFish.SpinefinPiranha.Bank,
        (GlockTracker:GetSpinefinPiranhaNeeded() - (playerFish.SpinefinPiranha.Bag + playerFish.SpinefinPiranha.ReagentBank + playerFish.SpinefinPiranha.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Elysian"],
        playerFish.Elysian.Bag,
        playerFish.Elysian.ReagentBank,
        playerFish.Elysian.Bank,
        (GlockTracker:GetElysianNeeded() - (playerFish.Elysian.Bag + playerFish.Elysian.ReagentBank + playerFish.Elysian.Bank))
    ));

    itemFrame:AddChild(grp)
end

function GlockTracker:CanShowSlFish(info)
    return self.db.profile.Shadowlands.ShowFish;
end

function GlockTracker:SetLostSoleNeeded(info, val)
    self.db.profile.Shadowlands.Fish.LostSole.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetLostSoleNeeded(info)
    return self.db.profile.Shadowlands.Fish.LostSole.Need;
end

function GlockTracker:SetSilverPikeNeeded(info, val)
    self.db.profile.Shadowlands.Fish.SilverPike.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetSilverPikeNeeded(info)
    return self.db.profile.Shadowlands.Fish.SilverPike.Need;
end

function GlockTracker:SetPocketBonefishNeeded(info, val)
    self.db.profile.Shadowlands.Fish.PocketBonefish.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetPocketBonefishNeeded(info)
    return self.db.profile.Shadowlands.Fish.PocketBonefish.Need;
end

function GlockTracker:SetIridescentNeeded(info, val)
    self.db.profile.Shadowlands.Fish.Iridescent.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetIridescentNeeded(info)
    return self.db.profile.Shadowlands.Fish.Iridescent.Need;
end

function GlockTracker:SetSpinefinPiranhaNeeded(info, val)
    self.db.profile.Shadowlands.Fish.SpinefinPiranha.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetSpinefinPiranhaNeeded(info)
    return self.db.profile.Shadowlands.Fish.SpinefinPiranha.Need;
end

function GlockTracker:SetElysianNeeded(info, val)
    self.db.profile.Shadowlands.Fish.Elysian.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetElysianNeeded(info)
    return self.db.profile.Shadowlands.Fish.Elysian.Need;
end