private["_lastPos"];
waitUntil {(alive player) && (vehicle player == player)};
_lastPos = position player;
while {(alive player) && (vehicle player == player) && (isTouchingGround player)} do 
{
	_distance = round(_lastPos distance player);
	if(_distance < 150) then {
		life_runned = life_runned + _distance;
	};
	_lastPos = position player;
	sleep 3;
};
waitUntil {(alive player) && (vehicle player == player)};
[] spawn life_fnc_updateRunnedDistance;