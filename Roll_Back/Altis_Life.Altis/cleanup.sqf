/*
	File: cleanup.sqf
	Author: GeK "www.altislifefr.com"

	Description:
	Cleanup script init and delete deadbodies every X seconds
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

while {true} do
	{
	sleep 10;

		{
		_sandGlass = _x getVariable "RYD_DeathTime";
		if (isNil "_sandGlass") then
			{
			_x setVariable ["RYD_DeathTime",time]
			}
		else
			{
			if ((time - _sandGlass) > 5) then
				{
				deleteVehicle _x
				}

			}
		}
	foreach AllDead;
	};