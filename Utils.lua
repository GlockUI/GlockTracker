local L = LibStub("AceLocale-3.0"):GetLocale("GlockTracker");
local playerN = UnitName("player");
local realm = GetRealmName();
local playerName = playerN .. "-" .. realm;

local GlockDefaults = {
    profile = {
        SchemaVersion = 0.1,
        ShowAllCharacters = false,
        FramePoint = nil,
        FrameHeight = 500,
        FrameWidth = 700,
        Shadowlands = {
            Collect = true,
            ShowHerbalism = true,
            Herbs = {
                DeathBlossom = {
                    Need = 0
                },
                Nightshade = {
                    Need = 0
                },
                RisingGlory = {
                    Need = 0
                },
                Marrowroot = {
                    Need = 0
                },
                Widowbloom = {
                    Need = 0
                },
                VigilsTorch = {
                    Need = 0
                }
            },
            ShowFish = true,
            Fish = {
                LostSole = {
                    Need = 0
                },
                SilverPike = {
                    Need = 0
                },
                PoketFish = {
                    Need = 0
                },
                PocketBonefish = {
                    Need = 0
                },
                Iridescent = {
                    Need = 0
                },
                SpinefinPiranha = {
                    Need = 0
                },
                Elysian = {
                    Need = 0
                }
            },
            ShowCloth = true,
            Cloth = {
                ShroudedCloth = {
                    Need = 0
                },
                LightlessSilk = {
                    Need = 0
                }
            },
            ShowOre = true,
            Ore = {
                Laestrite = {
                    Need = 0
                },
                Elethium = {
                    Need = 0
                },
                Solenium = {
                    Need = 0
                },
                Oxxein = {
                    Need = 0
                },
                Phaedrum = {
                    Need = 0
                },
                Sinvyr = {
                    Need = 0
                }
            },
            ShowLeather = true,
            Leather = {
                Desolate = {
                    Need = 0
                },
                PallidBone = {
                    Need = 0
                },
                Callous = {
                    Need = 0
                }
            },
            ShowMeat = true,
            Meat = {
                Aethereal = {
                    Need = 0
                },
                CreepingCrawler = {
                    Need = 0
                },
                PhantasmalHaunch = {
                    Need = 0
                },
                RawSeraphicWing = {
                    Need = 0
                },
                ShadowyShank = {
                    Need = 0
                },
                TenebrousRibs = {
                    Need = 0
                }
            },
        },
        Dragonflight = {

        },
        Money = {

        }
    },
    global = {
        ["**"] = {
            Shadowlands = {
                Herbs = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    DeathBlossom = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    NightShade = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    RisingGlory = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    Marrowroot = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    VigilsTorch = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    RisingGlory = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                },
                Fish = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    LostSole = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    SilverPike = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    PoketBoneFish = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    Iridescent = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    SpinefinPiranha = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    Elysian = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                },
                Cloth = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    ShroudedCloth = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    LightlessSilk = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                },
                Ore = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    LaestriteOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    ElethiumOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    SoleniumOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    OxxeinOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    PhaedrumOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    SinvyrOre = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                },
                Leather = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    DesolateLeather = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    PallidBone = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    CallousHide = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                },
                Meat = {
                    ["**"] = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    Aethereal = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    CreepingCrawler = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    PhantasmalHaunch = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    RawSeraphicWing = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    ShadowyShank = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    },
                    TenebrousRibs = {
                        Bag = 0,
                        ReagentBank = 0,
                        Bank = 0
                    }
                }
            }
        }
    }
}

local GlockOptionsTable = {
    name = L["AddonTitle"],
    handler = GlockTracker,
    type = "group",
    args = {
        ShadowlandsOptions = {
            name = L["Shadowlands"],
            type = "group",
            args = {
                CanCollectSl = {
                    name = L["CanCollectSl"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleCollectShadowlands",
                    get = "CanCollectShadowlands",
                    order = 0,
                    width = "full"
                },
            }
        },
        DragonflightOptions = {
            name = L["Dragonflight"],
            type = "group",
            args = {
            }
        }
    }
}

function GlockTracker:SetupOptions()
    self.db = LibStub("AceDB-3.0"):New("GlockTrackerDB", GlockDefaults, true);
    LibStub("AceConfig-3.0"):RegisterOptionsTable("GlockTracker", GlockOptionsTable, {"gtopts"});
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("GlockTracker", "GlockTracker");
end

function GlockTracker:CheckNumber(info, num)
    local a = tonumber(num)
    if (type(a) == "number") then
        return true
    else
        return L["CheckNumberError"];
    end
end

function GlockTracker:GetPlayerName()
	return playerName;
end

function GlockTracker:CreateLine(labelName, location, bag, reagent, bank, need, toolTip)
     if (need > 0) then
        toolTip:AddLine(labelName, location, "Need:" .. need, "Bag:" .. bag, "Reagent:" .. reagent, "Bank:" .. bank);
    else
        toolTip:AddLine(labelName, location, "Need: 0", "Bag:" .. bag, "Reagent:" .. reagent, "Bank:" .. bank);
    end
end

function GlockTracker:CreateTopBarIcon(label, imagePath)
	local icon = AceGUI:Create("Icon");
    icon:SetLabel(label);
    icon:SetImage(imagePath);
    icon:SetImageSize(25,25);

    return icon;
end
