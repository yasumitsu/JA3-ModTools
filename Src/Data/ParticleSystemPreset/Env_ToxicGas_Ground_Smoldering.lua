-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_ToxicGas_Ground_Smoldering",
	presim_time = 5000,
	PlaceObj('ParticleEmitter', {
		'label', "Gas",
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 1000,
		'lifetime_min', 4000,
		'lifetime_max', 8000,
		'texture', "Textures/Particles/mist.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'far_softness', 100,
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
	PlaceObj('DisplacerCircle', {
		'bins', set( "A", "B" ),
		'inner_radius', 200,
		'outer_radius', 4000,
		'distribution', 50,
	}, nil, nil),
	PlaceObj('DisplacerTerrainBirth', {
		'bins', set( "A", "B" ),
		'range_min', 200,
		'range_max', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 52, 52),
			point(673, 96, 96),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "A", "B" ),
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 489, 489),
			point(361, 493, 493),
			point(723, 764, 764),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(228, 230, 114, 255),
		'start_color_max', RGBA(228, 230, 114, 255),
		'mid_color', RGBA(153, 146, 68, 255),
		'end_color', RGBA(153, 136, 61, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(352, 38, 38),
			point(661, -1, -1),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-120, 120),
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "A", "B" ),
		'max_vel', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "A", "B" ),
		'multiplier', 4000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Distortion",
		'bins', set( "B" ),
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 400,
		'lifetime_min', 4000,
		'lifetime_max', 8000,
		'shader', "Distortion",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/test2.norm.tga",
		'far_softness', 100,
		'distortion_mode', "Ping-Pong",
		'distortion_scale', 3,
		'distortion_scale_max', 10,
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
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(308, 817, 817),
			point(695, 738, 738),
			point(1000, 0, 0),
		},
	}, nil, nil),
})
