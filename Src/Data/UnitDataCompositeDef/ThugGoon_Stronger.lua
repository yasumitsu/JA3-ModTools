-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "Thugs",
	'Id', "ThugGoon_Stronger",
	'Comment', "+ actions",
	'object_class', "UnitData",
	'Health', 50,
	'Agility', 87,
	'Dexterity', 63,
	'Strength', 50,
	'Wisdom', 30,
	'Leadership', 20,
	'Marksmanship', 66,
	'Mechanical', 0,
	'Explosives', 0,
	'Medical', 0,
	'Portrait', "UI/EnemiesPortraits/ThugSoldier",
	'BigPortrait', "UI/EnemiesPortraits/Unknown",
	'Name', T(916087176240, --[[UnitDataCompositeDef ThugGoon_Stronger Name]] "Tough Ganger"),
	'Randomization', true,
	'Affiliation', "Thugs",
	'StartingLevel', 3,
	'neutral_retaliate', true,
	'AIKeywords', {
		"Smoke",
	},
	'role', "Soldier",
	'MaxAttacks', 2,
	'MaxHitPoints', 50,
	'StartingPerks', {
		"AutoWeapons",
		"Shatterhand",
		"Hotblood",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_1",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Thug_Soldier_2",
		}),
	},
	'Equipment', {
		"ThugGoon_Stronger",
	},
	'AdditionalGroups', {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "ThugMale_2",
		}),
	},
	'pollyvoice', "Joey",
	'gender', "Male",
	'VoiceResponseId', "ThugGunner",
})

