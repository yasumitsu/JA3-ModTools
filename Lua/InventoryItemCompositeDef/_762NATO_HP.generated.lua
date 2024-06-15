-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('_762NATO_HP')
DefineClass._762NATO_HP = {
	__parents = { "Ammo" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "Ammo",
	Icon = "UI/Icons/Items/762_nato_bullets_hollow_point",
	DisplayName = T(669691454944, --[[InventoryItemCompositeDef _762NATO_HP DisplayName]] "7.62 mm NATO Hollow Point"),
	DisplayNamePlural = T(155427073305, --[[InventoryItemCompositeDef _762NATO_HP DisplayNamePlural]] "7.62 mm NATO Hollow Point"),
	colorStyle = "AmmoHPColor",
	Description = T(597109486171, --[[InventoryItemCompositeDef _762NATO_HP Description]] "7.62 NATO ammo for Assault Rifles, Rifles, and Machine Guns."),
	AdditionalHint = T(447573359889, --[[InventoryItemCompositeDef _762NATO_HP AdditionalHint]] "<bullet_point> No armor penetration\n<bullet_point> High Crit chance\n<bullet_point> Inflicts <em>Bleeding</em>"),
	Cost = 200,
	CanAppearInShop = true,
	Tier = 2,
	MaxStock = 5,
	RestockWeight = 25,
	CategoryPair = "762NATO",
	ShopStackSize = 30,
	MaxStacks = 500,
	Caliber = "762NATO",
	Modifications = {
		PlaceObj('CaliberModification', {
			mod_add = 50,
			target_prop = "CritChance",
		}),
		PlaceObj('CaliberModification', {
			mod_add = -4,
			target_prop = "PenetrationClass",
		}),
	},
	AppliedEffects = {
		"Bleeding",
	},
	ammo_type_icon = "UI/Icons/Items/ta_hp.png",
}
