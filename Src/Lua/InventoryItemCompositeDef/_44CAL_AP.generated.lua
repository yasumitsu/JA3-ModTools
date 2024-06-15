-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('_44CAL_AP')
DefineClass._44CAL_AP = {
	__parents = { "Ammo" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "Ammo",
	Icon = "UI/Icons/Items/44_cal_bullets_armor_piercing",
	DisplayName = T(336715778820, --[[InventoryItemCompositeDef _44CAL_AP DisplayName]] ".44 Armor Piercing"),
	DisplayNamePlural = T(653298577431, --[[InventoryItemCompositeDef _44CAL_AP DisplayNamePlural]] ".44 Armor Piercing"),
	colorStyle = "AmmoAPColor",
	Description = T(933559598531, --[[InventoryItemCompositeDef _44CAL_AP Description]] ".44 Ammo for Revolvers and Rifles."),
	AdditionalHint = T(850324784601, --[[InventoryItemCompositeDef _44CAL_AP AdditionalHint]] "<bullet_point> Improved armor penetration"),
	Cost = 120,
	CanAppearInShop = true,
	Tier = 2,
	MaxStock = 5,
	RestockWeight = 25,
	CategoryPair = "44CAL",
	ShopStackSize = 12,
	MaxStacks = 500,
	Caliber = "44CAL",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "PenetrationClass",
		}),
	},
	ammo_type_icon = "UI/Icons/Items/ta_ap.png",
}

