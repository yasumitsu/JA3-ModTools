-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	__is_kind_of = "XWindow",
	group = "BobbyRayGunsShop",
	id = "SectorPickBobby",
	PlaceObj('XTemplateWindow', {
		'__context', function (parent, context)
			return {
			sectors = BobbyRayGetAvailableDeliverySectors()
			}
		end,
		'Id', "idTestTest",
		'IdNode', true,
		'Dock', "box",
		'OnLayoutComplete', function (self)
			-- !TODO: for some reason, the sector button's text doesn't update the transparency properly on open
			self:UpdateButtons()
		end,
	}, {
		PlaceObj('XTemplateFunc', {
			'name', "SetSectorImage(self, dest, ...)",
			'func', function (self, dest, ...)
				local sector = gv_Sectors[dest]
				assert(sector)
				local img = self:ResolveId("idSelectedSectorImage")
				img:SetImage(sector.SectorImagePreview)
				
				local color, _, _, textColor = GetSectorControlColor(sector.Side)
				local text = textColor .. dest .. "</color>"
				local label = self:ResolveId("idSelectedSectorLabel")
				local labelText = self:ResolveId("idSelectedSectorLabelText")
				label:SetBackground(color)
				labelText:SetText(T{764093693143, "<SectorIdColored(id)>", id = dest})
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "ChooseSector(self, sector)",
			'func', function (self, sector)
				BobbyRayCartSetSectorDelivery(sector)
				NetSyncEvent("BobbyRayCartSetSectorDelivery", sector)
				self:UpdateSector()
				ObjModified("DeliverySectorChanged")
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "UpdateSector(self)",
			'func', function (self)
				local txt = self:ResolveId("idSectorName")
				local dest = BobbyRayCartGetDeliverySector()
				assert(dest)
				txt:SetText(gv_Sectors[dest].display_name)
				txt:SetTextStyle("PDABobbyStore_HG20C")
				self:SetSectorImage(dest)
				-- self:UpdateButtons() -- called in LayoutComplete, because Open wasn't updating the text's transparency correctly
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "UpdateButtons(self)",
			'func', function (self)
				local dest = BobbyRayCartGetDeliverySector()
				local sectorBtns = self:ResolveId("idSectorList")
				for i, btn in ipairs(sectorBtns) do
					if btn.context.Id then
						btn:SetSelected(btn.context.Id == dest)
					end
				end
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "SectorToCoords(self, sector)",
			'func', function (self, sector)
				local letter = sector:sub(1,1)
				local xx = sector:sub(2)
				local yy = string.byte(letter) - string.byte('A') + 1
				return xx, yy
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'comment', "observer for update",
			'__context', function (parent, context) return g_BobbyRayCart end,
			'__class', "XContextWindow",
			'Visible', false,
			'FoldWhenHidden', true,
			'ContextUpdateOnOpen', true,
			'OnContextUpdate', function (self, context, ...)
				self:ResolveId("node"):UpdateSector()
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'LayoutMethod', "VList",
			'LayoutVSpacing', -7,
		}, {
			PlaceObj('XTemplateWindow', {
				'comment', "content",
				'Dock', "box",
				'OnLayoutComplete', function (self)
					local b = self.box
					self:ResolveId("idFrameFixTop"):SetBox(b:minx(), b:miny(), b:sizex(), b:sizey())
					self:ResolveId("idFrameFixRight"):SetBox(b:minx(), b:miny(), b:sizex(), b:sizey())
				end,
				'HandleMouse', true,
			}, {
				PlaceObj('XTemplateWindow', {
					'LayoutMethod', "VList",
					'LayoutVSpacing', -7,
					'HandleMouse', true,
				}, {
					PlaceObj('XTemplateWindow', {
						'__class', "XFrame",
						'IdNode', false,
						'HAlign', "center",
						'VAlign', "center",
						'MinWidth', 356,
						'MinHeight', 356,
						'MaxWidth', 356,
						'MaxHeight', 356,
						'UseClipBox', false,
						'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
						'FrameBox', box(7, 7, 7, 7),
					}, {
						PlaceObj('XTemplateWindow', {
							'__class', "XImage",
							'Id', "idSelectedSectorImage",
							'IdNode', false,
							'Padding', box(16, 16, 16, 16),
							'UseClipBox', false,
							'Image', "UI/SatelliteView/SatView",
							'ImageFit', "stretch",
						}, {
							PlaceObj('XTemplateWindow', {
								'Id', "idSelectedSectorLabel",
								'Margins', box(102, 0, 0, 85),
								'Padding', box(5, 0, 5, 0),
								'HAlign', "left",
								'VAlign', "center",
								'MinWidth', 30,
							}, {
								PlaceObj('XTemplateWindow', {
									'__class', "XText",
									'Id', "idSelectedSectorLabelText",
									'TextStyle', "PDASatelliteRollover_SectorTitle",
									'Translate', true,
									'TextHAlign', "center",
									'TextVAlign', "center",
								}),
								}),
							}),
						}),
					PlaceObj('XTemplateWindow', {
						'__class', "XFrame",
						'IdNode', false,
						'Padding', box(16, 16, 16, 16),
						'VAlign', "center",
						'MinHeight', 61,
						'MaxHeight', 61,
						'UseClipBox', false,
						'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
						'FrameBox', box(7, 7, 7, 7),
					}, {
						PlaceObj('XTemplateWindow', {
							'__class', "XText",
							'Id', "idSectorName",
							'TextStyle', "PDABobbyStore_HG18D_Transparent",
							'Translate', true,
						}),
						}),
					PlaceObj('XTemplateWindow', {
						'comment', "left content",
						'__class', "XFrame",
						'IdNode', false,
						'Padding', box(16, 16, 16, 16),
						'MinHeight', 275,
						'MaxHeight', 275,
						'LayoutMethod', "HOverlappingList",
						'FillOverlappingSpace', true,
						'HandleMouse', true,
						'Image', "UI/PDA/WEBSites/Bobby Rays/frame",
						'FrameBox', box(7, 7, 7, 7),
					}, {
						PlaceObj('XTemplateWindow', {
							'__class', "XZuluScroll",
							'Id', "idSectorScroll",
							'Dock', "right",
							'Target', "idSectorList",
							'AutoHide', true,
							'BGColor', RGBA(0, 0, 0, 38),
						}),
						PlaceObj('XTemplateWindow', {
							'comment', "left content",
							'__context', function (parent, context) return context.sectors end,
							'__class', "XContentTemplateScrollArea",
							'Id', "idSectorList",
							'IdNode', false,
							'Dock', "box",
							'VAlign', "top",
							'LayoutMethod', "VList",
							'FillOverlappingSpace', true,
							'LayoutVSpacing', 5,
							'VScroll', "idSectorScroll",
							'OnContextUpdate', function (self, context, ...)
								if self.RespawnOnContext then
									if self.window_state == "open" then
										self:RespawnContent()
									end
								else
									local respawn_value = self:RespawnExpression(context)
									if rawget(self, "respawn_value") ~= respawn_value then
										self.respawn_value = respawn_value
										if self.window_state == "open" then
											self:RespawnContent()
										end
									end
								end
							end,
						}, {
							PlaceObj('XTemplateForEach', {
								'array', function (parent, context) return context end,
								'__context', function (parent, context, item, i, n) return gv_Sectors[item] end,
								'run_after', function (child, context, item, i, n, last)
									local sectorId = context.Id
									local sector = gv_Sectors[sectorId]
									local color, _, _, textColor = GetSectorControlColor(sector.Side)
									local text = textColor .. sectorId .. "</color>"
									child.idSectorId:SetText(T{764093693143, "<SectorIdColored(id)>", id = sectorId})
									child.idSectorSquare:SetBackground(color)
									child:SetText(sector.display_name or "")
									child.index = i
								end,
							}, {
								PlaceObj('XTemplateTemplate', {
									'__template', "PDACommonButton",
									'Padding', box(0, 0, 8, 0),
									'LayoutMethod', "HList",
									'LayoutHSpacing', 5,
									'DisabledBackground', RGBA(255, 255, 255, 128),
									'OnPress', function (self, gamepad)
										self:ResolveId("node"):ChooseSector(self.context.Id)
									end,
									'Image', "UI/PDA/WEBSites/Bobby Rays/shop_button.png",
									'Columns', 4,
									'TextStyle', "BobbyRaySectorPickButton",
									'ColumnsUse', "abccd",
								}, {
									PlaceObj('XTemplateWindow', {
										'Id', "idSectorSquare",
										'Dock', "left",
										'MinWidth', 40,
									}, {
										PlaceObj('XTemplateWindow', {
											'__class', "XText",
											'Id', "idSectorId",
											'HAlign', "center",
											'VAlign', "center",
											'Clip', false,
											'TextStyle', "PDASatelliteRollover_SectorTitle",
											'Translate', true,
											'TextHAlign', "center",
											'TextVAlign', "center",
										}),
										}),
									PlaceObj('XTemplateFunc', {
										'name', "OnSetRollover(self, rollover)",
										'func', function (self, rollover)
											PDACommonButtonClass.OnSetRollover(self,rollover)
											if not rollover then return end
											self:ResolveId("node"):SetSectorImage(self.context.Id)
										end,
									}),
									PlaceObj('XTemplateFunc', {
										'name', "SetSelected(self, selected)",
										'func', function (self, selected)
											self:SetEnabled(not selected)
										end,
									}),
									}),
								}),
							PlaceObj('XTemplateFunc', {
								'comment', "revert to the currently selected sector when mouse leaves the sector buttons",
								'name', "OnSetRollover(self, rollover)",
								'func', function (self, rollover)
									if not rollover then
										self:ResolveId("node"):UpdateSector()
									end
								end,
							}),
							}),
						}),
					}),
				PlaceObj('XTemplateWindow', {
					'comment', "overlay on the right to get around visual artifacts",
					'__class', "XFrame",
					'Id', "idFrameFixRight",
					'ZOrder', 5,
					'Image', "UI/PDA/WEBSites/Bobby Rays/frame_right_line.png",
					'FrameBox', box(0, 7, 7, 7),
				}),
				PlaceObj('XTemplateWindow', {
					'comment', "overlay at the top to get around visual artifacts",
					'__class', "XFrame",
					'Id', "idFrameFixTop",
					'ZOrder', 5,
					'Image', "UI/PDA/WEBSites/Bobby Rays/frame_top_line.png",
					'FrameBox', box(7, 7, 7, 0),
				}),
				}),
			}),
		}),
})

