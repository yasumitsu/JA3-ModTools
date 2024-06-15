-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Steps",
	id = "StepDust_Prone",
	PlaceObj('ParticleEmitter', {
		'label', "dust",
		'time_stop', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'emit_fade', range(0, 500),
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 1600,
		'lifetime_max', 2600,
		'angle', range(0, 360),
		'size_min', 100,
		'size_max', 100,
		'texture', "Textures/Particles/clouds.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
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
		'start_color_min', RGBA(163, 128, 92, 255),
		'start_intensity_min', 1800,
		'start_color_max', RGBA(228, 185, 135, 255),
		'end_color', RGBA(228, 185, 135, 255),
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
			point(125, 192, 566),
			point(624, 132, 350),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 3200,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 232, 232),
			point(239, 315, 404),
			point(694, 438, 660),
			point(1000, 493, 828),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 1,
		'outer_radius', 50,
		'secondary_radius', 200,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'range_min', 200,
		'range_max', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(-1000, 0, 200),
		'spread_angle', 8000,
		'vel_min', 0,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 689, 751),
			point(317, 683, 736),
			point(678, 677, 733),
			point(1000, 686, 739),
		},
	}, nil, nil),
})

