-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

UndefineClass('TrueGrit')
DefineClass.TrueGrit = {
	__parents = { "Perk" },
	__generated_by_class = "CharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnEndTurn",
			Handler = function (self, target)
				-- out of cover buff
				if not target:IsUsingCover() and g_Combat:AreEnemiesAware(g_CurrentTeam) then
					target:ApplyTempHitPoints(self:ResolveValue("outOfCoverGrit"))
				end
				
				-- next to enemy buff
				local nearestEnemy = GetNearestEnemy(target)
				if nearestEnemy and target:IsAdjacentTo(nearestEnemy) then
					target:ApplyTempHitPoints(self:ResolveValue("nextToEnemyGrit"))
				end
			end,
		}),
	},
	DisplayName = T(551122384582, --[[CharacterEffectCompositeDef TrueGrit DisplayName]] "Vanguard"),
	Description = T(684654187590, --[[CharacterEffectCompositeDef TrueGrit Description]] "Gain <em><outOfCoverGrit></em> <GameTerm('Grit')> when you end your turn out of<em> Cover</em>.\n\nGain <em><nextToEnemyGrit></em> <GameTerm('Grit')> when you end your turn <em>adjacent</em> to an enemy."),
	Icon = "UI/Icons/Perks/ContestGround",
	Tier = "Silver",
	Stat = "Health",
	StatValue = 80,
}

