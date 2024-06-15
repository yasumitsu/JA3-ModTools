-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = -15000,
	game_time_animated = true,
	group = "Weapon_Mortar",
	id = "Explosion_Mortar_Trail",
	particles_scale_with_object = true,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "trail_flame",
		'emit_detail_level', 100,
		'max_live_count', 30,
		'parts_per_sec', 3000,
		'angle', range(0, 360),
		'size_min', 3000,
		'size_max', 4000,
		'shader', "Add",
		'texture', "Textures/Particles/Explosion_02_7x7_emissive.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'softness', 50,
		'outlines', {
			{
				point(230, 294),
				point(268, 350),
				point(318, 316),
				point(282, 270),
			},
			{
				point(792, 304),
				point(850, 366),
				point(922, 316),
				point(872, 248),
			},
			{
				point(1366, 338),
				point(1474, 366),
				point(1518, 292),
				point(1432, 236),
			},
			{
				point(1954, 340),
				point(2066, 376),
				point(2114, 278),
				point(2000, 230),
			},
			{
				point(2534, 342),
				point(2654, 382),
				point(2706, 274),
				point(2584, 226),
			},
			{
				point(3104, 348),
				point(3242, 380),
				point(3286, 296),
				point(3188, 190),
			},
			{
				point(3680, 332),
				point(3800, 390),
				point(3880, 322),
				point(3792, 168),
			},
			{
				point(152, 930),
				point(326, 968),
				point(372, 872),
				point(268, 740),
			},
			{
				point(734, 912),
				point(912, 986),
				point(964, 860),
				point(852, 718),
			},
			{
				point(1318, 896),
				point(1498, 1006),
				point(1556, 850),
				point(1432, 700),
			},
			{
				point(1896, 892),
				point(2084, 1018),
				point(2148, 846),
				point(2020, 682),
			},
			{
				point(2476, 890),
				point(2664, 1026),
				point(2740, 848),
				point(2604, 660),
			},
			{
				point(3054, 886),
				point(3248, 1034),
				point(3330, 844),
				point(3192, 648),
			},
			{
				point(3634, 886),
				point(3824, 1038),
				point(3916, 862),
				point(3778, 634),
			},
			{
				point(122, 1470),
				point(334, 1652),
				point(404, 1348),
				point(226, 1282),
			},
			{
				point(706, 1476),
				point(916, 1652),
				point(988, 1366),
				point(810, 1276),
			},
			{
				point(1290, 1478),
				point(1502, 1654),
				point(1574, 1364),
				point(1394, 1272),
			},
			{
				point(1874, 1480),
				point(2088, 1656),
				point(2158, 1362),
				point(1976, 1270),
			},
			{
				point(2458, 1490),
				point(2686, 1638),
				point(2730, 1358),
				point(2560, 1268),
			},
			{
				point(3042, 1490),
				point(3270, 1636),
				point(3318, 1356),
				point(3144, 1266),
			},
			{
				point(3626, 1492),
				point(3854, 1636),
				point(3904, 1354),
				point(3730, 1264),
			},
			{
				point(106, 2072),
				point(340, 2218),
				point(396, 1938),
				point(220, 1850),
			},
			{
				point(666, 2056),
				point(922, 2216),
				point(978, 1978),
				point(816, 1870),
			},
			{
				point(1236, 2050),
				point(1500, 2208),
				point(1568, 1976),
				point(1408, 1874),
			},
			{
				point(1844, 2078),
				point(2082, 2182),
				point(2168, 1980),
				point(1956, 1850),
			},
			{
				point(2442, 2086),
				point(2680, 2180),
				point(2752, 1960),
				point(2518, 1852),
			},
			{
				point(3090, 2110),
				point(3290, 2172),
				point(3330, 1926),
				point(3038, 1866),
			},
			{
				point(3676, 2108),
				point(3888, 2180),
				point(3912, 1900),
				point(3626, 1900),
			},
			{
				point(118, 2506),
				point(168, 2694),
				point(386, 2770),
				point(398, 2466),
			},
			{
				point(700, 2504),
				point(754, 2694),
				point(982, 2774),
				point(982, 2462),
			},
			{
				point(1262, 2556),
				point(1440, 2804),
				point(1592, 2652),
				point(1506, 2438),
			},
			{
				point(1840, 2556),
				point(2026, 2794),
				point(2186, 2656),
				point(2092, 2436),
			},
			{
				point(2432, 2548),
				point(2600, 2794),
				point(2780, 2662),
				point(2680, 2432),
			},
			{
				point(3016, 2540),
				point(3174, 2794),
				point(3378, 2666),
				point(3266, 2436),
			},
			{
				point(3606, 2510),
				point(3718, 2768),
				point(3952, 2722),
				point(3894, 2448),
			},
			{
				point(90, 3092),
				point(220, 3384),
				point(466, 3260),
				point(356, 3036),
			},
			{
				point(672, 3088),
				point(782, 3348),
				point(1022, 3330),
				point(988, 3028),
			},
			{
				point(1254, 3084),
				point(1360, 3348),
				point(1592, 3332),
				point(1592, 3026),
			},
			{
				point(1840, 3084),
				point(1932, 3332),
				point(2170, 3350),
				point(2192, 3022),
			},
			{
				point(2424, 3076),
				point(2508, 3332),
				point(2762, 3352),
				point(2778, 3022),
			},
			{
				point(3094, 3344),
				point(3358, 3344),
				point(3334, 3056),
				point(3004, 3056),
			},
			{
				point(3664, 3344),
				point(3948, 3344),
				point(3918, 3054),
				point(3596, 3050),
			},
			{
				point(94, 3644),
				point(140, 3928),
				point(440, 3928),
				point(412, 3636),
			},
			{
				point(704, 3646),
				point(704, 3888),
				point(1034, 3964),
				point(988, 3632),
			},
			{
				point(1294, 3644),
				point(1274, 3902),
				point(1632, 3944),
				point(1536, 3638),
			},
			{
				point(1892, 3644),
				point(1852, 3864),
				point(2172, 3970),
				point(2120, 3636),
			},
			{
				point(2466, 3720),
				point(2430, 3868),
				point(2724, 3948),
				point(2688, 3666),
			},
			{
				point(3064, 3878),
				point(3326, 3950),
				point(3258, 3790),
				point(3020, 3790),
			},
			{
				point(3794, 3912),
				point(3858, 3904),
				point(3848, 3800),
				point(3618, 3792),
			},
		},
		'texture_hash', -1556731328998256955,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(97, 1000, 1000),
			point(370, 719, 719),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'mid_color', RGBA(255, 131, 63, 255),
		'type', "Interpolate through mid",
		'middle_pos', 356,
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
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 74, 74),
			point(277, 142, 394),
			point(696, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'anim_type', "Cycle Once",
		'fps', 36,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(318, 316, 316),
			point(753, 753, 753),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'world_space', true,
		'spread_angle', 100,
		'vel_min', 200,
		'vel_max', 500,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 137, 137),
			point(208, 143, 143),
			point(730, 158, 158),
			point(1000, 384, 384),
		},
		'non_square_size', true,
		'max_size_2', 6000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(243, 202, 202),
			point(657, 153, 153),
			point(1000, 148, 148),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke",
		'bins', set( "E" ),
		'time_start', 2000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 400,
		'parts_per_sec', 0,
		'parts_per_meter', 1000,
		'lifetime_min', 6000,
		'lifetime_max', 12000,
		'angle', range(0, 45),
		'size_min', 2000,
		'size_max', 3000,
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'flow_speed', 103,
		'flow_scale', 55,
		'softness', 200,
		'drawing_order', 2,
		'outlines', {
			{
				point(2, 2046),
				point(2046, 2046),
				point(2046, 2),
				point(2, 2),
			},
			{
				point(2050, 2046),
				point(4094, 2046),
				point(4094, 2),
				point(2050, 2),
			},
			{
				point(2, 4094),
				point(2046, 4094),
				point(2046, 2050),
				point(2, 2050),
			},
			{
				point(2050, 4094),
				point(4094, 4094),
				point(4094, 2050),
				point(2050, 2050),
			},
		},
		'texture_hash', -6207396961789587687,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "E" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "E" ),
		'start_color_min', RGBA(255, 125, 0, 255),
		'start_color_max', RGBA(90, 81, 79, 255),
		'mid_color', RGBA(90, 81, 79, 255),
		'mid_intensity', 2752,
		'end_color', RGBA(90, 81, 79, 255),
		'type', "InterpolateByCurve",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(26, 0, 0),
			point(64, 1044, 1044),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(39, 163, 837),
			point(155, 128, 266),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "E" ),
		'spread_angle', 100,
		'vel_min', 400,
		'vel_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "E" ),
		'max_size', 5000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 44, 44),
			point(11, 143, 143),
			point(239, 438, 438),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "E" ),
		'start_vel', 300,
		'acceleration', 300,
		'max_vel', 500,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "E" ),
		'world_space', true,
		'multiplier', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "E" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 992, 992),
			point(323, 992, 992),
			point(672, 992, 992),
			point(1000, 995, 995),
		},
	}, nil, nil),
})

