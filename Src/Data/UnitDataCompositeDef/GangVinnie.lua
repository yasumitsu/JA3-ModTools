-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "NPC_banter",
	'Id', "GangVinnie",
	'Comment', "Old Vinnie",
	'object_class', "UnitData",
	'Health', 62,
	'Agility', 47,
	'Dexterity', 39,
	'Strength', 59,
	'Wisdom', 30,
	'Leadership', 20,
	'Marksmanship', 67,
	'Mechanical', 0,
	'Explosives', 0,
	'Medical', 0,
	'Portrait', "UI/EnemiesPortraits/AdonisSniper",
	'Name', T(323513379527, --[[UnitDataCompositeDef GangVinnie Name]] "Old Vinnie"),
	'Randomization', true,
	'Affiliation', "Other",
	'StartingLevel', 7,
	'ImportantNPC', true,
	'neutral_retaliate', true,
	'archetype', "HeavyGunner",
	'role', "Heavy",
	'AlwaysUseOpeningAttack', true,
	'MaxAttacks', 2,
	'MaxHitPoints', 85,
	'StartingPerks', {
		"HeavyWeaponsTraining",
		"AutoWeapons",
		"MinFreeMove",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "GangVinnie",
		}),
	},
	'Equipment', {
		"GangVinnie",
	},
	'AdditionalGroups', {
		PlaceObj('AdditionalGroup', {
			'Name', "ThugFemale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Name', "ThugFemale_2",
		}),
	},
	'pollyvoice', "Nicole",
	'gender', "Female",
	'PersistentSessionId', "NPC_Vinnie",
	'HealPersistentOnSpawn', true,
	'VoiceResponseId', "GangTrudy",
	'FallbackMissingVR', "AnneLeMitrailleur",
})

