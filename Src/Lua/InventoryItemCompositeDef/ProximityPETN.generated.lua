-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('ProximityPETN')
DefineClass.ProximityPETN = {
	__parents = { "ThrowableTrapItem" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "ThrowableTrapItem",
	Repairable = false,
	Reliability = 100,
	Icon = "UI/Icons/Items/proximity_petn",
	ItemType = "Grenade",
	DisplayName = T(474525805854, --[[InventoryItemCompositeDef ProximityPETN DisplayName]] "Proximity PETN"),
	DisplayNamePlural = T(381493659820, --[[InventoryItemCompositeDef ProximityPETN DisplayNamePlural]] "Proximity PETN"),
	AdditionalHint = T(939941734434, --[[InventoryItemCompositeDef ProximityPETN AdditionalHint]] "<bullet_point> Explodes when an enemy enters a small area around it"),
	UnitStat = "Explosives",
	Cost = 800,
	CanAppearInShop = true,
	Tier = 3,
	MaxStock = 1,
	RestockWeight = 10,
	CategoryPair = "Grenade",
	MinMishapChance = -2,
	MaxMishapChance = 18,
	MaxMishapRange = 6,
	AttackAP = 4000,
	BaseRange = 3,
	ThrowMaxRange = 12,
	CanBounce = false,
	Noise = 30,
	Entity = "Explosive_PETN",
	ActionIcon = "UI/Icons/Hud/throw_proximity_explosive",
	TriggerType = "Proximity",
	ExplosiveType = "PETN",
}

