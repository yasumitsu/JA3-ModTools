-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Steps",
	id = "StepDust_Walk",
	presim_time = 200,
	PlaceObj('ParticleEmitter', {
		'label', "dust",
		'time_stop', 1000,
		'world_space', true,
		'emit_detail_level', 100,
		'emit_fade', range(0, 500),
		'max_live_count', 2,
		'parts_per_sec', 300,
		'lifetime_min', 1800,
		'lifetime_max', 2600,
		'angle', range(0, 360),
		'size_min', 100,
		'size_max', 100,
		'texture', "Textures/Particles/clouds.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'receive_shadow', true,
		'softness', 100,
		'far_softness', 120,
		'near_softness', 100,
		'outlines', {
			{
				point(168, 1928),
				point(1800, 1928),
				point(2032, 264),
				point(152, 8),
			},
			{
				point(2064, 1992),
				point(4048, 1992),
				point(4008, 352),
				point(2216, 96),
			},
			{
				point(8, 4040),
				point(2032, 4040),
				point(2032, 2056),
				point(96, 2056),
			},
			{
				point(2160, 4048),
				point(4088, 4048),
				point(4088, 2128),
				point(2176, 2088),
			},
		},
		'texture_hash', -5054667705513709923,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(113, 92, 74, 255),
		'start_intensity_min', 1800,
		'start_color_max', RGBA(190, 169, 152, 255),
		'end_color', RGBA(188, 164, 141, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(328, 4, 4),
			point(717, 4, 4),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-10, 10),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 86, 86),
			point(152, 448, 586),
			point(705, 55, 103),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 172, 300),
			point(220, 244, 416),
			point(671, 377, 579),
			point(1000, 419, 655),
		},
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'range_min', 100,
		'range_max', 100,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 8000,
		'vel_min', 0,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'world_space', true,
		'direction', point(1000, 0, -1000),
		'acceleration', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 680, 757),
			point(337, 671, 751),
			point(679, 662, 739),
			point(1000, 674, 739),
		},
	}, nil, nil),
})
