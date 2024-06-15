-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	Chapter = "Utility",
	DevNotes = "for testing effects and variables",
	EffectOnChangeVarValue = {
		PlaceObj('QuestEffectOnStatus', {
			Effects = {
				PlaceObj('TriggerGuardPostAttack', {
					effect_target_sector_ids = {
						"H4",
					},
					guardpost_sector_id = "H4",
					time = 0,
				}),
				PlaceObj('QuestSetVariableTimer', {
					Prop = "TimerTest",
					QuestId = "_TestQuest",
					TimeAmount = 200,
				}),
				PlaceObj('CustomCodeEffect', {
					custom_code = 'print("marco", Game.CampaignTime)',
				}),
			},
			Prop = "Given",
		}),
	},
	KillTCEsConditions = {
		PlaceObj('QuestKillTCEsOnCompleted', {}),
	},
	TCEs = {
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "_TestQuest",
					Vars = set( "TestVarBool" ),
					__eval = function ()
						local quest = gv_Quests['_TestQuest'] or QuestGetState('_TestQuest')
						return quest.TestVarBool
					end,
				}),
			},
			Effects = {
				PlaceObj('SetTimer', {
					Name = "ARTHGFRPS",
				}),
				PlaceObj('ExecuteCode', {
					FuncCode = 'print("This should not APPEAR if killed!")',
				}),
			},
			ParamId = "TCE_State",
			QuestId = "_TestQuest",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "_TestQuest",
					Vars = set( "TestVarBool2" ),
					__eval = function ()
						local quest = gv_Quests['_TestQuest'] or QuestGetState('_TestQuest')
						return quest.TestVarBool2
					end,
				}),
			},
			Effects = {
				PlaceObj('KillTimer', {
					Name = "ARTHGFRPS",
					StopTCE = true,
				}),
				PlaceObj('ExecuteCode', {
					FuncCode = 'print("Kill Timer")',
				}),
			},
			ParamId = "TCE_Kill",
			QuestId = "_TestQuest",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('UnitHasInteraction', {
					'TargetUnit', "any merc",
					'Group', "BombardTarget_Interaction",
				}),
			},
			Effects = {
				PlaceObj('SetTimer', {
					Label = T(277541114447, --[[QuestsDef _TestQuest Label]] "Incoming Artillery Fire!"),
					Name = "Bombard",
					Time = 30000,
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "TestInteractable_BombardStart",
					QuestId = "_TestQuest",
				}),
				PlaceObj('BombardEffect', {
					BombardId = "BombardNOW",
					NumShots = 8,
					Ordnance = "MortarShell_HE",
				}),
			},
			Once = true,
			ParamId = "TCE_BombardDo",
			QuestId = "_TestQuest",
		}),
		PlaceObj('TriggeredConditionalEvent', {
			Conditions = {
				PlaceObj('QuestHasTimerPassed', {
					QuestId = "_TestQuest",
					TimerVariable = "TimerTest",
				}),
			},
			Effects = {
				PlaceObj('CustomCodeEffect', {
					custom_code = 'print("polo", Game.CampaignTime)',
				}),
			},
			Once = true,
			ParamId = "TCE_TimerCheckTest",
			QuestId = "_TestQuest",
		}),
	},
	Variables = {
		PlaceObj('QuestVarNum', {
			Name = "TestVarNum",
			Value = -1,
		}),
		PlaceObj('QuestVarText', {
			Name = "TestVarText",
			Value = "test",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestVarBool2",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestVarBool",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_State",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_Kill",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_BombardDo",
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
			Name = "TestInteractable_SkillCheck_Done",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_SkillChest_Unlocked",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_AreaCheck_Done",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_AreaCheck_Trap_Done",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_DualCheck_Done",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_DualChest_Unlocked",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_AreaDualSkill_Done",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_SpawnMG",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_DespawnMG",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_ItemCheckDone",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_BombardStart",
		}),
		PlaceObj('QuestVarBool', {
			Name = "TestInteractable_GiveGrenadeDone",
		}),
		PlaceObj('QuestVarNum', {
			Name = "TimerTest",
		}),
		PlaceObj('QuestVarTCEState', {
			Name = "TCE_TimerCheckTest",
		}),
	},
	group = "Default",
	id = "_TestQuest",
})
