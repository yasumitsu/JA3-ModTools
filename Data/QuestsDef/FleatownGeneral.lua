-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	Chapter = "Act1",
	DevNotes = "",
	DisplayName = T(950105174930, --[[QuestsDef FleatownGeneral DisplayName]] "The Bus Gang"),
	NoteDefs = {
		LastNoteIdx = 13,
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "F9",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "BusGang_wait1completed" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait1completed
					end,
				}),
			},
			Idx = 7,
			ShowConditions = {
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"Jungle_BusGang_initial",
					},
				}),
			},
			Text = T(811285784721, --[[QuestsDef FleatownGeneral Text]] "<em>Operation</em>: The <em>bus gang</em> intends to kill anyone who dares to hang around their <em>bus stop</em> in the <em><SectorName('F9')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "F9",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "BusGang_wait2completed" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait2completed
					end,
				}),
			},
			Idx = 8,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "BusGang_wait1completed" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait1completed
					end,
				}),
			},
			Text = T(933198648150, --[[QuestsDef FleatownGeneral Text]] "<em>Operation</em>: The <em>bus gang</em> is late, but they will definitely kill anyone who dares to hang around their <em>bus stop</em> in the <em><SectorName('F9')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "F9",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "TCE_BusGang_Defeated" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.TCE_BusGang_Defeated
					end,
				}),
			},
			Idx = 9,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "BusGang_wait2completed" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait2completed
					end,
				}),
			},
			Text = T(692120858182, --[[QuestsDef FleatownGeneral Text]] "The <em>bus gang</em> has arrived at the bus stop in the <em><SectorName('F9')></em>"),
		}),
		PlaceObj('QuestNote', {
			AddInHistory = true,
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "TCE_BusGang_Defeated" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.TCE_BusGang_Defeated
					end,
				}),
			},
			Idx = 10,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "TCE_BusGang_Defeated" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.TCE_BusGang_Defeated
					end,
				}),
			},
			Text = T(609750360278, --[[QuestsDef FleatownGeneral Text]] "<em>Outcome:</em> The <em>bus gang</em> is out of service"),
		}),
	},
	QuestGroup = "Savanah",
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('PlayerIsInSectors', {
					Sectors = {
						"I9",
					},
				}),
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "RimvilleGlobe_Opened" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.RimvilleGlobe_Opened
					end,
				}),
				PlaceObj('CheckIsPersistentUnitDead', {
					Negate = true,
					per_ses_id = "NPC_FleatownBoss",
				}),
				PlaceObj('CheckIsPersistentUnitDead', {
					Negate = true,
					per_ses_id = "NPC_Mollie",
				}),
			},
			Effects = {
				PlaceObj('GroupSetBehaviorRoam', {
					MarkerGroup = "GlobeLogic",
					TargetUnit = "FleatownBoss",
				}),
				PlaceObj('GroupSetBehaviorRoam', {
					MarkerGroup = "GlobeLogic",
					TargetUnit = "Mollie",
				}),
				PlaceObj('SleepEffect', {
					Sleep = 9000,
				}),
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"RimvilleGlobeLock_quarrel",
					},
					searchInMap = true,
					searchInMarker = false,
				}),
				PlaceObj('CityGrantLoyalty', {
					Amount = -5,
					City = "Fleatown",
					SpecialConversationMessage = T(976411399318, --[[QuestsDef FleatownGeneral SpecialConversationMessage]] "bad impression on <em>Boss Blaubert</em>"),
				}),
			},
			Once = true,
			ParamId = "TCE_RimvilleGlobe_Opened",
			QuestId = "FleatownGeneral",
			requiredSectors = {
				"I9",
			},
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"Jungle_BusGang_initial",
					},
				}),
			},
			Effects = {
				PlaceObj('SectorEnableCustomOperation', {
					DisplayLog = true,
					EffectsOnSuccess = {
						PlaceObj('QuestSetVariableBool', {
							Prop = "BusGang_wait1completed",
							QuestId = "FleatownGeneral",
						}),
					},
					operation = "BusGang_Wait1",
					sector_id = "F9",
				}),
			},
			Once = true,
			ParamId = "TCE_BusGang_Wait1",
			QuestId = "FleatownGeneral",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set( "BusGang_wait1completed" ),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait1completed
					end,
				}),
			},
			Effects = {
				PlaceObj('SectorEnableCustomOperation', {
					DisplayLog = true,
					EffectsOnSuccess = {
						PlaceObj('QuestSetVariableBool', {
							Prop = "BusGang_wait2completed",
							QuestId = "FleatownGeneral",
						}),
					},
					operation = "BusGang_Wait2",
					sector_id = "F9",
				}),
			},
			Once = true,
			ParamId = "TCE_BusGang_Wait2",
			QuestId = "FleatownGeneral",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "FleatownGeneral",
					Vars = set({
	BusGang_wait2completed = true,
	Completed = false,
}),
					__eval = function ()
						local quest = gv_Quests['FleatownGeneral'] or QuestGetState('FleatownGeneral')
						return quest.BusGang_wait2completed and not quest.Completed
					end,
				}),
			},
			Effects = {
				PlaceObj('SectorEnterConflict', {
					sector_id = "F9",
				}),
			},
			Once = true,
			ParamId = "TCE_BusGangConflict",
			QuestId = "FleatownGeneral",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('GroupIsDead', {
					Group = "BusGang",
				}),
			},
			Effects = {
				PlaceObj('CityGrantLoyalty', {
					Amount = 5,
					City = "RefugeeCamp",
					SpecialConversationMessage = T(934795877936, --[[QuestsDef FleatownGeneral SpecialConversationMessage]] "dealt with the <em>Bus Gang</em>"),
				}),
				PlaceObj('CityGrantLoyalty', {
					Amount = 5,
					City = "Fleatown",
					SpecialConversationMessage = T(934795877936, --[[QuestsDef FleatownGeneral SpecialConversationMessage]] "dealt with the <em>Bus Gang</em>"),
				}),
				PlaceObj('GrantExperienceSector', {
					Amount = "XPQuestReward_Minor",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "BusGangDefeated",
					QuestId = "FleatownGeneral",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Completed",
					QuestId = "FleatownGeneral",
				}),
			},
			Once = true,
			ParamId = "TCE_BusGang_Defeated",
			QuestId = "FleatownGeneral",
		}),
	},
	Variables = {
		PlaceObj('QuestVarBool', {
			Name = "LaBoue_Car_Initial",
			Value = true,
		}),
		PlaceObj('QuestVarBool', {
			Name = "RimvilleGlobe_Given",
		}),
		PlaceObj('QuestVarBool', {
			Name = "RimvilleGlobe_Opened",
		}),
		PlaceObj('QuestVarBool', {
			Name = "ChurchGeneratorSalvaged",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_RimvilleGlobe_Opened",
		}),
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
		PlaceObj('QuestVarBool', {
			Name = "BusGang_wait1completed",
		}),
		PlaceObj('QuestVarBool', {
			Name = "BusGang_wait2completed",
		}),
		PlaceObj('QuestVarNum', {
			Name = "BusRandom",
			RandomRangeMax = 2,
			Value = 1,
		}),
		PlaceObj('QuestVarBool', {
			Name = "ElectrofisherDone",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_BusGang_Wait1",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_BusGang_Wait2",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_BusGangConflict",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_BusGang_Defeated",
		}),
		PlaceObj('QuestVarBool', {
			Name = "BusGangDefeated",
		}),
		PlaceObj('QuestVarNum', {
			Name = "LootBoxesBought",
		}),
		PlaceObj('QuestVarNum', {
			Name = "LootBoxesMax",
			Value = 9,
		}),
		PlaceObj('QuestVarNum', {
			Name = "DiamondsTraded",
		}),
	},
	group = "Fleatown",
	id = "FleatownGeneral",
})
