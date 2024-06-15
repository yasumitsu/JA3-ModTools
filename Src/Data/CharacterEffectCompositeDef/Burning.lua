-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Id', "Burning",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "damage",
			'Value', 15,
			'Tag', "<damage>",
		}),
	},
	'Comment', "environmental effect (fires)",
	'object_class', "CharacterEffect",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				local chance = 50 - Max(0, target.Health - 50) / 2 - MulDivRound(target:GetLevel(), 25, 10)
				if target:Random(100) < chance then
					target:AddStatusEffect("Panicked")
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnEndTurn",
			Handler = function (self, target)
				if not target:IsDead() then
					EnvEffectBurningTick(target, nil, "end turn")
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnUnitBandaged",
			Handler = function (self, target, healer, patient, hp_restored)
				if target == patient then
					local voxels = target:GetVisualVoxels()
					local fire, dist = AreVoxelsInFireRange(voxels)
					if not fire or dist >= const.SlabSizeX then
						target:RemoveStatusEffect(self.class)
					end
				end
			end,
		}),
	},
	'Modifiers', {
		PlaceObj('UnitModifier', {
			mod_add = -15,
			target_prop = "Wisdom",
		}),
	},
	'DisplayName', T(178364189448, --[[CharacterEffectCompositeDef Burning DisplayName]] "Burning"),
	'Description', T(661121942943, --[[CharacterEffectCompositeDef Burning Description]] "This character may <em>Panic</em> and will <em>take <damage> damage</em> at the end of each turn until they exit the flaming area. <em>Bandage</em> can cure the effect immediately."),
	'AddEffectText', T(251545639918, --[[CharacterEffectCompositeDef Burning AddEffectText]] "<em><DisplayName></em> is on fire"),
	'OnAdded', function (self, obj)
		PlayFX("UnitBurning", "start", obj)
		self:SetParameter("burning_start_time", GameTime())
		obj:AddStain("Burning", GetRandomStainSpot())
	end,
	'OnRemoved', function (self, obj)
		if IsKindOf(obj, "Unit") then
			PlayFX("UnitBurning", "end", obj)
			obj:ClearStains("Burning")
		end
	end,
	'type', "Debuff",
	'Icon', "UI/Hud/Status effects/burning",
	'RemoveOnSatViewTravel', true,
	'RemoveOnCampaignTimeAdvance', true,
	'Shown', true,
	'HasFloatingText', true,
})

