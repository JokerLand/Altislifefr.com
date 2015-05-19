private["_lastPos"];
waitUntil {(alive player) && (vehicle player != player) && ((vehicle player) isKindOf "Car") && (driver (vehicle player) == player)};
_lastPos = position player;
while {(alive player) && (vehicle player != player) && ((vehicle player) isKindOf "Car") && (driver (vehicle player) == player)} do 
{
	life_drived = round (life_drived + (_lastPos distance player));
	_lastPos = position player;
	sleep 3;
};
waitUntil {(alive player) && (vehicle player != player) && ((vehicle player) isKindOf "Car") && (driver (vehicle player) == player)};
[] spawn life_fnc_updateDrivedDistance;