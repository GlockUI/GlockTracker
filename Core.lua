GlockTracker = LibStub("AceAddon-3.0"):NewAddon("GlockTracker", "AceConsole-3.0", "AceEvent-3.0");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
AceEvent = LibStub("AceEvent-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
AceGUI = LibStub("AceGUI-3.0");
LibQTip = LibStub('LibQTip-1.0');
local IsBankOpen = false;

SLASH_GLOCKTRACKER1 = "/GlockTracker";
SlashCmdList["GLOCKTRACKER"] = function(msg, ...)
    if (msg == "show") then
        window.Open();
    elseif (msg == "hide") then
        window.Hide();
    elseif (msg == "scan") then
         GlockTracker:Scan();
    else
        print("Proper argument not given! please provide show, hide, or scan");
    end
end

function GlockTracker:OnInitialize()
    GlockTracker:SetupOptions();
    local playerName = GlockTracker:GetPlayerName();
    topBar:CreateBar();
    GlockTracker:SetupClothIcon(playerName);
    GlockTracker:SetupFishIcon(playerName);
    GlockTracker:SetupHerbIcon(playerName);
    GlockTracker:SetupLeatherIcon(playerName);
    GlockTracker:SetupMeatIcon(playerName);
    GlockTracker:SetupOreIcon(playerName);
    GlockTracker:SetupMythicsIcon(playerName);
end

function GlockTracker:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    self:RegisterEvent("BAG_UPDATE");
    self:RegisterEvent("BANKFRAME_OPENED");
    self:RegisterEvent("BANKFRAME_CLOSED");
    AceEvent:RegisterMessage("GlockWin_TabChanged", GlockTrackerWindow_TabClicked);
end

function GlockTracker:PLAYER_ENTERING_WORLD()
    GlockTracker:Scan();
    GlockTracker:SetupCurrencyIcon();
end

function GlockTracker:BAG_UPDATE()
    GlockTracker:Scan();
end

function GlockTracker:BANKFRAME_OPENED()
    IsBankOpen = true;
    GlockTracker:Scan();
end

function GlockTracker:BANKFRAME_CLOSED()
    IsBankOpen = false
end

function GlockTrackerWindow_TabClicked()
	GlockTracker:Scan();
end

function GlockTracker:BankOpen()
	return IsBankOpen;
end

function GlockTracker:Scan()
    local playerName = GlockTracker:GetPlayerName();
	GlockTracker:ParseBags(playerName);
end

