-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

rawset(_G, 'SetpiecePrgs', rawget(_G, 'SetpiecePrgs') or {})
SetpiecePrgs.MoveTest = function(seed, state, TriggerUnits)
	local li = { id = "MoveTest" }
	local rand = BraidRandomCreate(seed or AsyncRand())
	prgdbg(li, 1, 1) sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, false, "", "Max", 2, "linear", "linear", 7000, false, false, point(140590, 167813, 20042), point(140590, 171643, 23256), point(153600, 152591, 6950), point(153600, 165700, 17950), 4200, 2000, false, 0, 0, 0, 0, 0, 0, "Default", 100)
	prgdbg(li, 1, 2) sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 750)
	local _, Particles
	prgdbg(li, 1, 3) _, Particles = sprocall(SetpieceSpawnParticles.Exec, SetpieceSpawnParticles, state, rand, Particles, "Parts")
	prgdbg(li, 1, 4) sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 750)
	local _, Bunny
	prgdbg(li, 1, 5) _, Bunny = sprocall(SetpieceSpawn.Exec, SetpieceSpawn, state, rand, Bunny, "Bunny")
	prgdbg(li, 1, 6) sprocall(PrgPlaySetpiece.Exec, PrgPlaySetpiece, state, rand, false, "End", "", "SubMoveTest", Bunny)
	prgdbg(li, 1, 7) sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 750)
	prgdbg(li, 1, 8) sprocall(SetpieceCameraShake.Exec, SetpieceCameraShake, state, rand, false, "", 0, 460, 250, 120, 360)
	prgdbg(li, 1, 9) sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 750)
	prgdbg(li, 1, 10) sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 700)
	local _, Honey
	prgdbg(li, 1, 11) _, Honey = sprocall(SetpieceSpawn.Exec, SetpieceSpawn, state, rand, Honey, "Honey")
	prgdbg(li, 1, 12) sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, true, "", 400, 700)
	prgdbg(li, 1, 13) sprocall(PrgPlaySetpiece.Exec, PrgPlaySetpiece, state, rand, false, "End", "", "SubMoveTest", Honey)
	prgdbg(li, 1, 14) sprocall(SetpieceDespawn.Exec, SetpieceDespawn, Particles)
	prgdbg(li, 1, 15) sprocall(SetpieceWaitCheckpoint.Exec, SetpieceWaitCheckpoint, state, rand, "End")
end