-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Id', "Blinded",
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "cth_effect",
			'Value', -20,
			'Tag', "<cth_effect>%",
		}),
	},
	'Comment', "environmental effect (tear gas)",
	'object_class', "CharacterEffect",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				if not target:IsDead() then
					EnvEffectTearGasTick(target, nil, "start turn")
					if target:IsMerc() then
						PlayVoiceResponse(target, "GasAreaSelection")
					else
						PlayVoiceResponse(target, "AIGasAreaSelection")
					end
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnEndTurn",
			Handler = function (self, target)
				if not target:IsDead() then
					EnvEffectTearGasTick(target, nil, "end turn")
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCalcChanceToHit",
			Handler = function (self, target, attacker, action, attack_target, weapon1, weapon2, data)
				if target == attacker then
					ApplyCthModifier_Add(self, data, self:ResolveValue("cth_effect"))
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCheckForceMinSight",
			Handler = function (self, target, observer, other, step_pos, darkness)
				if target == observer then
					return true
				end
			end,
		}),
	},
	'DisplayName', T(629298563884, --[[CharacterEffectCompositeDef Blinded DisplayName]] "Blinded"),
	'Description', T(595664130748, --[[CharacterEffectCompositeDef Blinded Description]] "Reduced <em>Sight range</em> and <em>Accuracy</em>. Can cause <em>Panic</em>."),
	'AddEffectText', T(880622931884, --[[CharacterEffectCompositeDef Blinded AddEffectText]] "<em><DisplayName></em> is blinded"),
	'OnAdded', function (self, obj)
		self:SetParameter("blinded_start_time", GameTime())
		if IsMerc(obj) then
			PlayVoiceResponse(obj, "GasAreaSelection")
		else
			PlayVoiceResponse(obj, "AIGasAreaSelection")
		end
	end,
	'type', "Debuff",
	'Icon', "UI/Hud/Status effects/blinded",
	'RemoveOnSatViewTravel', true,
	'RemoveOnCampaignTimeAdvance', true,
	'Shown', true,
	'HasFloatingText', true,
})
