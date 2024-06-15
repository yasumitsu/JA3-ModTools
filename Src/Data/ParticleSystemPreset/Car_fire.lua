-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Explosion_Car",
	id = "Car_fire",
	particles_scale_with_object = true,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "A", "B" ),
		'time_stop', 500,
		'time_period', 200,
		'randomize_period', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 1200,
		'lifetime_max', 1400,
		'position', point(0, 700, 500),
		'angle', range(0, 360),
		'shader', "Add",
		'texture', "Textures/Particles/fire2x2.tga",
		'frames', point(2, 2),
		'self_illum', 30,
		'softness', 60,
		'far_softness', 50,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'view_dependent_opacity', 94,
		'outlines', {
			{
				point(544, 2016),
				point(1488, 2016),
				point(1680, 8),
				point(544, 8),
			},
			{
				point(2600, 1960),
				point(4080, 1960),
				point(4080, 8),
				point(2144, 8),
			},
			{
				point(88, 3984),
				point(2040, 3984),
				point(2040, 2112),
				point(88, 2112),
			},
			{
				point(2056, 2112),
				point(2056, 4088),
				point(4088, 4088),
				point(4088, 2112),
			},
		},
		'texture_hash', 7496109197729400096,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "B", "D" ),
		'time_stop', 500,
		'time_period', 200,
		'randomize_period', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2000,
		'lifetime_max', 1400,
		'position', point(0, 700, 500),
		'angle', range(0, 360),
		'shader', "Add",
		'texture', "Textures/Particles/fire2x2.tga",
		'frames', point(2, 2),
		'self_illum', 30,
		'softness', 60,
		'far_softness', 50,
		'outlines', {
			{
				point(544, 2016),
				point(1488, 2016),
				point(1680, 8),
				point(544, 8),
			},
			{
				point(2600, 1960),
				point(4080, 1960),
				point(4080, 8),
				point(2144, 8),
			},
			{
				point(88, 3984),
				point(2040, 3984),
				point(2040, 2112),
				point(88, 2112),
			},
			{
				point(2056, 2112),
				point(2056, 4088),
				point(4088, 4088),
				point(4088, 2112),
			},
		},
		'texture_hash', 7496109197729400096,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "B", "C" ),
		'time_stop', 500,
		'time_period', 300,
		'randomize_period', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2500,
		'lifetime_max', 1400,
		'position', point(700, 0, 600),
		'angle', range(0, 360),
		'shader', "Add",
		'texture', "Textures/Particles/fire2x2.tga",
		'frames', point(2, 2),
		'self_illum', 30,
		'softness', 60,
		'far_softness', 25,
		'outlines', {
			{
				point(544, 2016),
				point(1488, 2016),
				point(1680, 8),
				point(544, 8),
			},
			{
				point(2600, 1960),
				point(4080, 1960),
				point(4080, 8),
				point(2144, 8),
			},
			{
				point(88, 3984),
				point(2040, 3984),
				point(2040, 2112),
				point(88, 2112),
			},
			{
				point(2056, 2112),
				point(2056, 4088),
				point(4088, 4088),
				point(4088, 2112),
			},
		},
		'texture_hash', 7496109197729400096,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "B", "C" ),
		'time_stop', 500,
		'time_period', 300,
		'randomize_period', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2500,
		'lifetime_max', 1400,
		'position', point(-700, 0, 600),
		'angle', range(0, 360),
		'shader', "Add",
		'texture', "Textures/Particles/fire2x2.tga",
		'frames', point(2, 2),
		'self_illum', 30,
		'softness', 60,
		'far_softness', 25,
		'outlines', {
			{
				point(544, 2016),
				point(1488, 2016),
				point(1680, 8),
				point(544, 8),
			},
			{
				point(2600, 1960),
				point(4080, 1960),
				point(4080, 8),
				point(2144, 8),
			},
			{
				point(88, 3984),
				point(2040, 3984),
				point(2040, 2112),
				point(88, 2112),
			},
			{
				point(2056, 2112),
				point(2056, 4088),
				point(4088, 4088),
				point(4088, 2112),
			},
		},
		'texture_hash', 7496109197729400096,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "C" ),
		'position1', point(0, -500, 0),
		'position2', point(0, 500, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "C" ),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "B" ),
		'inner_radius', 1,
		'outer_radius', 100,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "A", "D" ),
		'position1', point(-350, 0, 0),
		'position2', point(350, 0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 231, 231),
			point(416, 538, 538),
			point(757, 837, 837),
			point(1000, 679, 679),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 240, 240),
			point(327, 489, 489),
			point(665, 910, 910),
			point(1000, 701, 701),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(274, 995, 995),
			point(494, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(167, 73, 4, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(167, 73, 4, 255),
		'start_intensity_max', 3000,
		'mid_color', RGBA(255, 143, 44, 255),
		'mid_intensity', 2000,
		'end_color', RGBA(60, 23, 0, 255),
		'end_intensity', 2000,
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 104, 104),
			point(298, 665, 665),
			point(778, 434, 434),
			point(1000, 267, 267),
		},
	}, nil, nil),
	PlaceObj('Oscillate', {
		'bins', set( "B" ),
		'x_strength', range(0, 0),
		'y_strength', range(0, 0),
		'z_strength', range(0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(0, 1000, 1000),
		'vel_min', 100,
		'vel_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'direction', point(0, 1000, 1000),
		'vel_min', 100,
		'vel_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 961, 1014),
			point(333, 900, 900),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "B" ),
		'wind_mode', "windfield_per_particle",
		'multiplier', 400,
	}, nil, nil),
})

