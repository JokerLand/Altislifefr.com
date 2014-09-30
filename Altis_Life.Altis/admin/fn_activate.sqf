/*
	File: fn_activate.sqf
*/
if ((getPlayerUID player) in ["76561198018721225","76561198134471438","76561198047615445","76561197998164895","76561197970613175","76561198016583555"]) then {
;
act = player addAction ["Tools",{execVM "admin\fn_tools.sqf";}];
};
