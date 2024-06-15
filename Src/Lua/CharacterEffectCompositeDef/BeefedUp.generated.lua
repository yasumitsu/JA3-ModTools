-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('BeefedUp')
DefineClass.BeefedUp = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	DisplayName = T(877823816296, --[[CharacterEffectCompositeDef BeefedUp DisplayName]] "Beefed Up"),
	Description = T(885436226092, --[[CharacterEffectCompositeDef BeefedUp Description]] "Max <em>HP</em> increased by <em><percent(bonus_health)></em>."),
	OnAdded = function (self, obj)
		RecalcMaxHitPoints(obj)
	end,
	OnRemoved = function (self, obj)
		RecalcMaxHitPoints(obj)
	end,
	Icon = "UI/Icons/Perks/Fitness",
	Tier = "Bronze",
	Stat = "Health",
	StatValue = 70,
}
