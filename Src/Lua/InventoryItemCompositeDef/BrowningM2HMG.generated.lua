-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('BrowningM2HMG')
DefineClass.BrowningM2HMG = {
	__parents = { "MachineGun" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "MachineGun",
	ScrapParts = 20,
	Reliability = 80,
	Icon = "UI/Icons/Weapons/M2Browning",
	DisplayName = T(178371122439, --[[InventoryItemCompositeDef BrowningM2HMG DisplayName]] "M2 Browning"),
	DisplayNamePlural = T(472976044430, --[[InventoryItemCompositeDef BrowningM2HMG DisplayNamePlural]] "M2 Brownings"),
	Description = T(706172423918, --[[InventoryItemCompositeDef BrowningM2HMG Description]] "When you're a dime short of buying some tank ordnance but you won't make a compromise with power."),
	AdditionalHint = T(608086437081, --[[InventoryItemCompositeDef BrowningM2HMG AdditionalHint]] "<bullet_point> Stationary weapon\n<bullet_point> Very high damage\n<bullet_point> Very noisy"),
	LargeItem = 1,
	Cumbersome = 1,
	UnitStat = "Marksmanship",
	Valuable = 1,
	Cost = 4200,
	Tier = 3,
	CategoryPair = "MachineGuns",
	Caliber = "50BMG",
	Damage = 30,
	MagazineSize = 100,
	PenetrationClass = 3,
	WeaponRange = 30,
	OverwatchAngle = 3600,
	Noise = 30,
	HandSlot = "TwoHanded",
	Entity = "Weapon_M2Browning",
	ComponentSlots = {},
	HolsterSlot = "Shoulder",
	PreparedAttackType = "Machine Gun",
	AvailableAttacks = {
		"MGBurstFire",
	},
	ShootAP = 4000,
	ReloadAP = 6000,
}

