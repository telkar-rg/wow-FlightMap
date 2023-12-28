-- Default neutral data sets for FlightMap
--
-- Some default flight times thanks to Krwaz, author of FlightPath.
-- 
-- This file is loaded after the localisations

local AddonName, AddonTable = ...



-- Prepare LibBabble
local B = LibStub('LibBabble-Zone-3.0');
AddonTable.BabbleZone = B:GetLookupTable();
local BabbleZone = AddonTable.BabbleZone

-- Default options
AddonTable.FLIGHTMAP_DEFAULT_OPTS = {
     ["showPaths"]   = false,
     ["showPOIs"]    = true,
     ["showAllInfo"] = "1",
     ["useTimer"]    = true,
     ["showCosts"]   = false,
     ["showTimes"]   = false,
     ["fullTaxiMap"] = true,
     ["largerTimer"] = false,
     ["xlTimer"] = false,
};

-- Sub-zones
AddonTable.FLIGHTMAP_SUBZONES = {
    [BabbleZone["Orgrimmar"]]     = BabbleZone["Durotar"],
    [BabbleZone["Thunder Bluff"]] = BabbleZone["Mulgore"],
    [BabbleZone["Undercity"]]     = BabbleZone["Tirisfal Glades"],
    [BabbleZone["Silvermoon City"]] = BabbleZone["Eversong Woods"],
    [BabbleZone["Ironforge"]]     = BabbleZone["Dun Morogh"],
    [BabbleZone["Stormwind"]]     = BabbleZone["Elwynn Forest"],
    [BabbleZone["Shattrath"]]     = BabbleZone["Terokkar Forest"],
    [BabbleZone["Dalaran"]]       = BabbleZone["Crystalsong Forest"],
};

AddonTable.NodeNamesShort = {}

FlightMap = {
    ["Opts"]             = AddonTable.FLIGHTMAP_DEFAULT_OPTS,
    ["Knowledge"]        = {},
};
