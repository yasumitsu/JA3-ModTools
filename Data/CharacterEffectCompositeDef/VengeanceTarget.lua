-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "VengeanceTarget",
	'object_class', "StatusEffect",
	'DisplayName', T(394089630130, --[[CharacterEffectCompositeDef VengeanceTarget DisplayName]] "Vengeance Target"),
	'Description', T(788233999313, --[[CharacterEffectCompositeDef VengeanceTarget Description]] "Meltdown will become <em>Inspired</em> when attacking this enemy."),
	'OnAdded', function (self, obj)
		for _, unit in ipairs(g_Units) do
			if unit.session_id ~= obj.session_id then
				unit:RemoveStatusEffect(self.class)
			end
		end
	end,
	'Icon', "UI/Hud/Status effects/vengeance_target",
	'dontRemoveOnDeath', true,
	'Shown', true,
})
