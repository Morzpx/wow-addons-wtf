-- HereBeDragons-Migrate is not supported on WoW 7.x or earlier
if select(4, GetBuildInfo()) < 80000 then
    return
end

local MAJOR, MINOR = "HereBeDragons-Migrate", 1
assert(LibStub, MAJOR .. " requires LibStub")

local HBDMigrate, oldversion = LibStub:NewLibrary(MAJOR, MINOR)
if not HBDMigrate then return end

local SetupMigrationData
local MapMigrationData, mapFileToIdMap, uiMapIdToIdMap

--- Return the uiMapId from the specified mapAreaId/floor combination
-- @param mapId mapAreaId to lookup
-- @param floor floor to lookup (if nil, the first floor will be used)
-- @return The uiMapId corresponding to this map, if any
function HBDMigrate:GetUIMapIDFromMapAreaId(mapId, floor)
    if not mapId then return nil end
    local data = MapMigrationData[mapId]
    if not data then return nil end

    if not floor then
        if data[0] then
            floor = 0
        elseif data.defaultFloor then
            floor = data.defaultFloor
        else
            for i = 1, 50 do
                if data[i] then
                    floor = i
                    break
                end
            end
            data.defaultFloor = floor
        end
    end
    return data[floor]
end

--- Return the uiMapId from the specified mapFile/floor combination
-- @param mapFile mapFile to lookup
-- @param floor floor to lookup (if nil, the first floor will be used)
-- @return The uiMapId corresponding to this map, if any
function HBDMigrate:GetUIMapIDFromMapFile(mapFile, floor)
    if not mapFile then return nil end
    if not mapFileToIdMap then SetupMigrationData() end
    return self:GetUIMapIDFromMapAreaId(mapFileToIdMap[mapFile], floor)
end

--- Return the legacy map information for the specified uiMapId
-- @param uiMapId uiMapId to lookup
-- @return mapAreaId, floor, mapFile
function HBDMigrate:GetLegacyMapInfo(uiMapId)
    if not uiMapId then return nil end
    if not uiMapIdToIdMap then SetupMigrationData() end
    local c = uiMapIdToIdMap[uiMapId]
    if not c then return end
    
    local m, f = floor(c / 10000), (c % 10000)
    return m, f, MapMigrationData[m].mapFile
end

MapMigrationData = {
    [4] = { mapFile = "Durotar", [0] = 1, [8] = 2, [12] = 5, [19] = 6, [11] = 4, [10] = 3},
    [9] = { mapFile = "Mulgore", [0] = 7, [6] = 8, [7] = 9},
    [11] = { mapFile = "Barrens", [0] = 10, [20] = 11},
    [13] = { mapFile = "Kalimdor", [0] = 12},
    [14] = { mapFile = "Azeroth", [0] = 13},
    [16] = { mapFile = "Arathi", [0] = 14},
    [17] = { mapFile = "Badlands", [0] = 15, [18] = 16},
    [19] = { mapFile = "BlastedLands", [0] = 17},
    [20] = { mapFile = "Tirisfal", [0] = 18, [13] = 19, [25] = 20},
    [21] = { mapFile = "Silverpine", [0] = 21},
    [22] = { mapFile = "WesternPlaguelands", [0] = 22},
    [23] = { mapFile = "EasternPlaguelands", [0] = 23, [20] = 24},
    [24] = { mapFile = "HillsbradFoothills", [0] = 25},
    [26] = { mapFile = "Hinterlands", [0] = 26},
    [27] = { mapFile = "DunMorogh", [6] = 28, [7] = 29, [11] = 31, [10] = 30, [0] = 27},
    [28] = { mapFile = "SearingGorge", [0] = 32, [15] = 34, [14] = 33, [16] = 35},
    [29] = { mapFile = "BurningSteppes", [0] = 36},
    [30] = { mapFile = "Elwynn", [1] = 38, [2] = 39, [0] = 37, [19] = 40, [21] = 41},
    [32] = { mapFile = "DeadwindPass", [0] = 42, [24] = 45, [22] = 43, [23] = 44, [27] = 46},
    [758] = { mapFile = "TheBastionofTwilight", [1] = 294, [2] = 295, [3] = 296},
    [886] = { mapFile = "TerraceOfEndlessSpring", [0] = 456},
    [1014] = { mapFile = "Dalaran70", [0] = 625, [12] = 629, [4] = 626, [11] = 628, [10] = 627},
    [759] = { mapFile = "HallsofOrigination", [1] = 297, [2] = 298, [3] = 299},
    [887] = { mapFile = "SiegeofNiuzaoTemple", [1] = 458, [2] = 459, [0] = 457},
    [1015] = { mapFile = "Azsuna", [0] = 630, [17] = 631, [19] = 633, [18] = 632},
    [760] = { mapFile = "RazorfenDowns", [1] = 300},
    [888] = { mapFile = "ShadowglenStart", [0] = 460},
    [761] = { mapFile = "RazorfenKraul", [1] = 301},
    [889] = { mapFile = "ValleyofTrialsStart", [0] = 461},
    [1017] = { mapFile = "Stormheim", [1] = 635, [0] = 634, [28] = 640, [27] = 639, [26] = 638, [9] = 636, [25] = 637},
    [762] = { mapFile = "ScarletMonastery", [1] = 302, [2] = 303, [3] = 304, [4] = 305},
    [890] = { mapFile = "CampNaracheStart", [0] = 462},
    [1018] = { mapFile = "Valsharah", [0] = 641, [13] = 642, [15] = 644, [14] = 643},
    [763] = { mapFile = "Scholomance", [1] = 306, [2] = 307, [3] = 308, [4] = 309},
    [891] = { mapFile = "EchoIslesStart", [0] = 463, [9] = 464},
    [510] = { mapFile = "CrystalsongForest", [0] = 127},
    [40] = { mapFile = "Wetlands", [0] = 56},
    [764] = { mapFile = "ShadowfangKeep", [1] = 310, [2] = 311, [3] = 312, [4] = 313, [5] = 314, [6] = 315, [7] = 316},
    [892] = { mapFile = "DeathknellStart", [0] = 465, [12] = 466},
    [1020] = { mapFile = "TwistingNether70", [0] = 645},
    [765] = { mapFile = "Stratholme", [1] = 317, [2] = 318},
    [893] = { mapFile = "SunstriderIsleStart", [0] = 467},
    [1021] = { mapFile = "BrokenShore", [1] = 647, [2] = 648, [0] = 646},
    [766] = { mapFile = "AhnQiraj", [1] = 319, [2] = 320, [3] = 321},
    [894] = { mapFile = "AmmenValeStart", [0] = 468},
    [1022] = { mapFile = "Helheim", [0] = 649},
    [767] = { mapFile = "ThroneofTides", [1] = 322, [2] = 323},
    [895] = { mapFile = "NewTinkertownStart", [0] = 469, [8] = 470},
    [512] = { mapFile = "StrandoftheAncients", [0] = 128},
    [640] = { mapFile = "Deepholm", [1] = 208, [2] = 209, [0] = 207},
    [768] = { mapFile = "TheStonecore", [1] = 324},
    [896] = { mapFile = "MogushanVaults", [1] = 471, [2] = 472, [3] = 473},
    [1024] = { mapFile = "Highmountain", [0] = 650, [29] = 657, [8] = 653, [16] = 654, [5] = 651, [40] = 660, [20] = 655, [21] = 656, [6] = 652, [31] = 659, [30] = 658},
    [321] = { mapFile = "Orgrimmar", [1] = 86, [0] = 85},
    [769] = { mapFile = "Skywall", [1] = 325},
    [897] = { mapFile = "HeartofFear", [1] = 474, [2] = 475},
    [1026] = { mapFile = "HellfireRaid", [1] = 662, [2] = 663, [3] = 664, [4] = 665, [5] = 666, [6] = 667, [7] = 668, [8] = 669, [9] = 670, [0] = 661},
    [161] = { mapFile = "Tanaris", [0] = 71, [17] = 74, [15] = 72, [16] = 73, [18] = 75},
    [1027] = { mapFile = "AraukNashalIntroScenario", [0] = 671},
    [898] = { mapFile = "Scholomance", [1] = 476, [2] = 477, [3] = 478, [4] = 479},
    [1028] = { mapFile = "MardumtheShatteredAbyss", [1] = 673, [2] = 674, [3] = 675, [0] = 672},
    [899] = { mapFile = "ProvingGrounds", [1] = 480},
    [772] = { mapFile = "AhnQirajTheFallenKingdom", [0] = 327},
    [900] = { mapFile = "AncientMoguCrypt", [1] = 481, [2] = 482},
    [1032] = { mapFile = "VaultOfTheWardensDH", [1] = 677, [2] = 678, [3] = 679},
    [81] = { mapFile = "StonetalonMountains", [0] = 65},
    [773] = { mapFile = "ThroneoftheFourWinds", [1] = 328},
    [1034] = { mapFile = "HelmouthShallows", [0] = 694},
    [1035] = { mapFile = "ValhallasWarriorOrderHome", [1] = 695},
    [775] = { mapFile = "CoTMountHyjal", [0] = 329},
    [520] = { mapFile = "TheNexus", [1] = 129},
    [776] = { mapFile = "GruulsLair", [1] = 330},
    [521] = { mapFile = "CoTStratholme", [1] = 131, [0] = 130},
    [1041] = { mapFile = "HallsofValor", [1] = 704, [2] = 705, [0] = 703},
    [522] = { mapFile = "Ahnkahet", [1] = 132},
    [906] = { mapFile = "DustwallowMarshScenarioAlliance", [0] = 483},
    [523] = { mapFile = "UtgardeKeep", [1] = 133, [2] = 134, [3] = 135},
    [779] = { mapFile = "MagtheridonsLair", [1] = 331},
    [524] = { mapFile = "UtgardePinnacle", [1] = 136, [2] = 137},
    [41] = { mapFile = "Teldrassil", [2] = 58, [3] = 59, [4] = 60, [0] = 57, [5] = 61},
    [780] = { mapFile = "CoilfangReservoir", [1] = 332},
    [525] = { mapFile = "HallsofLightning", [1] = 138, [2] = 139},
    [781] = { mapFile = "ZulAman", [0] = 333},
    [526] = { mapFile = "Ulduar77", [1] = 140},
    [782] = { mapFile = "TempestKeep", [1] = 334},
    [527] = { mapFile = "TheEyeofEternity", [1] = 141},
    [911] = { mapFile = "KrasarangAlliance", [0] = 486},
    [528] = { mapFile = "Nexus80", [1] = 143, [2] = 144, [3] = 145, [4] = 146, [0] = 142},
    [912] = { mapFile = "KrasarangPatience", [0] = 487},
    [529] = { mapFile = "Ulduar", [1] = 148, [2] = 149, [3] = 150, [4] = 151, [5] = 152, [0] = 147},
    [1057] = { mapFile = "MaelstromShaman", [0] = 726},
    [530] = { mapFile = "Gundrak", [1] = 154, [0] = 153},
    [1059] = { mapFile = "TerraceofEndlessSpringScenario", [0] = 728},
    [914] = { mapFile = "VoljinScenario", [1] = 489, [0] = 488},
    [531] = { mapFile = "TheObsidianSanctum", [0] = 155},
    [532] = { mapFile = "VaultofArchavon", [1] = 156},
    [533] = { mapFile = "AzjolNerub", [1] = 157, [2] = 158, [3] = 159},
    [789] = { mapFile = "SunwellPlateau", [1] = 336, [0] = 335},
    [534] = { mapFile = "DrakTharonKeep", [1] = 160, [2] = 161},
    [1067] = { mapFile = "DarkheartThicket", [0] = 733},
    [535] = { mapFile = "Naxxramas", [1] = 162, [2] = 163, [3] = 164, [4] = 165, [5] = 166, [6] = 167},
    [1069] = { mapFile = "TheBeyond", [1] = 736},
    [919] = { mapFile = "BlackTempleScenario", [1] = 491, [2] = 492, [3] = 493, [4] = 494, [5] = 495, [6] = 496, [7] = 497, [0] = 490},
    [536] = { mapFile = "VioletHold", [1] = 168},
    [1071] = { mapFile = "FirelandsShaman", [0] = 738},
    [920] = { mapFile = "KrasarangHorde", [0] = 498},
    [1072] = { mapFile = "TrueshotLodge", [0] = 739},
    [793] = { mapFile = "ZulGurub", [0] = 337},
    [461] = { mapFile = "ArathiBasin", [0] = 93},
    [1075] = { mapFile = "AbyssalMawShamanAcquisition", [1] = 742, [2] = 743},
    [922] = { mapFile = "DeeprunTram", [1] = 499, [2] = 500},
    [1076] = { mapFile = "UlduarMagni", [1] = 744, [2] = 745, [3] = 746},
    [795] = { mapFile = "MoltenFront", [0] = 338},
    [462] = { mapFile = "EversongWoods", [0] = 94},
    [34] = { mapFile = "Duskwood", [0] = 47},
    [42] = { mapFile = "Darkshore", [0] = 62},
    [796] = { mapFile = "BlackTemple", [1] = 340, [2] = 341, [3] = 342, [4] = 343, [5] = 344, [6] = 345, [7] = 346, [0] = 339},
    [924] = { mapFile = "DalaranCity", [1] = 501, [2] = 502},
    [541] = { mapFile = "HrothgarsLanding", [0] = 170},
    [797] = { mapFile = "HellfireRamparts", [1] = 347},
    [925] = { mapFile = "BrawlgarArena", [1] = 503},
    [542] = { mapFile = "TheArgentColiseum", [1] = 171},
    [798] = { mapFile = "MagistersTerrace", [1] = 348, [2] = 349},
    [543] = { mapFile = "TheArgentColiseum", [1] = 172, [2] = 173},
    [799] = { mapFile = "Karazhan", [1] = 350, [2] = 351, [3] = 352, [4] = 353, [5] = 354, [6] = 355, [7] = 356, [8] = 357, [9] = 358, [10] = 359, [11] = 360, [12] = 361, [13] = 362, [14] = 363, [15] = 364, [16] = 365, [17] = 366},
    [464] = { mapFile = "AzuremystIsle", [0] = 97, [2] = 98, [3] = 99},
    [544] = { mapFile = "TheLostIsles", [1] = 175, [2] = 176, [3] = 177, [4] = 178, [0] = 174},
    [800] = { mapFile = "Firelands", [1] = 368, [2] = 369, [0] = 367},
    [928] = { mapFile = "IsleoftheThunderKing", [1] = 505, [2] = 506, [0] = 504},
    [545] = { mapFile = "Gilneas", [1] = 180, [2] = 181, [3] = 182, [0] = 179},
    [673] = { mapFile = "TheCapeOfStranglethorn", [0] = 210},
    [401] = { mapFile = "AlteracValley", [0] = 91},
    [929] = { mapFile = "IsleOfGiants", [0] = 507},
    [1090] = { mapFile = "TolBaradWarlockScenario", [1] = 774, [0] = 773},
    [201] = { mapFile = "UngoroCrater", [0] = 78, [14] = 79},
    [930] = { mapFile = "ThunderKingRaid", [1] = 508, [2] = 509, [3] = 510, [4] = 511, [5] = 512, [6] = 513, [7] = 514, [8] = 515},
    [1092] = { mapFile = "AzuremystIsleScenario", [0] = 776},
    [803] = { mapFile = "TheNexusLegendary", [1] = 370},
    [466] = { mapFile = "Expansion01", [0] = 101},
    [1094] = { mapFile = "NightmareRaid", [1] = 777, [2] = 778, [3] = 779, [4] = 780, [5] = 781, [6] = 782, [7] = 783, [8] = 784, [9] = 785, [10] = 786, [11] = 787, [12] = 788, [13] = 789},
    [1096] = { mapFile = "AszunaDungeonExterior", [0] = 790},
    [101] = { mapFile = "Desolace", [0] = 66, [22] = 68, [21] = 67},
    [933] = { mapFile = "IsleoftheThunderKingScenario", [1] = 517, [0] = 516},
    [806] = { mapFile = "TheJadeForest", [6] = 372, [7] = 373, [15] = 374, [16] = 375, [0] = 371},
    [934] = { mapFile = "ThunderKingLootRoom", [1] = 518},
    [1100] = { mapFile = "KarazhanScenario", [1] = 794, [2] = 795, [3] = 796, [4] = 797},
    [807] = { mapFile = "ValleyoftheFourWinds", [0] = 376, [14] = 377},
    [935] = { mapFile = "GoldRush", [0] = 519},
    [1102] = { mapFile = "ArcwayScenario", [1] = 798},
    [680] = { mapFile = "Ragefire", [1] = 213},
    [808] = { mapFile = "TheWanderingIsle", [0] = 378},
    [1104] = { mapFile = "MageCampaignTheOculus", [1] = 800, [2] = 801, [3] = 802, [4] = 803, [0] = 799},
    [341] = { mapFile = "Ironforge", [0] = 87},
    [809] = { mapFile = "KunLaiSummit", [0] = 379, [8] = 380, [9] = 381, [10] = 382, [20] = 386, [11] = 383, [21] = 387, [12] = 384, [17] = 385},
    [937] = { mapFile = "ValeOfEternalBlossomsScenario", [1] = 521, [0] = 520},
    [810] = { mapFile = "TownlongWastes", [0] = 388, [13] = 389},
    [938] = { mapFile = "EmberdeepScenario", [1] = 522},
    [811] = { mapFile = "ValeofEternalBlossoms", [1] = 391, [2] = 392, [3] = 393, [4] = 394, [0] = 390, [19] = 396, [18] = 395},
    [939] = { mapFile = "DunMoroghScenario", [0] = 523},
    [35] = { mapFile = "LochModan", [0] = 48},
    [43] = { mapFile = "Ashenvale", [0] = 63},
    [940] = { mapFile = "tempKrasarangHordeBase", [0] = 524},
    [685] = { mapFile = "RuinsofGilneasCity", [0] = 218},
    [813] = { mapFile = "NetherstormArena", [0] = 397},
    [471] = { mapFile = "TheExodar", [0] = 103},
    [1114] = { mapFile = "HelheimRaid", [1] = 807, [2] = 808, [0] = 806},
    [686] = { mapFile = "ZulFarrak", [0] = 219},
    [1115] = { mapFile = "LegionKarazhanDungeon", [1] = 809, [2] = 810, [3] = 811, [4] = 812, [5] = 813, [6] = 814, [7] = 815, [8] = 816, [9] = 817, [10] = 818, [11] = 819, [12] = 820, [13] = 821, [14] = 822},
    [1116] = { mapFile = "PitofSaronDK", [0] = 823},
    [687] = { mapFile = "TheTempleOfAtalHakkar", [1] = 220},
    [688] = { mapFile = "BlackfathomDeeps", [1] = 221, [2] = 222, [3] = 223},
    [816] = { mapFile = "WellofEternity", [0] = 398},
    [281] = { mapFile = "Winterspring", [0] = 83},
    [689] = { mapFile = "StranglethornVale", [0] = 224},
    [473] = { mapFile = "ShadowmoonValley", [0] = 104},
    [141] = { mapFile = "Dustwallow", [0] = 70},
    [690] = { mapFile = "TheStockade", [1] = 225},
    [946] = { mapFile = "Talador", [0] = 535, [13] = 536, [14] = 537, [30] = 538},
    [691] = { mapFile = "Gnomeregan", [1] = 226, [2] = 227, [3] = 228, [4] = 229},
    [819] = { mapFile = "HourofTwilight", [1] = 400, [0] = 399},
    [947] = { mapFile = "ShadowmoonValleyDR", [0] = 539, [22] = 541, [15] = 540},
    [1126] = {[0] = 824},
    [692] = { mapFile = "Uldaman", [1] = 230, [2] = 231},
    [820] = { mapFile = "EndTime", [1] = 402, [2] = 403, [3] = 404, [4] = 405, [5] = 406, [0] = 401},
    [948] = { mapFile = "SpiresOfArak", [0] = 542},
    [181] = { mapFile = "Aszhara", [0] = 76},
    [1220] = {[0] = 981},
    [1129] = { mapFile = "CaveoftheBloodtotemScenario", [1] = 826},
    [949] = { mapFile = "Gorgrond", [0] = 543, [17] = 545, [21] = 549, [20] = 548, [19] = 547, [16] = 544, [18] = 546},
    [1130] = { mapFile = "StratholmePaladinClassMount", [1] = 827},
    [1219] = {[1] = 975, [2] = 976, [3] = 977, [4] = 978, [5] = 979, [6] = 980, [0] = 974},
    [1131] = { mapFile = "TheEyeofEternityMageClassMount", [1] = 828},
    [950] = { mapFile = "NagrandDraenor", [11] = 552, [12] = 553, [0] = 550, [10] = 551},
    [1132] = { mapFile = "HallsOfValorWarriorClassMount", [1] = 829},
    [1050] = { mapFile = "WarlockClassShrine", [0] = 717},
    [823] = { mapFile = "DarkmoonFaireIsland", [1] = 408, [0] = 407},
    [476] = { mapFile = "BloodmystIsle", [0] = 106},
    [1216] = { mapFile = "VoidElfScenario", [0] = 972},
    [696] = { mapFile = "MoltenCore", [1] = 232},
    [824] = { mapFile = "DragonSoul", [1] = 410, [2] = 411, [3] = 412, [4] = 413, [5] = 414, [6] = 415, [0] = 409},
    [1215] = { mapFile = "VoidElfHub", [0] = 971},
    [1136] = { mapFile = "ColdridgeValleyScenario", [0] = 834},
    [697] = { mapFile = "ZulGurub", [0] = 233},
    [1137] = { mapFile = "TheDeadminesPetBattle", [1] = 835, [2] = 836},
    [477] = { mapFile = "Nagrand", [0] = 107},
    [1052] = { mapFile = "DemonHunterOrderHallTerrain", [1] = 720, [2] = 721, [0] = 719},
    [1054] = { mapFile = "TheVioletHoldAcquisition", [1] = 723},
    [1139] = { mapFile = "ArathiBasinWinter", [0] = 837},
    [1212] = { mapFile = "LightforgedVindicaar", [1] = 940, [2] = 941},
    [1140] = { mapFile = "BattleforBlackrockMountain", [0] = 838},
    [699] = { mapFile = "DireMaul", [1] = 235, [2] = 236, [3] = 237, [4] = 238, [5] = 239, [6] = 240, [0] = 234},
    [1211] = {[0] = 939},
    [478] = { mapFile = "TerokkarForest", [0] = 108},
    [36] = { mapFile = "Redridge", [0] = 49},
    [700] = { mapFile = "TwilightHighlands", [0] = 241},
    [1143] = { mapFile = "GnomereganPetBattle", [1] = 840, [2] = 841, [3] = 842},
    [1210] = {[0] = 938},
    [1144] = { mapFile = "SmallBattlegroundC", [0] = 843},
    [1066] = { mapFile = "LegionVioletHoldDungeon", [1] = 732},
    [1145] = {[0] = 844},
    [479] = { mapFile = "Netherstorm", [0] = 109},
    [1146] = { mapFile = "TombofSargerasDungeon", [1] = 845, [2] = 846, [3] = 847, [4] = 848, [5] = 849},
    [1204] = {[1] = 934, [2] = 935},
    [1147] = { mapFile = "TombRaid", [1] = 850, [2] = 851, [3] = 852, [4] = 853, [5] = 854, [6] = 855, [7] = 856},
    [1202] = { mapFile = "LightforgedDraeneiSwamp", [0] = 933},
    [1148] = { mapFile = "ThroneoftheFourWinds", [1] = 857},
    [1201] = { mapFile = "InvasionPointVal", [0] = 932},
    [1149] = { mapFile = "AssaultonBrokenShoreScenario", [0] = 858},
    [480] = { mapFile = "SilvermoonCity", [0] = 110},
    [1150] = {[0] = 859},
    [704] = { mapFile = "BlackrockDepths", [1] = 242, [2] = 243},
    [1151] = { mapFile = "TheRubySanctumDKMountScenario", [0] = 860},
    [1200] = { mapFile = "InvasionPointSangua", [0] = 931},
    [1152] = { mapFile = "FelwingLedgeMardumArea", [0] = 861},
    [1199] = { mapFile = "InvasionPointNaigtal", [0] = 930},
    [1153] = {[0] = 862},
    [481] = { mapFile = "ShattrathCity", [0] = 111},
    [1154] = {[0] = 863},
    [1068] = { mapFile = "MageClassShrine", [1] = 734, [2] = 735},
    [1155] = {[0] = 864},
    [241] = { mapFile = "Moonglade", [0] = 80},
    [1156] = { mapFile = "StormheimInvasionScenario", [1] = 865, [2] = 866},
    [1070] = { mapFile = "TheVortexPinnacle", [1] = 737},
    [1157] = { mapFile = "AzsunaInvasionScenario", [1] = 867},
    [482] = { mapFile = "NetherstormArena", [0] = 112},
    [1158] = { mapFile = "ValsharahInvasionScenario", [1] = 868},
    [708] = { mapFile = "TolBarad", [0] = 244},
    [1159] = { mapFile = "HighmountainInvasionScenario", [1] = 869, [2] = 870},
    [964] = { mapFile = "OgreMines", [1] = 573},
    [1160] = { mapFile = "LostGlacierDKMountScenario", [0] = 871},
    [709] = { mapFile = "TolBaradDailyArea", [0] = 245},
    [1161] = { mapFile = "StormstoutBreweryScenario", [1] = 873, [2] = 874, [0] = 872},
    [121] = { mapFile = "Feralas", [0] = 69},
    [1162] = {[0] = 875},
    [710] = { mapFile = "TheShatteredHalls", [1] = 246},
    [1163] = {[0] = 876},
    [1073] = { mapFile = "ArtifactSubtletyRogueAcquisition", [1] = 740, [2] = 741},
    [1164] = { mapFile = "HallsofValor", [0] = 877},
    [1078] = { mapFile = "Niskara", [0] = 748},
    [1165] = { mapFile = "DemonHunterOrderHallTerrain", [1] = 879, [2] = 880, [0] = 878},
    [1079] = { mapFile = "SuamarCatacombsDungeon", [1] = 749},
    [1166] = { mapFile = "TheEyeofEternityMageClassMount", [1] = 881},
    [1080] = { mapFile = "ThunderTotem", [0] = 750},
    [1081] = { mapFile = "BlackRookHoldDungeon", [1] = 751, [2] = 752, [3] = 753, [4] = 754, [5] = 755, [6] = 756},
    [1082] = { mapFile = "UrsocsLairScenario", [0] = 757},
    [1084] = { mapFile = "GloamingReef", [0] = 758},
    [1085] = { mapFile = "70BlackTempleLegion", [1] = 759},
    [1086] = { mapFile = "MalornesNightmare", [0] = 760},
    [485] = { mapFile = "Northrend", [0] = 113},
    [1170] = { mapFile = "ArgusMacAree", [0] = 882, [3] = 883, [4] = 884},
    [1087] = { mapFile = "SuramarNoblesDistrict", [1] = 762, [2] = 763, [0] = 761},
    [1171] = { mapFile = "ArgusCore", [0] = 885, [6] = 887, [5] = 886},
    [970] = { mapFile = "TanaanJungleIntro", [1] = 578, [0] = 577},
    [1172] = { mapFile = "HallOfCommunion", [1] = 888},
    [1091] = { mapFile = "TheExodar", [0] = 775},
    [1173] = { mapFile = "TKArcatrazScenario", [1] = 889, [2] = 890},
    [486] = { mapFile = "BoreanTundra", [0] = 114},
    [37] = { mapFile = "StranglethornJungle", [0] = 50},
    [1097] = { mapFile = "ArtifactBrewmasterScenario", [1] = 791, [2] = 792},
    [1175] = {[0] = 895},
    [61] = { mapFile = "ThousandNeedles", [0] = 64},
    [1176] = {[0] = 896},
    [717] = { mapFile = "RuinsofAhnQiraj", [0] = 247},
    [1177] = { mapFile = "DragonblightChromieScenario", [1] = 898, [2] = 899, [3] = 900, [4] = 901, [5] = 902, [0] = 897},
    [973] = { mapFile = "garrisonsmvalliance_tier1", [0] = 582},
    [1178] = { mapFile = "ArgusDungeon", [0] = 903},
    [718] = { mapFile = "OnyxiasLair", [1] = 248},
    [1099] = { mapFile = "BlackRookHoldScenario", [0] = 793},
    [1174] = { mapFile = "AzuremystScenario", [1] = 892, [2] = 893, [3] = 894, [0] = 891},
    [1142] = { mapFile = "PriestClassMountScenario", [1] = 839},
    [1135] = { mapFile = "ArgusSurface", [1] = 831, [2] = 832, [0] = 830, [7] = 833},
    [1127] = { mapFile = "WailingCavernsPetBattle", [1] = 825},
    [488] = { mapFile = "Dragonblight", [0] = 115},
    [1105] = { mapFile = "ScarletMonestaryDK", [1] = 804, [2] = 805},
    [720] = { mapFile = "Uldum", [0] = 249},
    [1183] = { mapFile = "SilithusBrawl", [0] = 904},
    [976] = { mapFile = "garrisonffhorde", [27] = 586, [28] = 587, [26] = 585},
    [1184] = { mapFile = "Argus", [0] = 994},
    [721] = { mapFile = "BlackrockSpire", [1] = 250, [2] = 251, [3] = 252, [4] = 253, [5] = 254, [6] = 255},
    [1185] = {[0] = 906},
    [1088] = { mapFile = "SuramarRaid", [1] = 764, [2] = 765, [3] = 766, [4] = 767, [5] = 768, [6] = 769, [7] = 770, [8] = 771, [9] = 772},
    [1186] = { mapFile = "AzeriteBG", [0] = 907},
    [722] = { mapFile = "AuchenaiCrypts", [1] = 256, [2] = 257},
    [1187] = {[0] = 908},
    [978] = { mapFile = "Ashran", [0] = 588, [29] = 589},
    [1188] = { mapFile = "ArgusRaid", [1] = 910, [2] = 911, [3] = 912, [4] = 913, [5] = 914, [6] = 915, [7] = 916, [8] = 917, [9] = 918, [10] = 919, [11] = 920, [0] = 909},
    [723] = { mapFile = "SethekkHalls", [1] = 258, [2] = 259},
    [851] = { mapFile = "DustwallowMarshScenario", [0] = 416},
    [490] = { mapFile = "GrizzlyHills", [0] = 116},
    [1190] = { mapFile = "InvasionPointAurinor", [0] = 921},
    [724] = { mapFile = "ShadowLabyrinth", [1] = 260},
    [1191] = { mapFile = "InvasionPointBonich", [0] = 922},
    [980] = { mapFile = "garrisonffhorde_tier1", [0] = 590},
    [1192] = { mapFile = "InvasionPointCengar", [0] = 923},
    [725] = { mapFile = "TheBloodFurnace", [1] = 261},
    [1193] = { mapFile = "InvasionPointNaigtal", [0] = 924},
    [491] = { mapFile = "HowlingFjord", [0] = 117},
    [1194] = { mapFile = "InvasionPointSangua", [0] = 925},
    [726] = { mapFile = "TheUnderbog", [1] = 262},
    [1195] = { mapFile = "InvasionPointVal", [0] = 926},
    [1077] = { mapFile = "TheDreamgrove", [0] = 747},
    [1196] = { mapFile = "InvasionPointAurinor", [0] = 927},
    [727] = { mapFile = "TheSteamvault", [1] = 263, [2] = 264},
    [1197] = { mapFile = "InvasionPointBonich", [0] = 928},
    [492] = { mapFile = "IcecrownGlacier", [0] = 118},
    [1198] = { mapFile = "InvasionPointCengar", [0] = 929},
    [728] = { mapFile = "TheSlavePens", [1] = 265},
    [856] = { mapFile = "TempleofKotmogu", [0] = 417},
    [984] = { mapFile = "DraenorAuchindoun", [1] = 593},
    [601] = { mapFile = "TheForgeofSouls", [1] = 183},
    [729] = { mapFile = "TheBotanica", [1] = 266},
    [857] = { mapFile = "Krasarang", [1] = 419, [2] = 420, [3] = 421, [0] = 418},
    [493] = { mapFile = "SholazarBasin", [0] = 119},
    [602] = { mapFile = "PitofSaron", [0] = 184},
    [730] = { mapFile = "TheMechanar", [1] = 267, [2] = 268},
    [858] = { mapFile = "DreadWastes", [0] = 422},
    [986] = { mapFile = "TaladorScenario", [0] = 594},
    [603] = { mapFile = "HallsofReflection", [1] = 185},
    [731] = { mapFile = "TheArcatraz", [1] = 269, [2] = 270, [3] = 271},
    [1205] = {[0] = 936},
    [987] = { mapFile = "IronDocks", [1] = 595},
    [38] = { mapFile = "SwampOfSorrows", [0] = 51},
    [732] = { mapFile = "ManaTombs", [1] = 272},
    [860] = { mapFile = "STVDiamondMineBG", [1] = 423},
    [988] = { mapFile = "FoundryRaid", [1] = 596, [2] = 597, [3] = 598, [4] = 599, [5] = 600},
    [605] = { mapFile = "Kezan", [6] = 196, [7] = 197, [5] = 195, [0] = 194},
    [733] = { mapFile = "CoTTheBlackMorass", [0] = 273},
    [1065] = { mapFile = "NeltharionsLair", [0] = 731},
    [495] = { mapFile = "TheStormPeaks", [0] = 120},
    [606] = { mapFile = "Hyjal", [0] = 198},
    [734] = { mapFile = "CoTHillsbradFoothills", [0] = 274},
    [862] = { mapFile = "Pandaria", [0] = 424},
    [1060] = { mapFile = "DeepholmShamanAcquisition", [1] = 729},
    [607] = { mapFile = "SouthernBarrens", [0] = 199},
    [1056] = { mapFile = "MaelstromShamanHubIntro", [0] = 725},
    [1213] = {[0] = 942},
    [496] = { mapFile = "ZulDrak", [0] = 121},
    [1214] = {[0] = 943},
    [736] = { mapFile = "GilneasBattleground2", [0] = 275},
    [864] = { mapFile = "Northshire", [0] = 425, [3] = 426},
    [1051] = { mapFile = "DreadscarRift", [0] = 718},
    [609] = { mapFile = "TheRubySanctum", [0] = 200},
    [737] = { mapFile = "TheMaelstrom", [0] = 276},
    [1217] = { mapFile = "TheSunwellUnlockScenario", [1] = 973},
    [993] = { mapFile = "BlackrockTrainDepotDungeon", [1] = 606, [2] = 607, [3] = 608, [4] = 609},
    [610] = { mapFile = "VashjirKelpForest", [0] = 201},
    [1049] = { mapFile = "ArtifactSkywall", [1] = 716},
    [866] = { mapFile = "ColdridgeValley", [0] = 427, [9] = 428},
    [994] = { mapFile = "HighmaulRaid", [1] = 611, [2] = 612, [3] = 613, [4] = 614, [5] = 615, [0] = 610},
    [611] = { mapFile = "GilneasCity", [0] = 202},
    [1048] = { mapFile = "EmeraldDreamway", [0] = 715},
    [867] = { mapFile = "EastTemple", [1] = 429, [2] = 430},
    [995] = { mapFile = "UpperBlackrockSpire", [1] = 616, [2] = 617, [3] = 618},
    [1047] = { mapFile = "Niskara", [0] = 714},
    [1046] = { mapFile = "AszunaDungeon", [0] = 713},
    [1045] = { mapFile = "VaultOfTheWardens", [1] = 710, [2] = 711, [3] = 712},
    [1044] = { mapFile = "MonkOrderHallTheWanderingIsle", [0] = 709},
    [613] = { mapFile = "Vashjir", [0] = 203},
    [1042] = { mapFile = "HelheimDungeonDock", [1] = 707, [2] = 708, [0] = 706},
    [1040] = { mapFile = "NetherlightTemple", [1] = 702},
    [499] = { mapFile = "Sunwell", [0] = 122},
    [614] = { mapFile = "VashjirDepths", [0] = 204},
    [1039] = { mapFile = "IcecrownCitadelDeathKnight", [1] = 698, [2] = 699, [3] = 700, [4] = 701},
    [1038] = { mapFile = "HulnFlashback", [0] = 697},
    [1037] = { mapFile = "StormheimArtifactProtWarrior", [0] = 696},
    [615] = { mapFile = "VashjirRuins", [0] = 205},
    [1033] = { mapFile = "Suramar", [24] = 683, [33] = 685, [35] = 687, [39] = 691, [41] = 692, [42] = 693, [32] = 684, [34] = 686, [36] = 688, [38] = 690, [37] = 689, [22] = 681, [23] = 682, [0] = 680},
    [871] = { mapFile = "ScarletHalls", [1] = 431, [2] = 432},
    [1031] = { mapFile = "BrokenShorePaladin", [0] = 676},
    [301] = { mapFile = "StormwindCity", [0] = 84},
    [475] = { mapFile = "BladesEdgeMountains", [0] = 105},
    [382] = { mapFile = "Undercity", [0] = 998},
    [953] = { mapFile = "OrgrimmarRaid", [1] = 557, [2] = 558, [3] = 559, [4] = 560, [5] = 561, [6] = 562, [7] = 563, [8] = 564, [9] = 565, [10] = 566, [11] = 567, [12] = 568, [13] = 569, [14] = 570, [0] = 556},
    [1007] = { mapFile = "BrokenIsles", [0] = 619},
    [989] = { mapFile = "SpiresofArakDungeon", [1] = 601, [2] = 602},
    [873] = { mapFile = "TheHiddenPass", [0] = 433, [5] = 434},
    [501] = { mapFile = "LakeWintergrasp", [0] = 123},
    [983] = { mapFile = "DefenseofKarabor", [0] = 592},
    [971] = { mapFile = "garrisonsmvalliance", [24] = 580, [25] = 581, [23] = 579},
    [874] = { mapFile = "ScarletCathedral", [1] = 435, [2] = 436},
    [969] = { mapFile = "ShadowmoonDungeon", [1] = 574, [2] = 575, [3] = 576},
    [261] = { mapFile = "Silithus", [0] = 81, [13] = 82},
    [747] = { mapFile = "LostCityofTolvir", [0] = 277},
    [875] = { mapFile = "TheGreatWall", [1] = 437, [2] = 438},
    [502] = { mapFile = "ScarletEnclave", [0] = 124},
    [39] = { mapFile = "Westfall", [0] = 52, [17] = 55, [4] = 53, [5] = 54},
    [962] = { mapFile = "Draenor", [0] = 572},
    [876] = { mapFile = "StormstoutBrewery", [1] = 439, [2] = 440, [3] = 441, [4] = 442},
    [955] = { mapFile = "CelestialChallenge", [0] = 571},
    [951] = { mapFile = "TimelessIsle", [0] = 554, [22] = 555},
    [749] = { mapFile = "WailingCaverns", [1] = 279},
    [877] = { mapFile = "ShadowpanHideout", [1] = 444, [2] = 445, [3] = 446, [0] = 443},
    [945] = { mapFile = "TanaanJungle", [0] = 534},
    [941] = { mapFile = "FrostfireRidge", [1] = 526, [2] = 527, [3] = 528, [4] = 529, [6] = 530, [7] = 531, [8] = 532, [0] = 525, [9] = 533},
    [750] = { mapFile = "Maraudon", [1] = 280, [2] = 281},
    [878] = { mapFile = "BrewmasterScenario01", [0] = 447},
    [684] = { mapFile = "RuinsofGilneas", [0] = 217},
    [362] = { mapFile = "ThunderBluff", [0] = 88},
    [751] = { mapFile = "TheMaelstromContinent", [0] = 948},
    [182] = { mapFile = "Felwood", [0] = 77},
    [504] = { mapFile = "Dalaran", [1] = 125, [2] = 126},
    [465] = { mapFile = "Hellfire", [0] = 100},
    [752] = { mapFile = "BaradinHold", [1] = 282},
    [880] = { mapFile = "TheJadeForestScenario", [0] = 448},
    [1008] = { mapFile = "OvergrownOutpost", [1] = 621, [0] = 620},
    [443] = { mapFile = "WarsongGulch", [0] = 92},
    [753] = { mapFile = "BlackrockCaverns", [1] = 283, [2] = 284},
    [881] = { mapFile = "ValleyOfPowerScenario", [0] = 449},
    [1009] = { mapFile = "AshranAllianceFactionHub", [0] = 622},
    [626] = { mapFile = "TwinPeaks", [0] = 206},
    [754] = { mapFile = "BlackwingDescent", [1] = 285, [2] = 286},
    [882] = { mapFile = "BrewmasterScenario03", [0] = 450},
    [1010] = { mapFile = "HillsbradFoothillsBG", [0] = 623},
    [463] = { mapFile = "Ghostlands", [1] = 96, [0] = 95},
    [755] = { mapFile = "BlackwingLair", [1] = 287, [2] = 288, [3] = 289, [4] = 290},
    [883] = { mapFile = "Tyrivess", [0] = 451},
    [1011] = { mapFile = "AshranHordeFactionHub", [0] = 624},
    [381] = { mapFile = "Darnassus", [0] = 89},
    [756] = { mapFile = "TheDeadmines", [1] = 291, [2] = 292},
    [884] = { mapFile = "KunLaiPassScenario", [0] = 452},
    [540] = { mapFile = "IsleofConquest", [0] = 169},
    [604] = { mapFile = "IcecrownCitadel", [1] = 186, [2] = 187, [3] = 188, [4] = 189, [5] = 190, [6] = 191, [7] = 192, [8] = 193},
    [757] = { mapFile = "GrimBatol", [1] = 293},
    [885] = { mapFile = "MogushanPalace", [1] = 453, [2] = 454, [3] = 455},
    [467] = { mapFile = "Zangarmarsh", [0] = 102},
}

function SetupMigrationData()
    mapFileToIdMap = {}
    for id, t in pairs(MapMigrationData) do
        if t.mapFile then
            mapFileToIdMap[t.mapFile] = id
        end
    end

    uiMapIdToIdMap = {}
    for id, t in pairs(MapMigrationData) do
        for floor, uiMapId in pairs(t) do
            if floor ~= "mapFile" and floor ~= "defaultFloor" then
                uiMapIdToIdMap[uiMapId] = id * 10000 + floor
            end
        end
    end
end
