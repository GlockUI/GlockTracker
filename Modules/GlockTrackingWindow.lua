GlockTrackerWindow = LibStub("AceAddon-3.0"):NewAddon("GlockTrackingWindow", "AceConsole-3.0", "AceEvent-3.0");
AceEvent = LibStub("AceEvent-3.0");
local frame;
local scroll;
local upperGroup;
local optionsTabGroup;
local itemsGroup;

local DfTabValue = "DragonflightTab";
local SlTabValue = "ShadowlandsTab";
local OptsTabValue = "OptionsTab";

local currentTab;

function GlockTrackerWindow:CreateWindow()
	frame = AceGUI:Create("GlockFrame");
    frame:SetLayout("Fill");
    frame:SetTitle("Glock Tracker");
    frame:EnableResize(true);
    frame:EnableMove(true);
    frame:SetPoint("Center");

    scroll = AceGUI:Create("ScrollFrame");
    scroll:SetLayout("List");
    frame:AddChild(scroll);

    upperGroup = AceGUI:Create("SimpleGroup");
    upperGroup:SetFullWidth(true);
    optionsTabGroup = AceGUI:Create("TabGroup");
    optionsTabGroup:SetFullWidth(true);
    optionsTabGroup:SetLayout("Flow");
    optionsTabGroup:SetTabs({{text="Shadowlands Materials", value=SlTabValue}, {text="Dragonflight Materials", value=DfTabValue}});
    optionsTabGroup:SetCallback("OnGroupSelected", SelectOptionsGroup);
    optionsTabGroup:SelectTab(SlTabValue);

    upperGroup:AddChild(optionsTabGroup);
    scroll:AddChild(upperGroup);

    itemsGroup = AceGUI:Create("InlineGroup");
    itemsGroup:SetTitle("Items");
    itemsGroup:SetFullWidth(true);
    itemsGroup:SetLayout("Flow");
    scroll:AddChild(itemsGroup);
end

function GlockTrackerWindow:Open()
	frame:Show();
end

function GlockTrackerWindow:Hide()
	frame:Hide();
end

function GlockTrackerWindow:DrawDragonflight(container)
	AceEvent:SendMessage("GlockWin_TabChanged");
end

function GlockTrackerWindow:DrawShadowlands(container)
	AceEvent:SendMessage("GlockWin_TabChanged");
end

function SelectOptionsGroup(container, event, group)
	frame:EnableResize(false);
    frame:EnableMove(false);
    if group == DfTabValue then
        currentTab = DfTabValue;
        GlockTrackerWindow:DrawDragonflight(container);
    elseif group == SlTabValue then
        currentTab = SlTabValue;
        GlockTrackerWindow:DrawShadowlands(container);
    end
    upperGroup:DoLayout();
    scroll:DoLayout();
    frame:EnableResize(true);
    frame:EnableMove(true);
end

function GlockTrackerWindow:CurrentVisibleTab()
	return currentTab;
end


function GlockTrackerWindow:GetItemsGroup()
	return itemsGroup;
end

