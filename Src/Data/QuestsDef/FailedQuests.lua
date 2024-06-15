-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	KillTCEsConditions = {
		PlaceObj('QuestKillTCEsOnCompleted', {}),
	},
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "GrimerHamlet",
					Vars = set( "Failed" ),
					__eval = function ()
						local quest = gv_Quests['GrimerHamlet'] or QuestGetState('GrimerHamlet')
						return quest.Failed
					end,
				}),
			},
			Effects = {
				PlaceObj('MusicSetSectorPlaylist', {
					MusicCombat = "Battle_Normal",
					MusicConflict = "Farmland_Conflict",
					MusicExploration = "Sector_Failed",
					SectorID = "I19",
				}),
			},
			ParamId = "TCE_FailGrimerHamlet",
			QuestId = "FailedQuests",
		}),
	},
	Variables = {
		PlaceObj('QuestVarBool', {
			Name = "Completed",
		}),
		PlaceObj('QuestVarBool', {
			Name = "Given",
		}),
		PlaceObj('QuestVarBool', {
			Name = "Failed",
		}),
		PlaceObj('QuestVarBool', {
			Name = "NotStarted",
			Value = true,
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_FailGrimerHamlet",
		}),
	},
	group = "Default",
	id = "FailedQuests",
})

