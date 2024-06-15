-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "EditorLineGuide",
	RequiresGuideType = "Horizontal",
	ToolbarSection = "Horizontal Objects",
	group = "PlaceObjects",
	id = "LayColonialWindows",
	PlaceObj('LaySlabsAlongGuides', {
		BetweenGap = 1,
		End1 = {
			PlaceObj('PlaceObjectData', {
				EditorClass = "WindowBig_Colonial_Single_01",
			}),
		},
		EndGap = 1,
		GuidesVar = "initial_selection",
		Middle = {
			PlaceObj('PlaceObjectData', {
				EditorClass = "WindowBig_Colonial_Double_01",
			}),
		},
		SkipInterior = true,
		Start = {
			PlaceObj('PlaceObjectData', {
				EditorClass = "WindowBig_Colonial_Single_01",
			}),
		},
		StartGap = 1,
	}),
	PlaceObj('MoveSizeGuides', {
		GuidesVar = "initial_selection",
		UpDown = 1400,
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
		Start = {
			PlaceObj('PlaceObjectData', {
				EditorClass = "WallDec_Colonial_Frieze_Corner_01",
			}),
		},
		StartIsCorner = true,
	}),
	PlaceObj('MoveSizeGuides', {
		GuidesVar = "initial_selection",
		UpDown = -1400,
		UpDownScale = 700,
	}),
})

