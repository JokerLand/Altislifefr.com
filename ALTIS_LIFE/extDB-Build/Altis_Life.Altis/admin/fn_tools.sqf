/*
	File: fn_tools.sqf
*/
player removeAction act;
player addAction ["----------",{execVM "";}];
//player addAction ["God Mode",{execVM "admin\tools\fn_god.sqf";}];
player addAction ["Teleport",{execVM "admin\tools\fn_teleport.sqf";}];
//player addAction ["Set time to night", {"Change to Night Time",{timeSkipValue = 10; publicVariable "timeSkipValue";}];
//player addAction ["Heal Player",{player setDamage 0;}];
player addAction ["----------",{execVM "";}];