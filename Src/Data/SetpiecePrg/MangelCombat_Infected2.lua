-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "H-12U - Sanatorium Underground",
	Params = {
		"MainActor",
	},
	group = "Sanatorium",
	id = "MangelCombat_Infected2",
	PlaceObj('SetpieceSleep', {
		Time = 1100,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "MainActor",
		Marker = "SP_FallenInfected2_GoTo",
		UseRun = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		AnimSpeed = 1300,
		Animation = "inf_Standing_IdlePassive2",
	}),
})

