-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "KillingWind",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "gritPerEnemyHit",
			'Value', 8,
			'Tag', "<gritPerEnemyHit>",
		}),
	},
	'Comment', "Fauda - Machine gun bonuses; Grit when multiple enemies hit",
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				if target ~= attacker then return end
				
				local enemiesHit = 0
				if results and results.hit_objs then
					for _, obj in ipairs(results.hit_objs) do
						if IsKindOf(obj, "Unit") and obj:IsOnEnemySide(attacker) then
							enemiesHit = enemiesHit + 1
						end
					end
				end
				
				if enemiesHit >= 2 then
					local grit = self:ResolveValue("gritPerEnemyHit") * enemiesHit
					attacker:ApplyTempHitPoints(grit)
				end
			end,
		}),
	},
	'DisplayName', T(219730505411, --[[CharacterEffectCompositeDef KillingWind DisplayName]] "Heavy Duty"),
	'Description', T(958058532892, --[[CharacterEffectCompositeDef KillingWind Description]] "Gains <em><gritPerEnemyHit></em> <GameTerm('Grit')> per enemy when hitting multiple enemies at once.\n\nImproves the effect of the <em>Ironclad</em> perk to full <GameTerm('FreeMove')> with cumbersome gear and after <GameTerm('PackingUp')> a <em>Machine Gun</em>.\n"),
	'Icon', "UI/Icons/Perks/KillingWind",
	'Tier', "Personal",
})

