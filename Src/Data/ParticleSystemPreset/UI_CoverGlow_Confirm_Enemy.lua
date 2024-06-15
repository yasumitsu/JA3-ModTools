-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "UI",
	id = "UI_CoverGlow_Confirm_Enemy",
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 100000,
		'lifetime_min', 300,
		'lifetime_max', 300,
		'angle', range(180, 180),
		'size_min', 1200,
		'size_max', 1200,
		'shader', "Add",
		'texture', "Textures/Particles/Gradient_Round.tga",
		'far_softness', 10,
		'alpha', range(0, 255),
		'outlines', {
			{
				point(32, 4064),
				point(4064, 4064),
				point(4064, 32),
				point(32, 32),
			},
		},
		'texture_hash', -367892672086818178,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 87, 103, 255),
		'start_color_max', RGBA(255, 87, 103, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(170, 1000, 1000),
			point(505, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'direction', point(0, 1000, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 223, 223),
			point(122, 921, 921),
			point(683, 974, 974),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'max_size_2', 6000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(69, 847, 847),
			point(606, 934, 934),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
})

