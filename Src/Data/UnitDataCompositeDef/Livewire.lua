-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "MercenariesNew",
	'Id', "Livewire",
	'object_class', "UnitData",
	'Health', 55,
	'Agility', 74,
	'Dexterity', 80,
	'Strength', 44,
	'Wisdom', 94,
	'Leadership', 24,
	'Marksmanship', 62,
	'Mechanical', 85,
	'Explosives', 22,
	'Medical', 50,
	'Portrait', "UI/MercsPortraits/Livewire",
	'BigPortrait', "UI/Mercs/Livewire",
	'IsMercenary', true,
	'Name', T(644364224049, --[[UnitDataCompositeDef Livewire Name]] 'Leili "Livewire" Idrisi'),
	'Nick', T(242623587127, --[[UnitDataCompositeDef Livewire Nick]] "Livewire"),
	'AllCapsNick', T(218487408008, --[[UnitDataCompositeDef Livewire AllCapsNick]] "LIVEWIRE"),
	'Bio', T(937077578267, --[[UnitDataCompositeDef Livewire Bio]] "Born to Pakistani refugees in Indian-controlled Kashmir territory, Leili had a rough childhood. Although a gifted child - she was given a full scholarship to the University of Delhi - Leili always seemed to find herself running with the wrong crowd. In addition to writing papers, she was picking locks. By day she would learn to code and by night she would hack into secure databases. Ambidextrous by nature, she always had more than one thing going at a time. Eventually, someone took notice of her nefarious activities and Leili fled university in a hurry. She won't say exactly what went wrong and A.I.M. respects the privacy of its members."),
	'Nationality', "Pakistan",
	'Title', T(452434978236, --[[UnitDataCompositeDef Livewire Title]] "Utterly Blameless and Completely Fabulous"),
	'Email', T(885737105013, --[[UnitDataCompositeDef Livewire Email]] "fantabulousdiva@aim.com"),
	'snype_nick', T(893845971026, --[[UnitDataCompositeDef Livewire snype_nick]] "fantabulousdiva"),
	'Refusals', {
		PlaceObj('MercChatRefusal', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(891302754132, --[[UnitDataCompositeDef Livewire Text MercChatRefusal Lines ChatMessage voice:Livewire]] "OMG... No. You have at least one cop working for you and I may or may not have recently broken several international laws. So, unless you have a large amount of money set aside in case we need to cover some awkward legal fees, I think I must decline."),
				}),
			},
			'Conditions', {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raider",
						}),
					},
				}),
			},
		}),
	},
	'Haggles', {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(853961975144, --[[UnitDataCompositeDef Livewire Text MercChatHaggle Lines ChatMessage voice:Livewire]] "I would be happy to accept but my father says if I do not get a respectable, high-paying job, I will humiliate the family. So, I may need just a bit more money."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 20,
		}),
	},
	'HaggleRehire', {
		PlaceObj('MercChatHaggle', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(907585450261, --[[UnitDataCompositeDef Livewire Text MercChatHaggle Lines ChatMessage voice:Livewire]] "Have you heard of Ponzi schemes? I am interested in starting one, but I will need a bit of starting capital, so I will require more payment from you if we are to continue."),
				}),
			},
			'Conditions', {},
			'chanceToRoll', 10,
		}),
	},
	'Mitigations', {
		PlaceObj('MercChatMitigation', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(796072420069, --[[UnitDataCompositeDef Livewire Text MercChatMitigation Lines ChatMessage voice:Livewire]] "Well, there are some red flags in your offer, but looking at the size of your bank account, I just can't bring myself to say no."),
				}),
			},
			'Conditions', {
				PlaceObj('MercChatConditionMoney', {
					PresetValue = ">=50",
				}),
			},
		}),
	},
	'ExtraPartingWords', {
		PlaceObj('MercChatBranch', {
			'Lines', {
				PlaceObj('ChatMessage', {
					'Text', T(995636499514, --[[UnitDataCompositeDef Livewire Text MercChatBranch Lines ChatMessage voice:Livewire]] "I need to work on my innocent face. With a cop around, I need to be extra careful. And extra sweet. That reminds me - can I bring some sweets?"),
				}),
			},
			'Conditions', {
				PlaceObj('CheckOR', {
					Conditions = {
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raven",
						}),
						PlaceObj('UnitHireStatus', {
							Status = "Hired",
							TargetUnit = "Raider",
						}),
					},
				}),
			},
		}),
	},
	'Offline', {
		PlaceObj('ChatMessage', {
			'Text', T(590321913792, --[[UnitDataCompositeDef Livewire Text Offline ChatMessage voice:Livewire]] "I am Leili. I am currently unavailable, but I will be delighted to talk to you later. We can talk about whatever you like, with some possible exceptions being several investigations into the hacking of databases of various financial institutions."),
		}),
	},
	'GreetingAndOffer', {
		PlaceObj('ChatMessage', {
			'Text', T(925998306991, --[[UnitDataCompositeDef Livewire Text GreetingAndOffer ChatMessage voice:Livewire]] "Hello there. Are you in need of my skills?"),
		}),
	},
	'ConversationRestart', {
		PlaceObj('ChatMessage', {
			'Text', T(401939093914, --[[UnitDataCompositeDef Livewire Text ConversationRestart ChatMessage voice:Livewire]] "So, we drifted off topic a bit, which sometimes happens to me. Only occasionally, though. Like right now, for instance. "),
		}),
	},
	'IdleLine', {
		PlaceObj('ChatMessage', {
			'Text', T(722670829257, --[[UnitDataCompositeDef Livewire Text IdleLine ChatMessage voice:Livewire]] "Are you having connection issues? I can help you with your router settings, but I charge by the minute. "),
		}),
	},
	'PartingWords', {
		PlaceObj('ChatMessage', {
			'Text', T(567592147488, --[[UnitDataCompositeDef Livewire Text PartingWords ChatMessage voice:Livewire]] "Fantabulous. When do we start? Where are we going? Will there be candy there or should I bring my own?"),
		}),
	},
	'RehireIntro', {
		PlaceObj('ChatMessage', {
			'Text', T(112715570591, --[[UnitDataCompositeDef Livewire Text RehireIntro ChatMessage voice:Livewire]] "Hello. You know, the sweets here aren't as bad as I thought. Anyway, my contract needs to be extended. How about it?"),
		}),
	},
	'RehireOutro', {
		PlaceObj('ChatMessage', {
			'Text', T(114700880214, --[[UnitDataCompositeDef Livewire Text RehireOutro ChatMessage voice:Livewire]] "I am truly happy we will continue our work relations. "),
		}),
	},
	'MedicalDeposit', "large",
	'Haggling', "high",
	'StartingSalary', 550,
	'SalaryIncrease', 270,
	'SalaryLv1', 600,
	'SalaryMaxLv', 4200,
	'MaxHitPoints', 55,
	'LearnToLike', {
		"Len",
	},
	'Dislikes', {
		"Raider",
		"Raven",
	},
	'LearnToDislike', {
		"Len",
	},
	'StartingPerks', {
		"Scoundrel",
		"MrFixit",
		"Optimist",
		"InnerInfo",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Livewire",
		}),
	},
	'Equipment', {
		"Livewire",
	},
	'Specialization', "Mechanic",
	'pollyvoice', "Kendra",
	'gender', "Female",
})

