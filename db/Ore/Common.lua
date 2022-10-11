local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
local LibQTip = LibStub('LibQTip-1.0');
local iconWidget;
local playerName;

local function OnImageEnter(self)
	local tooltip = LibQTip:Acquire("GlockTracker-OreTooltip", 6, "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT")
	self.tooltip = tooltip;

	if (GlockTracker:CanShowSlOre()) then
        GlockTracker:PrintSlOreTooltip(playerName, tooltip);
    end
   
	tooltip:SmartAnchorTo(self.frame);
   
	tooltip:Show()
end

local function OnImageLeave(self)
   LibQTip:Release(self.tooltip)
   self.tooltip = nil
end

function GlockTracker:SetupOreIcon(name)
	playerName = name;
	iconWidget = GlockTracker:CreateTopBarIcon("Ore", "Interface/ICONS/INV_Ore_Copper_01.blpp");
	iconWidget:SetCallback('OnEnter', OnImageEnter);
	iconWidget:SetCallback('OnLeave', OnImageLeave);
	topBar:AddWidget(iconWidget);
end