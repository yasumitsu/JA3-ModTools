-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Impact",
	id = "Impact_Blood_Headshot_Spray",
	particles_scale_with_object = true,
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B", "C" ),
		'start_color_min', RGBA(198, 23, 23, 255),
		'type', "Start color only",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B", "C", "D" ),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "C", "E", "F", "G", "H" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Spray",
		'time_stop', 3000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 250,
		'lifetime_min', 400,
		'lifetime_max', 1400,
		'size_min', 200,
		'size_max', 400,
		'texture', "Textures/Particles/BloodSplashesAtmos_2x2.tga",
		'normalmap', "Textures/Particles/BloodSplashes_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'mat_roughness', 20,
		'mat_metallic', 60,
		'softness', 10,
		'alpha', range(100, 200),
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
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 200,
		'max_vel', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 875, 875),
			point(342, 905, 905),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(-200, 0, 1000),
		'vel_min', 2000,
		'vel_max', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 253, 253),
			point(376, 154, 479),
			point(732, 194, 784),
			point(1000, 611, 1000),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 89, 89),
			point(78, 531, 1000),
			point(205, 583, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(118, 449, 825),
			point(653, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Droplets",
		'bins', set( "B" ),
		'time_stop', 3000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2000,
		'lifetime_max', 1000,
		'angle', range(0, 360),
		'size_min', 200,
		'size_max', 500,
		'texture', "Textures/Particles/BloodSplashesAtmos_2x2.tga",
		'normalmap', "Textures/Particles/BloodSplashes_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'mat_roughness', 80,
		'mat_metallic', 60,
		'alpha', range(155, 255),
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
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 875, 875),
			point(342, 905, 905),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorDissolve', {
		'bins', set( "B" ),
		'mid_alpha_test', 72,
		'end_alpha_test', 100,
		'type', "Interpolate through mid",
		'middle_pos', 245,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B", "C" ),
		'direction', point(0, 0, -1000),
		'acceleration', 4000,
		'max_vel', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(233, 417, 417),
			point(568, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 89, 89),
			point(103, 1000, 1000),
			point(333, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 4000,
		'vel_min', 2000,
		'vel_max', 4000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "blood_droplets2",
		'bins', set( "C" ),
		'time_stop', 3000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 50,
		'parts_per_sec', 500,
		'lifetime_min', 400,
		'lifetime_max', 1000,
		'angle', range(0, 360),
		'size_max', 1000,
		'texture', "Textures/Particles/BloodSplashesAtmos_2x2.tga",
		'normalmap', "Textures/Particles/BloodSplashes_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'mat_roughness', 80,
		'mat_metallic', 60,
		'softness', 20,
		'alpha_test', 200,
		'alpha', range(0, 250),
		'drawing_order', -1,
		'outlines', {
			{
				point(488, 1368),
				point(1480, 1880),
				point(1536, 624),
				point(552, 8),
			},
			{
				point(2344, 304),
				point(2584, 1920),
				point(3480, 1880),
				point(3632, 168),
			},
			{
				point(424, 2168),
				point(40, 3496),
				point(1544, 4072),
				point(1720, 2128),
			},
			{
				point(2464, 3000),
				point(2960, 3968),
				point(3768, 3424),
				point(3176, 2360),
			},
		},
		'texture_hash', -7050120831119995156,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "C" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 625, 812),
			point(212, 1001, 1001),
			point(675, 1008, 1008),
			point(1000, 1008, 1008),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "C" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 13, 13),
			point(294, 90, 90),
			point(757, 134, 134),
			point(1000, 120, 120),
		},
		'rpm_curve_range', range(-100, 100),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 750,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 343, 343),
			point(297, 760, 760),
			point(626, 851, 851),
			point(1000, 664, 664),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'direction', point(-1000, 0, 1000),
		'spread_angle', 2000,
		'vel_min', 4000,
		'vel_max', 8000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Ground Splatter",
		'bins', set( "D" ),
		'time_start', 600,
		'time_stop', 3000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 20,
		'parts_per_sec', 2000,
		'lifetime_min', 2000,
		'lifetime_max', 6000,
		'position', point(400, 0, 0),
		'angle', range(0, 360),
		'size_min', 100,
		'size_max', 200,
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
		'bins', set( "D" ),
		'start_color_min', RGBA(90, 9, 9, 255),
		'type', "Start color only",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(751, 1000, 1000),
			point(880, 734, 734),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'max_size', 100,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 419, 419),
			point(9, 616, 616),
			point(197, 620, 620),
			point(1000, 489, 489),
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
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'probability', 50,
		'max_size', 60,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 419, 419),
			point(9, 616, 616),
			point(197, 620, 620),
			point(1000, 489, 489),
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
	PlaceObj('DisplacerSphere', {
		'bins', set( "D" ),
		'inner_radius', 100,
		'outer_radius', 600,
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "D" ),
	}, nil, nil),
	PlaceObj('DisplacerTerrainBirth', {
		'bins', set( "D" ),
		'range_min', 200,
		'range_max', 200,
	}, nil, nil),
})
