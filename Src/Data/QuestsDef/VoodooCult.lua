-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	Author = "Radomir",
	DevNotes = "The scripting of the Outpost consequence is in ReduceCrocodileCampStrength.",
	DisplayName = T(695071289593, --[[QuestsDef VoodooCult DisplayName]] "Voodoo People"),
	KillTCEsConditions = {
		PlaceObj('QuestIsVariableBool', {
			Condition = "or",
			QuestId = "ReduceCrocodileCampStrength",
			Vars = set( "Completed" ),
			__eval = function ()
				local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
				return quest.Completed
			end,
		}),
	},
	NoteDefs = {
		LastNoteIdx = 9,
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					BadgeUnit = "Wanda",
					Sector = "F13",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herb" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herb
					end,
				}),
			},
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "VoodooCult",
					Vars = set( "Completed", "Failed" ),
					__eval = function ()
						local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
						return quest.Completed or quest.Failed
					end,
				}),
			},
			ShowConditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "PaixDisease",
							Vars = set( "voodoo" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.voodoo
							end,
						}),
						PlaceObj('SectorHasIntel', {
							sector_id = "H14",
						}),
					},
				}),
			},
			Text = T(605903691398, --[[QuestsDef VoodooCult Text]] "There is a <em>voodoo cult</em> in <em><SectorName('F13')></em> led by Wanda"),
		}),
		PlaceObj('QuestNote', {
			HideConditions = {
				PlaceObj('OR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "VoodooCult",
							Vars = set( "Completed", "Failed" ),
							__eval = function ()
								local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
								return quest.Completed or quest.Failed
							end,
						}),
						PlaceObj('QuestIsVariableBool', {
							QuestId = "PaixDisease",
							Vars = set( "herbToPlant", "herbgiven" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.herbToPlant and quest.herbgiven
							end,
						}),
					},
				}),
			},
			Idx = 9,
			ShowConditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							QuestId = "PaixDisease",
							Vars = set( "voodoo" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.voodoo
							end,
						}),
						PlaceObj('SectorHasIntel', {
							sector_id = "H14",
						}),
					},
				}),
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"PaixDisease_Wanda06",
					},
				}),
			},
			Text = T(217967851811, --[[QuestsDef VoodooCult Text]] "<em>Wanda</em> will not talk to you while performing her rituals <em>at night</em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "F12",
				}),
			},
			HideConditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "PaixDisease",
							Vars = set( "herbfound", "herbgiven" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.herbfound or quest.herbgiven
							end,
						}),
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "VoodooCult",
							Vars = set( "Completed", "Failed" ),
							__eval = function ()
								local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
								return quest.Completed or quest.Failed
							end,
						}),
					},
				}),
			},
			Idx = 2,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herb" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herb
					end,
				}),
			},
			Text = T(996667486026, --[[QuestsDef VoodooCult Text]] "<em>Wanda</em> wants a <em>Borassus root</em> which can be found in the <em><SectorName('F12')></em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					BadgeUnit = "Wanda",
					Sector = "F13",
				}),
			},
			HideConditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "PaixDisease",
							Vars = set( "herbgiven" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.herbgiven
							end,
						}),
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "VoodooCult",
							Vars = set( "Completed", "Failed" ),
							__eval = function ()
								local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
								return quest.Completed or quest.Failed
							end,
						}),
						PlaceObj('BanterHasPlayed', {
							Banters = {
								"PaixDisease_Wanda04",
							},
						}),
					},
				}),
			},
			Idx = 3,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herbfound" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbfound
					end,
				}),
			},
			Text = T(148800297608, --[[QuestsDef VoodooCult Text]] "<em>Wanda</em> from <em><SectorName('F13')></em> expects to be given the <em>Borassus root</em>"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "F13",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herbToPlant" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbToPlant
					end,
				}),
			},
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "VoodooCult",
					Vars = set( "Failed" ),
					__eval = function ()
						local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
						return quest.Failed
					end,
				}),
			},
			Idx = 4,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herbgiven" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbgiven
					end,
				}),
			},
			Text = T(398425342140, --[[QuestsDef VoodooCult Text]] "The <em>Borassus root</em> was given to <em>Wanda</em> "),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "G15",
				}),
			},
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "ReduceCrocodileCampStrength",
					Vars = set( "BorassusPlanted" ),
					__eval = function ()
						local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
						return quest.BorassusPlanted
					end,
				}),
			},
			Idx = 5,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "PaixDisease",
					Vars = set( "herbToPlant" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbToPlant
					end,
				}),
			},
			Text = T(898748630306, --[[QuestsDef VoodooCult Text]] "<em>Wanda</em> wants <em>Borassus root</em> planted on a special place"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "G15",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "ReduceCrocodileCampStrength",
					Vars = set( "BorassusPlanted" ),
					__eval = function ()
						local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
						return quest.BorassusPlanted
					end,
				}),
			},
			Idx = 6,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "ReduceCrocodileCampStrength",
					Vars = set( "BorassusPlanted" ),
					__eval = function ()
						local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
						return quest.BorassusPlanted
					end,
				}),
			},
			Text = T(109506212137, --[[QuestsDef VoodooCult Text]] "<em>Outcome:</em> The <em>Borassus root</em> was planted and the Old Ones are happy"),
		}),
		PlaceObj('QuestNote', {
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "VoodooCult",
					Vars = set( "Failed" ),
					__eval = function ()
						local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
						return quest.Failed
					end,
				}),
			},
			Idx = 8,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "VoodooCult",
					Vars = set( "Failed" ),
					__eval = function ()
						local quest = gv_Quests['VoodooCult'] or QuestGetState('VoodooCult')
						return quest.Failed
					end,
				}),
			},
			Text = T(252690537154, --[[QuestsDef VoodooCult Text]] "<em>Outcome:</em> <em>Wanda</em> is dead and her <em>Vodouisants</em> have left Chalet de la Paix"),
		}),
	},
	QuestGroup = "Jungle",
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('BanterHasPlayed', {
							Banters = {
								"PaixDisease_Wanda01",
							},
						}),
						PlaceObj('QuestIsVariableBool', {
							Condition = "or",
							QuestId = "PaixDisease",
							Vars = set( "Completed", "diary" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.Completed or quest.diary
							end,
						}),
					},
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "WandaInitial",
					QuestId = "PaixDisease",
				}),
			},
			Once = true,
			ParamId = "TCE_WandaInitial",
			QuestId = "VoodooCult",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"PaixDisease_Wanda03",
					},
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "herb",
					QuestId = "PaixDisease",
				}),
			},
			Once = true,
			ParamId = "TCE_HerbRequested",
			QuestId = "VoodooCult",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"PaixDisease_Wanda04",
					},
					WaitOver = true,
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "herbgiven",
					QuestId = "PaixDisease",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "WandaInitial",
					QuestId = "PaixDisease",
				}),
				PlaceObj('CityGrantLoyalty', {
					Amount = 10,
					City = "Chalet",
					SpecialConversationMessage = T(779078172034, --[[QuestsDef VoodooCult SpecialConversationMessage]] "brought Boraxus root to <em>Wanda</em>"),
				}),
				PlaceObj('SectorSetRAndROperation', {
					sector_id = "F13",
				}),
				PlaceObj('GrantExperienceSector', {
					Amount = "XPQuestReward_Minor",
					logImportant = true,
				}),
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"CampDuCrocodile_PlantBorassus_00_Wanda",
					},
					banterSequentialWaitFor = "BanterStart",
					searchInMap = true,
					searchInMarker = false,
				}),
			},
			Once = true,
			ParamId = "TCE_HerbGiven",
			QuestId = "VoodooCult",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('BanterHasPlayed', {
							Banters = {
								"CampDuCrocodile_PlantBorassus_00_Wanda",
							},
						}),
						PlaceObj('QuestIsVariableBool', {
							QuestId = "PaixDisease",
							Vars = set( "herbgiven" ),
							__eval = function ()
								local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
								return quest.herbgiven
							end,
						}),
					},
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "herbToPlant",
					QuestId = "PaixDisease",
				}),
			},
			Once = true,
			ParamId = "TCE_PlantRequest",
			QuestId = "VoodooCult",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "Completed", "herbToPlant" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.Completed and quest.herbToPlant
					end,
				}),
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "PaixDisease",
					Vars = set( "herbToPlant" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbToPlant
					end,
				}),
				PlaceObj('PlayerIsInSectors', {
					Sectors = {
						"F13",
					},
				}),
				PlaceObj('BanterHasPlayed', {
					Banters = {
						"CampDuCrocodile_PlantBorassus_00_Wanda",
					},
				}),
			},
			Effects = {
				PlaceObj('GroupSetBehaviorExit', {
					TargetUnit = "Wanda",
					closest = true,
				}),
			},
			Once = true,
			ParamId = "TCE_WandaLeave",
			QuestId = "VoodooCult",
			requiredSectors = {
				"F13",
			},
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "herbgiven" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.herbgiven
					end,
				}),
				PlaceObj('QuestIsVariableBool', {
					QuestId = "ReduceCrocodileCampStrength",
					Vars = set( "BorassusPlanted" ),
					__eval = function ()
						local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
						return quest.BorassusPlanted
					end,
				}),
			},
			Effects = {
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"CampDuCrocodile_PlantBorassus_03",
					},
					banterSequentialWaitFor = "BanterStart",
					searchInMap = true,
					searchInMarker = false,
				}),
				PlaceObj('UnitsStealForPerpetualMarkers', {}),
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"CampDuCrocodile_PlantBorassus_01",
					},
					searchInMap = true,
					searchInMarker = false,
				}),
				PlaceObj('PlayBanterEffect', {
					Banters = {
						"CampDuCrocodile_PlantBorassus_02",
					},
					banterSequentialWaitFor = "BanterStart",
					searchInMap = true,
					searchInMarker = false,
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "Completed",
					QuestId = "VoodooCult",
				}),
			},
			Once = true,
			ParamId = "TCE_Completion",
			QuestId = "VoodooCult",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PaixDisease",
					Vars = set( "WandaDead" ),
					__eval = function ()
						local quest = gv_Quests['PaixDisease'] or QuestGetState('PaixDisease')
						return quest.WandaDead
					end,
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "Failed",
					QuestId = "VoodooCult",
				}),
			},
			Once = true,
			ParamId = "TCE_Fail",
			QuestId = "VoodooCult",
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
			Name = "TCE_WandaInitial",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_HerbRequested",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_HerbGiven",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_PlantRequest",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_WandaLeave",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_Completion",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_Fail",
		}),
	},
	group = "Jungle",
	id = "VoodooCult",
})

