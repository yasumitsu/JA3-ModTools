-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "EditorLineGuide",
	RequiresGuideType = "Horizontal",
	ToolbarSection = "Horizontal Objects",
	group = "PlaceObjects",
	id = "LayColonialFriezeInterior",
	PlaceObj('MoveSizeGuides', {
		GuidesVar = "initial_selection",
		UpDown = -700,
		UpDownScale = 700,
	}),
	PlaceObj('LaySlabsAlongGuides', {
		EndIsCorner = true,
		GuidesVar = "initial_selection",
		Middle = {
			PlaceObj('PlaceObjectData', {
				EditorClass = "WallDec_Colonial_Frieze_Body_01",
			}),
		},
		StartIsCorner = true,
	}),
	PlaceObj('MoveSizeGuides', {
		GuidesVar = "initial_selection",
		UpDown = 700,
		UpDownScale = 700,
	}),
})

