/*
	File: cleanup.sqf
	Author: GeK "www.altislifefr.com"

	Description:
	Cleanup script init
*/

sleep 10;

{
	deleteVehicle _x;
} forEach allDead;

{
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Land_InfoStand_V2_F")then {
			deleteVehicle _x;

		};
	};
} forEach vehicles;