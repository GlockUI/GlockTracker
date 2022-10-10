local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");

function GlockTracker:ParseBags(playerName)
	GlockTracker:ShadowlandsParsePersonalBags(playerName);
	if(IsReagentBankUnlocked()) then
		GlockTracker:ShadowlandsParseReagentBank(playerName);
	end
	if (GlockTracker:BankOpen()) then
        GlockTracker:ShadowlandsParsePersonalBank(playerName);
    end    
end

function GlockTracker:PrintCollection(playerName, itemsGroup, currentTab)
	if (currentTab == "ShadowlandsTab") then
		GlockTracker:PrintShadowlandsInventory(playerName, itemsGroup);
	elseif (currentTab == "DragonflightTab") then
		local label = AceGUI:Create("GlockLabel");
		label:SetText("This area is a work in progress");
		label:SetWidth(400);
		itemsGroup:AddChild(label);
	end
end