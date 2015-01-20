/*
	@Version: 2.3
	@Author: [BWG] Joe
	@Edited: 14.11.2013
*/
private ["_pos"];

player setVariable ["playerSurrender", true, true];

while { player getVariable ["playerSurrender", false] }  do {
	player playMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
	
	// Check if player still alive.
	if (!alive player) then {
		player setVariable ["playerSurrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
