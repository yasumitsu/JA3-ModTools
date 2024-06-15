-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('Unwell')
DefineClass.Unwell = {
	__parents = { "CharacterEffect" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "CharacterEffect",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnCalcChanceToHit",
			Handler = function (self, target, attacker, action, attack_target, weapon1, weapon2, data)
				if target == attacker and  action.ActionType == "Ranged Attack" then
					data.mod_add = data.mod_add + self:ResolveValue("range_cth_mod")
				end
			end,
		}),
	},
	DisplayName = T(728202676649, --[[CharacterEffectCompositeDef Unwell DisplayName]] "Unwell"),
	Description = T(664298829629, --[[CharacterEffectCompositeDef Unwell Description]] "Lower <em>Accuracy</em> with <em>Ranged Attacks</em>\n"),
	Icon = "UI/Hud/Status effects/drunk",
	RemoveOnEndCombat = true,
	Shown = true,
	HasFloatingText = true,
}

