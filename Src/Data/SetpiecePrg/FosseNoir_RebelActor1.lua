-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "C-7 - Fosse Noire",
	Params = {
		"MainActor",
		"TargetActor1",
		"TargetActor2",
	},
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "FosseNoir_RebelActor1",
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AnimSpeed = 280,
		InitialDelay = 1000,
		NumMisses = 2,
		NumShots = 3,
		ShotInterval = 70,
		TargetUnits = "TargetActor1",
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AnimSpeed = 280,
		InitialDelay = 1400,
		NumMisses = 4,
		NumShots = 5,
		ShotInterval = 70,
		TargetUnits = "TargetActor1",
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AnimSpeed = 280,
		InitialDelay = 1200,
		NumShots = 2,
		ShotInterval = 350,
		TargetUnits = "TargetActor1",
	}),
})

