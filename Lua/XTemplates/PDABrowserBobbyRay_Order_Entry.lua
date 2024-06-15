-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	__is_kind_of = "XContextWindow",
	group = "BobbyRayGunsShop",
	id = "PDABrowserBobbyRay_Order_Entry",
	PlaceObj('XTemplateWindow', {
		'__class', "XContextWindow",
		'IdNode', true,
		'HAlign', "center",
		'VAlign', "center",
		'MinWidth', 664,
		'MaxWidth', 664,
		'Background', RGBA(22, 20, 19, 230),
		'HandleMouse', true,
	}, {
		PlaceObj('XTemplateFunc', {
			'name', "Open(self,...)",
			'func', function (self,...)
				XContextWindow.Open(self, ...)
				self:OnSetRollover_Override(false)
				
				self:CartUpdate()
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "CartUpdate(self,...)",
			'func', function (self,...)
				local ctx = self:GetContext().item
				if ctx == empty_table then return end
				
				self:ResolveId("idCartQuantity"):OnContextUpdate(ctx)
				self:ResolveId("idButtonMinus"):OnContextUpdate(ctx)
				self:ResolveId("idButtonPlus"):OnContextUpdate(ctx)
				
				self:ResolveId("idName"):OnContextUpdate(ctx)
				self:ResolveId("idUnitCost"):OnContextUpdate(ctx)
				self:ResolveId("idTotalCost"):OnContextUpdate(ctx)
				
				local parent = self:ResolveId("node"):ResolveId("node")
				if parent:IsUsingNativeGamepad() and self:GetContext().index == parent:GetSelectedEntry() then
					self:OnSetRollover_Override(true)
				end
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "OnSetRollover_Override(self, rollover)",
			'func', function (self, rollover)
				local ctx = self:GetContext().item
				if ctx ~= empty_table then
					if rollover then
						local parent = self:ResolveId("node"):ResolveId("node")
						local entry = self:GetContext().index
						if parent:GetSelectedEntry() ~= entry then parent:SelectEntry(entry) end
						self:SetBackground(RGBA(53,46,39,230))
						self:ResolveId("idButtonMinus"):SetVisible(true)
						self:ResolveId("idButtonPlus"):SetVisible(true)
						PlayFX("buttonRollover", "start")
					else
						self:SetBackground(RGBA(22,20,19,230))
						self:ResolveId("idButtonMinus"):SetVisible(false)
						self:ResolveId("idButtonPlus"):SetVisible(false)
					end
				end
				XContentTemplate.OnSetRollover(self,rollover)
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "OnSetRollover(self, rollover)",
			'func', function (self, rollover)
				local parent = self:ResolveId("node"):ResolveId("node")
				if not parent:IsUsingNativeGamepad() then
					self:OnSetRollover_Override(rollover)
				else
					XContentTemplate.OnSetRollover(self,rollover)
				end
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'comment', "observer for g_BobbyRayCart changes",
			'__context', function (parent, context) return g_BobbyRayCart end,
			'__class', "XContextControl",
			'Visible', false,
			'FoldWhenHidden', true,
			'OnContextUpdate', function (self, context, ...)
				self.parent:CartUpdate()
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'__class', "XContextWindow",
			'Dock', "box",
			'LayoutMethod', "HList",
			'LayoutHSpacing', -7,
		}, {
			PlaceObj('XTemplateWindow', {
				'__class', "XContextFrame",
				'IdNode', false,
				'HAlign', "left",
				'MinWidth', 114,
				'MaxWidth', 114,
				'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
				'FrameBox', box(7, 7, 7, 7),
			}, {
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "XText",
					'Id', "idCartQuantity",
					'HAlign', "center",
					'VAlign', "center",
					'TextStyle', "PDABobbyStore_SCP16C",
					'OnContextUpdate', function (self, context, ...)
						local quantity = BobbyRayCartGetUnits()[context.id] or 0
						quantity = quantity
						local stack = context.ShopStackSize or 1
						--local storeEntry = BobbyRayStoreGetEntry(context)
						-- self:SetText(tostring(quantity) .. "/" .. tostring(storeEntry.Stock))
						self:SetText(stack ~= 1 and T{835688467903, "<quant>x<stack>", quant = quantity, stack = stack } or Untranslated(quantity))
						self:SetTextStyle(stack ~= 1 and "PDABobbyStore_SCP14C" or "PDABobbyStore_SCP18C")
					end,
					'Translate', true,
				}),
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "PDACommonButtonClass",
					'Id', "idButtonMinus",
					'Margins', box(7, 7, 2, 7),
					'Padding', box(0, 0, 0, 0),
					'Dock', "left",
					'HAlign', "center",
					'MinWidth', 20,
					'MaxWidth', 20,
					'ContextUpdateOnOpen', false,
					'OnContextUpdate', function (self, context, ...)
						local quant = BobbyRayCartGetUnits()[context.id] or 0
						self:SetEnabled(quant > 0)
					end,
					'DisabledBackground', RGBA(138, 138, 138, 178),
					'OnPress', function (self, gamepad)
						NetSyncEvent("BobbyRayCartRemove", self:GetContext().item.id)
					end,
					'Image', "UI/PDA/WEBSites/Bobby Rays/shop_button",
					'FrameBox', box(9, 9, 9, 9),
					'Columns', 4,
					'SqueezeY', true,
					'TextStyle', "PDABobbyStore_SCP_16MB_Shadow",
					'Text', "-",
					'ColumnsUse', "abccd",
				}),
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "PDACommonButtonClass",
					'Id', "idButtonPlus",
					'Margins', box(2, 7, 7, 7),
					'Padding', box(0, 0, 0, 0),
					'Dock', "right",
					'MinWidth', 20,
					'MaxWidth', 20,
					'ContextUpdateOnOpen', false,
					'OnContextUpdate', function (self, context, ...)
						self:SetEnabled(BobbyRayCartHasEnoughMoney(context) and BobbyRayCartHasEnoughStock(context))
					end,
					'DisabledBackground', RGBA(138, 138, 138, 178),
					'OnPress', function (self, gamepad)
						NetSyncEvent("BobbyRayCartAdd", self:GetContext().item.id)
					end,
					'Image', "UI/PDA/WEBSites/Bobby Rays/shop_button",
					'FrameBox', box(9, 9, 9, 9),
					'Columns', 4,
					'SqueezeY', true,
					'TextStyle', "PDABobbyStore_SCP_16MB_Shadow",
					'Text', "+",
					'ColumnsUse', "abccd",
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'__class', "XContextFrame",
				'IdNode', false,
				'HAlign', "left",
				'MinWidth', 300,
				'MaxWidth', 300,
				'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
				'FrameBox', box(7, 7, 7, 7),
			}, {
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "XText",
					'Id', "idName",
					'Padding', box(17, 2, 17, 2),
					'HAlign', "left",
					'VAlign', "center",
					'TextStyle', "PDABobbyStore_SCP16C",
					'OnContextUpdate', function (self, context, ...)
						self:SetText(context.DisplayName)
					end,
					'Translate', true,
					'WordWrap', false,
					'Shorten', true,
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'__class', "XContextFrame",
				'IdNode', false,
				'HAlign', "left",
				'MinWidth', 147,
				'MaxWidth', 147,
				'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
				'FrameBox', box(7, 7, 7, 7),
			}, {
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "XText",
					'Id', "idUnitCost",
					'HAlign', "center",
					'VAlign', "center",
					'TextStyle', "PDABobbyStore_SCP18C",
					'OnContextUpdate', function (self, context, ...)
						self:SetText(T{770368132801, "<money(Cost)>", Cost = BobbyRayStoreGetEntryCost(context)})
					end,
					'Translate', true,
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'__class', "XContextFrame",
				'IdNode', false,
				'HAlign', "left",
				'MinWidth', 124,
				'MaxWidth', 124,
				'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
				'FrameBox', box(7, 7, 7, 7),
			}, {
				PlaceObj('XTemplateWindow', {
					'__condition', function (parent, context) return context.item ~= empty_table end,
					'__class', "XText",
					'Id', "idTotalCost",
					'HAlign', "center",
					'VAlign', "center",
					'TextStyle', "PDABobbyStore_SCP18C",
					'OnContextUpdate', function (self, context, ...)
						local quant = BobbyRayCartGetUnits()[context.id] or 0
						self:SetText(T{770368132801, "<money(Cost)>", Cost = quant * BobbyRayStoreGetEntryCost(context)})
					end,
					'Translate', true,
				}),
				}),
			}),
		}),
})
