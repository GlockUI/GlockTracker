--[[-----------------------------------------------------------------------------
Button Widget
Graphical Button.
-------------------------------------------------------------------------------]]
local Type, Version = "GlockButton", 24
local AceGUI = LibStub and LibStub("AceGUI-3.0", true)
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

-- Lua APIs
local pairs = pairs

-- WoW APIs
local _G = _G
local PlaySound, CreateFrame, UIParent = PlaySound, CreateFrame, UIParent

--[[-----------------------------------------------------------------------------
Scripts
-------------------------------------------------------------------------------]]
local function Button_OnClick(frame, ...)
	AceGUI:ClearFocus()
	PlaySound(852) -- SOUNDKIT.IG_MAINMENU_OPTION
	frame.obj:Fire("OnClick", ...)
end

local function Control_OnEnter(frame)
	frame.obj:Fire("OnEnter")
end

local function Control_OnLeave(frame)
	frame.obj:Fire("OnLeave")
end

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local FrameBackdrop = {
	bgFile = "Interface\\GlockTracker\\Libs\\textures\\NormTex2",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	edgeSize = 2
}

local methods = {
	["OnAcquire"] = function(self)
		-- restore default values
		self:SetHeight(24)
		self:SetWidth(200)
		self:SetDisabled(false)
		self:SetAutoWidth(false)
		self:SetText()
	end,

	-- ["OnRelease"] = nil,

	["SetText"] = function(self, text)
		self.frame:SetText(text)
		if self.autoWidth then
			self:SetWidth(self.text:GetStringWidth() + 30)
		end
	end,

	["SetAutoWidth"] = function(self, autoWidth)
		self.autoWidth = autoWidth
		if self.autoWidth then
			self:SetWidth(self.text:GetStringWidth() + 30)
		end
	end,

	["SetDisabled"] = function(self, disabled)
		self.disabled = disabled
		if disabled then
			self.frame:Disable()
		else
			self.frame:Enable()
		end
	end
}

--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local function Constructor()
	local name = "AceGUI30Button" .. AceGUI:GetNextWidgetNum(Type)
	local frame = CreateFrame("Button", name, UIParent, 'BackdropTemplate')
	frame:Hide()	

	frame:SetNormalFontObject("GameFontHighlight");
	local font = frame:GetNormalFontObject();
	font:SetTextColor(1, 0.82, 0, 1.0);
	frame:SetNormalFontObject(font);
	frame:SetBackdrop(FrameBackdrop);
	frame:SetBackdropColor(0, 0, 0, 0.9);
	frame:EnableMouse(true);
	frame:SetScript("OnClick", Button_OnClick);
	frame:SetScript("OnEnter", Control_OnEnter);
	frame:SetScript("OnLeave", Control_OnLeave);

	local widget = {
		frame = frame,
		type  = Type
	}
	for method, func in pairs(methods) do
		widget[method] = func
	end

	return AceGUI:RegisterAsWidget(widget)
end

AceGUI:RegisterWidgetType(Type, Constructor, Version)