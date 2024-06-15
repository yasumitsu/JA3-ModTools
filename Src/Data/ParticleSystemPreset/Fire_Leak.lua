-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Environment_dlc",
	id = "Fire_Leak",
	ignore_game_object_age = true,
	particles_scale_with_object = true,
	presim_time = 2000,
	rand_start_time = 1000,
	stable_cam_distance = true,
	PlaceObj('DisplacerCircle', {
		'bins', set( "A", "B", "C", "D", "E", "F", "G", "H" ),
		'position', point(700, 0, 0),
		'inner_radius', 1,
		'outer_radius', 1,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire_Stream",
		'world_space', true,
		'emit_detail_level', 100,
		'parts_per_sec', 20000,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'size_min', 20,
		'size_max', 50,
		'shader', "Add",
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'frames', point(2, 2),
		'self_illum', 100,
		'light_softness', 191,
		'mat_metallic', 12,
		'softness', 100,
		'view_dependent_opacity', 100,
		'alpha', range(75, 205),
		'outlines', {
			{
				point(24, 1956),
				point(2044, 1956),
				point(2044, 152),
				point(24, 12),
			},
			{
				point(2052, 2044),
				point(4060, 2044),
				point(3888, 56),
				point(2052, 56),
			},
			{
				point(76, 3700),
				point(1996, 4084),
				point(1936, 2156),
				point(380, 2076),
			},
			{
				point(2104, 4048),
				point(4092, 4048),
				point(4092, 2052),
				point(2544, 2052),
			},
		},
		'texture_hash', -5332959593331549680,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B", "F" ),
		'start_color_min', RGBA(255, 160, 11, 255),
		'start_color_max', RGBA(255, 229, 129, 255),
		'mid_color', RGBA(195, 116, 38, 255),
		'end_color', RGBA(205, 128, 20, 255),
		'type', "Interpolate through mid",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(1000, 0, 0),
		'spread_angle', 2000,
		'vel_min', 3000,
		'vel_max', 5000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'world_space', true,
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'position', point(-450, 0, -50),
		'inner_radius', 1,
		'outer_radius', 1,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(156, 130, 596),
			point(777, 42, 42),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 2500,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 29, 63),
			point(320, 49, 157),
			point(651, 174, 454),
			point(1000, 784, 1000),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 393, 471),
			point(261, 174, 328),
			point(657, 297, 515),
			point(1000, 342, 689),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B", "F" ),
		'world_space', true,
		'start_vel', 100,
		'acceleration', 1000,
		'max_vel', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B", "F" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 953, 953),
			point(71, 974, 974),
			point(679, 981, 981),
			point(1000, 950, 950),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "B" ),
		'time_start', 500,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'position', point(0, 0, 500),
		'shader', "Add",
		'texture', "Textures/Particles/Clouds_1024.tga",
		'frames', point(4, 4),
		'self_illum', 25,
		'softness', 100,
		'outlines', {
			{
				point(144, 768),
				point(620, 1020),
				point(1020, 288),
				point(284, 12),
			},
			{
				point(1072, 324),
				point(1072, 792),
				point(2008, 964),
				point(1844, 68),
			},
			{
				point(2064, 800),
				point(2912, 944),
				point(2932, 328),
				point(2256, 24),
			},
			{
				point(3300, 936),
				point(4060, 936),
				point(3848, 124),
				point(3088, 124),
			},
			{
				point(88, 1232),
				point(180, 1904),
				point(824, 2032),
				point(824, 1164),
			},
			{
				point(1072, 1480),
				point(1680, 2008),
				point(1900, 1468),
				point(1596, 1192),
			},
			{
				point(2156, 1284),
				point(2156, 2044),
				point(2980, 2044),
				point(2796, 1240),
			},
			{
				point(3140, 1872),
				point(3852, 2028),
				point(3896, 1272),
				point(3140, 1180),
			},
			{
				point(196, 3064),
				point(908, 2828),
				point(972, 2264),
				point(80, 2100),
			},
			{
				point(1228, 2172),
				point(1156, 3044),
				point(1940, 3008),
				point(1940, 2056),
			},
			{
				point(2076, 2180),
				point(2076, 3004),
				point(2948, 3004),
				point(2948, 2180),
			},
			{
				point(3220, 2896),
				point(3972, 3032),
				point(3768, 2228),
				point(3100, 2204),
			},
			{
				point(116, 4004),
				point(884, 3908),
				point(920, 3208),
				point(96, 3208),
			},
			{
				point(1036, 3688),
				point(1960, 3992),
				point(1888, 3216),
				point(1432, 3136),
			},
			{
				point(2068, 3104),
				point(2068, 3908),
				point(3068, 3972),
				point(3068, 3076),
			},
			{
				point(3132, 3936),
				point(4052, 3936),
				point(4052, 3148),
				point(3132, 3148),
			},
		},
		'texture_hash', -3185377314160643337,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 100, 100),
			point(225, 405, 405),
			point(655, 605, 605),
			point(1000, 821, 821),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 268, 268),
			point(184, 589, 589),
			point(644, 847, 847),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "F" ),
		'time_start', 500,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'position', point(0, 0, 500),
		'shader', "Add",
		'texture', "Textures/Particles/Clouds_1024.tga",
		'frames', point(4, 4),
		'self_illum', 25,
		'softness', 100,
		'view_dependent_opacity', 100,
		'outlines', {
			{
				point(144, 768),
				point(620, 1020),
				point(1020, 288),
				point(284, 12),
			},
			{
				point(1072, 324),
				point(1072, 792),
				point(2008, 964),
				point(1844, 68),
			},
			{
				point(2064, 800),
				point(2912, 944),
				point(2932, 328),
				point(2256, 24),
			},
			{
				point(3300, 936),
				point(4060, 936),
				point(3848, 124),
				point(3088, 124),
			},
			{
				point(88, 1232),
				point(180, 1904),
				point(824, 2032),
				point(824, 1164),
			},
			{
				point(1072, 1480),
				point(1680, 2008),
				point(1900, 1468),
				point(1596, 1192),
			},
			{
				point(2156, 1284),
				point(2156, 2044),
				point(2980, 2044),
				point(2796, 1240),
			},
			{
				point(3140, 1872),
				point(3852, 2028),
				point(3896, 1272),
				point(3140, 1180),
			},
			{
				point(196, 3064),
				point(908, 2828),
				point(972, 2264),
				point(80, 2100),
			},
			{
				point(1228, 2172),
				point(1156, 3044),
				point(1940, 3008),
				point(1940, 2056),
			},
			{
				point(2076, 2180),
				point(2076, 3004),
				point(2948, 3004),
				point(2948, 2180),
			},
			{
				point(3220, 2896),
				point(3972, 3032),
				point(3768, 2228),
				point(3100, 2204),
			},
			{
				point(116, 4004),
				point(884, 3908),
				point(920, 3208),
				point(96, 3208),
			},
			{
				point(1036, 3688),
				point(1960, 3992),
				point(1888, 3216),
				point(1432, 3136),
			},
			{
				point(2068, 3104),
				point(2068, 3908),
				point(3068, 3972),
				point(3068, 3076),
			},
			{
				point(3132, 3936),
				point(4052, 3936),
				point(4052, 3148),
				point(3132, 3148),
			},
		},
		'texture_hash', -3185377314160643337,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "B", "F", "H" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B", "F" ),
		'direction', point(1000, 0, 500),
		'vel_min', 2500,
		'vel_max', 4400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "F" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 100, 100),
			point(225, 405, 405),
			point(655, 605, 605),
			point(1000, 821, 821),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 268, 268),
			point(184, 589, 589),
			point(644, 847, 847),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "F" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B", "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(140, 32, 32),
			point(396, 174, 758),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "B", "F", "H" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(341, 16, 16),
			point(654, 148, 148),
			point(1000, 360, 360),
		},
		'rpm_curve_range', range(-120, 360),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "B", "F" ),
		'position', point(1250, 0, -200),
		'inner_radius', 100,
		'outer_radius', 500,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Heat_Haze",
		'bins', set( "H" ),
		'emit_detail_level', 100,
		'parts_per_sec', 4000,
		'lifetime_max', 2000,
		'size_min', 2000,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'softness', 50,
		'distortion_scale', -10,
		'distortion_scale_max', 10,
		'drawing_order', 5,
		'outlines', {
			{
				point(24, 1956),
				point(2044, 1956),
				point(2044, 152),
				point(24, 12),
			},
			{
				point(2052, 2044),
				point(4060, 2044),
				point(3888, 56),
				point(2052, 56),
			},
			{
				point(76, 3700),
				point(1996, 4084),
				point(1936, 2156),
				point(380, 2076),
			},
			{
				point(2104, 4048),
				point(4092, 4048),
				point(4092, 2052),
				point(2544, 2052),
			},
		},
		'texture_hash', -5332959593331549680,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "H" ),
		'position1', point(500, 0, 0),
		'position2', point(5000, 0, 0),
		'spread', "Cycle",
		'speed', 20000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 237, 237),
			point(240, 568, 568),
			point(649, 874, 874),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(225, 489, 995),
			point(671, 189, 521),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "H" ),
		'world_space', true,
	}, nil, nil),
})

