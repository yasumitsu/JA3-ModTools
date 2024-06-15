-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "SidneyPerk",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "APBuff",
			'Value', 2,
			'Tag', "<APBuff>",
		}),
	},
	'Comment', "Sidney - bonus AP until damage taken or miss",
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnCombatStarted",
			Handler = function (self, target, load_game)
				target:AddStatusEffect("SidneyPerkBuff")
			end,
		}),
	},
	'DisplayName', T(883237005145, --[[CharacterEffectCompositeDef SidneyPerk DisplayName]] "Smug Operator"),
	'Description', T(659602887115, --[[CharacterEffectCompositeDef SidneyPerk Description]] "Gains <GameTerm('Vigorous')> at the start of combat."),
	'Icon', "UI/Icons/Perks/SidneyPerk",
	'Tier', "Personal",
})

