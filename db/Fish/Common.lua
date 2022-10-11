local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
local LibQTip = LibStub('LibQTip-1.0');
local iconWidget;
local playerName;

local function OnImageEnter(self)
	local tooltip = LibQTip:Acquire("GlockTracker-FishTooltip", 6, "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT")
	self.tooltip = tooltip 

	if (GlockTracker:CanShowSlFish()) then
        GlockTracker:PrintSlFishTooltip(playerName, tooltip);
    end
   
	tooltip:SmartAnchorTo(self.frame);
   
	tooltip:Show()
end

local function OnImageLeave(self)
   LibQTip:Release(self.tooltip)
   self.tooltip = nil
end

function GlockTracker:SetupFishIcon(name)
	playerName = name;
	iconWidget = GlockTracker:CreateTopBarIcon("Fish", "Interface/ICONS/INV_Misc_Fish_103.blp");
	iconWidget:SetCallback('OnEnter', OnImageEnter);
	iconWidget:SetCallback('OnLeave', OnImageLeave);
	topBar:AddWidget(iconWidget);
end