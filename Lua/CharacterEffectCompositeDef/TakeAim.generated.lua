-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('TakeAim')
DefineClass.TakeAim = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnModifyCTHModifier",
			Handler = function (self, target, id, attacker, attack_target, action, weapon1, weapon2, data)
				if id == "SameTarget" and target == attacker then
					data.mod_add = data.mod_add + self:ResolveValue("chanceToHitBonus")
					data.meta_text[#data.meta_text+1] = T{776394275735, "Perk: <name>", name = self.DisplayName}
				end
			end,
		}),
	},
	DisplayName = T(600261683968, --[[CharacterEffectCompositeDef TakeAim DisplayName]] "Recoil Management"),
	Description = T(419896395078, --[[CharacterEffectCompositeDef TakeAim Description]] "<em>Subsequent attacks</em> against the <em>same target</em> get an even higher <em>Accuracy</em> bonus."),
	Icon = "UI/Icons/Perks/TakeAim",
	Tier = "Bronze",
	Stat = "Strength",
	StatValue = 70,
}
