local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
local LibQTip = LibStub('LibQTip-1.0');
local iconWidget;
local playerName;

local function OnImageEnter(self)
	local tooltip = LibQTip:Acquire("GlockTracker-HerbTooltip", 6, "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT")
	self.tooltip = tooltip 

	if (GlockTracker:CanShowSlHerbs()) then
        GlockTracker:PrintSlHerbTooltip(playerName, tooltip);
    end
   
	tooltip:SmartAnchorTo(self.frame);
   
	tooltip:Show()
end

local function OnImageLeave(self)
   LibQTip:Release(self.tooltip)
   self.tooltip = nil
end

function GlockTracker:SetupHerbIcon(name)
	playerName = name;
	iconWidget = GlockTracker:CreateTopBarIcon("Herb", "Interface/ICONS/INV_Misc_Herb_14.blp");
	iconWidget:SetCallback('OnEnter', OnImageEnter);
	iconWidget:SetCallback('OnLeave', OnImageLeave);
	topBar:AddWidget(iconWidget);
end