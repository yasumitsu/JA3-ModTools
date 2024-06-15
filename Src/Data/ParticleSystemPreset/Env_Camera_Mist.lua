-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_Camera_Mist",
	presim_time = 5000,
	PlaceObj('ParticleEmitter', {
		'label', "Mist",
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2000,
		'lifetime_min', 6000,
		'lifetime_max', 12000,
		'size_min', 6000,
		'size_max', 6000,
		'texture', "Textures/Particles/Smoke_Cigarette_Thick.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'softness', 100,
		'outlines', {
			{
				point(8, 2040),
				point(1992, 2040),
				point(2040, 32),
				point(8, 32),
			},
			{
				point(2056, 120),
				point(2056, 2040),
				point(4072, 2040),
				point(3904, 32),
			},
			{
				point(48, 4032),
				point(1960, 4032),
				point(1928, 2056),
				point(48, 2056),
			},
			{
				point(2136, 4032),
				point(3912, 4032),
				point(4064, 2056),
				point(2136, 2056),
			},
		},
		'texture_hash', -4799164724382020498,
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set(),
		'inner_radius', 8000,
		'outer_radius', 16000,
	}, nil, nil),
	PlaceObj('DisplacerSphere', {
		'inner_radius', 8000,
		'outer_radius', 12000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 36000,
		'vel_min', 200,
		'vel_max', 600,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(288, 190, 190),
			point(652, 100, 100),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 674, 674),
			point(323, 738, 738),
			point(714, 873, 873),
			point(1000, 1000, 1000),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 326, 326),
			point(344, 661, 661),
			point(700, 932, 932),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 2, 2),
			point(356, 5, 5),
			point(676, 5, 5),
			point(1000, 5, 5),
		},
		'rpm_curve_range', range(-5, 5),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(250, 251, 246, 255),
		'start_color_max', RGBA(227, 229, 205, 255),
		'mid_color', RGBA(227, 229, 205, 255),
		'end_color', RGBA(127, 134, 130, 255),
	}, nil, nil),
})
