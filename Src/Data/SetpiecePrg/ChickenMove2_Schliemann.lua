-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "H-7 - Ruins Mine",
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "Savanna",
	id = "ChickenMove2_Schliemann",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Schliemann",
		Group = "chicken",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Schliemann",
		Marker = "Waypoint2",
		RandomizePhase = true,
		Wait = false,
	}),
})
