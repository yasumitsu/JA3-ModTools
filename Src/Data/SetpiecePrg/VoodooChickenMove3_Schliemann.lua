-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "J-11 - Jungle",
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "Savanna",
	id = "VoodooChickenMove3_Schliemann",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Schliemann",
		Group = "chicken",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Schliemann",
		Marker = "chicken3",
		RandomizePhase = true,
	}),
})

