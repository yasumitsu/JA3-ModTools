-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "SiegfriedSuperSoldiers",
	'Id', "SuperSoldier_Ordnance",
	'Comment', "anti-sniper ordnance user",
	'object_class', "UnitData",
	'Health', 95,
	'Agility', 88,
	'Dexterity', 64,
	'Strength', 87,
	'Wisdom', 30,
	'Leadership', 31,
	'Marksmanship', 41,
	'Mechanical', 0,
	'Explosives', 35,
	'Medical', 0,
	'Portrait', "UI/EnemiesPortraits/AdonisDemo.png",
	'Name', T(997162963753, --[[UnitDataCompositeDef SuperSoldier_Ordnance Name]] "Zerstörer"),
	'Randomization', true,
	'Affiliation', "SuperSoldiers",
	'StartingLevel', 7,
	'neutral_retaliate', true,
	'AIKeywords', {
		"Ordnance",
	},
	'role', "Artillery",
	'MaxAttacks', 2,
	'PickCustomArchetype', function (self, proto_context)
		local enemy, dist = GetNearestEnemy(self)
		local archetype = self.archetype
		local weapon_class = "GrenadeLauncher"
		
		if enemy and dist < 6*const.SlabSizeX then
			archetype = "Brute"
			weapon_class = "MeleeWeapon"
			PlayVoiceResponse(self, "AIArchetypeAngry")
		end
		
		if not self:GetActiveWeapons(weapon_class) then
			AIPlayCombatAction("ChangeWeapon", self, 0)
		end
		
		return archetype
	end,
	'CustomEquipGear', function (self, items)
		self:TryLoadAmmo("Handheld A", "GrenadeLauncher", "_40mmFlashbangGrenade")
		self:TryEquip(items, "Handheld B", "MeleeWeapon")
	end,
	'MaxHitPoints', 50,
	'StartingPerks', {
		"Berserker",
		"DieselPerk",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Landsbach_SuperSoldier_Stormer",
		}),
	},
	'Equipment', {
		"SuperSoldier_Ordnance",
	},
	'AdditionalGroups', {
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "AdonisMale_1",
		}),
		PlaceObj('AdditionalGroup', {
			'Weight', 50,
			'Exclusive', true,
			'Name', "AdonisMale_2",
		}),
	},
	'Tier', "Veteran",
	'pollyvoice', "Russell",
	'gender', "Male",
	'VoiceResponseId', "SuperSoldier_Assault",
})

