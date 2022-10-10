local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker")

function GlockTracker:PrintSlCloth(playerHerbs, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Cloth");

    grp:AddChild(GlockTracker:CreateRow(
        L["DeathBlossom"],
        playerHerbs.DeathBlossom.Bag,
        playerHerbs.DeathBlossom.ReagentBank,
        playerHerbs.DeathBlossom.Bank,
        (GlockTracker:GetDeathblossomNeeded() - (playerHerbs.DeathBlossom.Bag + playerHerbs.DeathBlossom.ReagentBank + playerHerbs.DeathBlossom.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Nightshade"],
        playerHerbs.NightShade.Bag,
        playerHerbs.NightShade.ReagentBank,
        playerHerbs.NightShade.Bank,
        (GlockTracker:GetNightShadeNeeded() - (playerHerbs.NightShade.Bag + playerHerbs.NightShade.ReagentBank + playerHerbs.NightShade.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["RisingGlory"],
        playerHerbs.RisingGlory.Bag,
        playerHerbs.RisingGlory.ReagentBank,
        playerHerbs.RisingGlory.Bank,
        (GlockTracker:GetRisingGloryNeeded() - (playerHerbs.RisingGlory.Bag + playerHerbs.RisingGlory.ReagentBank + playerHerbs.RisingGlory.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["MarrowRoot"],
        playerHerbs.Marrowroot.Bag,
        playerHerbs.Marrowroot.ReagentBank,
        playerHerbs.Marrowroot.Bank,
        (GlockTracker:GetMarrowRootNeeded() - (playerHerbs.Marrowroot.Bag + playerHerbs.Marrowroot.ReagentBank + playerHerbs.Marrowroot.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["Widowbloom"],
        playerHerbs.Widowbloom.Bag,
        playerHerbs.Widowbloom.ReagentBank,
        playerHerbs.Widowbloom.Bank,
        (GlockTracker:GetWidowbloomNeeded() - (playerHerbs.Widowbloom.Bag + playerHerbs.Widowbloom.ReagentBank + playerHerbs.Widowbloom.Bank))
    ));

    grp:AddChild(GlockTracker:CreateRow(
        L["VigilsTorch"],
        playerHerbs.VigilsTorch.Bag,
        playerHerbs.VigilsTorch.ReagentBank,
        playerHerbs.VigilsTorch.Bank,
        (GlockTracker:GetVigilsTorchNeeded() - (playerHerbs.VigilsTorch.Bag + playerHerbs.VigilsTorch.ReagentBank + playerHerbs.VigilsTorch.Bank))
    ));

    itemFrame:AddChild(grp)
end

function GlockTracker:CanShowSlHerbs(info)
    return self.db.profile.Shadowlands.ShowHerbalism;
end

function GlockTracker:SetDeathblossomNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.DeathBlossom.Need = val;
    --Glockfarmer:ReloadLabel();
end

function GlockTracker:GetDeathblossomNeeded(info)
    return self.db.profile.Shadowlands.Herbs.DeathBlossom.Need;
end

function GlockTracker:SetNightShadeNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Nightshade.Need = val;
    --Glockfarmer:ReloadLabel()
end

function GlockTracker:GetNightShadeNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Nightshade.Need;
end

function GlockTracker:SetRisingGloryNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.RisingGlory.Need = val;
    --Glockfarmer:ReloadLabel()
end

function GlockTracker:GetRisingGloryNeeded(info)
    return self.db.profile.Shadowlands.Herbs.RisingGlory.Need;
end

function GlockTracker:SetMarrowRootNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Marrowroot.Need = val;
    --Glockfarmer:ReloadLabel()
end

function GlockTracker:GetMarrowRootNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Marrowroot.Need;
end

function GlockTracker:SetWidowbloomNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.Widowbloom.Need = val;
    --Glockfarmer:ReloadLabel()
end

function GlockTracker:GetWidowbloomNeeded(info)
    return self.db.profile.Shadowlands.Herbs.Widowbloom.Need;
end

function GlockTracker:SetVigilsTorchNeeded(info, val)
    self.db.profile.Shadowlands.Herbs.VigilsTorch.Need = val;
    --Glockfarmer:ReloadLabel()
end

function GlockTracker:GetVigilsTorchNeeded(info)
    return self.db.profile.Shadowlands.Herbs.VigilsTorch.Need;
end
