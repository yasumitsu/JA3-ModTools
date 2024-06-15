-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	group = "Zulu",
	id = "IModeCombatMovement",
	PlaceObj('XTemplateWindow', {
		'__class', "IModeCombatMovement",
		'FocusOnOpen', "",
	}, {
		PlaceObj('XTemplateTemplate', {
			'__template', "IModeCommonUnitControl",
		}, {
			PlaceObj('XTemplateAction', {
				'ActionId', "ExitMovementMode",
				'ActionName', T(905101415376, --[[XTemplate IModeCombatMovement ActionName]] "Exit Movement Mode"),
				'ActionShortcut', "Escape",
				'ActionGamepad', "ButtonB",
				'ActionState', function (self, host)
					return host.movement_mode and "enabled" or "disabled"
				end,
				'OnAction', function (self, host, source, ...)
					host:SetMovementMode(false)
				end,
				'IgnoreRepeated', true,
			}),
			}),
		PlaceObj('XTemplateTemplate', {
			'__context', function (parent, context) return Selection end,
			'__template', "GenericHUDButtonFrame",
			'Id', "idEndTurnFrame",
			'Margins', box(25, 20, 25, 25),
			'HAlign', "right",
			'FoldWhenHidden', true,
			'DrawOnTop', true,
		}, {
			PlaceObj('XTemplateWindow', {
				'__class', "HUDButton",
				'RolloverTemplate', "SmallRolloverGeneric",
				'RolloverAnchor', "center-top",
				'Id', "idTurn",
				'Padding', box(5, 0, 5, 0),
				'MinWidth', 170,
				'MaxWidth', 170,
				'OnLayoutComplete', function (self)
					self:TakeSpaceInParentDlg()
				end,
				'ContextUpdateOnOpen', true,
				'OnContextUpdate', function (self, context, ...)
					local dlg = GetDialog(self)
					local is_visible = dlg.idContent.target_visible
					
					local node = self:ResolveId("node")
					node:SetVisible(is_visible)
					if not is_visible then
						return
					end
					
					local visible = false
					if self.context and self.context[1] then
						local canControlUnit, reason = self.context[1]:CanBeControlled()
						visible = canControlUnit
						
						-- If the player has clicked ready the units are uncontrollable but
						-- we want to show the button to allow them to "unready"
						if reason == "not_local_turn" then
							visible = true
						end
					end
					
					if IsCoOpGame() then
						if g_Combat and g_Combat:IsLocalPlayerEndTurn() then
							self.idLargeText:SetText(T(247399428705, --[[XTemplate IModeCombatAttackBaseGeneric Text]] "CANCEL"))
							self.idLargeText:SetTextStyle("HUDHeaderEndTurn_CoOpReady")
						else
							self.idLargeText:SetText(T(562439070450, "READY"))
							self.idLargeText:SetTextStyle("HUDHeaderEndTurn")
						end
					else
						self.idLargeText:SetTextStyle("HUDHeaderEndTurn")
						if not g_Combat or g_Combat:AreEnemiesAware(g_CurrentTeam)then
							self.idLargeText:SetText(T(848419963999, "END TURN"))
							visible = visible and IsInCombat("check pending")
						else
							self.idLargeText:SetText(T(549061627560, "EXIT COMBAT"))
						end
					end
					
					XContextWindow.OnContextUpdate(self, context, ...)
					node:SetVisible(visible)
				end,
				'OnPressEffect', "action",
				'OnPressParam', "EndTurn",
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "XImage",
					'Id', "idEndTurnIcon",
					'Dock', "right",
					'Image', "UI/Hud/end_turn",
					'Columns', 2,
				}),
				PlaceObj('XTemplateWindow', {
					'__class', "XText",
					'Id', "idLargeText",
					'Margins', box(0, 0, 3, 0),
					'VAlign', "center",
					'TextStyle', "HUDHeaderEndTurn",
					'Translate', true,
					'TextHAlign', "center",
				}),
				PlaceObj('XTemplateWindow', {
					'comment', "controller hint",
					'__context', function (parent, context) return "GamepadUIStyleChanged" end,
					'__class', "XText",
					'HAlign', "left",
					'VAlign', "bottom",
					'ScaleModifier', point(700, 700),
					'TextStyle', "HUDHeaderBig",
					'ContextUpdateOnOpen', true,
					'OnContextUpdate', function (self, context, ...)
						self:SetVisible(GetUIStyleGamepad())
						XText.OnContextUpdate(self, context, ...)
					end,
					'Translate', true,
					'Text', T(936930506351, --[[XTemplate IModeCombatMovement Text]] "<ShortcutButton('EndTurn')>"),
				}),
				PlaceObj('XTemplateFunc', {
					'name', "OnSetRollover(self, rollover)",
					'func', function (self, rollover)
						PlayFX("buttonRollover", rollover and "start" or "end", self.idEndTurnIcon, "idEndTurnIcon")
						self.idEndTurnIcon:SetColumn(rollover and 2 or 1)
						self.idLargeText:SetRollover(rollover)
						XButton.OnSetRollover(self, rollover)
					end,
				}),
				PlaceObj('XTemplateFunc', {
					'name', "SetVisibleInstant(self, visible)",
					'func', function (self, visible)
						HUDButton.SetVisibleInstant(self, visible)
						self:TakeSpaceInParentDlg()
					end,
				}),
				PlaceObj('XTemplateFunc', {
					'name', "TakeSpaceInParentDlg(self)",
					'func', function (self)
						local dlg = GetDialog(self)
						local node = self:ResolveId("node")
						
						local _, spaceBetweenButtons = ScaleXY(self.scale, 0, 5)
						
						local sizeUnscaled = MulDivRound(node.box:sizey(), 1000, self.scale:y())
						sizeUnscaled = sizeUnscaled + spaceBetweenButtons
						if not self.visible then
							sizeUnscaled = 0
						end
						
						dlg.idParent:SetMargins(box(0, 0, 0, sizeUnscaled))
					end,
				}),
				}),
			PlaceObj('XTemplateWindow', {
				'comment', "animation",
				'__context', function (parent, context) return "EndTurnAnimation" end,
				'__class', "XContextWindow",
				'ContextUpdateOnOpen', true,
				'OnContextUpdate', function (self, context, ...)
					if not ui_TimeSinceTurnStarted then return end
					
					local node = self:ResolveId("node")
					
					local initialSlideIn = {
						id = "slide-in",
						type = const.intRect,
						start = ui_TimeSinceTurnStarted,
						duration = ui_EndTurnAnimationDuration,
						originalRect = sizebox(0, 0, 1000, 1000),
						targetRect = sizebox(0, 100, 1000, 1000),
						OnLayoutComplete = EndTurnAnimationOnLayoutComplete,
						flags = const.intfInverse
					}
					node:AddInterpolation(initialSlideIn)
				end,
			}),
			}),
		PlaceObj('XTemplateWindow', {
			'HAlign', "right",
			'VAlign', "bottom",
			'HandleMouse', true,
		}, {
			PlaceObj('XTemplateTemplate', {
				'__context', function (parent, context) return Selection end,
				'__template', "GenericHUDButtonFrame",
				'Id', "idFastForwardFrame",
				'Margins', box(0, 0, 25, 25),
				'HAlign', "right",
				'FoldWhenHidden', true,
				'ContextUpdateOnOpen', true,
			}, {
				PlaceObj('XTemplateWindow', {
					'__class', "HUDButton",
					'RolloverTemplate', "SmallRolloverGeneric",
					'RolloverAnchor', "center-top",
					'Id', "idGameSpeed",
					'Padding', box(5, 0, 5, 0),
					'MinWidth', 170,
					'MaxWidth', 170,
					'ContextUpdateOnOpen', true,
					'OnContextUpdate', function (self, context, ...)
						local dlg = GetDialog(self)
						local is_visible = not dlg.idContent.target_visible
						
						local node = self:ResolveId("node")
						node:SetVisible(is_visible)
						
						if is_visible then
							local normal_speed = (g_FastForwardGameSpeedLocal or g_FastForwardGameSpeed) == "Normal"
							self.idNormalSpeedIcon:SetVisible(normal_speed)
							self.idFastSpeedIcon:SetVisible(not normal_speed)
							self.idGameSpeedText:SetVisible(true)
						end
						XContextWindow.OnContextUpdate(self, context, ...)
					end,
					'OnPressEffect', "action",
					'OnPressParam', "CombatFastForward",
				}, {
					PlaceObj('XTemplateWindow', {
						'Dock', "right",
					}, {
						PlaceObj('XTemplateWindow', {
							'__class', "XImage",
							'Id', "idNormalSpeedIcon",
							'HAlign', "right",
							'Image', "UI/Hud/speed_n",
						}),
						PlaceObj('XTemplateWindow', {
							'__class', "XImage",
							'Id', "idFastSpeedIcon",
							'HAlign', "right",
							'Image', "UI/Hud/speed_f",
						}),
						}),
					PlaceObj('XTemplateWindow', {
						'__class', "XText",
						'Id', "idGameSpeedText",
						'Margins', box(0, 0, 3, 0),
						'VAlign', "center",
						'TextStyle', "HUDHeaderEndTurn",
						'Translate', true,
						'Text', T(632109474094, --[[XTemplate IModeCombatMovement Text]] "GAME<newline>SPEED"),
						'TextHAlign', "center",
					}),
					PlaceObj('XTemplateWindow', {
						'comment', "controller hint",
						'__context', function (parent, context) return "GamepadUIStyleChanged" end,
						'__class', "XText",
						'HAlign', "left",
						'VAlign', "bottom",
						'ScaleModifier', point(700, 700),
						'TextStyle', "HUDHeaderBig",
						'ContextUpdateOnOpen', true,
						'OnContextUpdate', function (self, context, ...)
							self:SetVisible(GetUIStyleGamepad())
							XText.OnContextUpdate(self, context, ...)
						end,
						'Translate', true,
						'Text', T(855515298229, --[[XTemplate IModeCombatMovement Text]] "<ShortcutButton('CombatFastForward')>"),
					}),
					PlaceObj('XTemplateFunc', {
						'name', "OnSetRolloverInner(self, rollover)",
						'func', function (self, rollover)
							self.idGameSpeedText:SetRollover(rollover)
							XButton.OnSetRollover(self, rollover)
							
							local node = self:ResolveId("node")
							local hasSlidDown = false
							if ui_FastForwardButtonAnimationStarted then
								hasSlidDown = GetPreciseTicks() > (ui_FastForwardButtonAnimationStarted + ui_FastForwardButtonSlideDownAfter)
							end
							
							if rollover then
								if hasSlidDown then
									--print("sliding up")
									local interp = node:RemoveModifier("slide-down") or node.slide_down_interp
									interp.start = interp.flags == const.intfInverse and interp.start or GetPreciseTicks()
									interp.flags = const.intfInverse
									node:AddInterpolation(interp)
								else
									--print("pausing slide down")
									local interp = node:RemoveModifier("slide-down") or node.slide_down_interp
									node.slide_down_interp = interp
								end
							else
								if hasSlidDown then
									--print("sliding down")
									local interp = node:RemoveModifier("slide-down") or node.slide_down_interp
									interp.start = GetPreciseTicks()
									interp.flags = 0
									node:AddInterpolation(interp)
								elseif ui_FastForwardButtonAnimationStarted then
									--print("resuming slide down")
									local interp = node:RemoveModifier("slide-down") or node.slide_down_interp
									interp.start = ui_FastForwardButtonAnimationStarted + ui_FastForwardButtonSlideDownAfter
									interp.flags = 0
									node:AddInterpolation(interp)
								end
							end
						end,
					}),
					}),
				PlaceObj('XTemplateWindow', {
					'comment', "animation",
					'__context', function (parent, context) return "EndTurnAnimation" end,
					'__class', "XContextWindow",
					'ContextUpdateOnOpen', true,
					'OnContextUpdate', function (self, context, ...)
						if not ui_FastForwardButtonAnimationStarted then return end
						
						local node = self:ResolveId("node")
						
						local mod = {
							id = "slide-down",
							type = const.intRect,
							start = ui_FastForwardButtonAnimationStarted + ui_FastForwardButtonSlideDownAfter,
							duration = ui_CombatBarAnimationDuration,
							originalRect = sizebox(0, 0, 1000, 1000),
							targetRect = sizebox(0, 100, 1000, 1000),
							OnLayoutComplete = EndTurnAnimationOnLayoutComplete,
							flags = 0
						}
						if node.rollover then
							node.slide_down_interp = mod
						else
							node:AddInterpolation(mod)
						end
						
						local initialSlideIn = {
							id = "slide-in",
							type = const.intRect,
							start = ui_FastForwardButtonAnimationStarted,
							duration = ui_EndTurnAnimationDuration,
							originalRect = sizebox(0, 0, 1000, 1000),
							targetRect = sizebox(0, 100, 1000, 1000),
							OnLayoutComplete = EndTurnAnimationOnLayoutComplete,
							flags = const.intfInverse
						}
						node:AddInterpolation(initialSlideIn)
					end,
				}),
				PlaceObj('XTemplateWindow', {
					'comment', "animation gamepad wake up",
					'__context', function (parent, context) return "FastForwardButtonAnimation_GamepadWakeup" end,
					'__class', "XContextWindow",
					'OnContextUpdate', function (self, context, ...)
						local node = self:ResolveId("node")
						node.idGameSpeed:OnSetRollover(true)
						
						self:DeleteThread("delay")
						self:CreateThread("delay", function()
							Sleep(ui_FastForwardButtonSlideDownAfter)
							node.idGameSpeed:OnSetRollover(node.idGameSpeed.rollover)
						end)
					end,
				}),
				}),
			PlaceObj('XTemplateFunc', {
				'name', "OnSetRollover(self, rollover)",
				'func', function (self, rollover)
					local node = self:ResolveId("node")
					node.idFastForwardFrame.idGameSpeed:OnSetRolloverInner(rollover)
				end,
			}),
			}),
		PlaceObj('XTemplateWindow', {
			'__class', "XDialog",
			'IdNode', false,
			'HAlign', "center",
			'VAlign', "center",
			'ChildrenHandleMouse', false,
			'FocusOnOpen', "",
		}, {
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'Id', "idTurnText",
				'Padding', box(0, 0, 0, 0),
				'Visible', false,
				'FadeInTime', 100,
				'FadeOutTime', 3000,
				'TextStyle', "TacticalNotification",
				'Translate', true,
			}),
			}),
		}),
})
