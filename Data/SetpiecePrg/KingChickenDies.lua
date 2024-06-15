-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "F-19 - Camp Bien Chan",
	RestoreCamera = true,
	group = "Deaths",
	id = "KingChickenDies",
	PlaceObj('SetpieceFadeOut', {}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 300,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "KingChicken",
		Group = "KingChicken",
	}),
	PlaceObj('SetpieceAssignFromParam', {
		AssignTo = "Merc",
		Parameter = "TriggerUnits",
	}),
	PlaceObj('PrgPlaySetpiece', {
		Prg = "ConversationKill_SubPiece",
		PrgClass = "SetpiecePrg",
		Shooter = function (self) return Merc end,
		Target = function (self) return KingChicken end,
	}),
})
