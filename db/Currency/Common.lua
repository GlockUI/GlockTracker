local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
local LibQTip = LibStub('LibQTip-1.0');
local iconWidget;
local goldimage = "|TInterface\\MoneyFrame\\UI-GoldIcon:0|t"
local silverimage = "|TInterface\\MoneyFrame\\UI-SilverIcon:0|t"
local copperImage = "|TInterface\\MoneyFrame\\UI-CopperIcon:0|t"
local amountOfGoldStarted;

local function comma_value(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

local function RenderMoney(label, money, tooltip)
	local value = abs(money)
	local gold = floor(value * 0.0001)
	local silver = floor(mod(value * 0.01, 100))
	local copper = floor(mod(value, 100))
	if gold > 0 then
		tooltip:AddLine(label, format('%s%s %d%s %d%s', comma_value(gold), goldimage, silver, silverimage, copper, copperImage));
	elseif silver > 0 then
		tooltip:AddLine(label, format('%d%s %d%s', silver, silverimage, copper, copperImage));
	else
		tooltip:AddLine(label, format('%d%s', copper, copperImage));
	end
end


local function OnImageEnter(self)
	local tooltip = LibQTip:Acquire("GlockTracker-CurrencyTooltip", 2, "LEFT", "LEFT")
	self.tooltip = tooltip;
	local currentMoney = GetMoney();

	tooltip:AddHeader("Money:")
	RenderMoney("Started with:", amountOfGoldStarted, tooltip);	
	RenderMoney("Currently have:", currentMoney, tooltip);	

	local diff = (currentMoney - amountOfGoldStarted);
	local diffLable = "Surplus this session";

	if(diff < 0) then 
		diffLable = "Deficit this session";
	end

	RenderMoney(diffLable, diff, tooltip);
   
	tooltip:SmartAnchorTo(self.frame);
   
	tooltip:Show()
end

local function OnImageLeave(self)
   LibQTip:Release(self.tooltip)
   self.tooltip = nil
end

function GlockTracker:SetupCurrencyIcon()
	amountOfGoldStarted = GetMoney();
	iconWidget = GlockTracker:CreateTopBarIcon("Currency", "Interface\\Icons\\inv_misc_coin_02.blp");
	iconWidget:SetCallback('OnEnter', OnImageEnter);
	iconWidget:SetCallback('OnLeave', OnImageLeave);
	topBar:AddWidget(iconWidget);
end