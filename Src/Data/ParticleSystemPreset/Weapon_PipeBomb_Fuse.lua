-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_Pipe_Bomb",
	id = "Weapon_PipeBomb_Fuse",
	PlaceObj('ParticleEmitter', {
		'label', "Fuse",
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 800,
		'lifetime_min', 200,
		'lifetime_max', 400,
		'angle', range(0, 360),
		'size_min', 3000,
		'size_max', 4000,
		'shader', "Add",
		'texture', "Textures/Particles/mist.tga",
		'frames', point(2, 2),
		'self_illum', 200,
		'softness', 100,
		'drawing_order', 1,
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
				point(4064, 4032),
				point(4064, 2048),
				point(2048, 2048),
			},
		},
		'texture_hash', 6609993512092536490,
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'anim_type', "Cycle Once",
		'fps', 28,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(318, 316, 316),
			point(753, 753, 753),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 200,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(17, 74, 74),
			point(406, 249, 249),
			point(1000, 642, 642),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 9, 9),
			point(95, 170, 170),
			point(329, 210, 210),
			point(1000, 31, 31),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 645, 645),
			point(333, 900, 900),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(57, 948, 948),
			point(712, 742, 742),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 148, 9, 255),
		'start_color_max', RGBA(255, 148, 9, 255),
		'mid_color', RGBA(165, 81, 0, 255),
		'end_color', RGBA(187, 53, 0, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 70, 70),
			point(56, 1000, 1000),
			point(138, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Sparks Shrapnel",
		'bins', set( "B" ),
		'randomize_period', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 500,
		'lifetime_min', 200,
		'lifetime_max', 800,
		'size_min', 500,
		'size_max', 500,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'self_illum', 200,
		'drawing_order', 2,
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
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(230, 125, 22, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(230, 125, 22, 255),
		'start_intensity_max', 3000,
		'mid_color', RGBA(151, 53, 0, 255),
		'mid_intensity', 4000,
		'end_color', RGBA(84, 13, 0, 255),
		'end_intensity', 2000,
		'type', "Interpolate through mid",
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B" ),
		'direction', point(0, 0, -1000),
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 147, 489),
			point(304, 563, 1000),
			point(672, 426, 1000),
			point(1000, 0, 251),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(347, 52, 52),
			point(746, 74, 74),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 63, 63),
			point(275, 91, 91),
			point(622, 450, 450),
			point(1000, 23, 23),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 245, 245),
			point(141, 987, 987),
			point(612, 507, 507),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 36000,
		'vel_min', 4000,
		'vel_max', 8000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'probability', 80,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 1197, 1197),
			point(22, 844, 844),
			point(654, 907, 907),
			point(1000, 912, 912),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'bins', set( "C" ),
		'period_seed', 1,
		'randomize_period', 100,
		'emit_detail_level', 60,
		'max_live_count', 2,
		'parts_per_sec', 10000,
		'lifetime_min', 400,
		'lifetime_max', 800,
		'angle', range(0, 360),
		'size_min', 400,
		'size_max', 600,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'far_softness', 100,
		'outlines', {
			{
				point(96, 3904),
				point(3904, 3904),
				point(3904, 128),
				point(224, 128),
			},
		},
		'texture_hash', 5044350849439443378,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "C" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(41, 559, 559),
			point(736, 135, 135),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(8, 441, 441),
			point(630, 114, 114),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
		'start_color_min', RGBA(250, 158, 51, 255),
		'start_color_max', RGBA(250, 149, 51, 255),
		'mid_color', RGBA(255, 65, 0, 255),
		'end_color', RGBA(151, 25, 0, 255),
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 600,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(18, 210, 210),
			point(557, 616, 616),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
})

