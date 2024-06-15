-- ========== GENERATED BY Conversation Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('Conversation', {
	Comment = "(Bastien) - second encounter",
	Conditions = {
		PlaceObj('PlayerIsInSectors', {
			Sectors = {
				"H3",
			},
		}),
		PlaceObj('QuestIsVariableBool', {
			QuestId = "JoseFamily",
			Vars = set({
	Failed = false,
	Given = true,
}),
			__eval = function ()
				local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
				return not quest.Failed and quest.Given
			end,
		}),
	},
	DefaultActor = "LegionRaider_Jose",
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "Fee_Full",
			'Value', 1000,
			'Tag', "<Fee_Full>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "Fee_Half",
			'Value', 500,
			'Tag', "<Fee_Half>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "DiamondsGain",
			'Value', 5,
			'Tag', "<DiamondsGain>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "MoneyGain",
			'Value', 115,
			'Tag', "<MoneyGain>",
		}),
	},
	group = "Ernie",
	id = "Jose_2",
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
		},
		Keyword = "Greeting",
		KeywordT = T(774381032385, --[[Conversation Jose_2 KeywordT]] "Greeting"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(844497991077, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting]] "Eh bien! My friends from the beach! I was just talking about you, wasn't I?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(423976624352, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:Greeting]] "C'est vrai."),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(604231757423, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting]] "And now you have come to meet my big family, eh?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(924695461017, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:Greeting]] "Yes, big family. Many mouths."),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(254578467078, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting]] "So true! But I'm sure our friends here are willing to help pay for our <em>hospitality</em>. After all, they saw little miss <em>Emma</em> and her rich friend. I'm thinking they gave you money, non? You don't want to be selfish and let my poor family starve!"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(933419927959, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:Greeting]] "Hospitality does not fill stomachs. Your money... Now."),
			}),
		},
		id = "Greeting",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "BaconDiamonds",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared2",
				QuestId = "JoseFamily",
			}),
		},
		Keyword = "Greeting",
		KeywordT = T(774381032385, --[[Conversation Jose_2 KeywordT]] "Greeting"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(730470133077, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting2]] "Eh bien! My friends from the beach! I was just talking about you, wasn't I?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "PierreMerc",
								Text = T(956157833880, --[[Conversation Jose_2 Text voice:PierreMerc section:Jose_2 keyword:Greeting2]] "How about me, my dear Bastien? Don't you consider me a friend?"),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(988150449200, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting2]] "But of course, Pierre! I just didn't expect to see you here... And I was unaware these people are part of the family, boss."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "PierreMerc",
								Text = T(885027266847, --[[Conversation Jose_2 Text voice:PierreMerc section:Jose_2 keyword:Greeting2]] "They are now. What are you doing here, Bastien?"),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(409634180385, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Greeting2]] "Well, um, me and my frérots happened to get the <em>diamond</em> shipment from the Major. I was trying to call you and report, boss, I swear!"),
			}),
		},
		id = "Greeting2",
	}),
	PlaceObj('ConversationPhrase', {
		Comment = "Fort: Jose and Raiders",
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
			}),
		},
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "JoseFamily_All",
				UseWeapons = true,
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "DiamondsRunAway",
				QuestId = "JoseFamily",
			}),
			PlaceObj('UnitGrantItem', {
				Amount = 5,
				ItemId = "TinyDiamonds",
				param_bindings = {
					Amount = "DiamondsGain",
				},
			}),
			PlaceObj('GrantExperienceSector', {
				Amount = "XPQuestReward_Minor",
			}),
			PlaceObj('CityGrantLoyalty', {
				Amount = 5,
				City = "ErnieVillage",
				SpecialConversationMessage = T(506164274816, --[[Conversation Jose_2 SpecialConversationMessage]] "humiliated <em>Bastien's gang</em>"),
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "Give up the diamonds",
		KeywordT = T(436932644934, --[[Conversation Jose_2 KeywordT]] "Give up the diamonds"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(385186154482, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Give up the diamonds]] "Of course, Pierre, I was just about to suggest you take them! In fact, I was searching for you, but I couldn't find you anywhere. Here, that's all I've got. May I go now, boss?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "PierreMerc",
								Text = T(960933764269, --[[Conversation Jose_2 Text voice:PierreMerc section:Jose_2 keyword:Give up the diamonds]] "Yes, get lost. You and your boys, I don't want to see you again."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(202792123293, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Give up the diamonds]] "Yes, Pierre! We were just leaving, boss!"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "PierreMerc",
								Text = T(830122511545, --[[Conversation Jose_2 Text voice:PierreMerc section:Jose_2 keyword:Give up the diamonds]] "Weren't you just searching for me to give me the diamonds? No, don't answer. Get out before I change my mind."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(983732751190, --[[Conversation Jose_2 Text voice:Fidel section:Jose_2 keyword:Give up the diamonds]] "We kill them now, right? Why not? We have the diamonds, yes?"),
							}),
						},
					}),
				},
				MaxPlayed = 2,
			}),
		},
		StoryBranchIcon = "conversation_threaten",
		id = "Giveupthediamonds",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				PhraseId = "HesBeenHoldingOut",
			}),
		},
		Keyword = "What hospitality?",
		KeywordT = T(344822767756, --[[Conversation Jose_2 KeywordT]] "What hospitality?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(737227830741, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:What hospitality?]] "That's right. I showed you hospitality by letting you visit my <em>shack</em>, now you have to pay for accommodation, plus interest."),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(413431673678, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:What hospitality?]] "Wait, what shack?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(954888742007, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:What hospitality?]] "Oh, it's actually just a lean-to, not like I stash things there or something..."),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(522090388259, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:What hospitality?]] "Uh, stash? Hey! You been holding out on us?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(903045187059, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:What hospitality?]] "No! I would never!"),
			}),
		},
		PhraseConditionRolloverText = "",
		PhraseRolloverText = "",
		id = "WhatHospitality",
	}),
	PlaceObj('ConversationPhrase', {
		Comment = "Fort: Raiders only",
		Conditions = {
			PlaceObj('CheckOR', {
				Conditions = {
					PlaceObj('UnitSquadHasMerc', {
						HasPerk = "Scoundrel",
					}),
					PlaceObj('UnitSquadHasMerc', {
						HasPerk = "Negotiator",
					}),
				},
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "RunAway",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseBanished",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GrantExperienceSector', {}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "LegionRaider_Jose",
				UseWeapons = true,
			}),
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "JoseRoamers",
				UseWeapons = true,
				delay = 2000,
			}),
		},
		Enabled = false,
		GoTo = "<end conversation>",
		Keyword = "He's been holding out on you",
		KeywordT = T(632751436499, --[[Conversation Jose_2 KeywordT]] "He's been holding out on you"),
		Lines = {
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Livewire",
								Text = T(270815176056, --[[Conversation Jose_2 Text voice:Livewire section:Jose_2 keyword:He's been holding out on you]] "Oh, perhaps you have forgotten all the diamonds you showed us?"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Buns",
								Text = T(623898582202, --[[Conversation Jose_2 Text voice:Buns section:Jose_2 keyword:He's been holding out on you]] "I must point out that you're not very good at lying."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raider",
								Text = T(414835194755, --[[Conversation Jose_2 Text voice:Raider section:Jose_2 keyword:He's been holding out on you]] "Back in my day, in the L.A.P.D. I dealt with some good swindlers. You're nowhere near their level. You're not convincing at all."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fox",
								Text = T(248930850511, --[[Conversation Jose_2 Text voice:Fox section:Jose_2 keyword:He's been holding out on you]] "But, Bastien! You were so proud when you told us about how you've been stealing from your friends for so long without them noticing! Don't be shy about it now. "),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(646125386624, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:He's been holding out on you]] "I thought so! I knew he's been stealing from us! Get him, boys!"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(261668027576, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:He's been holding out on you]] "Merde!"),
			}),
		},
		StoryBranchIcon = "conversation_sarcastic",
		id = "HesBeenHoldingOut",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "Meltdown",
				Negate = true,
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "Nails",
				Negate = true,
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "Fidel",
				Negate = true,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Keyword = "We'll pay",
		KeywordT = T(719725459934, --[[Conversation Jose_2 KeywordT]] "We'll pay"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(163470043973, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:We'll pay]] "Nice doing business with you, boss! Now give me the money."),
			}),
		},
		NoBackOption = true,
		PhraseRolloverText = "",
		ShowPhraseRollover = false,
		StoryBranchIcon = "conversation_trade",
		id = "WellPay_success",
		PlaceObj('ConversationPhrase', {
			Align = "right",
			Comment = "Fort: Jose and Raiders",
			Conditions = {
				PlaceObj('PlayerHasMoney', {
					Amount = 1000,
					param_bindings = {
						Amount = "Fee_Full",
					},
				}),
			},
			Effects = {
				PlaceObj('PlayerPayMoney', {
					Amount = 1000,
					param_bindings = {
						Amount = "Fee_Full",
					},
				}),
				PlaceObj('GrantExperienceSector', {
					Amount = "XPQuestReward_Minor",
				}),
				PlaceObj('GroupSetBehaviorExit', {
					MarkerGroup = "East",
					TargetUnit = "JoseFamily_All",
					UseWeapons = true,
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "JoseRustConversationDone",
					QuestId = "JoseFamily",
				}),
			},
			GoTo = "<end conversation>",
			Keyword = "Here is $1000",
			KeywordT = T(199712024037, --[[Conversation Jose_2 KeywordT]] "Here is $1000"),
			Lines = {
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(509697230087, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Here is $1000]] "Heheheee... Come on, boys, drinks are on me."),
				}),
				PlaceObj('ConversationInterjectionList', {
					Interjections = {
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "MD",
									Text = T(603532482869, --[[Conversation Jose_2 Text voice:MD section:Jose_2 keyword:Here is $1000]] "Well, that seemed a reasonable fee to pay."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Thor",
									Text = T(937548764029, --[[Conversation Jose_2 Text voice:Thor section:Jose_2 keyword:Here is $1000]] "It's good to find other ways besides violence to solve our problems."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Red",
									Text = T(766317663709, --[[Conversation Jose_2 Text voice:Red section:Jose_2 keyword:Here is $1000]] "Choke on it, ya wee dobber."),
								}),
							},
						}),
					},
				}),
			},
			PhraseRolloverText = "",
			StoryBranchIcon = "conversation_trade",
			id = "Agree1000",
		}),
		PlaceObj('ConversationPhrase', {
			Align = "right",
			Comment = "Fort: Jose and Raiders",
			Conditions = {
				PlaceObj('PlayerHasMoney', {
					Amount = 500,
					param_bindings = {
						Amount = "Fee_Half",
					},
				}),
				PlaceObj('UnitSquadHasMerc', {
					HasPerk = "Negotiator",
				}),
			},
			Effects = {
				PlaceObj('PlayerPayMoney', {
					Amount = 500,
					param_bindings = {
						Amount = "Fee_Half",
					},
				}),
				PlaceObj('GrantExperienceSector', {
					Amount = "XPQuestReward_Minor",
				}),
				PlaceObj('GroupSetBehaviorExit', {
					MarkerGroup = "East",
					TargetUnit = "JoseFamily_All",
					UseWeapons = true,
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "JoseRustConversationDone",
					QuestId = "JoseFamily",
				}),
			},
			Enabled = false,
			GoTo = "<end conversation>",
			Keyword = "Here is $500",
			KeywordT = T(352888218095, --[[Conversation Jose_2 KeywordT]] "Here is $500"),
			Lines = {
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(509697230087, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Here is $500]] "Heheheee... Come on, boys, drinks are on me."),
				}),
			},
			PhraseRolloverText = "",
			StoryBranchIcon = "conversation_trade",
			id = "Agree500",
		}),
		PlaceObj('ConversationPhrase', {
			Align = "right",
			Comment = "Fort: none (if killed)",
			Effects = {
				PlaceObj('GroupSetSide', {
					Side = "enemy1",
					TargetUnit = "JoseFamily_All",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "StartCombat",
					QuestId = "JoseFamily",
				}),
				PlaceObj('GroupAlert', {
					TargetUnit = "JoseFamily_All",
				}),
				PlaceObj('QuestSetVariableBool', {
					Prop = "JoseRustConversationDone",
					QuestId = "JoseFamily",
				}),
			},
			GoTo = "<end conversation>",
			Keyword = "Or rather not",
			KeywordT = T(759926423881, --[[Conversation Jose_2 KeywordT]] "Or rather not"),
			Lines = {
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(875545780450, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Or rather not]] "Putain merde, you think I'm joking?!"),
				}),
			},
			StoryBranchIcon = "conversation_action",
			id = "Refuse",
		}),
	}),
	PlaceObj('ConversationPhrase', {
		Comment = "Psycho merc directly shoots Bastien",
		Conditions = {
			PlaceObj('CheckOR', {
				Conditions = {
					PlaceObj('UnitSquadHasMerc', {
						Name = "Meltdown",
					}),
					PlaceObj('UnitSquadHasMerc', {
						Name = "Nails",
					}),
					PlaceObj('UnitSquadHasMerc', {
						Name = "Fidel",
					}),
				},
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('GroupSetSide', {
				Side = "enemy1",
				TargetUnit = "JoseFamily_All",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "StartCombat",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GroupAlert', {
				TargetUnit = "JoseFamily_All",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
			PlaceObj('ConditionalEffect', {
				'Conditions', {
					PlaceObj('CheckOR', {
						Conditions = {
							PlaceObj('UnitSquadHasMerc', {
								Name = "Meltdown",
							}),
							PlaceObj('UnitSquadHasMerc', {
								Name = "Nails",
							}),
							PlaceObj('UnitSquadHasMerc', {
								Name = "Fidel",
							}),
						},
					}),
				},
				'Effects', {
					PlaceObj('PlaySetpiece', {
						setpiece = "BastienDies",
					}),
				},
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "We'll pay",
		KeywordT = T(719725459934, --[[Conversation Jose_2 KeywordT]] "We'll pay"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(163470043973, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:We'll pay]] "Nice doing business with you, boss! Now give me the money."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								SoundAfter = "Sounds/ConversationEffects/38-S&W_shot4m_dry.wav",
								Text = T(232941943774, --[[Conversation Jose_2 Text voice:Meltdown section:Jose_2 keyword:We'll pay]] "The fuck I'll give you the money! Take this, you piece of shit!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Nails",
								Text = T(859087181358, --[[Conversation Jose_2 Text voice:Nails section:Jose_2 keyword:We'll pay]] "How about I give you your teeth after I knock 'em out of our skull?"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								SoundAfter = "Sounds/ConversationEffects/38-S&W_shot4m_dry.wav",
								Text = T(364369096812, --[[Conversation Jose_2 Text voice:Fidel section:Jose_2 keyword:We'll pay]] "Fidel does not pay in money. Fidel pays in bullets!"),
							}),
						},
					}),
				},
			}),
		},
		PhraseConditionRolloverText = T(174128475882, --[[Conversation Jose_2 PhraseConditionRolloverText]] "<color EmStyle>Psycho</color> perk activated"),
		ShowPhraseRollover = false,
		StoryBranchIcon = "conversation_threaten",
		id = "Wellpay_failure",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				HasPerk = "Negotiator",
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				Enabled = false,
				PhraseId = "WellPay_success.Agree1000",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				PhraseId = "WellPay_success.Agree500",
			}),
		},
		Keyword = "We don't have much",
		KeywordT = T(861727817158, --[[Conversation Jose_2 KeywordT]] "We don't have much"),
		Lines = {
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Buns",
								Text = T(485237875644, --[[Conversation Jose_2 Text voice:Buns section:Jose_2 keyword:We don't have much]] "I think we could reach an agreement for a discount. Imagine if we end up shooting each other - it would be terribly unhealthy to bleed in this mud. "),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raider",
								Text = T(348063442348, --[[Conversation Jose_2 Text voice:Raider section:Jose_2 keyword:We don't have much]] "We'll give you half. Not a penny more."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(189040698738, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:We don't have much]] "Oh yeah, boss, but of course I'll make a discount for you! After all, you're our first client of the day! Half price for you, eh?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Barry",
								Text = T(751216382007, --[[Conversation Jose_2 Text voice:Barry section:Jose_2 keyword:We don't have much]] "In terms of highway robbery, this is reasonable."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Ice",
								Text = T(103835508067, --[[Conversation Jose_2 Text voice:Ice section:Jose_2 keyword:We don't have much]] "This is some bullshit."),
							}),
						},
					}),
				},
			}),
		},
		StoryBranchIcon = "conversation_trade",
		id = "Negotiate",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				HasPerk = "Negotiator",
				Negate = true,
			}),
			PlaceObj('UnitSquadHasMerc', {
				Name = "PierreMerc",
				Negate = true,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared2
				end,
			}),
		},
		Keyword = "We don't have much",
		KeywordT = T(861727817158, --[[Conversation Jose_2 KeywordT]] "We don't have much"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(155914863205, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:We don't have much]] "No way, boss. These are trying times. Everyone has to contribute. Your money. Now."),
			}),
		},
		StoryBranchIcon = "conversation_trade",
		id = "Negotiate2",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.Scared
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared2",
				QuestId = "JoseFamily",
			}),
		},
		Keyword = "Hands up!",
		KeywordT = T(586177032721, --[[Conversation Jose_2 KeywordT]] "Hands up!"),
		Lines = {
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(678250846572, --[[Conversation Jose_2 Text voice:Fidel section:Jose_2 keyword:Hands up!]] "Maybe Fidel fill your stomachs. Fill your stomachs with lead!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								Text = T(731536328898, --[[Conversation Jose_2 Text voice:Meltdown section:Jose_2 keyword:Hands up!]] "Got a counter offer. How about we just kill every last one of you fuckheads?"),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(268657785629, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Hands up!]] "Uhhh... heh-heh... We're just kidding, my friend! My associates, they, uh... they watch too many gangster movies, oui?"),
			}),
		},
		NoBackOption = true,
		StoryBranchIcon = "conversation_threaten",
		id = "Threaten",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.Scared
				end,
			}),
		},
		Keyword = "Hands up!",
		KeywordT = T(586177032721, --[[Conversation Jose_2 KeywordT]] "Hands up!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(148558765537, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Hands up!]] "Hehe, you hear that, boys? Is it just me, or is le petit chien trying to bark?"),
			}),
		},
		NoBackOption = true,
		StoryBranchIcon = "conversation_threaten",
		id = "Threaten2",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				PhraseId = "WhatAboutTheDiamonds",
			}),
			PlaceObj('PlayerGrantMoney', {
				Amount = 115,
				param_bindings = {
					Amount = "MoneyGain",
				},
			}),
		},
		Keyword = "You pay us",
		KeywordT = T(203178249916, --[[Conversation Jose_2 KeywordT]] "You pay us"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(152388376227, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:You pay us]] "Okay, okay, let us be reasonable. We're just poor scavengers, aren't we, boys? We don't have much! Look at my wallet. It's all yours. There is no need for violence, yeah?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider",
				Text = T(287413394920, --[[Conversation Jose_2 Text voice:LegionRaider section:Jose_2 keyword:You pay us]] "You have a wallet? I don't even have that! Bastien, we are going to have a talk..."),
			}),
		},
		StoryBranchIcon = "conversation_threaten",
		id = "YouPayUs",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.BaconDiamonds
				end,
			}),
		},
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				PhraseId = "GetOut",
			}),
		},
		Enabled = false,
		Keyword = "What about the diamonds?",
		KeywordT = T(287429964815, --[[Conversation Jose_2 KeywordT]] "What about the diamonds?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(569709897454, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:What about the diamonds?]] "Oh, umm... Well..."),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "LegionButcher",
				Text = T(938211639716, --[[Conversation Jose_2 Text voice:LegionButcher section:Jose_2 keyword:What about the diamonds?]] "You idiot, you blabbered about that?!"),
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(904289681021, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:What about the diamonds?]] "Shut up, I was going to bamboozle them something... Damn, forget it. Look, boss, we have the diamonds. They are hidden nearby. You can have 'em. Just let us go, okay?"),
			}),
		},
		StoryBranchIcon = "conversation_sarcastic",
		id = "WhatAboutTheDiamonds",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Fort: Jose and Raiders",
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "JoseFamily_All",
				UseWeapons = true,
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "RunAway",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GrantExperienceSector', {
				Amount = "XPQuestReward_Minor",
			}),
			PlaceObj('UnitGrantItem', {
				Amount = 5,
				ItemId = "TinyDiamonds",
				param_bindings = {
					Amount = "DiamondsGain",
				},
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
		},
		Enabled = false,
		GoTo = "<end conversation>",
		Keyword = "Give us the diamonds and get out",
		KeywordT = T(609379303340, --[[Conversation Jose_2 KeywordT]] "Give us the diamonds and get out"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(319788739857, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Give us the diamonds and get out]] "Thank you, boss, we won't forget your kindness, boss. Here, you can have 'em. We will meet again some sunny day, I promise."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Vicki",
								Text = T(749004257439, --[[Conversation Jose_2 Text voice:Vicki section:Jose_2 keyword:Give us the diamonds and get out]] "You better hope not, mon... for your sake."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Tex",
								Text = T(859532544657, --[[Conversation Jose_2 Text voice:Tex section:Jose_2 keyword:Give us the diamonds and get out]] "Time for you banditos to make tracks. Go on, get!"),
							}),
						},
					}),
				},
				MaxPlayed = 2,
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(223009992803, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Give us the diamonds and get out]] "Allez, boys, let's get out of here while we can..."),
			}),
		},
		StoryBranchIcon = "conversation_goodbye",
		id = "GetOut",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					Scared2 = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.Scared2
				end,
			}),
		},
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_2",
				PhraseId = "YourGunsNow",
			}),
		},
		Keyword = "Drop your guns!",
		KeywordT = T(104328241789, --[[Conversation Jose_2 KeywordT]] "Drop your guns!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(386137005362, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Drop your guns!]] "Eh... I don't know if that's such a good deal for us. This a dangerous island. A lot of people are up to a lot of trouble. You'd be forcing us to be at the mercy of thugs and robbers!"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Wolf",
								Text = T(856827326713, --[[Conversation Jose_2 Text voice:Wolf section:Jose_2 keyword:Drop your guns!]] "Sounds like your kind of people. So I'm sure you'd feel right at home."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(792820008159, --[[Conversation Jose_2 Text voice:Raven section:Jose_2 keyword:Drop your guns!]] "And yet somehow I don't feel bad about it."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Steroid",
								Text = T(886371729783, --[[Conversation Jose_2 Text voice:Steroid section:Jose_2 keyword:Drop your guns!]] "Ya, that is why you should lift."),
							}),
						},
					}),
				},
			}),
		},
		StoryBranchIcon = "conversation_threaten",
		id = "DropGuns",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Fort: none",
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "RunAway",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "DropWeapons",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GrantExperienceSector', {
				Amount = "XPQuestReward_Minor",
			}),
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "JoseFamily_All",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
			PlaceObj('CityGrantLoyalty', {
				Amount = 5,
				City = "ErnieVillage",
				SpecialConversationMessage = T(506164274816, --[[Conversation Jose_2 SpecialConversationMessage]] "humiliated <em>Bastien's gang</em>"),
			}),
		},
		Enabled = false,
		GoTo = "<end conversation>",
		Keyword = "Your guns! Now!",
		KeywordT = T(501179800326, --[[Conversation Jose_2 KeywordT]] "Your guns! Now!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(981588171822, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Your guns! Now!]] "Easy now! Take it easy. That's okay. No problem. Take our weapons. Me and the boys, maybe we'll just take up fishing, right?"),
			}),
		},
		StoryBranchIcon = "conversation_goodbye",
		id = "YourGunsNow",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Fort: none (if killed)",
		Effects = {
			PlaceObj('GroupSetSide', {
				Side = "enemy1",
				TargetUnit = "JoseFamily_All",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "StartCombat",
				QuestId = "JoseFamily",
			}),
			PlaceObj('GroupAlert', {
				TargetUnit = "JoseFamily_All",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "JoseRustConversationDone",
				QuestId = "JoseFamily",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "Die!",
		KeywordT = T(482976736771, --[[Conversation Jose_2 KeywordT]] "Die!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(261668027576, --[[Conversation Jose_2 Text voice:LegionRaider_Jose section:Jose_2 keyword:Die!]] "Merde!"),
			}),
		},
		StoryBranchIcon = "conversation_attack",
		id = "Die",
	}),
})
