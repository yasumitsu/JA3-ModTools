-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "L-9 - Port Cacao Dump",
	group = "PortCacao",
	hidden_actors = false,
	id = "Dump_HenFight",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 0,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "RedHen",
		Group = "Hen_RedFighter",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "BlueHen",
		Group = "Hen_BlueFighter",
	}),
	PlaceObj('SetpieceIfQuestVar', {
		QuestId = "PortCacaoSideQuests",
		Vars = set( "RedHenWins" ),
		PlaceObj('PrgPlaySetpiece', {
			Prg = "Dump_LosingHen",
			PrgClass = "SetpiecePrg",
			TriggerUnits = function (self) return BlueHen end,
			Wait = false,
		}),
		PlaceObj('PrgPlaySetpiece', {
			Prg = "Dump_WiningHen",
			PrgClass = "SetpiecePrg",
			TriggerUnits = function (self) return RedHen end,
			Wait = false,
		}),
	}),
	PlaceObj('PrgElse', {
		PlaceObj('PrgPlaySetpiece', {
			Prg = "Dump_LosingHen",
			PrgClass = "SetpiecePrg",
			TriggerUnits = function (self) return RedHen end,
			Wait = false,
		}),
		PlaceObj('PrgPlaySetpiece', {
			Prg = "Dump_WiningHen",
			PrgClass = "SetpiecePrg",
			TriggerUnits = function (self) return BlueHen end,
			Wait = false,
		}),
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 5000,
		LookAt1 = point(175228, 121366, 18615),
		LookAt2 = point(174073, 120901, 17779),
		Movement = "linear",
		Pos1 = point(179079, 122919, 21400),
		Pos2 = point(177924, 122453, 20565),
		Wait = false,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 100,
		FadeInTime = 400,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 5500,
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 5000,
		LookAt1 = point(175227, 121366, 18615),
		LookAt2 = point(176225, 119753, 18370),
		Movement = "linear",
		Pos1 = point(179079, 122919, 21400),
		Pos2 = point(180500, 119913, 20957),
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 5000,
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})
