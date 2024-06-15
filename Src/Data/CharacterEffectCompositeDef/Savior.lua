-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Wisdom",
	'Id', "Savior",
	'SortKey', 1,
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "bandageBonus",
			'Value', 30,
			'Tag', "<bandageBonus>%",
		}),
	},
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnCalcHealAmount",
			Handler = function (self, target, patient, medic, medkit, data)
				if target == medic then
					data.heal_percent = data.heal_percent + self:ResolveValue("bandageBonus")
				end
			end,
		}),
	},
	'DisplayName', T(322598238789, --[[CharacterEffectCompositeDef Savior DisplayName]] "Savior"),
	'Description', T(665496332016, --[[CharacterEffectCompositeDef Savior Description]] "Restore <em><percent(bandageBonus)></em> more <em>HP</em> when using <em>Bandage</em>."),
	'Icon', "UI/Icons/Perks/Savior",
	'Tier', "Bronze",
	'Stat', "Wisdom",
	'StatValue', 70,
})

