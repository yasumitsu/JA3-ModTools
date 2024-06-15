-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('KevlarChestplate_CeramicPlates')
DefineClass.KevlarChestplate_CeramicPlates = {
	__parents = { "TransmutedArmor" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "TransmutedArmor",
	ScrapParts = 4,
	Degradation = 6,
	Icon = "UI/Icons/Items/kevlar_vest",
	SubIcon = "UI/Icons/Items/plates",
	DisplayName = T(449111663620, --[[InventoryItemCompositeDef KevlarChestplate_CeramicPlates DisplayName]] "Kevlar Vest"),
	DisplayNamePlural = T(667447460358, --[[InventoryItemCompositeDef KevlarChestplate_CeramicPlates DisplayNamePlural]] "Kevlar Vests"),
	AdditionalHint = T(534597878720, --[[InventoryItemCompositeDef KevlarChestplate_CeramicPlates AdditionalHint]] "<bullet_point> Damage reduction improved by Ceramic Plates\n<bullet_point> The ceramic plates will break after taking <GameColorG><RevertConditionCounter></GameColorG> hits"),
	Cost = 2800,
	CanAppearInShop = true,
	Tier = 2,
	MaxStock = 1,
	RestockWeight = 25,
	CategoryPair = "Medium",
	CanAppearStandard = false,
	PenetrationClass = 3,
	DamageReduction = 40,
	AdditionalReduction = 30,
	ProtectedBodyParts = set( "Torso" ),
}

