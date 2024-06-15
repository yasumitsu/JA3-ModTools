-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "_Reserve",
	'Id', "Enfilade",
	'SortKey', 2,
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "damage_bonus",
			'Value', 30,
			'Tag', "<damage_bonus>%",
		}),
	},
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnCalcDamageAndEffects",
			Handler = function (self, target, attacker, attack_target, action, weapon, attack_args, hit, data)
				if target == attacker and not hit_descr.aoe and attack_args.opportunity_attack_type and IsKindOf(attack_target, "Unit") and attack_target:HasStatusEffect("Flanked") then
					local bonus = self:ResolveValue("damage_bonus")
					data.base_damage = MulDivRound(data.base_damage, 100 + bonus, 100)
					data.breakdown[#data.breakdown + 1] = { name = self.DisplayName, value = bonus }
				end
			end,
		}),
	},
	'DisplayName', T(152999250650, --[[CharacterEffectCompositeDef Enfilade DisplayName]] "Enfilade Fire"),
	'Description', T(580006805326, --[[CharacterEffectCompositeDef Enfilade Description]] "Deal +<percent(damage_bonus)> bonus damage to Flanked enemies with Interrupt attacks."),
	'Icon', "UI/Icons/Perks/Inescapable",
})
