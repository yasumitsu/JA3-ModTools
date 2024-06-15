-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Magazines",
	'Id', "SkillMag_Medical",
	'object_class', "MiscItem",
	'Repairable', false,
	'Icon', "UI/Icons/Items/mag_national_paramedic",
	'DisplayName', T(843836306167, --[[InventoryItemCompositeDef SkillMag_Medical DisplayName]] "National Paramedic"),
	'DisplayNamePlural', T(324921685110, --[[InventoryItemCompositeDef SkillMag_Medical DisplayNamePlural]] "National Paramedic"),
	'Description', T(526556854684, --[[InventoryItemCompositeDef SkillMag_Medical Description]] "90+ beats to which you can perform CPR."),
	'AdditionalHint', T(420149826572, --[[InventoryItemCompositeDef SkillMag_Medical AdditionalHint]] "<bullet_point> Used through the Item Menu\n<bullet_point> Single use\n<bullet_point> Increases Medical"),
	'UnitStat', "Medical",
	'Valuable', 1,
	'Cost', 1500,
	'CanAppearInShop', true,
	'Tier', 2,
	'MaxStock', 1,
	'RestockWeight', 10,
	'effect_moment', "on_use",
	'Effects', {
		PlaceObj('UnitStatBoost', {
			Amount = 1,
			Stat = "Medical",
		}),
	},
	'action_name', T(889884758137, --[[InventoryItemCompositeDef SkillMag_Medical action_name]] "READ"),
	'destroy_item', true,
})

