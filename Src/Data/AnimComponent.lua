-- ========== GENERATED BY AnimComponent Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('AnimIKLimbAdjust', {
	Limbs = {
		PlaceObj('AnimLimbData', {
			'fit_bone', "HyenaLLegAnkle",
			'joint_bone', "HyenaLLeg3",
			'top_bone', "HyenaLLeg2",
			'fit_normal', point(0, -1000, 0),
		}),
		PlaceObj('AnimLimbData', {
			'fit_bone', "HyenaRLegAnkle",
			'joint_bone', "HyenaRLeg3",
			'top_bone', "HyenaRLeg2",
			'fit_normal', point(0, -1000, 0),
		}),
		PlaceObj('AnimLimbData', {
			'fit_bone', "HyenaFront_LLegAnkle",
			'joint_bone', "HyenaFront_LLeg2",
			'top_bone', "HyenaFront_LLeg1",
			'fit_normal', point(0, -1000, 0),
		}),
		PlaceObj('AnimLimbData', {
			'fit_bone', "HyenaFront_RLegAnkle",
			'joint_bone', "HyenaFront_RLeg2",
			'top_bone', "HyenaFront_RLeg1",
			'fit_normal', point(0, -1000, 0),
		}),
	},
	group = "Animal",
	id = "AnimIKFootPlant_Hyena",
	label = "FootPlantIK",
	max_target_speed = 2000,
})

PlaceObj('AnimIKLookAt', {
	aim_bone = "HyenaHead",
	aim_up = point(0, 0, 1000),
	group = "Animal",
	id = "AnimIKLookAt_Hyena",
	label = "LookAtIK",
	max_horizontal_angle = 3240,
	max_vertical_angle = 1800,
	pivot_bone = "HyenaHead",
})

PlaceObj('AnimIKLookAt', {
	aim_bone = "Bip001 RWeapon",
	aim_up = point(0, 0, 1000),
	group = "Default",
	id = "AnimIKAimAt_Bip001",
	label = "AimIK",
	max_angular_speed = 10800,
	max_horizontal_angle = 3000,
	max_vertical_angle = 3600,
	out_of_bound_vertical_snap = true,
	pivot_bone = "Bip001 Spine2",
	pivot_parents = 3,
})

PlaceObj('AnimIKLookAt', {
	aim_bone = "Bip001 Prop1",
	aim_up = point(0, 0, 1000),
	group = "Default",
	id = "AnimIKAimAt_Male",
	label = "AimIK",
	max_angular_speed = 10800,
	max_horizontal_angle = 3000,
	max_vertical_angle = 3600,
	out_of_bound_vertical_snap = true,
	pivot_bone = "Bip001 Spine2",
	pivot_parents = 2,
})

PlaceObj('AnimIKLimbAdjust', {
	Limbs = {
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 L Foot",
			'joint_bone', "Bip001 L Calf",
			'top_bone', "Bip001 L Thigh",
			'joint_axis', point(0, 0, -1000),
		}),
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 R Foot",
			'joint_bone', "Bip001 R Calf",
			'top_bone', "Bip001 R Thigh",
			'joint_axis', point(0, 0, -1000),
		}),
	},
	adjust_root_to_reach_targets = true,
	group = "Default",
	id = "AnimIKFootPlant_Bip001",
	label = "FootPlantIK",
	max_target_speed = 2000,
})

PlaceObj('AnimIKLimbAdjust', {
	Limbs = {
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 L Foot",
			'joint_bone', "Bip001 L Calf",
			'joint_companion_bone', "Bip001 LCalfTwist",
			'top_bone', "Bip001 L Thigh",
			'top_companion_bone', "Bip001 LThighTwist",
			'joint_axis', point(0, 0, -1000),
		}),
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 R Foot",
			'joint_bone', "Bip001 R Calf",
			'joint_companion_bone', "Bip001 RCalfTwist",
			'top_bone', "Bip001 R Thigh",
			'top_companion_bone', "Bip001 RThighTwist",
			'joint_axis', point(0, 0, -1000),
		}),
	},
	group = "Default",
	id = "AnimIKFootPlant_Male",
	label = "FootPlantIK",
	max_target_speed = 2000,
})

PlaceObj('AnimIKLookAt', {
	aim_bone = "Bip001 Head",
	aim_up = point(0, 0, 1000),
	group = "Default",
	id = "AnimIKLookAt_Bip001",
	label = "LookAtIK",
	pivot_bone = "Bip001 Head",
})

PlaceObj('AnimIKLimbAdjust', {
	Limbs = {
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 LWeapon",
			'joint_bone', "Bip001 L Forearm",
			'joint_companion_bone', "Bip001 L ForeTwist",
			'top_bone', "Bip001 L UpperArm",
			'top_companion_bone', "Bip001 LUpArmTwist",
			'joint_axis', point(0, 0, -1000),
		}),
	},
	group = "Default",
	id = "AnimIK_LHandWeaponGrip_Female",
	label = "LHandWeaponGrip",
	max_target_speed = 1000,
})

PlaceObj('AnimIKLimbAdjust', {
	Limbs = {
		PlaceObj('AnimLimbData', {
			'fit_bone', "Bip001 Prop2",
			'joint_bone', "Bip001 L Forearm",
			'joint_companion_bone', "Bip001 L ForeTwist",
			'top_bone', "Bip001 L UpperArm",
			'top_companion_bone', "Bip001 LUpArmTwist",
			'joint_axis', point(0, 0, -1000),
		}),
	},
	group = "Default",
	id = "AnimIK_LHandWeaponGrip_Male",
	label = "LHandWeaponGrip",
	max_target_speed = 1000,
})
