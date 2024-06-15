-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Explosion_CommonFX",
	id = "Explosion_Impact_Grass",
	presim_time = 200,
	simul_fps = 50,
	PlaceObj('ParticleEmitter', {
		'label', "Grass",
		'time_stop', 200,
		'emit_detail_level', 40,
		'max_live_count', 26,
		'parts_per_sec', 10000,
		'lifetime_min', 2000,
		'lifetime_max', 4000,
		'size_min', 500,
		'size_max', 700,
		'texture', "Textures/Particles/Grass_01.tga",
		'normalmap', "Textures/Particles/Grass_01.norm.tga",
		'frames', point(2, 2),
		'softness', 20,
		'outlines', {
			{
				point(704, 1152),
				point(1792, 2016),
				point(992, 736),
				point(32, 32),
			},
			{
				point(2944, 608),
				point(2432, 1568),
				point(3360, 1728),
				point(3616, 32),
			},
			{
				point(320, 3328),
				point(32, 3904),
				point(1696, 2560),
				point(1984, 2080),
			},
			{
				point(2784, 3904),
				point(3136, 3904),
				point(3136, 2176),
				point(2912, 2080),
			},
		},
		'texture_hash', 4104026586008096414,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 406, 406),
			point(130, 817, 817),
			point(889, 800, 800),
			point(1000, 263, 263),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'time_start', 200,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 66, 66),
			point(291, 213, 213),
			point(805, 208, 208),
			point(1000, 100, 100),
		},
		'rpm_curve_range', range(-400, 400),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(75, 111, 46, 255),
		'start_intensity_min', 1600,
		'start_color_max', RGBA(63, 88, 42, 255),
		'start_intensity_max', 1600,
		'type', "Start color range",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(1000, 0, 200),
		'spread_angle_min', 2000,
		'spread_angle', 9000,
		'vel_min', 100,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 1200, 1200),
			point(88, 937, 937),
			point(670, 933, 933),
			point(1000, 930, 930),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 1200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'probability', 60,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 857, 857),
			point(44, 1000, 1000),
			point(928, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('Oscillate', {
		'time_start', 200,
		'x_strength', range(20, 20),
		'y_strength', range(20, 20),
		'z_strength', range(20, 20),
	}, nil, nil),
})

