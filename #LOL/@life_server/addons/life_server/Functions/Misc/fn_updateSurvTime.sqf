private["_oldPosition"];
while {true} do 
{
	_oldPosition = position player;
	_time = time + (60*15);
	waituntil{!(alive player) || time > _time};
	if (((player distance _oldPosition) > 100) && (alive player)) then 
	{
		["surv",1] call life_fnc_addStatPoint;
	};
};