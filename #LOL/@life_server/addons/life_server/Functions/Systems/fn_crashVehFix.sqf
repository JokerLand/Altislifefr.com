{
	if(_x getVariable ["trunk_in_use",false]) then {
		_near = nearestObjects [_x, ["Man"], 10];
		{
			if(isPlayer _x && alive _x) then {
				_nearPlayer = true;
			};
		} foreach _near;
		if(!_nearPlayer) then {_x setVariable ["trunk_in_use",false,true]};
	};
} foreach (allMissionObjects "Car");