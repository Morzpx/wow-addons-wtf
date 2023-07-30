local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("CGear") then return end
if not ZygorGuidesViewer.ItemScore then return end
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackfathom Deeps"] = {
dungeonmap=719, normal=1,
{ boss="4887", name="Ghamoo-ra",
ALL={
6907,
6908,
},
},
{ boss="4831", name="Lady Sarevess",
ALL={
888,
3078,
11121,
},
},
{ boss="6243", name="Gelihast",
ALL={
6906,
6905,
1470,
},
},
{ boss="12876", name="Baron Aquanis",
ALL={
16782,
},
},
{ boss="4832", name="Twilight Lord Kelris",
ALL={
1155,
6903,
},
},
{ boss="4830", name="Old Serra'kis",
ALL={
6901,
6904,
6902,
},
},
{ boss="4829", name="Aku'mai",
ALL={
6911,
6910,
6909,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackrock Depths"] = {
dungeonmap=1584, normal=1,
{ boss="9025", name="Lord Roccor",
ALL={
22234,
11632,
11631,
22397,
11630,
11813,
},
},
{ boss="9018", name="High Interrogator Gerstahn ",
ALL={
11623,
11624,
22240,
11625,
11140,
},
},
{ boss="9319", name="Houndmaster Grebmar",
ALL={
11626,
11627,
11628,
11629,
},
},
{ boss="9027", name="Gorosh the Dervish",
ALL={
11726,
11729,
11730,
11728,
11731,
22271,
22257,
22266,
},
},
{ boss="9028", name="Grizzle",
ALL={
11722,
11703,
22270,
11702,
11610,
},
},
{ boss="9029", name="Eviscerator",
ALL={
11685,
11679,
11686,
},
},
{ boss="9030", name="Ok'thor the Breaker",
ALL={
11665,
11662,
11824,
},
},
{ boss="9031", name="Anub'shiah",
ALL={
11678,
11677,
11675,
},
},
{ boss="9032", name="Hedrum the Creeper",
ALL={
11633,
11634,
11635,
},
},
{ boss="9024", name="Pyromancer Loregrain",
ALL={
11747,
11749,
11748,
11750,
11207,
},
},
{ boss="9438", name="Dark Coffer",
ALL={
11197,
22256,
22205,
22255,
22254,
11923,
11945,
11946,
11752,
11751,
11753,
},
},
{ boss="9041", name="Warder Stilgiss",
ALL={
11782,
22241,
11783,
11784,
},
},
{ boss="9042", name="Verek",
ALL={
11755,
22242,
},
},
{ boss="9476", name="Watchman Doomgrip",
ALL={
22205,
22255,
22256,
22254,
},
},
{ boss="9056", name="Fineous Darkvire",
ALL={
11839,
22223,
11842,
11841,
11840,
},
},
{ boss="9017", name="Lord Incendius",
ALL={
11766,
11764,
11765,
11767,
19268,
11768,
},
},
{ boss="9016", name="Bael'Gar",
ALL={
11807,
11802,
11805,
11803,
},
},
{ boss="9033", name="General Angerforge",
ALL={
11820,
11821,
11815,
11817,
11816,
11841,
},
},
{ boss="8983", name="Golem Lord Argelmach",
ALL={
11823,
11822,
11669,
11819,
},
},
{ boss="9537", name="Guzzler",
ALL={
11735,
18043,
22275,
18044,
18592,
11612,
2662,
2663,
11742,
12793,
12791,
18653,
13483,
15759,
11325,
11602,
},
},
{ boss="9502", name="Phalanx",
ALL={
11746,
22212,
11745,
11744,
11743,
},
},
{ boss="9156", name="Ambassador Flamelash",
ALL={
11808,
11812,
11814,
11832,
11809,
23320,
},
},
{ boss="8923", name="Panzor the Invincible",
ALL={
22245,
11787,
11785,
11786,
},
},
{ boss="9034", name="Chest of The Seven",
ALL={
11925,
11926,
11929,
11927,
11920,
11923,
11922,
11921,
},
},
{ boss="9938", name="Magmus",
ALL={
11935,
22395,
22400,
22208,
},
},
{ boss="8929", name="Princess Moira Bronzebeard ",
ALL={
12557,
12554,
12556,
12553,
},
},
{ boss="9019", name="Emperor Dagran Thaurissan",
ALL={
11684,
16724,
11933,
11930,
11924,
22204,
22207,
11934,
11810,
11928,
11931,
11932,
12033,
},
},
{ boss="16059", name="Theldren - Tier 0.5 Sets",
ALL={
22305,
22330,
22318,
22317,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackwing Lair"] = {
dungeonmap=2677, normal=1,
{ boss="12435", name="Razorgore the Untamed",
ALL={
16926,
16918,
16934,
16911,
16904,
16935,
16943,
16951,
16959,
19336,
19337,
19370,
19369,
19335,
19334,
},
},
{ boss="13020", name="Vaelastrasz the Corrupt",
ALL={
16925,
16818,
16933,
16910,
16903,
16936,
16944,
16952,
16960,
19339,
19340,
19372,
19371,
19348,
19346,
},
},
{ boss="12017", name="Broodlord Lashlayer",
ALL={
16919,
16912,
16927,
16906,
16898,
16941,
16949,
16957,
16965,
19341,
19342,
19373,
19374,
19350,
19351,
20383,
},
},
{ boss="11983", name="Firemaw",
ALL={
16920,
16913,
16928,
16907,
16899,
16940,
16948,
16956,
16964,
19344,
19343,
19394,
19398,
19399,
19400,
19396,
19401,
19402,
19365,
19353,
19355,
19397,
19395,
},
},
{ boss="14601", name="Ebonroc",
ALL={
16920,
16913,
16928,
16907,
16899,
16940,
16948,
16956,
16964,
19345,
19406,
19395,
19394,
19407,
19396,
19405,
19368,
19353,
19355,
19403,
19397,
},
},
{ boss="11981", name="Flamegor",
ALL={
16920,
16913,
16928,
16907,
16899,
16940,
16948,
16956,
16964,
19395,
19431,
19394,
19430,
19396,
19433,
19367,
19353,
19357,
19355,
19432,
19397,
},
},
{ boss="14020", name="Chromaggus",
ALL={
16924,
16917,
16932,
16832,
16902,
16937,
16945,
16953,
16961,
19389,
19386,
19390,
19388,
19393,
19392,
19385,
19391,
19387,
19361,
19349,
19347,
19352,
},
},
{ boss="11583", name="Nefarian",
ALL={
16923,
16916,
16931,
16905,
16897,
16942,
16950,
16958,
16966,
19003,
19360,
19363,
19364,
19356,
19375,
19377,
19378,
19380,
19381,
19376,
19382,
19379,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul East"] = {
dungeonmap=2557, normal=1,
{ boss="14354", name="Pusillin",
ALL={
18267,
18249,
},
},
{ boss="11490", name="Zevrim Thornhoof",
ALL={
18319,
18313,
18323,
18308,
18306,
},
},
{ boss="13280", name="Hydrospawn",
ALL={
18317,
18322,
18324,
19268,
18305,
18307,
},
},
{ boss="14327", name="Lethtendris",
ALL={
18325,
18311,
18301,
18302,
},
},
{ boss="11492", name="Alzzin the Wildshaper",
ALL={
18328,
18312,
18309,
18326,
18327,
18318,
18321,
18310,
18314,
18315,
},
},
{ boss="16097", name="Isalien - Tier 0.5 Sets",
ALL={
22304,
22472,
22401,
22345,
22315,
22314,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul North"] = {
dungeonmap=2558, normal=1,
{ boss="14326", name="Guard Mol'dar",
ALL={
18494,
18493,
18496,
18497,
18498,
18450,
18458,
18459,
18451,
18462,
18463,
18464,
18460,
18250,
18268,
},
},
{ boss="14322", name="Stomper Kreeg",
ALL={
18425,
},
},
{ boss="14321", name="Guard Fengus",
ALL={
18450,
18458,
18459,
18451,
18462,
18463,
18464,
18460,
18250,
18266,
},
},
{ boss="14323", name="Guard Slip'kik",
ALL={
18494,
18493,
18496,
18497,
18498,
18450,
18458,
18459,
18451,
18462,
18463,
18464,
18460,
18250,
},
},
{ boss="14338", name="Knot Thimblejack's Cache",
ALL={
18414,
18517,
18518,
18519,
18415,
18416,
18417,
18418,
18514,
18515,
18516,
18258,
18240,
},
},
{ boss="14325", name="Captain Kromcrush",
ALL={
18503,
18505,
18507,
18502,
},
},
{ boss="14324", name="Cho'Rush the Observer",
ALL={
18490,
18483,
18485,
18484,
},
},
{ boss="11501", name="King Gordok",
ALL={
18526,
18525,
18527,
18524,
18521,
18522,
18523,
18520,
19258,
18780,
},
},
{ boss="14324", name="Tribute",
ALL={
18538,
18528,
18495,
18532,
18530,
18533,
18529,
18500,
18537,
18499,
18531,
18534,
18479,
18480,
18478,
18475,
18477,
18476,
18482,
18481,
18655,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul West"] = {
dungeonmap=2559, normal=1,
{ boss="11489", name="Tendris Warpwood",
ALL={
18393,
18390,
18352,
18353,
},
},
{ boss="11488", name="Illyanna Ravenoak",
ALL={
18383,
18386,
18349,
18347,
},
},
{ boss="11487", name="Magister Kalendris",
ALL={
18374,
18397,
18371,
18350,
18351,
22309,
},
},
{ boss="11467", name="Tsu'zee",
ALL={
18387,
18346,
18345,
},
},
{ boss="11496", name="Immol'thar",
ALL={
18381,
18384,
18389,
18385,
18394,
18377,
18391,
18379,
18370,
18372,
},
},
{ boss="11486", name="Prince Tortheldrin",
ALL={
18382,
18373,
18375,
18378,
18380,
18395,
18388,
18396,
18376,
18392,
},
},
{ boss="14371", name="Shen'dralar Provisioner",
ALL={
},
},
{ boss="14506", name="Lord Hel'nurath",
ALL={
18757,
18754,
18755,
18756,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Gnomeregan"] = {
dungeonmap=721, normal=1,
{ boss="6231", name="Techbot",
ALL={
9444,
},
},
{ boss="7361", name="Grubbis",
ALL={
9445,
},
},
{ boss="7079", name="Viscous Fallout",
ALL={
9454,
9453,
9452,
},
},
{ boss="6235", name="Electrocutioner 6000",
ALL={
9447,
9446,
9448,
6893,
},
},
{ boss="6229", name="Crowd Pummeler 9-60",
ALL={
9449,
9450,
},
},
{ boss="6228", name="Dark Iron Ambassador",
ALL={
9455,
9456,
9457,
},
},
{ boss="7800", name="Mekgineer Thermaplugg",
ALL={
9492,
9461,
9458,
9459,
4415,
4413,
4411,
7742,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Lower Blackrock Spire"] = {
dungeonmap=1583, normal=1,
{ boss="10263", name="Burning Felguard",
ALL={
13181,
13182,
},
},
{ boss="9219", name="Spirestone Butcher",
ALL={
12608,
13286,
},
},
{ boss="9196", name="Highlord Omokk",
ALL={
13166,
13168,
13170,
13169,
13167,
12336,
12534,
},
},
{ boss="9218", name="Spirestone Battle Lord",
ALL={
13284,
13285,
},
},
{ boss="9217", name="Spirestone Lord Magus",
ALL={
13282,
13283,
13261,
},
},
{ boss="9236", name="Shadow Hunter Vosh'gajin",
ALL={
16712,
13257,
12626,
13255,
12653,
12651,
12654,
},
},
{ boss="9237", name="War Master Voone",
ALL={
16676,
13177,
13178,
13179,
22231,
13173,
12582,
12335,
},
},
{ boss="9596", name="Bannok Grimaxe",
ALL={
12637,
12634,
12621,
12838,
},
},
{ boss="10596", name="Mother Smolderweb",
ALL={
16715,
13244,
13213,
13183,
},
},
{ boss="10376", name="Crystal Fang",
ALL={
13185,
13184,
13218,
},
},
{ boss="10584", name="Urok Doomhowl",
ALL={
16670,
13258,
22232,
13259,
18784,
},
},
{ boss="9736", name="Quartermaster Zigris",
ALL={
13247,
13253,
13252,
12835,
},
},
{ boss="10220", name="Halycon",
ALL={
13212,
22313,
13211,
13210,
},
},
{ boss="10268", name="Gizrul the Slavener",
ALL={
16718,
13208,
13206,
13205,
},
},
{ boss="9718", name="Ghok Bashguud",
ALL={
13203,
13198,
13204,
},
},
{ boss="9568", name="Overlord Wyrmthalak",
ALL={
13143,
16679,
13162,
13164,
22321,
13163,
13148,
13161,
12337,
12780,
},
},
{ boss="16080", name="Mor Grayhoof - Tier 0.5 Sets",
ALL={
22306,
22325,
22319,
22398,
22322,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon Purple"] = {
dungeonmap=2100, normal=1,
{ boss="12236", name="Lord Vyletongue",
ALL={
17755,
17754,
17752,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon Orange"] = {
dungeonmap=2101, normal=1,
{ boss="13282", name="Noxxion",
ALL={
17746,
17744,
17745,
},
},
{ boss="12258", name="Razorlash",
ALL={
17749,
17748,
17750,
17751,
},
},
{ boss="12237", name="Meshlok the Harvester",
ALL={
17767,
17741,
17742,
},
},
{ boss="12225", name="Celebras the Cursed",
ALL={
17740,
17739,
17738,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon Inner"] = {
dungeonmap=2102, normal=1,
{ boss="12203", name="Landslide",
ALL={
17734,
17736,
17737,
17943,
},
},
{ boss="13601", name="Tinkerer Gizlock",
ALL={
17718,
17717,
17719,
},
},
{ boss="13596", name="Rotgrip",
ALL={
17732,
17728,
17730,
},
},
{ boss="12201", name="Princess Theradras",
ALL={
17780,
17715,
17707,
17714,
17711,
17713,
17710,
17766,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Molten Core"] = {
dungeonmap=2717, normal=1,
{ boss="12118", name="Lucifron",
ALL={
16800,
16805,
16829,
16837,
16859,
16863,
18870,
17109,
19145,
19146,
18872,
18875,
18861,
18879,
19147,
17077,
18878,
16665,
},
},
{ boss="11982", name="Magmadar",
ALL={
16814,
16796,
16810,
16822,
16835,
16847,
16843,
16855,
16867,
18203,
17065,
18829,
18823,
19143,
19136,
18861,
19144,
18824,
18821,
18820,
19142,
17069,
17073,
18822,
},
},
{ boss="12259", name="Gehennas",
ALL={
16812,
16826,
16849,
16839,
16860,
16862,
18870,
19145,
19146,
18872,
18875,
18861,
18879,
19147,
17077,
18878,
},
},
{ boss="12057", name="Garr",
ALL={
18564,
16813,
16795,
16808,
16821,
16834,
16846,
16842,
16854,
16866,
18829,
18823,
19143,
19136,
18861,
19144,
18824,
18821,
18820,
19142,
17066,
17071,
17105,
18832,
18822,
},
},
{ boss="12264", name="Shazzrah",
ALL={
16811,
16801,
16803,
16824,
16831,
16852,
18870,
19145,
19146,
18872,
18875,
18861,
18879,
19147,
17077,
18878,
},
},
{ boss="12056", name="Baron Geddon",
ALL={
18563,
16797,
16807,
16836,
16844,
16856,
18829,
18823,
19143,
19136,
18861,
19144,
18824,
18821,
17110,
18820,
19142,
18822,
},
},
{ boss="11988", name="Golemagg the Incinerator",
ALL={
16815,
16798,
16809,
16820,
16833,
16845,
16841,
16853,
16865,
17203,
18829,
18823,
19143,
19136,
18861,
19144,
18824,
18821,
18820,
19142,
17072,
17103,
18822,
18842,
},
},
{ boss="12098", name="Sulfuron Harbinger",
ALL={
16816,
16823,
16848,
16868,
18870,
19145,
19146,
18872,
18875,
18861,
18879,
19147,
17077,
18878,
17074,
},
},
{ boss="12018", name="Majordomo Executus",
ALL={
19139,
18810,
18811,
18808,
18809,
18812,
18806,
19140,
18805,
18803,
18703,
18646,
},
},
{ boss="11502", name="Ragnaros",
ALL={
17204,
19017,
16922,
16915,
16930,
16909,
16901,
16938,
16946,
16954,
16962,
17082,
18817,
18814,
17102,
17107,
19137,
17063,
19138,
18815,
17106,
18816,
17104,
17076,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Naxxramas"] = {
dungeonmap=3456, normal=1,
{ boss="15956", name="Anub'Rekhan",
ALL={
22726,
22727,
22369,
22362,
22355,
22935,
22938,
22936,
22939,
22937,
},
},
{ boss="15953", name="Grand Widow Faerlina",
ALL={
22726,
22727,
22369,
22362,
22355,
22943,
22941,
22940,
22942,
22806,
},
},
{ boss="15952", name="Maexxna",
ALL={
22726,
22727,
22371,
22364,
22357,
22947,
23220,
22954,
22807,
22804,
},
},
{ boss="15954", name="Noth the Plaguebringer",
ALL={
22726,
22727,
22370,
22363,
22356,
23030,
23031,
23028,
23029,
23006,
23005,
22816,
},
},
{ boss="15936", name="Heigan the Unclean",
ALL={
22726,
22727,
22370,
22363,
22356,
23035,
23033,
23019,
23036,
23068,
},
},
{ boss="16011", name="Loatheb",
ALL={
22726,
22727,
22366,
22359,
22352,
23038,
23037,
23042,
23039,
22800,
},
},
{ boss="16061", name="Instructor Razuvious",
ALL={
22726,
22727,
22372,
22365,
22358,
23017,
23219,
23018,
23004,
23009,
23014,
},
},
{ boss="16060", name="Gothik the Harvester",
ALL={
22726,
22727,
22372,
22365,
22358,
23032,
23020,
23023,
23021,
23073,
},
},
{ boss="16064", name="The Four Horsemen",
ALL={
22726,
22727,
22351,
22350,
22349,
23071,
23025,
23027,
22811,
22809,
22691,
},
},
{ boss="16028", name="Patchwerk",
ALL={
22726,
22727,
22368,
22361,
22354,
22960,
22961,
22820,
22818,
22815,
},
},
{ boss="15931", name="Grobbulus",
ALL={
22726,
22727,
22368,
22361,
22354,
22968,
22967,
22810,
22803,
22988,
},
},
{ boss="15932", name="Gluth",
ALL={
22726,
22727,
22983,
22981,
22994,
23075,
22813,
22368,
22369,
22370,
22372,
22361,
22362,
22363,
22365,
22354,
22355,
22356,
22358,
},
},
{ boss="15928", name="Thaddius",
ALL={
22726,
22727,
22367,
22360,
22353,
23000,
23070,
23001,
22808,
22801,
},
},
{ boss="15989", name="Sapphiron",
ALL={
23050,
23045,
23040,
23047,
23041,
23046,
23049,
23048,
23043,
23242,
23549,
23548,
23545,
23547,
},
},
{ boss="15990", name="Kel'Thuzad",
ALL={
23057,
23053,
22812,
22821,
22819,
22802,
23056,
23054,
23577,
22798,
22799,
22520,
23061,
23062,
23063,
23060,
23064,
23067,
23065,
23066,
23059,
22733,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Onyxia"] = {
dungeonmap=2159, normal=1,
{ boss="10184", name="Onyxia",
ALL={
16921,
16914,
16929,
16908,
16900,
16939,
16947,
16955,
16963,
18423,
15410,
18705,
18205,
17078,
18813,
17064,
17067,
17068,
17075,
17966,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Razorfen Downs"] = {
dungeonmap=722, normal=1,
{ boss="7355", name="Tuten'kash",
ALL={
10776,
10775,
10777,
},
},
{ boss="14686", name="Lady Falther'ess",
ALL={
23178,
23177,
},
},
{ boss="7357", name="Mordresh Fire Eye",
ALL={
10769,
10771,
10770,
},
},
{ boss="8567", name="Glutton",
ALL={
10774,
10772,
},
},
{ boss="7354", name="Ragglesnout",
ALL={
10768,
10767,
10758,
},
},
{ boss="7358", name="Amnennar the Coldbringer",
ALL={
10763,
10762,
10764,
10761,
10765,
},
},
{ boss="7356", name="Plaguemaw the Rotting",
ALL={
10766,
10760,
},
},
{ boss="8696", name="Henry Stern",
ALL={
3826,
10841,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Razorfen Kraul"] = {
dungeonmap=491, normal=1,
{ boss="4424", name="Aggem Thorncurse",
ALL={
6681,
},
},
{ boss="4428", name="Death Speaker Jargba",
ALL={
2816,
6685,
6682,
},
},
{ boss="4420", name="Overlord Ramtusk",
ALL={
6687,
6686,
},
},
{ boss="4438", name="Razorfen Spearhide",
ALL={
6679,
},
},
{ boss="4422", name="Agathelos the Raging",
ALL={
6691,
6690,
},
},
{ boss="4425", name="Blind Hunter",
ALL={
6695,
6697,
6696,
},
},
{ boss="4421", name="Charlga Razorflank",
ALL={
6693,
6694,
6692,
17008,
},
},
{ boss="4842", name="Earthcaller Halmgar",
ALL={
6689,
6688,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Monastery Armory"] = {
dungeonmap=796, normal=1,
{ boss="3975", name="Herod",
ALL={
7719,
7718,
10330,
7717,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Monastery Cathedral"] = {
dungeonmap=797, normal=1,
{ boss="4542", name="High Inquisitor Fairbanks",
ALL={
19507,
19508,
19509,
},
},
{ boss="3976", name="Scarlet Commander Mograine",
ALL={
7724,
10330,
7726,
7723,
},
},
{ boss="3977", name="High Inquisitor Whitemane",
ALL={
7720,
7722,
7721,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Monastery Graveyard"] = {
dungeonmap=798, normal=1,
{ boss="3983", name="Interrogator Vishas",
ALL={
7682,
7683,
},
},
{ boss="6490", name="Azshir the Sleepless",
ALL={
7709,
7708,
7731,
},
},
{ boss="6488", name="Fallen Champion",
ALL={
7691,
7690,
7689,
},
},
{ boss="6489", name="Ironspine",
ALL={
7688,
7687,
7686,
},
},
{ boss="4543", name="Bloodmage Thalnos",
ALL={
7685,
7684,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Monastery Library"] = {
dungeonmap=799, normal=1,
{ boss="3974", name="Houndmaster Loksey",
ALL={
7710,
7756,
3456,
},
},
{ boss="6487", name="Arcanist Doan",
ALL={
7714,
7713,
7712,
7711,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scholomance"] = {
dungeonmap=2057, normal=1,
{ boss="14861", name="Blood Steward of Kirtonos",
ALL={
13523,
},
},
{ boss="10506", name="Kirtonos the Herald",
ALL={
16734,
13960,
13955,
13969,
13957,
13956,
13967,
14024,
13983,
},
},
{ boss="10503", name="Jandice Barov",
ALL={
16701,
14548,
18689,
14543,
14545,
18690,
14541,
22394,
13523,
},
},
{ boss="11622", name="Rattlegore",
ALL={
16711,
14539,
14538,
18686,
14537,
14528,
14531,
18782,
13873,
},
},
{ boss="14516", name="Death Knight Darkreaver",
ALL={
18760,
18761,
18758,
18759,
},
},
{ boss="10433", name="Marduk Blackpool",
ALL={
18692,
14576,
},
},
{ boss="10432", name="Vectus",
ALL={
18691,
14577,
},
},
{ boss="10508", name="Ras Frostwhisper",
ALL={
13314,
16689,
14503,
14340,
18693,
14525,
14502,
14522,
18694,
18695,
18696,
13952,
14487,
13521,
},
},
{ boss="10505", name="Instructor Malicia",
ALL={
16710,
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="11261", name="Doctor Theolen Krastinov",
ALL={
16684,
14617,
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="10901", name="Lorekeeper Polkelt",
ALL={
16705,
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="10507", name="The Ravenian",
ALL={
16716,
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="10504", name="Lord Alexei Barov",
ALL={
16722,
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="10502", name="Lady Illucia Barov",
ALL={
18681,
14633,
14626,
14637,
14611,
14624,
14629,
14640,
14615,
14622,
14636,
14614,
14620,
14632,
14638,
18682,
14612,
14623,
14631,
14641,
14616,
14621,
18684,
23201,
23200,
18680,
18683,
},
},
{ boss="1853", name="Darkmaster Gandling",
ALL={
13937,
14514,
16693,
16686,
16698,
16707,
16720,
16677,
16667,
16727,
16731,
13944,
13951,
13950,
13398,
22433,
13938,
13953,
13964,
19276,
13501,
},
},
{ boss="14516", name="Death Knight Darkreaver",
ALL={
18760,
18761,
18758,
18759,
},
},
{ boss="16118", name="Kormok - Tier 0.5 Sets",
ALL={
22303,
22326,
22331,
22332,
22333,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Shadowfang Keep"] = {
dungeonmap=209, normal=1,
{ boss="3914", name="Rethilgore",
ALL={
5254,
},
},
{ boss="3865", name="Fel Steed / Shadow Charger",
ALL={
6341,
932,
},
},
{ boss="3886", name="Razorclaw the Butcher",
ALL={
1292,
6226,
6633,
},
},
{ boss="3887", name="Baron Silverlaine",
ALL={
6321,
6323,
},
},
{ boss="4278", name="Commander Springvale",
ALL={
6320,
3191,
},
},
{ boss="14682", name="Sever",
ALL={
23173,
23171,
},
},
{ boss="4279", name="Odo the Blindwatcher",
ALL={
6318,
6319,
},
},
{ boss="3872", name="Deathsworn Captain",
ALL={
6642,
6641,
},
},
{ boss="4627", name="Arugal's Voidwalker",
ALL={
5943,
},
},
{ boss="4274", name="Fenrus the Devourer",
ALL={
6340,
3230,
},
},
{ boss="3927", name="Wolf Master Nandos",
ALL={
3748,
6314,
},
},
{ boss="4275", name="Archmage Arugal",
ALL={
6324,
6392,
6220,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Stratholme Living"] = {
dungeonmap=2017, normal=1,
{ boss="10393", name="Skul",
ALL={
13395,
13394,
13396,
},
},
{ boss="10558", name="Hearthsinger Forresten",
ALL={
13378,
13384,
13383,
13379,
},
},
{ boss="10516", name="The Unforgiven",
ALL={
16717,
13404,
13405,
13409,
13408,
},
},
{ boss="10808", name="Timmy the Cruel",
ALL={
13400,
13403,
13402,
13401,
},
},
{ boss="10997", name="Cannon Master Willey",
ALL={
16708,
22407,
22403,
22405,
18721,
13381,
13382,
13380,
13377,
22404,
22406,
12839,
},
},
{ boss="10811", name="Archivist Galford",
ALL={
16692,
13386,
13387,
18716,
13385,
12811,
22897,
},
},
{ boss="10812", name="Balnazzar",
ALL={
13353,
14512,
16725,
13359,
18718,
12103,
18720,
13358,
13369,
13360,
18717,
22334,
13348,
13520,
13250,
},
},
{ boss="11143", name="Postmaster Malown",
ALL={
16682,
13390,
13388,
13389,
13391,
13392,
13393,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Stratholme Undead"] = {
dungeonmap=2018, normal=1,
{ boss="10435", name="Magistrate Barthilas",
ALL={
18727,
13376,
18726,
18722,
23198,
18725,
12382,
},
},
{ boss="10809", name="Stonespine",
ALL={
13397,
13954,
13399,
},
},
{ boss="10436", name="Baroness Anastari",
ALL={
16704,
18728,
18730,
18729,
13534,
13538,
13535,
13537,
13539,
13514,
},
},
{ boss="10437", name="Nerub'enkan",
ALL={
16675,
18740,
18739,
18738,
13529,
13533,
13532,
13531,
13530,
13508,
},
},
{ boss="10438", name="Maleki the Pallid",
ALL={
16691,
18734,
18735,
13524,
18737,
13528,
13525,
13526,
13527,
13509,
12833,
},
},
{ boss="10439", name="Ramstein the Gorger",
ALL={
16737,
18723,
13374,
13373,
13515,
13375,
13372,
},
},
{ boss="10440", name="Baron Rivendare",
ALL={
13335,
13505,
22411,
22412,
13340,
13346,
22409,
13344,
22410,
13345,
22408,
13349,
13368,
13361,
16694,
16687,
16699,
16709,
16719,
16678,
16668,
16728,
16732,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Deadmines"] = {
dungeonmap=1581, normal=1,
{ boss="644", name="Rhahk'Zor",
ALL={
872,
5187,
},
},
{ boss="3586", name="Miner Johnson",
ALL={
5443,
5444,
},
},
{ boss="643", name="Sneed",
ALL={
5194,
5195,
},
},
{ boss="642", name="Sneed's Shredder",
ALL={
1937,
2169,
},
},
{ boss="1763", name="Gilnid",
ALL={
1156,
5199,
},
},
{ boss="646", name="Mr. Smite",
ALL={
7230,
5192,
5196,
},
},
{ boss="647", name="Captain Greenskin",
ALL={
5201,
10403,
5200,
},
},
{ boss="639", name="Edwin VanCleef",
ALL={
5193,
5202,
10399,
5191,
2874,
},
},
{ boss="645", name="Cookie",
ALL={
5198,
5197,
8490,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Ruins of Ahn'Qiraj"] = {
dungeonmap=3429, normal=1,
{ boss="15348", name="Kurinnaxx",
ALL={
21499,
21498,
21502,
21501,
21500,
21503,
20885,
20889,
20888,
20884,
},
},
{ boss="15341", name="General Rajaxx",
ALL={
21493,
21492,
21496,
21494,
21495,
21497,
20885,
20889,
20888,
20884,
},
},
{ boss="15340", name="Moam",
ALL={
21472,
21467,
21479,
21471,
21455,
21468,
21474,
21470,
21469,
21476,
21475,
21477,
21473,
20890,
20886,
20888,
20884,
22220,
},
},
{ boss="15370", name="Buru the Gorger",
ALL={
21487,
21486,
21485,
21491,
21489,
21490,
21488,
20890,
20886,
20885,
20889,
20888,
20884,
},
},
{ boss="15369", name="Ayamiss the Hunter",
ALL={
21479,
21478,
21466,
21484,
21480,
21482,
21481,
21483,
20890,
20886,
20885,
20889,
20888,
20884,
},
},
{ boss="15339", name="Ossirian the Unscarred",
ALL={
21460,
21454,
21453,
21456,
21464,
21457,
21462,
21458,
21463,
21461,
21459,
21715,
21452,
20890,
20886,
20888,
20884,
21220,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Temple of Ahn'Qiraj"] = {
dungeonmap=3428, normal=1,
{ boss="15263", name="The Prophet Skeram",
ALL={
21699,
21814,
21708,
21698,
21705,
21704,
21706,
21702,
21700,
21701,
21707,
21703,
21128,
21237,
21232,
22222,
},
},
{ boss="15543", name="Bug Trio",
ALL={
21693,
21694,
21697,
21696,
21692,
21695,
21237,
21232,
21680,
21681,
21685,
21603,
21690,
21689,
21691,
21688,
21686,
21684,
21683,
21682,
21687,
},
},
{ boss="15516", name="Battleguard Sartura",
ALL={
21669,
21678,
21671,
21672,
21674,
21675,
21676,
21668,
21667,
21648,
21670,
21666,
21673,
21237,
21232,
},
},
{ boss="15510", name="Fankriss the Unyielding",
ALL={
21665,
21639,
21627,
21663,
21652,
21651,
21645,
21650,
21635,
21664,
21647,
22402,
22396,
21237,
21232,
},
},
{ boss="15299", name="Viscidus",
ALL={
21624,
21623,
21626,
21622,
21677,
21625,
22399,
21237,
21232,
20928,
20932,
},
},
{ boss="15509", name="Princess Huhuran",
ALL={
21621,
21618,
21619,
21617,
21620,
21616,
21237,
21232,
20928,
20932,
},
},
{ boss="15275", name="Twin Emperors",
ALL={
20930,
21602,
21599,
21598,
21600,
21601,
21597,
20735,
21232,
20926,
21608,
21604,
21605,
21609,
21607,
21606,
21679,
20726,
21237,
},
},
{ boss="15517", name="Ouro",
ALL={
21615,
21611,
23558,
23570,
21610,
23557,
21237,
21232,
20927,
20931,
},
},
{ boss="15727", name="C'Thun",
ALL={
22732,
21583,
22731,
22730,
21582,
21586,
21585,
21581,
21596,
21579,
21839,
21126,
21134,
20929,
20933,
21221,
22734,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Temple of Atal'Hakkar"] = {
dungeonmap=1477, normal=1,
{ boss="5716", name="Balcony Minibosses",
ALL={
10783,
10784,
10787,
10788,
10785,
10786,
20606,
20607,
20608,
},
},
{ boss="8580", name="Atal'alarion",
ALL={
10800,
10798,
10799,
},
},
{ boss="5708", name="Spawn of Hakkar",
ALL={
10801,
10802,
},
},
{ boss="8443", name="Avatar of Hakkar",
ALL={
12462,
10843,
10845,
10842,
10846,
10838,
10844,
},
},
{ boss="5710", name="Jammal'an the Prophet",
ALL={
10806,
10808,
10807,
},
},
{ boss="5711", name="Ogom the Wretched",
ALL={
10805,
10803,
10804,
},
},
{ boss="5721", name="Dreamscythe",
ALL={
12465,
12466,
12464,
10797,
12463,
12243,
10795,
10796,
},
},
{ boss="5720", name="Weaver",
ALL={
12465,
12466,
12464,
10797,
12463,
12243,
10795,
10796,
},
},
{ boss="5722", name="Hazzas",
ALL={
12465,
12466,
12464,
10797,
12463,
12243,
10795,
10796,
},
},
{ boss="5719", name="Morphaz",
ALL={
12465,
12466,
12464,
10797,
12463,
12243,
10795,
10796,
},
},
{ boss="5709", name="Shade of Eranikus",
ALL={
10847,
10833,
10829,
10836,
10835,
10837,
10828,
10454,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Uldaman"] = {
dungeonmap=1337, normal=1,
{ boss="6907", name="Eric 'The Swift'",
ALL={
9394,
9398,
2459,
},
},
{ boss="6906", name="Baelog",
ALL={
9401,
9399,
9400,
},
},
{ boss="6908", name="Olaf",
ALL={
9404,
9403,
1177,
},
},
{ boss="6910", name="Revelosh",
ALL={
9389,
9388,
9390,
9387,
7741,
},
},
{ boss="7228", name="Ironaya",
ALL={
9409,
9407,
9408,
},
},
{ boss="7206", name="Ancient Stone Keeper",
ALL={
9410,
9411,
},
},
{ boss="7291", name="Galgann Firehammer",
ALL={
11310,
9412,
11311,
9419,
},
},
{ boss="4854", name="Grimlok",
ALL={
9415,
9416,
9414,
},
},
{ boss="2748", name="Archaedas",
ALL={
11118,
9413,
9418,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Upper Blackrock Spire"] = {
dungeonmap=1582, normal=1,
{ boss="9816", name="Pyroguard Emberseer",
ALL={
16672,
12929,
12927,
12905,
12926,
23320,
},
},
{ boss="10264", name="Solakar Flamewreath",
ALL={
16695,
12609,
12603,
12589,
12606,
18657,
},
},
{ boss="10509", name="Jed Runewatcher",
ALL={
12604,
12930,
12605,
},
},
{ boss="10899", name="Goraluk Anvilcrack ",
ALL={
13502,
13498,
18047,
18048,
12834,
12837,
18779,
12806,
12696,
},
},
{ boss="10339", name="Gyth",
ALL={
12871,
16669,
22225,
12960,
12953,
12952,
13522,
},
},
{ boss="10429", name="Warchief Rend Blackhand",
ALL={
12590,
16733,
12587,
12588,
12936,
18104,
12935,
18102,
22247,
18103,
12940,
12939,
12583,
},
},
{ boss="10430", name="The Beast",
ALL={
12731,
16729,
12967,
12968,
12966,
12965,
12963,
12964,
22311,
12709,
12969,
24101,
19227,
},
},
{ boss="10363", name="General Drakkisath",
ALL={
12592,
22267,
13141,
22269,
13142,
13098,
22268,
22253,
12602,
15730,
13519,
16690,
16688,
16700,
16721,
16706,
16674,
16666,
16726,
16730,
},
},
{ boss="16042", name="Lord Valthalak - Tier 0.5 Sets",
ALL={
22302,
22340,
22337,
22343,
22342,
22339,
22336,
22335,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Wailing Caverns"] = {
dungeonmap=718, normal=1,
{ boss="3669", name="Lord Cobrahn",
ALL={
6460,
10410,
6465,
},
},
{ boss="3671", name="Lady Anacondra",
ALL={
10412,
5404,
6446,
},
},
{ boss="3653", name="Kresh",
ALL={
13245,
6447,
},
},
{ boss="3670", name="Lord Pythas",
ALL={
6472,
6473,
},
},
{ boss="3674", name="Skum",
ALL={
6449,
6448,
},
},
{ boss="3673", name="Lord Serpentis",
ALL={
6469,
5970,
10411,
6459,
},
},
{ boss="5775", name="Verdan the Everliving",
ALL={
6630,
6631,
6629,
},
},
{ boss="3654", name="Mutanus the Devourer",
ALL={
6461,
6627,
6463,
10441,
},
},
{ boss="5912", name="Deviate Faerie Dragon",
ALL={
5243,
6632,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\World Bosses"] = {
dungeonmap=0, normal=1,
{ boss="6109", name="Azuregos",
ALL={
19132,
18208,
18541,
18547,
18545,
19131,
19130,
17070,
18202,
18542,
18704,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
{ boss="12397", name="Lord Kazzak",
ALL={
18546,
17111,
18204,
19135,
18544,
19134,
19133,
18543,
17112,
17113,
18665,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
{ boss="14888", name="Lethon",
ALL={
20628,
20626,
20630,
20625,
20627,
20629,
20579,
20615,
20616,
20618,
20617,
20619,
20582,
20644,
20600,
20580,
20581,
20381,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
{ boss="14889", name="Emeriss",
ALL={
20623,
20622,
20624,
20621,
20599,
20579,
20615,
20616,
20618,
20617,
20619,
20582,
20644,
20600,
20580,
20581,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
{ boss="14890", name="Taerar",
ALL={
20633,
20631,
20634,
20632,
20577,
20579,
20615,
20616,
20618,
20617,
20619,
20582,
20644,
20600,
20580,
20581,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
{ boss="14887", name="Ysondre",
ALL={
20637,
20635,
20638,
20639,
20636,
20578,
20579,
20615,
20616,
20618,
20617,
20619,
20582,
20644,
20600,
20580,
20581,
11938,
17962,
17963,
17964,
17965,
17969,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Zul'Farrak"] = {
dungeonmap=1176, normal=1,
{ boss="8127", name="Antu'sul",
ALL={
9640,
9641,
9639,
9379,
},
},
{ boss="7272", name="Theka the Martyr",
ALL={
10660,
},
},
{ boss="7271", name="Witch Doctor Zum'rah",
ALL={
18083,
18082,
},
},
{ boss="7796", name="Nekrum Gutchewer",
ALL={
9471,
},
},
{ boss="7275", name="Shadowpriest Sezz'ziz",
ALL={
9470,
9473,
9474,
9475,
},
},
{ boss="10081", name="Dustwraith",
ALL={
12471,
},
},
{ boss="7274", name="Sandfury Executioner",
ALL={
8444,
},
},
{ boss="7604", name="Sergeant Bly",
ALL={
8548,
},
},
{ boss="7795", name="Hydromancer Velratha",
ALL={
9234,
10661,
},
},
{ boss="7273", name="Gahz'rilla",
ALL={
9469,
9467,
},
},
{ boss="7267", name="Chief Ukorz Sandscalp",
ALL={
9479,
9476,
9478,
9477,
11086,
},
},
{ boss="10082", name="Zerillis",
ALL={
12470,
},
},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Zul'Gurub"] = {
dungeonmap=1977, normal=1,
{ boss="14517", name="High Priestess Jeklik",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
19918,
19923,
19928,
20262,
20265,
19920,
19915,
},
},
{ boss="14507", name="High Priest Venoxis",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
19904,
19903,
19907,
19906,
19905,
19900,
},
},
{ boss="14510", name="High Priestess Mar'li",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
20032,
19927,
19871,
19919,
19925,
19930,
},
},
{ boss="11382", name="Bloodlord Mandokir",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
22637,
19872,
20038,
19867,
19866,
19874,
19878,
19870,
19869,
19895,
19877,
19873,
19863,
19893,
},
},
{ boss="15082", name="Gri'lek",
ALL={
19961,
19962,
19939,
},
},
{ boss="15083", name="Hazza'rah",
ALL={
19967,
19968,
19942,
},
},
{ boss="15084", name="Renataki",
ALL={
19964,
19963,
19940,
},
},
{ boss="15085", name="Wushoolay",
ALL={
19993,
19965,
19941,
},
},
{ boss="15114", name="Gahz'ranka",
ALL={
19945,
19944,
19947,
19946,
22739,
},
},
{ boss="14509", name="High Priest Thekal",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
19902,
19897,
19896,
19899,
20260,
20266,
19898,
19901,
},
},
{ boss="14515", name="High Priestess Arlokk",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
19910,
19909,
19913,
19912,
19922,
19914,
},
},
{ boss="11380", name="Jin'do the Hexxer",
ALL={
19721,
19724,
19723,
19722,
19717,
19716,
19718,
19719,
19720,
22637,
19885,
19891,
19890,
19884,
19886,
19875,
19888,
19929,
19894,
19889,
19887,
19892,
},
},
{ boss="14834", name="Hakkar",
ALL={
19857,
20257,
20264,
19855,
19876,
19856,
19861,
19853,
19862,
19864,
19865,
19852,
19859,
19854,
19802,
},
},
}
