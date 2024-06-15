-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

rawset(_G, 'SetpiecePrgs', rawget(_G, 'SetpiecePrgs') or {})
SetpiecePrgs.FaithTest = function(seed, state)
	local li = { id = "FaithTest" }
	local rand = BraidRandomCreate(seed or AsyncRand())
	prgdbg(li, 1, 1) sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 700)
	prgdbg(li, 1, 2) sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, true, "", 400, 700)
	local _, BunsandCLiff
	prgdbg(li, 1, 3) _, BunsandCLiff = sprocall(SetpieceSpawn.Exec, SetpieceSpawn, state, rand, BunsandCLiff, "BunsandCLiff")
	local _, Fauda
	prgdbg(li, 1, 4) _, Fauda = sprocall(SetpieceSpawn.Exec, SetpieceSpawn, state, rand, Fauda, "Fauda")
	prgdbg(li, 1, 5) sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, false, "", "Max", "", "", "linear", 10000, false, false, point(198827, 97103, 43159), point(198827, 100933, 46373), point(215369, 99536, 45200), point(215369, 103366, 48414), 4200, 2000, false, 0, 0, 0, 0, 0, 0, "Default", 100)
	prgdbg(li, 1, 6) sprocall(SetpieceGotoPosition.Exec, SetpieceGotoPosition, state, rand, false, "Test", BunsandCLiff, "Dest01", true, false, false, "", false, false, "", 1000)
	prgdbg(li, 1, 7) sprocall(SetpieceGotoPosition.Exec, SetpieceGotoPosition, state, rand, false, "Test", Fauda, "Dest02", true, true, false, "", false, false, "", 1000)
	prgdbg(li, 1, 8) sprocall(SetpieceWaitCheckpoint.Exec, SetpieceWaitCheckpoint, state, rand, "Test")
	prgdbg(li, 1, 9) sprocall(SetpieceSetStance.Exec, SetpieceSetStance, state, rand, true, "", BunsandCLiff, "Standing", "Current Weapon", true)
	prgdbg(li, 1, 10) sprocall(SetpieceSetStance.Exec, SetpieceSetStance, state, rand, true, "", Fauda, "Standing", "Current Weapon", true)
	prgdbg(li, 1, 11) sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 700)
	prgdbg(li, 1, 12) sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, true, "", 400, 700)
end