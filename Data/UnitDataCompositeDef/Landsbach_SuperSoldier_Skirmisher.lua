-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "Other Combatants",
	'Id', "Landsbach_SuperSoldier_Skirmisher",
	'object_class', "UnitData",
	'Health', 70,
	'Agility', 99,
	'Dexterity', 83,
	'Strength', 47,
	'Wisdom', 77,
	'Leadership', 20,
	'Marksmanship', 82,
	'Mechanical', 56,
	'Explosives', 38,
	'Medical', 55,
	'Portrait', "UI/EnemiesPortraits/ArmyRecon",
	'Name', T(864753506665, --[[UnitDataCompositeDef Landsbach_SuperSoldier_Skirmisher Name]] "Siegfried's Guard"),
	'Randomization', true,
	'Affiliation', "SuperSoldiers",
	'StartingLevel', 5,
	'neutral_retaliate', true,
	'AIKeywords', {
		"Explosives",
	},
	'archetype', "Skirmisher",
	'role', "Recon",
	'AlwaysUseOpeningAttack', true,
	'MaxAttacks', 2,
	'CustomEquipGear', function (self, items)
		self:TryLoadAmmo("Handheld A", "SubmachineGun", "_9mm_HP")
	end,
	'MaxHitPoints', 50,
	'StartingPerks', {
		"AutoWeapons",
		"Berserker",
		"ColdHeart",
		"SteadyBreathing",
		"DieselPerk",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Landsbach_SuperSoldier_Skirmisher",
		}),
	},
	'Equipment', {
		"Landsbach_SuperSoldier_Skirmisher",
	},
	'AdditionalGroups', {},
	'Tier', "Veteran",
	'pollyvoice', "Joey",
	'gender', "Male",
	'VoiceResponseId', "SuperSoldier_Assault",
})
