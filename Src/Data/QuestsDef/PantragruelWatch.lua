-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	DevNotes = "This is a short quest and most of it is scripted in PantagruelDramas. This is just for quest notes.",
	DisplayName = T(173023746634, --[[QuestsDef PantragruelWatch DisplayName]] "The Gold Watch"),
	KillTCEsConditions = {
		PlaceObj('QuestKillTCEsOnCompleted', {}),
	},
	NoteDefs = {
		LastNoteIdx = 4,
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "D8",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantragruelWatch",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['PantragruelWatch'] or QuestGetState('PantragruelWatch')
						return quest.Completed
					end,
				}),
			},
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantragruelWatch",
					Vars = set( "Given" ),
					__eval = function ()
						local quest = gv_Quests['PantragruelWatch'] or QuestGetState('PantragruelWatch')
						return quest.Given
					end,
				}),
			},
			Text = T(973964298328, --[[QuestsDef PantragruelWatch Text]] "<em>Serge</em> complained that <em>Heinrich</em> doesn't let him in the bar in <em><SectorName('D8')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "D8",
				}),
			},
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantagruelDramas",
					Vars = set( "FoundWatch" ),
					__eval = function ()
						local quest = gv_Quests['PantagruelDramas'] or QuestGetState('PantagruelDramas')
						return quest.FoundWatch
					end,
				}),
			},
			Idx = 2,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantagruelDramas",
					Vars = set( "FindWatch" ),
					__eval = function ()
						local quest = gv_Quests['PantagruelDramas'] or QuestGetState('PantagruelDramas')
						return quest.FindWatch
					end,
				}),
			},
			Text = T(359549046267, --[[QuestsDef PantragruelWatch Text]] "<em>Heinrich</em> thinks that <em>Serge</em> took his <em>golden watch</em> in <em><SectorName('D8')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "D8",
				}),
				PlaceObj('QuestBadgePlacement', {
					BadgeUnit = "AL_Heinrich",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantragruelWatch",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['PantragruelWatch'] or QuestGetState('PantragruelWatch')
						return quest.Completed
					end,
				}),
			},
			Idx = 3,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantagruelDramas",
					Vars = set( "FoundWatch" ),
					__eval = function ()
						local quest = gv_Quests['PantagruelDramas'] or QuestGetState('PantagruelDramas')
						return quest.FoundWatch
					end,
				}),
			},
			Text = T(266164078235, --[[QuestsDef PantragruelWatch Text]] "<em>Heinrich's golden watch</em> turned out be in the backyard of the bar in <em><SectorName('D8')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "D8",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantragruelWatch",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['PantragruelWatch'] or QuestGetState('PantragruelWatch')
						return quest.Completed
					end,
				}),
			},
			Idx = 4,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantragruelWatch",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['PantragruelWatch'] or QuestGetState('PantragruelWatch')
						return quest.Completed
					end,
				}),
			},
			Text = T(110891202009, --[[QuestsDef PantragruelWatch Text]] "<em>Outcome:</em> <em>Serge</em> and <em>Heinrich</em> can once again enjoy their company in the bar in <em><SectorName('D8')></em>"),
		}),
	},
	QuestGroup = "Pantagruel",
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantagruelDramas",
					Vars = set( "BestFriendsGiven" ),
					__eval = function ()
						local quest = gv_Quests['PantagruelDramas'] or QuestGetState('PantagruelDramas')
						return quest.BestFriendsGiven
					end,
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "Given",
					QuestId = "PantragruelWatch",
				}),
			},
			Once = true,
			ParamId = "TCE_Given",
			QuestId = "PantragruelWatch",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PantagruelDramas",
					Vars = set( "BestFriendsCompleted" ),
					__eval = function ()
						local quest = gv_Quests['PantagruelDramas'] or QuestGetState('PantagruelDramas')
						return quest.BestFriendsCompleted
					end,
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "Completed",
					QuestId = "PantragruelWatch",
				}),
				PlaceObj('GrantExperienceSector', {
					logImportant = true,
				}),
				PlaceObj('CityGrantLoyalty', {
					Amount = 5,
					City = "Pantagruel",
				}),
			},
			Once = true,
			ParamId = "TCE_Completed",
			QuestId = "PantragruelWatch",
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
			Name = "TCE_Given",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_Completed",
		}),
	},
	group = "Pantagruel",
	id = "PantragruelWatch",
})

