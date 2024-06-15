-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('CancelShotPerk')
DefineClass.CancelShotPerk = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				if target == attacker and action.id == "CancelShotCone" and IsKindOf(attack_target, "Unit") then
					attack_target:AddStatusEffect("CancelShot")
				end
			end,
		}),
	},
	DisplayName = T(775794001413, --[[CharacterEffectCompositeDef CancelShotPerk DisplayName]] "Distracting Shot"),
	Description = T(658775460639, --[[CharacterEffectCompositeDef CancelShotPerk Description]] "Firearm attack - <em>Distracting Shot</em>:\n\nRemoves <GameTerm('Overwatch')> and <GameTerm('PinDown')>. Doesn't provoke <GameTerm('Interrupt')> attacks."),
	Icon = "UI/Icons/Perks/CancelShotPerk",
	Tier = "Bronze",
	Stat = "Wisdom",
	StatValue = 70,
}
