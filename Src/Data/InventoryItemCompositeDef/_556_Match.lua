-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Ammo",
	'Id', "_556_Match",
	'object_class', "Ammo",
	'Icon', "UI/Icons/Items/556_nato_bullets_match",
	'DisplayName', T(122498717966, --[[InventoryItemCompositeDef _556_Match DisplayName]] "5.56 mm Match"),
	'DisplayNamePlural', T(844110421786, --[[InventoryItemCompositeDef _556_Match DisplayNamePlural]] "5.56 mm Match"),
	'colorStyle', "AmmoMatchColor",
	'Description', T(526351062603, --[[InventoryItemCompositeDef _556_Match Description]] "5.56 Ammo for Assault Rifles, SMGs, and Machine Guns."),
	'AdditionalHint', T(898089454154, --[[InventoryItemCompositeDef _556_Match AdditionalHint]] "<bullet_point> Increased bonus from Aiming"),
	'Cost', 180,
	'CanAppearInShop', true,
	'Tier', 3,
	'MaxStock', 5,
	'RestockWeight', 25,
	'CategoryPair', "556",
	'ShopStackSize', 30,
	'MaxStacks', 500,
	'Caliber', "556",
	'Modifications', {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
	'ammo_type_icon', "UI/Icons/Items/ta_match.png",
})
