-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Shooting",
	id = "Env_CryoSmoke_Floor",
	presim_time = 30000,
	PlaceObj('ParticleEmitter', {
		'label', "Cryo Smoke",
		'emit_detail_level', 100,
		'max_live_count', 20,
		'parts_per_sec', 200,
		'lifetime_min', 16000,
		'lifetime_max', 22000,
		'position', point(0, 0, 1000),
		'angle', range(0, 360),
		'texture', "Textures/Particles/nitrogen_alpha.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'far_softness', 20,
		'far_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 333, 333),
			point(667, 703, 703),
			point(1000, 1000, 1000),
		},
		'outlines', {
			{
				point(0, 4096),
				point(4096, 4096),
				point(4096, 0),
				point(0, 0),
			},
		},
		'texture_hash', 6160229793212714579,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'time_start', 2000,
		'probability', 50,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, -26, -26),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'time_start', 2000,
		'probability', 50,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 58, 58),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceDirection', nil, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(287, 323, 323),
			point(672, 677, 677),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(105, 118, 118),
			point(476, 39, 39),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerTerrain', {
		'range_min', 100,
		'range_max', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 200,
	}, nil, nil),
})

