-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "A-2 - Diamond Red",
	Params = {
		"TriggerUnits",
		"FoundMerc",
	},
	RestoreCamera = true,
	group = "Deaths",
	hidden_actors = false,
	id = "GraffDies",
	PlaceObj('SetpieceFadeOut', {}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 300,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Graff",
		Group = "DiamondRedBoss",
		Marker = "SP_Boss",
	}),
	PlaceObj('PrgAssignExpr', {
		Value = function (self) return FoundMerc or TriggerUnits end,
		Variable = "Shooter",
	}),
	PlaceObj('SetpieceAssignFromParam', {
		AssignTo = "Merc",
		Marker = "Merc",
		Parameter = "Shooter",
	}),
	PlaceObj('PrgPlaySetpiece', {
		Prg = "ConversationKill_SubPiece",
		PrgClass = "SetpiecePrg",
		Shooter = function (self) return Merc end,
		Target = function (self) return Graff end,
	}),
})
