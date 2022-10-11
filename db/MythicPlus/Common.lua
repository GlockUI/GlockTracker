local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
topBar = LibStub("AceAddon-3.0"):GetAddon("GlockTopBar");
local LibQTip = LibStub('LibQTip-1.0');
local iconWidget;
local playerName;

local function PrintRuns(runs, dugeonName, tooltip)
    tooltip:AddHeader(dugeonName);

	if #runs > 0 then
        for i=1,#runs do
            local run = runs[i];
            if(run.completed) then
                tooltip:AddLine("Level:" .. run.level, "Timed Successfull!");
            else
                tooltip:AddLine("Level:" .. run.level, "Not Successfull!");
            end
        end
    else
        tooltip:AddLine("No Mythic+ runs recorded for this week.");
    end
     tooltip:AddLine("");
     tooltip:AddLine("");
end

local function OnImageEnter(self)
	local tooltip = LibQTip:Acquire("GlockTracker-MythicsTooltip", 2, "LEFT", "LEFT");
	self.tooltip = tooltip;

	local hallsRuns = {};
    local spiresRuns = {};
    local theaterRuns = {};
    local sanguineRuns = {};
    local necroticRuns = {};
    local plaugefallRuns = {};
    local deOtherRuns = {};
    local mistsRuns = {};

    local runHistory = C_MythicPlus.GetRunHistory(false, true);
    
    for i=1,#runHistory do
        local run = {
            level = runHistory[i].level,
            completed = runHistory[i].completed
        };
        if runHistory[i].mapChallengeModeID == 378 then
            table.insert(hallsRuns, run);
        elseif runHistory[i].mapChallengeModeID == 381 then
            table.insert(spiresRuns, run);
        elseif runHistory[i].mapChallengeModeID == 382 then
            table.insert(theaterRuns, run);
        elseif runHistory[i].mapChallengeModeID == 380 then
            table.insert(sanguineRuns, run);
        elseif runHistory[i].mapChallengeModeID == 376 then
            table.insert(necroticRuns, run);
        elseif runHistory[i].mapChallengeModeID == 379 then
            table.insert(plaugefallRuns, run);
        elseif runHistory[i].mapChallengeModeID == 377 then
            table.insert(deOtherRuns, run);
        elseif runHistory[i].mapChallengeModeID == 375 then
            table.insert(mistsRuns, run);
        end
    end
    

    -- This is test data:
    --[[
    table.insert( hallsRuns, {level = 1, completed = true} );
    table.insert( hallsRuns, {level = 10, completed = false});
    table.insert( hallsRuns, {level = 7, completed = true} );
    
    table.insert( spiresRuns, {level = 1, completed = true} );

    table.insert( theaterRuns, {level = 5, completed = true} );
    table.insert( theaterRuns, {level = 2, completed = true} );
    table.insert( theaterRuns, {level = 7, completed = true} );
    table.insert( theaterRuns, {level = 1, completed = true} );

    table.insert( mistsRuns, {level = 9, completed = true} );
    ]]--


    table.sort( hallsRuns,function (a, b) return a.level < b.level end)
    table.sort( spiresRuns,function (a, b) return a.level < b.level end)
    table.sort( theaterRuns,function (a, b) return a.level < b.level end)
    table.sort( sanguineRuns,function (a, b) return a.level < b.level end)
    table.sort( necroticRuns,function (a, b) return a.level < b.level end)
    table.sort( plaugefallRuns,function (a, b) return a.level < b.level end)
    table.sort( deOtherRuns,function (a, b) return a.level < b.level end)
    table.sort( mistsRuns,function (a, b) return a.level < b.level end)

    PrintRuns(hallsRuns, "Halls of Atonment", tooltip);
    PrintRuns(spiresRuns, "Spires of Ascension", tooltip);
    PrintRuns(theaterRuns, "Theater of Pain", tooltip);
    PrintRuns(sanguineRuns, "Sanguine Depths", tooltip);
    PrintRuns(necroticRuns, "The Necrotic Wake", tooltip);
    PrintRuns(plaugefallRuns, "Plaguefall", tooltip);
    PrintRuns(deOtherRuns, "De Other Side", tooltip);
    PrintRuns(mistsRuns, "Mists of Tirna Scithe", tooltip);
	
   
	tooltip:SmartAnchorTo(self.frame);
   
	tooltip:Show();
end

local function OnImageLeave(self)
   LibQTip:Release(self.tooltip)
   self.tooltip = nil
end

function GlockTracker:SetupMythicsIcon(name)
	playerName = name;
	iconWidget = GlockTracker:CreateTopBarIcon("Mythic+", "Interface/ICONS/INV_Relics_Hourglass.blp");
	iconWidget:SetCallback('OnEnter', OnImageEnter);
	iconWidget:SetCallback('OnLeave', OnImageLeave);
	topBar:AddWidget(iconWidget);
end