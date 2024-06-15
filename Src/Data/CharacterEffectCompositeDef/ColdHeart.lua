-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Agility",
	'Id', "ColdHeart",
	'SortKey', 8,
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "crit_bonus",
			'Value', 50,
			'Tag', "<crit_bonus>%",
		}),
	},
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnCalcDamageAndEffects",
			Handler = function (self, target, attacker, attack_target, action, weapon, attack_args, hit, data)
				if target == attacker then
					data.critical_damage = data.critical_damage + self:ResolveValue("crit_bonus")
				end
			end,
		}),
	},
	'DisplayName', T(926942274160, --[[CharacterEffectCompositeDef ColdHeart DisplayName]] "Anatomical Precision"),
	'Description', T(145102598829, --[[CharacterEffectCompositeDef ColdHeart Description]] "Deal <em><percent(crit_bonus)></em> more <GameTerm('Crit')> <em>Damage</em>."),
	'Icon', "UI/Icons/Perks/ColdHeart",
	'Tier', "Gold",
	'Stat', "Agility",
	'StatValue', 90,
})

