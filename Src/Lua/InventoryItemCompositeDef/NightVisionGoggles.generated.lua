-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('NightVisionGoggles')
DefineClass.NightVisionGoggles = {
	__parents = { "Armor" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "Armor",
	ScrapParts = 2,
	Degradation = 12,
	Icon = "UI/Icons/Items/night_vision",
	DisplayName = T(263962000489, --[[InventoryItemCompositeDef NightVisionGoggles DisplayName]] "Night Vision Goggles"),
	DisplayNamePlural = T(940518526415, --[[InventoryItemCompositeDef NightVisionGoggles DisplayNamePlural]] "Night Vision Goggles"),
	AdditionalHint = T(544752534188, --[[InventoryItemCompositeDef NightVisionGoggles AdditionalHint]] "<bullet_point> Reduced penalties to Accuracy at Night and in underground Sectors\n<bullet_point> Does not stack with the Night Ops perk\n<bullet_point> Can't be combined with weave or ceramics"),
	Cost = 3500,
	CanAppearInShop = true,
	Tier = 2,
	RestockWeight = 15,
	Slot = "Head",
	DamageReduction = 0,
	AdditionalReduction = 0,
	ProtectedBodyParts = set( "Head" ),
}

