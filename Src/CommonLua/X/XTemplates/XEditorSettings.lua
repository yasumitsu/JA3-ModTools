-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	group = "Editor",
	id = "XEditorSettings",
	save_in = "Common",
	PlaceObj('XTemplateWindow', {
		'__class', "GedApp",
		'Title', "Properties",
		'CommonActionsInMenubar', false,
		'CommonActionsInToolbar', false,
		'InitialWidth', 400,
	}, {
		PlaceObj('XTemplateWindow', {
			'__context', function (parent, context) return "root" end,
			'__class', "GedPropPanel",
			'Margins', box(5, 5, 5, 5),
			'ActionsClass', "PropertyObject",
			'Copy', "GedOpPropertyCopy",
			'Paste', "GedOpPropertyPaste",
		}),
		PlaceObj('XTemplateFunc', {
			'name', "Exit",
			'func', function (self, ...)
				XEditorSettings:ToggleGedEditor()
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'__class', "XSizeControl",
		}),
		}),
})

