-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Shooting",
	id = "Env_CryoSmoke_Floor_Area",
	presim_time = 30000,
	PlaceObj('ParticleEmitter', {
		'label', "Cryo Smoke",
		'emit_detail_level', 100,
		'max_live_count', 40,
		'parts_per_sec', 600,
		'lifetime_min', 8000,
		'lifetime_max', 12000,
		'position', point(0, 0, 1000),
		'angle', range(0, 360),
		'texture', "Textures/Particles/mist.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'self_illum', 10,
		'far_softness', 20,
		'far_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 333, 333),
			point(667, 703, 703),
			point(1000, 1000, 1000),
		},
		'outlines', {
			{
				point(64, 0),
				point(64, 2016),
				point(2016, 2016),
				point(2016, 0),
			},
			{
				point(2048, 0),
				point(2048, 2016),
				point(4064, 2016),
				point(4064, 0),
			},
			{
				point(0, 4032),
				point(2016, 4032),
				point(2016, 2048),
				point(0, 2048),
			},
			{
				point(2048, 4032),
				point(4096, 4032),
				point(4096, 2048),
				point(2048, 2048),
			},
		},
		'texture_hash', 6609993512092536490,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'time_start', 2000,
		'probability', 50,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, -5, -5),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-60, 60),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'time_start', 2000,
		'probability', 50,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 8, 8),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-40, 40),
	}, nil, nil),
	PlaceObj('FaceDirection', nil, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 502, 502),
			point(319, 520, 520),
			point(751, 568, 568),
			point(1000, 707, 707),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(111, 44, 44),
			point(873, 66, 66),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 1,
		'outer_radius', 4000,
		'distribution', 55,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'range_min', 400,
		'range_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle_min', 17800,
		'spread_angle', 18000,
		'vel_min', 100,
		'vel_max', 140,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 10,
		'max_vel', 2000,
	}, nil, nil),
})

