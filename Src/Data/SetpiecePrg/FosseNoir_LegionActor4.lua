-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "C-7 - Fosse Noire",
	Params = {
		"MainActor",
		"TargetActor",
	},
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "FosseNoir_LegionActor4",
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		InitialDelay = 1200,
		NumMisses = 1,
		NumShots = 2,
		ShotInterval = 600,
		TargetUnits = "TargetActor",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "MainActor",
		Marker = "SP_LegionActor4_goto2",
		Stance = "Crouch",
	}),
})

