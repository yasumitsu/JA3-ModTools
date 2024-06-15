-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "UI",
	id = "UI_Controller_Base",
	post_lighting = true,
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B", "C", "D" ),
		'start_color_min', RGBA(91, 184, 230, 255),
		'start_color_max', RGBA(91, 184, 230, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Circle Base",
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 10000,
		'lifetime_max', 1000,
		'size_min', 1400,
		'size_max', 1400,
		'geometry_building', "Decal",
		'shader', "Add",
		'texture', "Textures/Particles/Tube_Soft.tga",
		'self_illum', 200,
		'outlines', {
			{
				point(512, 3552),
				point(3576, 3552),
				point(3576, 504),
				point(512, 504),
			},
		},
		'texture_hash', -8352505809563007757,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Circle Base Glow",
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 10000,
		'lifetime_max', 1000,
		'size_min', 1400,
		'size_max', 1400,
		'geometry_building', "Decal",
		'shader', "Add",
		'texture', "Textures/Particles/Tube_Glow.tga",
		'self_illum', 200,
		'alpha', range(120, 120),
		'outlines', {
			{
				point(512, 3552),
				point(3576, 3552),
				point(3576, 504),
				point(512, 504),
			},
		},
		'texture_hash', 9128290293206983453,
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set(),
	}, nil, nil),
	PlaceObj('FaceDirection', nil, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Vertical Glow",
		'bins', set( "C" ),
		'emit_detail_level', 100,
		'max_live_count', 4,
		'parts_per_sec', 10000,
		'lifetime_max', 1000,
		'position', point(0, 0, -400),
		'size_min', 600,
		'size_max', 600,
		'shader', "Add",
		'texture', "Textures/Particles/Gradient_Regular.tga",
		'self_illum', 200,
		'far_softness', 60,
		'far_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 362, 362),
			point(667, 667, 667),
			point(1000, 1000, 1000),
		},
		'sort', false,
		'outlines', {
			{
				point(0, 2048),
				point(4096, 2048),
				point(4096, 160),
				point(0, 160),
			},
		},
		'texture_hash', 1021633660132350432,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResize', {
		'bins', set( "C" ),
		'start_size_min', 800,
		'start_size_max', 800,
		'mid_size', 800,
		'end_size', 800,
		'non_square_size', true,
		'start_size2_min', 4000,
		'start_size2_max', 4000,
		'mid_size2', 4000,
		'end_size2', 4000,
	}, nil, nil),
	PlaceObj('FaceAlongConstDir', {
		'bins', set( "C" ),
	}, nil, nil),
})

