-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "K-18 - Farmlands",
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "Savanna",
	id = "CirclesChickenMove3_Schliemann",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Schliemann",
		Group = "chicken",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "circlestreasure",
				QuestId = "TreasureHunting",
			}),
		},
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Schliemann",
		Marker = "chicken3",
		RandomizePhase = true,
	}),
})
