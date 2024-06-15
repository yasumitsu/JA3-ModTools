-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "AITauntCounter",
	'Comment', "For tracking missed attacks on enemies",
	'object_class', "CharacterEffect",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				target:RemoveStatusEffect(self.class, "all")
			end,
		}),
	},
	'max_stacks', 3,
	'RemoveOnEndCombat', true,
})
