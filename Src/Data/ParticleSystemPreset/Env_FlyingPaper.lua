-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_FlyingPaper",
	PlaceObj('ParticleEmitter', {
		'label', "Paper",
		'time_stop', 2000,
		'time_period', 4000,
		'randomize_period', 80,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 50,
		'parts_per_meter', 400,
		'lifetime_min', 2000,
		'lifetime_max', 6000,
		'size_min', 500,
		'size_max', 700,
		'texture', "Textures/Particles/Paper2x2.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'softness', 20,
		'outlines', {
			{
				point(80, 1280),
				point(1568, 1664),
				point(1568, 608),
				point(640, 160),
			},
			{
				point(2544, 464),
				point(2816, 1456),
				point(3648, 1344),
				point(3296, 144),
			},
			{
				point(368, 3360),
				point(1184, 3792),
				point(1712, 2784),
				point(528, 2448),
			},
			{
				point(2080, 2640),
				point(2080, 3936),
				point(3968, 3936),
				point(3968, 2064),
			},
		},
		'texture_hash', 3874122468804680772,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 300,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(315, 1000, 1000),
			point(660, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(-1000, 0, 1000),
		'spread_angle_min', 3000,
		'spread_angle', 8000,
		'vel_min', 400,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'probability', 20,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 936, 936),
			point(320, 950, 950),
			point(660, 987, 987),
			point(1000, 1056, 1056),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorTornado', {
		'direction', point(-1000, 0, 0),
		'start_rpm', 1000,
		'mid_rpm', 1000,
		'end_rpm', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set(),
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('DisplacerSphere', {
		'inner_radius', 400,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'time_stop', 200,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(229, 1000, 1000),
			point(928, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(116, 106, 96, 255),
		'type', "Start color only",
	}, nil, nil),
})

