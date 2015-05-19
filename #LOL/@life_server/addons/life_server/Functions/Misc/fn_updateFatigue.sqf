private ["_fatigue"];
waitUntil {alive player};
while {alive player} do 
{
	_fatigue = getFatigue player;
	switch(endu_state) do {
		case 0:
		{
		};
		case 1:
		{
			if(_fatigue > 0) then {
				player setFatigue (_fatigue - 0.0019);
			};
		};
		case 2:
		{
			if(_fatigue > 0) then {
				player setFatigue (_fatigue - 0.0032);
			};
		};
		case 3:
		{
			if(_fatigue > 0) then {
				player setFatigue (_fatigue - 0.0042);
			};
		};
		case 4:
		{
			if(_fatigue > 0) then {
				player setFatigue (_fatigue - 0.0053);
			};
		};
	};
	sleep 2;
};
waitUntil {alive player};
[] spawn life_fnc_updateFatigue;