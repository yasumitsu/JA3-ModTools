-- ========== GENERATED BY XTemplate Editor (Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('XTemplate', {
	group = "Zulu PDA",
	id = "PDADialogSatelliteEditor",
	PlaceObj('XTemplateTemplate', {
		'__template', "PDADialogSatellite",
	}, {
		PlaceObj('XTemplateFunc', {
			'name', "Open(self)",
			'func', function (self)
				local oldSatView = g_SatelliteUI or false
				rawset(self, "oldSatView", oldSatView)
				Pause("pda-editor", "keepSounds")
				XDialog.Open(self)
				self.idContent.idSatelliteEditorText:SetVisible(true)
				self.idContent.idNormalMode.idPausedText:SetVisible(true)
				self.idContent.idNormalMode.idPausedText:SetText(Untranslated("SATELLITE SECTOR EDITOR ACTIVE"))
				
				if oldSatView then
					self:CreateThread("sat-ready", function()
						WaitMsg("InitSatelliteView", 5000)
						g_SatelliteUI.OnDelete = empty_func
					end)
				end
			end,
		}),
		PlaceObj('XTemplateFunc', {
			'name', "Close(self)",
			'func', function (self)
				Resume("pda-editor")
				XDialog.Close(self)
				local oldSatView = rawget(self, "oldSatView")
				g_SatelliteUI = oldSatView
			end,
		}),
		PlaceObj('XTemplateWindow', {
			'__class', "PDACampaignPausingDlg",
		}),
		}),
})

