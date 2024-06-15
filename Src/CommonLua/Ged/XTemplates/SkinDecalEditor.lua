-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	group = "Common",
	id = "SkinDecalEditor",
	save_in = "Ged",
	PlaceObj('XTemplateWindow', {
		'__class', "GedApp",
		'MinWidth', 800,
		'MinHeight', 600,
		'Title', "Skin Decal Metadata Editor",
		'AppId', "SkinDecalEditor",
		'InitialWidth', 800,
		'InitialHeight', 600,
	}, {
		PlaceObj('XTemplateAction', {
			'ActionId', "ThreeQuarters",
			'ActionName', T(364268835695, --[[XTemplate SkinDecalEditor ActionName]] "3/4 Camera"),
			'ActionIcon', "CommonAssets/UI/Ged/center.tga",
			'ActionToolbar', "main",
			'ActionShortcut', "Ctrl-1",
			'OnAction', function (self, host, source, ...)
				local panel = host:GetLastFocusedPanel()
				host:Op("GedOpCharacterCamThreeQuarters", "root", panel and panel.context)
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "ClosestCamera",
			'ActionName', T(902280187547, --[[XTemplate SkinDecalEditor ActionName]] "Closest Camera"),
			'ActionIcon', "CommonAssets/UI/Ged/camera.tga",
			'ActionToolbar', "main",
			'ActionToolbarSplit', true,
			'ActionShortcut', "Ctrl-2",
			'OnAction', function (self, host, source, ...)
				host:Op("GedOpCharacterCamClosest", "root")
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "Play",
			'ActionName', T(489899742099, --[[XTemplate SkinDecalEditor ActionName]] "Play"),
			'ActionIcon', "CommonAssets/UI/Ged/play.tga",
			'ActionToolbar', "main",
			'OnAction', function (self, host, source, ...)
				local panel = host:GetLastFocusedPanel()
				host:Op("GedOpAnimMetadataEditorPlay", "root", panel and panel.context)
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "Pause",
			'ActionName', T(508369568675, --[[XTemplate SkinDecalEditor ActionName]] "Pause"),
			'ActionIcon', "CommonAssets/UI/Ged/pause.tga",
			'ActionToolbar', "main",
			'OnAction', function (self, host, source, ...)
				local panel = host:GetLastFocusedPanel()
				host:Op("GedOpAnimMetadataEditorStop", "root", panel and panel.context)
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "Loop",
			'ActionName', T(709683926590, --[[XTemplate SkinDecalEditor ActionName]] "Loop"),
			'ActionIcon', "CommonAssets/UI/Ged/undo.tga",
			'ActionToolbar', "main",
			'ActionToolbarSplit', true,
			'OnAction', function (self, host, source, ...)
				local panel = host:GetLastFocusedPanel()
				host:Op("GedOpAnimMetadataEditorToggleLoop", "root", panel and panel.context)
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "Save",
			'ActionName', T(771622886200, --[[XTemplate SkinDecalEditor ActionName]] "Save"),
			'ActionIcon', "CommonAssets/UI/Ged/save.tga",
			'ActionToolbar', "main",
			'ActionShortcut', "Ctrl-S",
			'OnAction', function (self, host, source, ...)
				host:Op("GedOpSaveAnimMetadata", "root")
			end,
		}),
		PlaceObj('XTemplateAction', {
			'ActionId', "AppearanceEditor",
			'ActionName', T(317310795730, --[[XTemplate SkinDecalEditor ActionName]] "Appearance Editor"),
			'ActionIcon', "CommonAssets/UI/Ged/character.tga",
			'ActionToolbar', "main",
			'OnAction', function (self, host, source, ...)
				host:Op("GedOpOpenAppearanceEditor", "root")
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'__context', function (parent, context) return "root" end,
			'__class', "GedPropPanel",
			'Id', "idEntity",
			'MinWidth', 300,
			'LayoutMethod', "HPanel",
			'Title', "Appearance",
			'EnableUndo', false,
			'EnableCollapseDefault', false,
			'EnableShowInternalNames', false,
			'EnableCollapseCategories', false,
		}),
		}),
})

