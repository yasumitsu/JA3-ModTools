-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Firearm - Assault",
	'Id', "G36",
	'Comment', "tier 5 light",
	'object_class', "AssaultRifle",
	'ScrapParts', 10,
	'Reliability', 90,
	'Icon', "UI/Icons/Weapons/G36",
	'DisplayName', T(675182711489, --[[InventoryItemCompositeDef G36 DisplayName]] "G36"),
	'DisplayNamePlural', T(349971410946, --[[InventoryItemCompositeDef G36 DisplayNamePlural]] "G36s"),
	'Description', T(511176251955, --[[InventoryItemCompositeDef G36 Description]] "Futuristic assault rifle with an integrated dual combat sighting system. The 5.56 NATO cartridge combined with the short-stroke gas piston system make this a joy to shoot."),
	'AdditionalHint', T(720286229624, --[[InventoryItemCompositeDef G36 AdditionalHint]] "<bullet_point> Longer range\n<bullet_point> Increased bonus from Aiming\n<bullet_point> Low attack costs"),
	'LargeItem', 1,
	'UnitStat', "Marksmanship",
	'Valuable', 1,
	'Cost', 9900,
	'CanAppearInShop', true,
	'Tier', 3,
	'RestockWeight', 40,
	'CategoryPair', "AssaultRifles",
	'Caliber', "556",
	'Damage', 22,
	'AimAccuracy', 6,
	'MagazineSize', 30,
	'PenetrationClass', 2,
	'WeaponRange', 30,
	'PointBlankBonus', 1,
	'OverwatchAngle', 1440,
	'HandSlot', "TwoHanded",
	'Entity', "Weapon_HKG36",
	'fxClass', "G36",
	'ComponentSlots', {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Barrel",
			'AvailableComponents', {
				"BarrelNormal",
				"BarrelLong",
			},
			'DefaultComponent', "BarrelNormal",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'AvailableComponents', {
				"ScopeCOG",
				"LROptics",
				"ThermalScope",
				"ReflexSightAdvanced",
			},
			'DefaultComponent', "ScopeCOG",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Muzzle",
			'AvailableComponents', {
				"Compensator",
				"Suppressor",
				"ImprovisedSuppressor",
			},
			'DefaultComponent', "Compensator",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Magazine",
			'AvailableComponents', {
				"MagNormal",
				"MagLarge",
				"MagQuick",
			},
			'DefaultComponent', "MagNormal",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Under",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"TacGrip",
				"VerticalGrip",
				"GrenadeLauncher",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Side",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Flashlight",
				"FlashlightDot",
				"LaserDot",
				"UVDot",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Stock",
			'AvailableComponents', {
				"StockNormal",
				"StockFolded",
				"StockHeavy",
			},
			'DefaultComponent', "StockNormal",
		}),
	},
	'Color', "Black",
	'HolsterSlot', "Shoulder",
	'AvailableAttacks', {
		"BurstFire",
		"AutoFire",
		"SingleShot",
		"CancelShot",
	},
	'ShootAP', 5000,
	'ReloadAP', 3000,
})

