
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.0.2",
	},
	["profileKeys"] = {
		["Шананси - Разувий"] = "По умолчанию",
		["Шашабуй - Разувий"] = "По умолчанию",
		["Мороженщик - Разувий"] = "По умолчанию",
		["Джитиприст - Разувий"] = "По умолчанию",
		["Джитирог - Разувий"] = "По умолчанию",
		["Джиупицца - Свежеватель Душ"] = "По умолчанию",
		["Дубарун - Разувий"] = "По умолчанию",
		["Биполярка - Разувий"] = "По умолчанию",
		["Курамёт - Разувий"] = "По умолчанию",
		["Аимбот - Разувий"] = "По умолчанию",
		["Анклбенсс - Разувий"] = "По умолчанию",
		["Джитивар - Разувий"] = "По умолчанию",
	},
	["profiles"] = {
		["По умолчанию"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Ауры",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Индикаторы здоровья",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "Панели команд",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["По умолчанию"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
