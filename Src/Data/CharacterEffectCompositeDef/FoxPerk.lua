-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "FoxPerk",
	'Comment', "Fox - opening attack bonuses",
	'object_class', "Perk",
	'DisplayName', T(674308997473, --[[CharacterEffectCompositeDef FoxPerk DisplayName]] "Striking Looks"),
	'Description', T(966066055142, --[[CharacterEffectCompositeDef FoxPerk Description]] "When Fox opens combat enemies become <GameTerm('Surprised')> instead of <em>Aware</em>.\n\nRetains the <em>AP</em> from the <em>opening attack</em>."),
	'OnAdded', function (self, obj)
		obj:AddStatusEffectImmunity("SpentAP", self.class)
	end,
	'OnRemoved', function (self, obj)
		obj:RemoveStatusEffectImmunity("SpentAP", self.class)
	end,
	'Icon', "UI/Icons/Perks/FoxPerk",
	'Tier', "Personal",
})

