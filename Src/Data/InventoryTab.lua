-- ========== GENERATED BY InventoryTab Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryTab', {
	display_name = T(476281356321, --[[InventoryTab all display_name]] "All"),
	group = "Default",
	icon = "UI/Inventory/tabs_all",
	id = "all",
})

PlaceObj('InventoryTab', {
	SortKey = 1,
	display_name = T(534632134365, --[[InventoryTab ammo display_name]] "Ammo"),
	group = "Default",
	icon = "UI/Inventory/tabs_ammo",
	id = "ammo",
	item_classes = {
		"Ammo",
		"Ordnance",
	},
})

PlaceObj('InventoryTab', {
	FilterItem = function (self, item)
		if item and item:IsWeapon() then
			return true 
		end
		local def  = InventoryItemDefs[item.class] 
		local group = def.group
		return   group == "Grenade - Explosive"
			  or group == "Grenade - Throwable"
	end,
	SortKey = 2,
	display_name = T(246402498032, --[[InventoryTab weapons display_name]] "Weapons"),
	group = "Default",
	icon = "UI/Inventory/tabs_weapons",
	id = "weapons",
})

PlaceObj('InventoryTab', {
	SortKey = 3,
	display_name = T(957148628656, --[[InventoryTab equipment display_name]] "Equipment"),
	group = "Default",
	icon = "UI/Inventory/tabs_equipment",
	id = "equipment",
	item_classes = {
		"Armor",
	},
})

PlaceObj('InventoryTab', {
	FilterItem = function (self, item)
		local def  = InventoryItemDefs[item.class] 
		local group = def.group
		return  group == "Magazines" 
		     or group == "Resources"
		     or group == "Upgrade"
			 or group == "Other - Meds"
		     or group == "Grenade - Component"
			 or group == "Other - Tools"
	end,
	SortKey = 4,
	display_name = T(476978256985, --[[InventoryTab supplies display_name]] "Supplies"),
	group = "Default",
	icon = "UI/Inventory/tabs_supplies",
	id = "supplies",
})

PlaceObj('InventoryTab', {
	FilterItem = function (self, item)
		for id, preset in pairs(InventoryTabs) do
			if id~="all" and id~="other" then
				if preset:FilterItem(item) then
					return false
				end	
			end
		end
		return true
	end,
	SortKey = 5,
	display_name = T(396491819881, --[[InventoryTab other display_name]] "Other"),
	group = "Default",
	icon = "UI/Inventory/tabs_other",
	id = "other",
})

