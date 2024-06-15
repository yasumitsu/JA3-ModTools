-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "SiegfriedSuperSoldiers",
	'Id', "SuperSoldier_Stormer_Stronger",
	'Comment', "tough flanker",
	'object_class', "UnitData",
	'Health', 96,
	'Agility', 97,
	'Dexterity', 83,
	'Strength', 47,
	'Wisdom', 77,
	'Leadership', 20,
	'Marksmanship', 70,
	'Mechanical', 56,
	'Explosives', 38,
	'Medical', 55,
	'Portrait', "UI/EnemiesPortraits/ThugHeavy",
	'Name', T(172358032123, --[[UnitDataCompositeDef SuperSoldier_Stormer_Stronger Name]] "Über Stürmer"),
	'Randomization', true,
	'Affiliation', "SuperSoldiers",
	'StartingLevel', 8,
	'neutral_retaliate', true,
	'AIKeywords', {
		"Flank",
	},
	'archetype', "Skirmisher",
	'role', "Stormer",
	'AlwaysUseOpeningAttack', true,
	'CustomEquipGear', function (self, items)
		self:TryLoadAmmo("Handheld A", "Shotgun", "_12gauge_Breacher")
	end,
	'MaxHitPoints', 50,
	'StartingPerks', {
		"Berserker",
		"BattleFocus",
		"SteadyBreathing",
		"BeefedUp",
		"DieselPerk",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Landsbach_SuperSoldier_Stormer",
		}),
	},
	'Equipment', {
		"SuperSoldier_Stormer_Stronger",
	},
	'AdditionalGroups', {},
	'Tier', "Veteran",
	'pollyvoice', "Joey",
	'gender', "Male",
	'VoiceResponseId', "SuperSoldier_Assault",
})
