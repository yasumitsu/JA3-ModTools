-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

UndefineClass('SkillMag_Health')
DefineClass.SkillMag_Health = {
	__parents = { "MiscItem" },
	__generated_by_class = "InventoryItemCompositeDef",


	object_class = "MiscItem",
	Repairable = false,
	Icon = "UI/Icons/Items/mag_an_apple_a_day",
	DisplayName = T(211277073057, --[[InventoryItemCompositeDef SkillMag_Health DisplayName]] "An Apple a Day"),
	DisplayNamePlural = T(312204213439, --[[InventoryItemCompositeDef SkillMag_Health DisplayNamePlural]] "An Apple a Day"),
	Description = T(862144835554, --[[InventoryItemCompositeDef SkillMag_Health Description]] "Doctors really hate this one simple trick."),
	AdditionalHint = T(333976389871, --[[InventoryItemCompositeDef SkillMag_Health AdditionalHint]] "<bullet_point> Used through the Item Menu\n<bullet_point> Single use\n<bullet_point> Increases Health"),
	UnitStat = "Health",
	Valuable = 1,
	Cost = 1500,
	CanAppearInShop = true,
	MaxStock = 1,
	RestockWeight = 10,
	effect_moment = "on_use",
	Effects = {
		PlaceObj('UnitStatBoost', {
			Amount = 1,
			Stat = "Health",
		}),
	},
	action_name = T(499509380474, --[[InventoryItemCompositeDef SkillMag_Health action_name]] "READ"),
	destroy_item = true,
}

