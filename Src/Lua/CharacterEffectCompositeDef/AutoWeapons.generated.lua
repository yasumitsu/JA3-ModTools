-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('AutoWeapons')
DefineClass.AutoWeapons = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnModifyCTHModifier",
			Handler = function (self, target, id, attacker, attack_target, action, weapon1, weapon2, data)
				if id == "Autofire" and target == attacker then
					data.mod_mul = AutoWeapons:ResolveValue("automatics_penalty_reduction")
					data.meta_text[#data.meta_text+1] = T{776394275735, "Perk: <name>", name = self.DisplayName}
				end
			end,
		}),
	},
	DisplayName = T(971350457853, --[[CharacterEffectCompositeDef AutoWeapons DisplayName]] "Auto Weapons"),
	Description = T(938747433410, --[[CharacterEffectCompositeDef AutoWeapons Description]] "Reduced <em>Accuracy</em> penalty when using <em>Burst Fire</em> or <em>Full Auto</em>."),
	Icon = "UI/Icons/Perks/AutoWeapons",
	Tier = "Specialization",
}

