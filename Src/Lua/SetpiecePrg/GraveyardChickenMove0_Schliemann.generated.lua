-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

rawset(_G, 'SetpiecePrgs', rawget(_G, 'SetpiecePrgs') or {})
SetpiecePrgs.GraveyardChickenMove0_Schliemann = function(seed, state, TriggerUnits)
	local li = { id = "GraveyardChickenMove0_Schliemann" }
	local rand = BraidRandomCreate(seed or AsyncRand())
	local _, Schliemann
	prgdbg(li, 1, 1) _, Schliemann = sprocall(SetpieceAssignFromGroup.Exec, SetpieceAssignFromGroup, state, rand, Schliemann, "", "chicken", "Object", false)
	prgdbg(li, 1, 2) sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 2000)
	local _, chicken0
	prgdbg(li, 1, 3) _, chicken0 = sprocall(SetpieceGotoPosition.Exec, SetpieceGotoPosition, state, rand, false, "", Schliemann, "chicken0", true, true, false, "", false, true, "", 1000)
end