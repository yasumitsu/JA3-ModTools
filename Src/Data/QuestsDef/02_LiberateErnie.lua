-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	Author = "Boyan",
	Chapter = "Intro",
	DevNotes = "Resolved when you capture Ernie. Has a ton of effect in the TCE that resolves the quest such as unlocking the port in Ernie village and showing all the icons on the sat view map.\n\nOn resolution I moved all quest variables to switch before the delay and Emma banter to avoid the player breaking the entire quest line by moving away from the sector during the delay.",
	DisplayName = T(383269627334, --[[QuestsDef 02_LiberateErnie DisplayName]] "Retake Ernie Village"),
	EffectOnChangeVarValue = {
		PlaceObj('QuestEffectOnStatus', {
			Effects = {
				PlaceObj('SectorSetCustomConflictDesc', {
					descr_id = "H2_TownOfErnie_Initial",
					sector_id = "H2",
				}),
			},
			Prop = "Given",
		}),
		PlaceObj('QuestEffectOnStatus', {
			Prop = "Completed",
		}),
	},
	KillTCEsConditions = {
		PlaceObj('QuestKillTCEsOnCompleted', {}),
	},
	Main = true,
	NoteDefs = {
		LastNoteIdx = 9,
		PlaceObj('QuestNote', {
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
			},
			Idx = 9,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Given" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Given
					end,
				}),
			},
			Text = T(879717588172, --[[QuestsDef 02_LiberateErnie Text]] "The villagers can provide <em>naval transportation</em> out of the island"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "H2",
				}),
			},
			HideConditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "02_LiberateErnie",
							Vars = set( "Completed" ),
							__eval = function ()
								local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
								return quest.Completed
							end,
						}),
						PlaceObj('QuestIsVariableBool', {
							QuestId = "Ernie_CounterAttack",
							Vars = set( "Given" ),
							__eval = function ()
								local quest = gv_Quests['Ernie_CounterAttack'] or QuestGetState('Ernie_CounterAttack')
								return quest.Given
							end,
						}),
					},
				}),
			},
			Idx = 3,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Given" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Given
					end,
				}),
			},
			Text = T(189877925150, --[[QuestsDef 02_LiberateErnie Text]] "The <em><SectorName('H2')></em> is under <em>Legion</em> occupation"),
		}),
		PlaceObj('QuestNote', {
			AddInHistory = true,
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "H2",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
			},
			Idx = 6,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
			},
			ShowWhenCompleted = true,
			Text = T(559315898343, --[[QuestsDef 02_LiberateErnie Text]] "<em>Outcome:</em> Liberated the <em><SectorName('H2')></em>"),
		}),
		PlaceObj('QuestNote', {
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
			},
			Idx = 8,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
			},
			Text = T(901263851162, --[[QuestsDef 02_LiberateErnie Text]] "<em>Outcome:</em> Secured <em>naval transport</em> to the <em>mainland</em>"),
		}),
	},
	QuestGroup = "The Fate Of Grand Chien",
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Given" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Given
					end,
				}),
				PlaceObj('PlayerIsInSectors', {
					Sectors = {
						"H2",
					},
				}),
				PlaceObj('SectorCheckOwner', {
					sector_id = "H2",
				}),
			},
			Effects = {
				PlaceObj('MusicSetSectorPlaylist', {
					MusicCombat = "Battle_Normal",
					MusicConflict = "Village_Conflict",
					MusicExploration = "Village_Complete",
					SectorID = "H2",
				}),
				PlaceObj('GroupSetBehaviorIdle', {
					IdleStance = "Standing",
					RestoreDefault = true,
					TargetUnit = "Luc",
				}),
				PlaceObj('SetBehaviorVisitAL', {
					ActorGroup = "Luc",
					MarkerGroup = "LucALTalk",
				}),
				PlaceObj('SetBehaviorVisitAL', {
					ActorGroup = "GreasyBasil",
					MarkerGroup = "GreasyBasilALTalk",
				}),
				PlaceObj('SetBehaviorVisitAL', {
					ActorGroup = "BillyBoy",
					MarkerGroup = "BillyBoy",
				}),
				PlaceObj('EffectsWithCondition', {
					Conditions = {
						PlaceObj('SectorCheckOwner', {
							owner = "any enemy",
							sector_id = "H4",
						}),
					},
					Effects = {
						PlaceObj('QuestSetVariableBool', {
							Prop = "Given",
							QuestId = "Ernie_CounterAttack",
						}),
					},
				}),
				PlaceObj('SectorEnableAutoDeploy', {
					sector_id = "H2",
				}),
				PlaceObj('SectorSetPort', {
					sector_id = "H2",
				}),
				PlaceObj('CustomCodeEffect', {
					custom_code = "RevealAllSectors()",
				}),
				PlaceObj('CustomCodeEffect', {
					custom_code = 'ChangeAIMPremiumState("offer")',
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Given",
					QuestId = "03_DefeatTheLegion",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Given",
					QuestId = "CorazonCaptureMine",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Given",
					QuestId = "TakeTheFortress",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Completed",
					QuestId = "02_LiberateErnie",
				}),
				PlaceObj('SleepEffect', {
					Sleep = 3000,
				}),
				PlaceObj('MusicSetTrack', {
					Playlist = "Scripted",
					Track = "Music/Magcina",
				}),
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"CorazonRadio_CapturedErnie",
					},
					FallbackToMerc = true,
					searchInMarker = false,
				}),
				PlaceObj('GrantExperienceSector', {}),
				PlaceObj('PlayerGrantMoney', {
					Amount = 30000,
				}),
			},
			Once = true,
			ParamId = "TCE_ResolveQuest",
			QuestId = "02_LiberateErnie",
			requiredSectors = {
				"H2",
			},
		}),
	},
	Variables = {
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_ResolveQuest",
		}),
		PlaceObj('QuestVarBool', {
			Name = "PierreMet",
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
			Name = "PierreLucSetpiece_Done",
		}),
	},
	group = "Main",
	id = "02_LiberateErnie",
})

