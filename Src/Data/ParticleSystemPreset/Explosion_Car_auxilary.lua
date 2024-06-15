-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = -25000,
	game_time_animated = true,
	group = "Explosion_Car",
	id = "Explosion_Car_auxilary",
	PlaceObj('DisplacerLine', {
		'position1', point(2000, 0, 0),
		'position2', point(-2000, 0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 18000,
		'vel_min', 200,
		'vel_max', 300,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'position1', point(0, 500, 0),
		'position2', point(0, 1000, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(330, 808, 1000),
			point(747, 281, 700),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 135, 47, 255),
		'start_color_max', RGBA(255, 181, 54, 255),
		'mid_color', RGBA(255, 255, 255, 255),
		'end_color', RGBA(255, 255, 255, 255),
		'type', "InterpolateByCurve",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(275, 0, 0),
			point(707, 1064, 1064),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "A", "B", "H" ),
		'time_stop', 1000,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'lifetime_min', 1800,
		'lifetime_max', 2000,
		'position', point(0, 0, 1000),
		'angle', range(90, 90),
		'size_min', 2000,
		'texture', "Textures/Particles/Explosion_Car_01_8x8.tga",
		'normalmap', "Textures/Particles/Explosion_Car_01_8x8.norm.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'far_softness', 20,
		'outlines', {
			{
				point(160, 378),
				point(204, 554),
				point(392, 470),
				point(264, 278),
			},
			{
				point(744, 378),
				point(790, 550),
				point(1004, 464),
				point(824, 284),
			},
			{
				point(1324, 356),
				point(1376, 546),
				point(1568, 476),
				point(1440, 266),
			},
			{
				point(1900, 342),
				point(1964, 544),
				point(2158, 478),
				point(2028, 266),
			},
			{
				point(2476, 336),
				point(2554, 542),
				point(2748, 480),
				point(2612, 258),
			},
			{
				point(3068, 372),
				point(3138, 540),
				point(3342, 480),
				point(3168, 214),
			},
			{
				point(3638, 350),
				point(3724, 534),
				point(3934, 484),
				point(3772, 220),
			},
			{
				point(112, 924),
				point(218, 1118),
				point(426, 1072),
				point(274, 800),
			},
			{
				point(696, 930),
				point(808, 1118),
				point(1012, 1074),
				point(862, 780),
			},
			{
				point(1274, 922),
				point(1394, 1118),
				point(1598, 1072),
				point(1450, 772),
			},
			{
				point(1852, 912),
				point(1980, 1118),
				point(2188, 1074),
				point(2044, 772),
			},
			{
				point(2438, 920),
				point(2570, 1116),
				point(2774, 1074),
				point(2630, 752),
			},
			{
				point(3012, 908),
				point(3156, 1116),
				point(3362, 1072),
				point(3222, 754),
			},
			{
				point(3592, 908),
				point(3748, 1116),
				point(3950, 1074),
				point(3814, 740),
			},
			{
				point(68, 1482),
				point(236, 1700),
				point(446, 1662),
				point(312, 1326),
			},
			{
				point(654, 1486),
				point(830, 1710),
				point(1020, 1660),
				point(900, 1304),
			},
			{
				point(1238, 1488),
				point(1424, 1718),
				point(1608, 1654),
				point(1484, 1290),
			},
			{
				point(1836, 1504),
				point(2018, 1732),
				point(2198, 1644),
				point(2060, 1254),
			},
			{
				point(2430, 1514),
				point(2606, 1732),
				point(2782, 1646),
				point(2646, 1220),
			},
			{
				point(3008, 1508),
				point(3196, 1738),
				point(3376, 1636),
				point(3230, 1226),
			},
			{
				point(3598, 1506),
				point(3784, 1746),
				point(3968, 1630),
				point(3806, 1212),
			},
			{
				point(86, 2090),
				point(272, 2326),
				point(470, 2220),
				point(292, 1784),
			},
			{
				point(670, 2094),
				point(860, 2326),
				point(1068, 2214),
				point(862, 1780),
			},
			{
				point(1206, 2194),
				point(1554, 2308),
				point(1646, 2074),
				point(1398, 1840),
			},
			{
				point(1796, 2200),
				point(2154, 2308),
				point(2216, 2078),
				point(1984, 1818),
			},
			{
				point(2388, 2196),
				point(2756, 2316),
				point(2800, 2056),
				point(2566, 1814),
			},
			{
				point(2972, 2188),
				point(3354, 2324),
				point(3374, 2024),
				point(3150, 1810),
			},
			{
				point(3562, 2174),
				point(3942, 2334),
				point(3960, 2014),
				point(3734, 1800),
			},
			{
				point(70, 2712),
				point(386, 2920),
				point(514, 2658),
				point(222, 2374),
			},
			{
				point(662, 2694),
				point(952, 2922),
				point(1118, 2670),
				point(804, 2366),
			},
			{
				point(1244, 2696),
				point(1524, 2916),
				point(1738, 2720),
				point(1388, 2352),
			},
			{
				point(1830, 2698),
				point(2110, 2922),
				point(2326, 2706),
				point(1968, 2348),
			},
			{
				point(2414, 2702),
				point(2698, 2922),
				point(2916, 2706),
				point(2550, 2340),
			},
			{
				point(2984, 2740),
				point(3292, 2922),
				point(3498, 2686),
				point(3128, 2340),
			},
			{
				point(3516, 2742),
				point(3878, 2920),
				point(4092, 2690),
				point(3730, 2352),
			},
			{
				point(12, 3334),
				point(368, 3508),
				point(582, 3276),
				point(216, 2924),
			},
			{
				point(600, 3454),
				point(1036, 3494),
				point(1052, 3042),
				point(762, 2956),
			},
			{
				point(1180, 3472),
				point(1622, 3486),
				point(1640, 3024),
				point(1346, 2960),
			},
			{
				point(1768, 3250),
				point(2142, 3502),
				point(2330, 3268),
				point(2002, 2926),
			},
			{
				point(2344, 3260),
				point(2754, 3508),
				point(2864, 3192),
				point(2586, 2924),
			},
			{
				point(3016, 3442),
				point(3376, 3492),
				point(3412, 3000),
				point(3094, 2964),
			},
			{
				point(3598, 3440),
				point(3960, 3500),
				point(4004, 3010),
				point(3680, 2956),
			},
			{
				point(78, 4076),
				point(452, 4076),
				point(494, 3636),
				point(176, 3512),
			},
			{
				point(682, 4076),
				point(1032, 4076),
				point(1094, 3584),
				point(738, 3544),
			},
			{
				point(1266, 3992),
				point(1616, 4078),
				point(1672, 3568),
				point(1338, 3552),
			},
			{
				point(1848, 4058),
				point(2206, 4058),
				point(2258, 3560),
				point(1918, 3560),
			},
			{
				point(2442, 3956),
				point(2780, 4042),
				point(2844, 3674),
				point(2516, 3560),
			},
			{
				point(3022, 3990),
				point(3354, 4000),
				point(3430, 3716),
				point(3098, 3564),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', -3206315082270867766,
	}, nil, nil),
	PlaceObj('FaceAlongConstDir', {
		'bins', set( "B" ),
		'direction', point(0, 1000, 0),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "A", "H" ),
		'time_start', 100,
		'time_stop', 1000,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'lifetime_min', 1800,
		'lifetime_max', 2000,
		'position', point(0, 0, 1000),
		'size_min', 2000,
		'texture', "Textures/Particles/Explosion_Car_01_8x8.tga",
		'normalmap', "Textures/Particles/Explosion_Car_01_8x8.norm.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'far_softness', 20,
		'outlines', {
			{
				point(160, 378),
				point(204, 554),
				point(392, 470),
				point(264, 278),
			},
			{
				point(744, 378),
				point(790, 550),
				point(1004, 464),
				point(824, 284),
			},
			{
				point(1324, 356),
				point(1376, 546),
				point(1568, 476),
				point(1440, 266),
			},
			{
				point(1900, 342),
				point(1964, 544),
				point(2158, 478),
				point(2028, 266),
			},
			{
				point(2476, 336),
				point(2554, 542),
				point(2748, 480),
				point(2612, 258),
			},
			{
				point(3068, 372),
				point(3138, 540),
				point(3342, 480),
				point(3168, 214),
			},
			{
				point(3638, 350),
				point(3724, 534),
				point(3934, 484),
				point(3772, 220),
			},
			{
				point(112, 924),
				point(218, 1118),
				point(426, 1072),
				point(274, 800),
			},
			{
				point(696, 930),
				point(808, 1118),
				point(1012, 1074),
				point(862, 780),
			},
			{
				point(1274, 922),
				point(1394, 1118),
				point(1598, 1072),
				point(1450, 772),
			},
			{
				point(1852, 912),
				point(1980, 1118),
				point(2188, 1074),
				point(2044, 772),
			},
			{
				point(2438, 920),
				point(2570, 1116),
				point(2774, 1074),
				point(2630, 752),
			},
			{
				point(3012, 908),
				point(3156, 1116),
				point(3362, 1072),
				point(3222, 754),
			},
			{
				point(3592, 908),
				point(3748, 1116),
				point(3950, 1074),
				point(3814, 740),
			},
			{
				point(68, 1482),
				point(236, 1700),
				point(446, 1662),
				point(312, 1326),
			},
			{
				point(654, 1486),
				point(830, 1710),
				point(1020, 1660),
				point(900, 1304),
			},
			{
				point(1238, 1488),
				point(1424, 1718),
				point(1608, 1654),
				point(1484, 1290),
			},
			{
				point(1836, 1504),
				point(2018, 1732),
				point(2198, 1644),
				point(2060, 1254),
			},
			{
				point(2430, 1514),
				point(2606, 1732),
				point(2782, 1646),
				point(2646, 1220),
			},
			{
				point(3008, 1508),
				point(3196, 1738),
				point(3376, 1636),
				point(3230, 1226),
			},
			{
				point(3598, 1506),
				point(3784, 1746),
				point(3968, 1630),
				point(3806, 1212),
			},
			{
				point(86, 2090),
				point(272, 2326),
				point(470, 2220),
				point(292, 1784),
			},
			{
				point(670, 2094),
				point(860, 2326),
				point(1068, 2214),
				point(862, 1780),
			},
			{
				point(1206, 2194),
				point(1554, 2308),
				point(1646, 2074),
				point(1398, 1840),
			},
			{
				point(1796, 2200),
				point(2154, 2308),
				point(2216, 2078),
				point(1984, 1818),
			},
			{
				point(2388, 2196),
				point(2756, 2316),
				point(2800, 2056),
				point(2566, 1814),
			},
			{
				point(2972, 2188),
				point(3354, 2324),
				point(3374, 2024),
				point(3150, 1810),
			},
			{
				point(3562, 2174),
				point(3942, 2334),
				point(3960, 2014),
				point(3734, 1800),
			},
			{
				point(70, 2712),
				point(386, 2920),
				point(514, 2658),
				point(222, 2374),
			},
			{
				point(662, 2694),
				point(952, 2922),
				point(1118, 2670),
				point(804, 2366),
			},
			{
				point(1244, 2696),
				point(1524, 2916),
				point(1738, 2720),
				point(1388, 2352),
			},
			{
				point(1830, 2698),
				point(2110, 2922),
				point(2326, 2706),
				point(1968, 2348),
			},
			{
				point(2414, 2702),
				point(2698, 2922),
				point(2916, 2706),
				point(2550, 2340),
			},
			{
				point(2984, 2740),
				point(3292, 2922),
				point(3498, 2686),
				point(3128, 2340),
			},
			{
				point(3516, 2742),
				point(3878, 2920),
				point(4092, 2690),
				point(3730, 2352),
			},
			{
				point(12, 3334),
				point(368, 3508),
				point(582, 3276),
				point(216, 2924),
			},
			{
				point(600, 3454),
				point(1036, 3494),
				point(1052, 3042),
				point(762, 2956),
			},
			{
				point(1180, 3472),
				point(1622, 3486),
				point(1640, 3024),
				point(1346, 2960),
			},
			{
				point(1768, 3250),
				point(2142, 3502),
				point(2330, 3268),
				point(2002, 2926),
			},
			{
				point(2344, 3260),
				point(2754, 3508),
				point(2864, 3192),
				point(2586, 2924),
			},
			{
				point(3016, 3442),
				point(3376, 3492),
				point(3412, 3000),
				point(3094, 2964),
			},
			{
				point(3598, 3440),
				point(3960, 3500),
				point(4004, 3010),
				point(3680, 2956),
			},
			{
				point(78, 4076),
				point(452, 4076),
				point(494, 3636),
				point(176, 3512),
			},
			{
				point(682, 4076),
				point(1032, 4076),
				point(1094, 3584),
				point(738, 3544),
			},
			{
				point(1266, 3992),
				point(1616, 4078),
				point(1672, 3568),
				point(1338, 3552),
			},
			{
				point(1848, 4058),
				point(2206, 4058),
				point(2258, 3560),
				point(1918, 3560),
			},
			{
				point(2442, 3956),
				point(2780, 4042),
				point(2844, 3674),
				point(2516, 3560),
			},
			{
				point(3022, 3990),
				point(3354, 4000),
				point(3430, 3716),
				point(3098, 3564),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', -3206315082270867766,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "A", "C", "H" ),
		'time_stop', 1000,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'lifetime_min', 1800,
		'lifetime_max', 2000,
		'position', point(0, 0, 200),
		'angle', range(90, 90),
		'size_min', 2000,
		'texture', "Textures/Particles/Explosion_Car_01_8x8.tga",
		'normalmap', "Textures/Particles/Explosion_Car_01_8x8.norm.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'far_softness', 20,
		'outlines', {
			{
				point(160, 378),
				point(204, 554),
				point(392, 470),
				point(264, 278),
			},
			{
				point(744, 378),
				point(790, 550),
				point(1004, 464),
				point(824, 284),
			},
			{
				point(1324, 356),
				point(1376, 546),
				point(1568, 476),
				point(1440, 266),
			},
			{
				point(1900, 342),
				point(1964, 544),
				point(2158, 478),
				point(2028, 266),
			},
			{
				point(2476, 336),
				point(2554, 542),
				point(2748, 480),
				point(2612, 258),
			},
			{
				point(3068, 372),
				point(3138, 540),
				point(3342, 480),
				point(3168, 214),
			},
			{
				point(3638, 350),
				point(3724, 534),
				point(3934, 484),
				point(3772, 220),
			},
			{
				point(112, 924),
				point(218, 1118),
				point(426, 1072),
				point(274, 800),
			},
			{
				point(696, 930),
				point(808, 1118),
				point(1012, 1074),
				point(862, 780),
			},
			{
				point(1274, 922),
				point(1394, 1118),
				point(1598, 1072),
				point(1450, 772),
			},
			{
				point(1852, 912),
				point(1980, 1118),
				point(2188, 1074),
				point(2044, 772),
			},
			{
				point(2438, 920),
				point(2570, 1116),
				point(2774, 1074),
				point(2630, 752),
			},
			{
				point(3012, 908),
				point(3156, 1116),
				point(3362, 1072),
				point(3222, 754),
			},
			{
				point(3592, 908),
				point(3748, 1116),
				point(3950, 1074),
				point(3814, 740),
			},
			{
				point(68, 1482),
				point(236, 1700),
				point(446, 1662),
				point(312, 1326),
			},
			{
				point(654, 1486),
				point(830, 1710),
				point(1020, 1660),
				point(900, 1304),
			},
			{
				point(1238, 1488),
				point(1424, 1718),
				point(1608, 1654),
				point(1484, 1290),
			},
			{
				point(1836, 1504),
				point(2018, 1732),
				point(2198, 1644),
				point(2060, 1254),
			},
			{
				point(2430, 1514),
				point(2606, 1732),
				point(2782, 1646),
				point(2646, 1220),
			},
			{
				point(3008, 1508),
				point(3196, 1738),
				point(3376, 1636),
				point(3230, 1226),
			},
			{
				point(3598, 1506),
				point(3784, 1746),
				point(3968, 1630),
				point(3806, 1212),
			},
			{
				point(86, 2090),
				point(272, 2326),
				point(470, 2220),
				point(292, 1784),
			},
			{
				point(670, 2094),
				point(860, 2326),
				point(1068, 2214),
				point(862, 1780),
			},
			{
				point(1206, 2194),
				point(1554, 2308),
				point(1646, 2074),
				point(1398, 1840),
			},
			{
				point(1796, 2200),
				point(2154, 2308),
				point(2216, 2078),
				point(1984, 1818),
			},
			{
				point(2388, 2196),
				point(2756, 2316),
				point(2800, 2056),
				point(2566, 1814),
			},
			{
				point(2972, 2188),
				point(3354, 2324),
				point(3374, 2024),
				point(3150, 1810),
			},
			{
				point(3562, 2174),
				point(3942, 2334),
				point(3960, 2014),
				point(3734, 1800),
			},
			{
				point(70, 2712),
				point(386, 2920),
				point(514, 2658),
				point(222, 2374),
			},
			{
				point(662, 2694),
				point(952, 2922),
				point(1118, 2670),
				point(804, 2366),
			},
			{
				point(1244, 2696),
				point(1524, 2916),
				point(1738, 2720),
				point(1388, 2352),
			},
			{
				point(1830, 2698),
				point(2110, 2922),
				point(2326, 2706),
				point(1968, 2348),
			},
			{
				point(2414, 2702),
				point(2698, 2922),
				point(2916, 2706),
				point(2550, 2340),
			},
			{
				point(2984, 2740),
				point(3292, 2922),
				point(3498, 2686),
				point(3128, 2340),
			},
			{
				point(3516, 2742),
				point(3878, 2920),
				point(4092, 2690),
				point(3730, 2352),
			},
			{
				point(12, 3334),
				point(368, 3508),
				point(582, 3276),
				point(216, 2924),
			},
			{
				point(600, 3454),
				point(1036, 3494),
				point(1052, 3042),
				point(762, 2956),
			},
			{
				point(1180, 3472),
				point(1622, 3486),
				point(1640, 3024),
				point(1346, 2960),
			},
			{
				point(1768, 3250),
				point(2142, 3502),
				point(2330, 3268),
				point(2002, 2926),
			},
			{
				point(2344, 3260),
				point(2754, 3508),
				point(2864, 3192),
				point(2586, 2924),
			},
			{
				point(3016, 3442),
				point(3376, 3492),
				point(3412, 3000),
				point(3094, 2964),
			},
			{
				point(3598, 3440),
				point(3960, 3500),
				point(4004, 3010),
				point(3680, 2956),
			},
			{
				point(78, 4076),
				point(452, 4076),
				point(494, 3636),
				point(176, 3512),
			},
			{
				point(682, 4076),
				point(1032, 4076),
				point(1094, 3584),
				point(738, 3544),
			},
			{
				point(1266, 3992),
				point(1616, 4078),
				point(1672, 3568),
				point(1338, 3552),
			},
			{
				point(1848, 4058),
				point(2206, 4058),
				point(2258, 3560),
				point(1918, 3560),
			},
			{
				point(2442, 3956),
				point(2780, 4042),
				point(2844, 3674),
				point(2516, 3560),
			},
			{
				point(3022, 3990),
				point(3354, 4000),
				point(3430, 3716),
				point(3098, 3564),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', -3206315082270867766,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "H" ),
		'anim_type', "Cycle Once",
		'fps', 36,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(124, 522, 522),
			point(687, 847, 847),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "H" ),
		'probability', 50,
		'anim_type', "Cycle Once",
		'fps', 40,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(124, 522, 522),
			point(617, 818, 818),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "H" ),
		'probability', 50,
		'anim_type', "Cycle Once",
		'fps', 32,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(124, 522, 522),
			point(617, 818, 818),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(87, 382, 584),
			point(549, 562, 818),
			point(1000, 709, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'probability', 42,
		'max_size', 5000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(94, 421, 623),
			point(551, 576, 832),
			point(1000, 709, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "H" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 478, 478),
			point(114, 709, 1000),
			point(475, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "H" ),
		'probability', 50,
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 631, 631),
			point(56, 690, 990),
			point(475, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})

