-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "Gamescom_Savanna",
	Params = {
		"MainActor",
	},
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "TrailersSubSetPieces",
	id = "Gamescom_Savanna_Merc1",
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
		Weapon = "AK47",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		AnimSpeed = 850,
		Animation = "ar_Standing_Walk2",
		AssignTo = "SP_Actor1_GoTo",
		Duration = 8250,
		Marker = "SP_Actor1_GoTo",
		Orient = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "ar_Standing_IdlePassive2",
	}),
})
