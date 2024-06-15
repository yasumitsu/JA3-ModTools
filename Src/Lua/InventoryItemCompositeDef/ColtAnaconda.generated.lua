-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('ColtAnaconda')
DefineClass.ColtAnaconda = {
	__parents = { "Revolver" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "Revolver",
	ScrapParts = 8,
	RepairCost = 30,
	Reliability = 95,
	Icon = "UI/Icons/Weapons/Anaconda",
	DisplayName = T(769922391034, --[[InventoryItemCompositeDef ColtAnaconda DisplayName]] "Anaconda"),
	DisplayNamePlural = T(505981904083, --[[InventoryItemCompositeDef ColtAnaconda DisplayNamePlural]] "Anacondas"),
	Description = T(472163591080, --[[InventoryItemCompositeDef ColtAnaconda Description]] "Double-action revolver with a swing out cylinder. High reliability and stopping power shot after shot. "),
	AdditionalHint = T(869405276287, --[[InventoryItemCompositeDef ColtAnaconda AdditionalHint]] "<bullet_point> Improved armor penetration\n<bullet_point> Increased bonus from Aiming\n<bullet_point> Slower Condition loss"),
	UnitStat = "Marksmanship",
	Valuable = 1,
	Cost = 3100,
	CanAppearInShop = true,
	Tier = 2,
	CategoryPair = "Handguns",
	Caliber = "44CAL",
	Damage = 24,
	AimAccuracy = 5,
	MagazineSize = 6,
	PenetrationClass = 2,
	PointBlankBonus = 1,
	OverwatchAngle = 2160,
	Entity = "Weapon_ColtAnaconda44",
	ComponentSlots = {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Barrel",
			'AvailableComponents', {
				"BarrelLong",
				"BarrelNormal",
				"BarrelShort",
			},
			'DefaultComponent', "BarrelNormal",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'AvailableComponents', {
				"BaseIronsight_Anaconda",
				"ImprovedIronsight",
				"ReflexSight",
				"ReflexSightAdvanced",
				"ScopeCOG",
				"ScopeCOGQuick",
				"LaserDot_Anaconda",
				"FlashlightDot_Anaconda",
				"UVDot_Anaconda",
			},
			'DefaultComponent', "BaseIronsight_Anaconda",
		}),
	},
	HolsterSlot = "Leg",
	AvailableAttacks = {
		"SingleShot",
		"DualShot",
		"CancelShot",
		"MobileShot",
	},
	ShootAP = 5000,
	ReloadAP = 3000,
}

