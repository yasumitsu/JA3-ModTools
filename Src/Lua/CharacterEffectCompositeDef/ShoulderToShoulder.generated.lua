-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('ShoulderToShoulder')
DefineClass.ShoulderToShoulder = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnEndTurn",
			Handler = function (self, target)
				local proc = false
				for _, unit in ipairs(g_Units) do
					if target ~= unit and target:IsAdjacentTo(unit) and target.team:IsAllySide(unit.team) then
						unit:ApplyTempHitPoints(self:ResolveValue("tempHp"))
						proc = true
					end
				end
				if proc then
					target:ApplyTempHitPoints(self:ResolveValue("tempHp"))
				end
			end,
		}),
	},
	DisplayName = T(157949271296, --[[CharacterEffectCompositeDef ShoulderToShoulder DisplayName]] "Shoulder to Shoulder"),
	Description = T(653169257176, --[[CharacterEffectCompositeDef ShoulderToShoulder Description]] "Ending a turn <em>adjacent</em> to an <em>ally</em> grants <em><tempHp></em> <GameTerm('Grit')> to both Scully and the ally."),
	Icon = "UI/Icons/Perks/ShoulderToShoulder",
	Tier = "Personal",
}

