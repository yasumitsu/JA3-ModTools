-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Weapon_RPG7",
	id = "Weapon_RPG7_Smoke_MidFlight",
	PlaceObj('ParticleEmitter', {
		'label', "Sparks Shrapnel",
		'bins', set( "B" ),
		'time_stop', 200,
		'randomize_period', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 100000,
		'lifetime_min', 200,
		'lifetime_max', 600,
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
		'direction', point(1000, 0, 0),
		'spread_angle', 6000,
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
		'label', "Smoke Directional",
		'bins', set( "C" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 100000,
		'lifetime_min', 2600,
		'lifetime_max', 4600,
		'angle', range(0, 360),
		'size_min', 3000,
		'size_max', 3000,
		'texture', "Textures/Particles/ThickSmoke_03.tga",
		'normalmap', "Textures/Particles/Explosion_DirImpact_8x8.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'softness', 100,
		'far_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 336, 336),
			point(667, 667, 667),
			point(1000, 1000, 1000),
		},
		'near_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 301, 301),
			point(667, 624, 624),
			point(1000, 1000, 1000),
		},
		'drawing_order', -1,
		'outlines', {
			{
				point(208, 2032),
				point(1920, 1792),
				point(1920, 16),
				point(0, 16),
			},
			{
				point(2112, 1968),
				point(4016, 1584),
				point(4016, 16),
				point(2112, 16),
			},
			{
				point(64, 3600),
				point(1408, 4000),
				point(2016, 2144),
				point(272, 2144),
			},
			{
				point(2368, 3744),
				point(4048, 4080),
				point(4048, 2160),
				point(2064, 2160),
			},
		},
		'texture_hash', 5092298908219759360,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "C" ),
		'multiplier', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
		'start_color_min', RGBA(128, 128, 128, 255),
		'start_color_max', RGBA(128, 128, 128, 255),
		'mid_color', RGBA(102, 102, 102, 255),
		'end_color', RGBA(77, 77, 77, 255),
		'type', "InterpolateByCurve",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(287, 0, 0),
			point(405, 916, 916),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "C" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 872, 872),
			point(333, 900, 900),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'direction', point(1000, 0, 0),
		'spread_angle', 2500,
		'vel_min', 4000,
		'vel_max', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 2600,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 79, 79),
			point(20, 476, 476),
			point(176, 664, 664),
			point(1000, 1000, 1000),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(27, 847, 847),
			point(408, 734, 734),
			point(1000, 579, 579),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "C" ),
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
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(56, 454, 454),
			point(507, 122, 122),
			point(1000, 0, 0),
		},
	}, nil, nil),
})
