-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Specialization",
	'Id', "Throwing",
	'SortKey', 100,
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "RangeIncrease",
			'Value', 3,
			'Tag', "<RangeIncrease>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "FirstThrowCostReduction",
			'Value', 3,
			'Tag', "<FirstThrowCostReduction>",
		}),
	},
	'param_bindings', {},
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				target:AddStatusEffect("FirstThrow")
			end,
		}),
	},
	'DisplayName', T(999396294792, --[[CharacterEffectCompositeDef Throwing DisplayName]] "Throwing"),
	'Description', T(370106333556, --[[CharacterEffectCompositeDef Throwing Description]] "Extended <em>Range</em> of all thrown weapons.\n\nDramatically reduced <em>AP</em> cost for first <em>Knife</em> or <em>Grenade</em> throw each turn."),
	'OnAdded', function (self, obj)
		obj:AddStatusEffect("FirstThrow")
	end,
	'Icon', "UI/Icons/Perks/Throwing",
	'Tier', "Specialization",
})
