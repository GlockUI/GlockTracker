local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:PrintSlCloth(playerCloth, itemFrame)
    local grp = GlockTracker:CreateInlineGroup("Cloth");

    grp:AddChild(GlockTracker:CreateRow(
                    L["ShroudedCloth"],
                    playerCloth.ShroudedCloth.Bag,
                    playerCloth.ShroudedCloth.ReagentBank,
                    playerCloth.ShroudedCloth.Bank,
                    (GlockTracker:GetShroudedClothNeeded() - (playerCloth.ShroudedCloth.Bag + playerCloth.ShroudedCloth.ReagentBank + playerCloth.ShroudedCloth.Bank))
                ));

    grp:AddChild(GlockTracker:CreateRow(
                    L["LightlessSilk"],
                    playerCloth.LightlessSilk.Bag,
                    playerCloth.LightlessSilk.ReagentBank,
                    playerCloth.LightlessSilk.Bank,
                    (GlockTracker:GetLightlessSilkNeeded() - (playerCloth.LightlessSilk.Bag + playerCloth.LightlessSilk.ReagentBank + playerCloth.LightlessSilk.Bank))
                ));

    itemFrame:AddChild(grp);
end

function GlockTracker:CanShowSlCloth(info)
    return self.db.profile.Shadowlands.ShowCloth;
end

function GlockTracker:GetShroudedClothNeeded(info)
    return self.db.profile.Shadowlands.Cloth.ShroudedCloth.Need;
end

function GlockTracker:GetLightlessSilkNeeded(info)
    return self.db.profile.Shadowlands.Cloth.LightlessSilk.Need;
end