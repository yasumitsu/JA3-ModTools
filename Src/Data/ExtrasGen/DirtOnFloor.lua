-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "Room",
	ToolbarSection = "Room",
	group = "All (Room)",
	id = "DirtOnFloor",
	PlaceObj('PrgSelectRoomComponents', {
		All = false,
		AssignTo = "initial_selection",
		Corners = false,
		CornersNE = false,
		CornersNW = false,
		CornersSE = false,
		CornersSW = false,
		Doors = false,
		Roof = false,
		RoomsVar = "initial_selection",
		Walls = false,
		Windows = false,
	}),
	PlaceObj('ReduceSpaceOut', {
		AssignTo = "initial_selection",
		MinDist = 4000,
	}),
	PlaceObj('PrgAssignExpr', {
		Variable = "selection",
	}),
	PlaceObj('PrgForEach', {
		List = "initial_selection",
		PlaceObj('PrgPlaceObject', {
			AlignTo = "value",
			AssignTo = "selection",
			Classes = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "DecBunkerFloor_02",
				}),
			},
			Store = "Add to",
		}),
	}),
	PlaceObj('PrgRotate', {
		Deviation = 10800,
		Variable = "selection",
	}),
	PlaceObj('SelectInEditor', {
		ObjectsVar = "selection",
	}),
})
