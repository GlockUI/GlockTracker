GlockTopBar = LibStub("AceAddon-3.0"):NewAddon("GlockTopBar", "AceEvent-3.0");
AceEvent = LibStub("AceEvent-3.0");

local frame;

function GlockTopBar:CreateBar()
	frame = AceGUI:Create("GlockBar");
    frame:SetPoint("TOPLEFT");
    frame:SetPoint("RIGHT", 0);
    frame:SetHeight(50);
    frame:SetLayout("Flow");
end

function GlockTopBar:GetBar()
	return frame;
end


function GlockTopBar:AddWidget(widget)
	frame:AddChild(widget);
end
