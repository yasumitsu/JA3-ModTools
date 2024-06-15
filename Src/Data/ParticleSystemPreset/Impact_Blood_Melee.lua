-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Impact",
	id = "Impact_Blood_Melee",
	particles_scale_with_object = true,
	speed_up = 1200,
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "C", "D", "G" ),
		'start_color_min', RGBA(175, 17, 17, 255),
		'type', "Start color only",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B", "D", "E" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Spray_Front",
		'bins', set( "D" ),
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 200000,
		'lifetime_min', 800,
		'lifetime_max', 1200,
		'size_min', 400,
		'size_max', 800,
		'texture', "Textures/Particles/BloodSplashesAtmos_2x2.tga",
		'normalmap', "Textures/Particles/BloodSplashes_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'mat_roughness', 40,
		'mat_metallic', 60,
		'alpha', range(155, 255),
		'no_depth_test', true,
		'drawing_order', 1,
		'outlines', {
			{
				point(456, 1408),
				point(1496, 1888),
				point(1552, 624),
				point(552, 8),
			},
			{
				point(2320, 296),
				point(2576, 1928),
				point(3488, 1888),
				point(3648, 160),
			},
			{
				point(152, 2176),
				point(152, 3768),
				point(1592, 3768),
				point(1728, 2120),
			},
			{
				point(2432, 2984),
				point(2952, 3992),
				point(3792, 3432),
				point(3104, 2168),
			},
		},
		'texture_hash', -7050120831119995156,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "D" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 734, 734),
			point(342, 905, 905),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'direction', point(1000, 0, 500),
		'vel_min', 4000,
		'vel_max', 8000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "D" ),
		'direction', point(0, 0, -1000),
		'acceleration', 4000,
		'max_vel', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorDissolve', {
		'bins', set( "D" ),
		'start_alpha_test_max', 4,
		'mid_alpha_test', 76,
		'end_alpha_test', 100,
		'type', "Interpolate through mid",
		'middle_pos', 267,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 118, 118),
			point(251, 489, 489),
			point(670, 760, 760),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Spray_Mist_Front",
		'bins', set( "E" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 100000,
		'lifetime_min', 400,
		'lifetime_max', 800,
		'size_min', 200,
		'size_max', 500,
		'texture', "Textures/Particles/mist.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'softness', 20,
		'alpha', range(155, 255),
		'outlines', {
			{
				point(32, 32),
				point(32, 2016),
				point(2016, 2016),
				point(2016, 32),
			},
			{
				point(2080, 2016),
				point(3968, 2016),
				point(4064, 32),
				point(2080, 32),
			},
			{
				point(32, 4032),
				point(2016, 4032),
				point(2016, 2080),
				point(32, 2080),
			},
			{
				point(2080, 4032),
				point(4064, 4032),
				point(4064, 2080),
				point(2080, 2080),
			},
		},
		'texture_hash', 6609993512092536490,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "E" ),
		'start_color_min', RGBA(120, 14, 14, 255),
		'type', "Start color only",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "E" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 663, 663),
			point(342, 905, 905),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "E" ),
		'direction', point(1000, 0, 500),
		'spread_angle', 6000,
		'vel_min', 4000,
		'vel_max', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "E" ),
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 236, 236),
			point(344, 498, 498),
			point(746, 782, 782),
			point(1000, 1000, 1000),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 747, 747),
			point(305, 747, 747),
			point(893, 755, 755),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 336, 336),
			point(353, 581, 581),
			point(801, 341, 341),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Ground Splatter Drops",
		'bins', set( "F" ),
		'time_start', 600,
		'time_stop', 1200,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2000,
		'lifetime_min', 4000,
		'lifetime_max', 6000,
		'position', point(400, 0, 0),
		'angle', range(0, 360),
		'size_min', 120,
		'size_max', 60,
		'geometry_building', "Decal",
		'decal_group', "TerrainOnly",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/bubble.norm.tga",
		'light_softness', 1000,
		'mat_roughness', 20,
		'mat_metallic', 60,
		'alpha_test', 58,
		'drawing_order', 10,
		'outlines', {
			{
				point(648, 3432),
				point(3424, 3432),
				point(3424, 648),
				point(648, 648),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "F" ),
		'start_color_min', RGBA(90, 9, 9, 255),
		'type', "Start color only",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(751, 1000, 1000),
			point(880, 734, 734),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerSphere', {
		'bins', set( "F" ),
		'inner_radius', 100,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "F" ),
		'position1', point(750, 0, 0),
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "F" ),
	}, nil, nil),
	PlaceObj('DisplacerTerrainBirth', {
		'bins', set( "F" ),
		'range_min', 200,
		'range_max', 200,
	}, nil, nil),
})

