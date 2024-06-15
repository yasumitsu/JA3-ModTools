-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	__is_kind_of = "XDialog",
	group = "Common",
	id = "CollisionsLegend",
	recreate_after_save = true,
	save_in = "Ged",
	PlaceObj('XTemplateWindow', {
		'__class', "XDialog",
		'Id', "idCollisionsLegend",
		'Padding', box(0, 50, 0, 40),
		'Dock', "box",
		'HAlign', "right",
		'VAlign', "bottom",
		'MinWidth', 220,
		'MinHeight', 130,
		'LayoutMethod', "HList",
		'UseClipBox', false,
		'HandleMouse', true,
	}, {
		PlaceObj('XTemplateWindow', {
			'LayoutMethod', "VList",
			'UniformRowHeight', true,
			'Background', RGBA(0, 0, 0, 255),
		}, {
			PlaceObj('XTemplateWindow', {
				'Id', "idPassability",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(255, 0, 0, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "Passability",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idVisibility",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(0, 255, 0, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "Visibility",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idObstruction",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(0, 0, 255, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "Obstruction",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idPassabilityVisibility",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(255, 255, 0, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "Passability + Visibility",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idPassabilityObstruction",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(255, 0, 255, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "Passability + Obstruction",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idAllON",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(192, 192, 192, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'Text', "All ON",
					'TextVAlign', "center",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'Id', "idAllOFF",
				'Margins', box(5, 5, 5, 5),
				'HAlign', "left",
				'VAlign', "center",
				'MinWidth', 200,
				'MinHeight', 30,
				'MaxWidth', 200,
				'MaxHeight', 30,
				'Background', RGBA(32, 32, 32, 255),
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Margins', box(5, 0, 5, 0),
					'HAlign', "left",
					'VAlign', "center",
					'MinWidth', 50,
					'MaxHeight', 30,
					'TextStyle', "GedDefaultDarkMode",
					'Text', "All OFF",
					'TextVAlign', "center",
				}),
				}),
			}),
		}),
})

