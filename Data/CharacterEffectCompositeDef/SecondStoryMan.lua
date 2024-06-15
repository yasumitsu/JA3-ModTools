-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "SecondStoryMan",
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "critChance",
			'Value', 50,
			'Tag', "<critChance>%",
		}),
	},
	'Comment', "Magic - high ground bonus",
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnCalcCritChance",
			Handler = function (self, target, attacker, attack_target, action, weapon, data)
				if target ~= attacker or not IsKindOf(attack_target, "Unit") then return end
				
				local highGroundMod = Presets.ChanceToHitModifier.Default.GroundDifference
				local applied = highGroundMod:CalcValue(attacker, attack_target, nil, nil, weapon, nil, nil, nil, nil, attacker:GetPos(), attack_target:GetPos())
				if applied then
					data.crit_chance = data.crit_chance + self:ResolveValue("critChance")
				end
			end,
		}),
	},
	'DisplayName', T(137075691811, --[[CharacterEffectCompositeDef SecondStoryMan DisplayName]] "Second Story Man"),
	'Description', T(679765786004, --[[CharacterEffectCompositeDef SecondStoryMan Description]] "Gains <em><percent(critChance)></em> <GameTerm('Crit')> <em>Chance</em> with attacks from <em>high ground</em>."),
	'Icon', "UI/Icons/Perks/SecondStoryMan",
	'Tier', "Personal",
})
