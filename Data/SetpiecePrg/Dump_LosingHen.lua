-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "L-9 - Port Cacao Dump",
	group = "PortCacao",
	id = "Dump_LosingHen",
	PlaceObj('SetpieceSleep', {
		Time = 400,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "TriggerUnits",
		Animation = "fly",
		AssignTo = "SP_RedHenForward",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "TriggerUnits",
		Animation = "fly",
		AssignTo = "SP_RedHenBack",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "TriggerUnits",
		Animation = "fly",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "TriggerUnits",
		Animation = "fly",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "TriggerUnits",
		Animation = "idle_EggHatching",
	}),
})
