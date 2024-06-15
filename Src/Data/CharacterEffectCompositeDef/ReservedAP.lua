-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "ReservedAP",
	'object_class', "CharacterEffect",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				local ap = target:GetEffectValue("reserved_ap") or 0
				if ap > 0 then
					target:GainAP(ap)
				end
				target:RemoveStatusEffect(self.class)
			end,
		}),
	},
})
