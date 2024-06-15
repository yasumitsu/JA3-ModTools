-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Impact",
	id = "Impact_Metal",
	speed_up = 1200,
	stable_cam_distance = true,
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B", "C" ),
		'start_color_min', RGBA(255, 131, 63, 255),
		'start_color_max', RGBA(255, 131, 63, 255),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Spkars_Flying",
		'time_stop', 100,
		'randomize_period', 50,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 50,
		'parts_per_sec', 50000,
		'lifetime_min', 200,
		'lifetime_max', 800,
		'texture', "Textures/Particles/white.tga",
		'self_illum', 80,
		'outlines', {
			{
				point(248, 3832),
				point(3832, 3832),
				point(3832, 248),
				point(248, 248),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "A", "B" ),
		'inner_radius', 10,
		'outer_radius', 50,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "A", "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 335, 335),
			point(186, 637, 637),
			point(718, 542, 542),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "A", "B" ),
		'max_size', 350,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 17, 17),
			point(229, 53, 53),
			point(737, 47, 47),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 131, 131),
			point(316, 205, 532),
			point(718, 105, 226),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "A", "B" ),
		'probability', 50,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 988, 1059),
			point(310, 979, 1014),
			point(639, 954, 976),
			point(1000, 922, 922),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(1000, 0, 500),
		'spread_angle', 12000,
		'vel_min', 100,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Spkars_Clump",
		'bins', set( "B" ),
		'time_stop', 100,
		'randomize_period', 50,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 50,
		'parts_per_sec', 50000,
		'lifetime_min', 200,
		'lifetime_max', 800,
		'texture', "Textures/Particles/white.tga",
		'self_illum', 80,
		'outlines', {
			{
				point(248, 3832),
				point(3832, 3832),
				point(3832, 248),
				point(248, 248),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B", "G" ),
		'direction', point(1000, 0, 0),
		'spread_angle', 1000,
		'vel_min', 100,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Impact_Spot Non Decal",
		'bins', set( "C" ),
		'time_stop', 100,
		'randomize_period', 200,
		'emit_detail_level', 60,
		'max_live_count', 3,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
		'size_min', 100,
		'size_max', 100,
		'decal_depth', 120,
		'texture', "Textures/Particles/white.tga",
		'self_illum', 50,
		'receive_shadow', true,
		'alpha', range(195, 255),
		'drawing_order', -2,
		'outlines', {
			{
				point(248, 3832),
				point(3832, 3832),
				point(3832, 248),
				point(248, 248),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Impact_Spot",
		'bins', set( "C" ),
		'time_stop', 100,
		'randomize_period', 200,
		'emit_detail_level', 60,
		'enabled', false,
		'max_live_count', 3,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
		'size_min', 100,
		'size_max', 100,
		'geometry_building', "Decal",
		'decal_depth', 100,
		'texture', "Textures/Particles/white.tga",
		'self_illum', 50,
		'receive_shadow', true,
		'alpha', range(195, 255),
		'drawing_order', -2,
		'outlines', {
			{
				point(248, 3832),
				point(3832, 3832),
				point(3832, 248),
				point(248, 248),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "C" ),
		'direction', point(1000, 0, 0),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set(),
		'inner_radius', 10,
		'outer_radius', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 989, 989),
			point(333, 1000, 1000),
			point(767, 868, 868),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke",
		'bins', set( "G" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 10000,
		'lifetime_min', 2000,
		'lifetime_max', 4000,
		'position', point(0, 0, 100),
		'angle', range(0, 45),
		'size_max', 3000,
		'shader', "Add Light",
		'texture', "Textures/Particles/Clouds_1024.tga",
		'normal_as_flow_map', true,
		'normalmap', "Textures/Particles/Clouds_1024.norm.tga",
		'frames', point(4, 4),
		'light_softness', 1000,
		'receive_shadow', true,
		'flow_speed', 103,
		'flow_scale', 55,
		'softness', 20,
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
		'bins', set( "G" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "G" ),
		'max_size', 2000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 183, 183),
			point(354, 263, 263),
			point(732, 343, 343),
			point(1000, 371, 371),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "G" ),
		'start_color_min', RGBA(195, 199, 203, 255),
		'start_color_max', RGBA(151, 163, 175, 255),
		'mid_color', RGBA(75, 80, 87, 255),
		'mid_intensity', 2752,
		'end_color', RGBA(176, 211, 224, 255),
		'type', "One of four",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 667, 667),
			point(667, 1333, 1333),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "G" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(220, 51, 121),
			point(755, 23, 79),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "G" ),
		'multiplier', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "G" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 932, 932),
			point(306, 919, 919),
			point(667, 928, 928),
			point(1000, 916, 916),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "G" ),
		'probability', 50,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 13, 13),
			point(325, 17, 17),
			point(679, 26, 26),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-200, 200),
	}, nil, nil),
})

