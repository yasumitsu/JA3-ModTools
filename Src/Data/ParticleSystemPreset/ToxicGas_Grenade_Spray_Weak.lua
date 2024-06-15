-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_ToxicGas",
	id = "ToxicGas_Grenade_Spray_Weak",
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Smoke",
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 600,
		'parts_per_meter', 800,
		'lifetime_min', 2000,
		'lifetime_max', 4000,
		'texture', "Textures/Particles/mist.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'far_softness', 100,
		'drawing_order', 1,
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
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 878, 878),
			point(333, 900, 900),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 1500,
		'vel_min', 1400,
		'vel_max', 1800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(12, 122, 122),
			point(224, 192, 192),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(12, 157, 157),
			point(477, 555, 555),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(228, 230, 114, 255),
		'start_color_max', RGBA(228, 230, 114, 255),
		'mid_color', RGBA(153, 146, 68, 255),
		'end_color', RGBA(153, 136, 61, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', nil, nil, nil),
})

