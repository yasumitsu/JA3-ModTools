-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Dexterity",
	'Id', "OpportunisticKiller",
	'SortKey', 2,
	'object_class', "Perk",
	'unit_reactions', {
		PlaceObj('UnitReaction', {
			Event = "OnUnitAttack",
			Handler = function (self, target, attacker, action, attack_target, results, attack_args)
				if target == attacker and attack_args and attack_args.opportunity_attack_type == "Overwatch" then
					self:SetParameter("charged", true)
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnBeginTurn",
			Handler = function (self, target)
				if not self:ResolveValue("charged") then return end
				
				local weapon1, weapon2 = target:GetActiveWeapons()
				if IsKindOf(weapon1, "Firearm") then
					target:ReloadWeapon(weapon1)
				end
				if IsKindOf(weapon2, "Firearm") then
					target:ReloadWeapon(weapon2)
				end
				
				self:SetParameter("charged", false)
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCalcCritChance",
			Handler = function (self, target, attacker, attack_target, action, weapon, data)
				if target == attacker then
					-- treat attacks equally (allow crits on opportunity attacks)
					data.opportunity_attack = false
				end
			end,
		}),
	},
	'DisplayName', T(132879109293, --[[CharacterEffectCompositeDef OpportunisticKiller DisplayName]] "Opportunistic Killer"),
	'Description', T(770924869822, --[[CharacterEffectCompositeDef OpportunisticKiller Description]] "Enables <GameTerm('Crits')> with <GameTerm('Interrupt')> attacks.\n\n<em>Automatic reload</em> if <GameTerm('Overwatch')> was used last turn."),
	'Icon', "UI/Icons/Perks/OpportunisticKiller",
	'Tier', "Bronze",
	'Stat', "Dexterity",
	'StatValue', 70,
})

