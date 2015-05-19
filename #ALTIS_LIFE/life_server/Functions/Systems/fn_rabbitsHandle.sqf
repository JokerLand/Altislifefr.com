private["_targetPosition","_rabbitGroup","_rabbit","_totalRabbits","_radius","_randomX","_randomY","_randomPosition","_count","_diff"];

if (!isServer) exitWith {};

_targetPosition = getMarkerPos "rabbit_chase";
_rabbitGroup = createGroup sideLogic;
_totalRabbits = 35;
_radius = 300;

// Spawn Rabbits
for "_i" from 0 to (_totalRabbits - 1) do
{
    _randomX = round(random 250);
	_randomY = round(random 250);
			
	_randomPosition = [(_targetPosition select 0) + (_randomX),(_targetPosition select 1) + (_randomY),_targetPosition select 2];
	

	_rabbit = _rabbitGroup createUnit ["Rabbit_F", _randomPosition,[],0,"NONE"];
	_rabbit enableSimulation true;
    _rabbit setVectorUp surfaceNormal position _rabbit;
    _rabbit addEventHandler ["handleDamage", { _a = _this select 0; _d = _this select 2; _p = getPos _a; if (_d >= 1) then { _a setDamage 1; _v = vectorUp _a; _v set [2, (_v select 2) - 1]; _a setVectorUp _v; _p set [2, 0.1]; _a setPos _p; }; }];
};

// Check rabbit position and count
while {true} do
{
    {
		if (_x distance _targetPosition > _radius) then
        {            
            _randomX = round(random 250);
			_randomY = round(random 250);
                        
            _x setPos [(_targetPosition select 0) + (_randomX),(_targetPosition select 1) + (_randomY),_targetPosition select 2];
			_x enableSimulation true;
		}
   
    } forEach units _rabbitGroup;
	
	_count = count(units _rabbitGroup);
	_diff = _totalRabbits - _count;
	
	if(_diff > 0) then {
		for "_i" from 0 to (_diff - 1) do
		{
		    _randomX = round(random 80);
			_randomY = round(random 80);
			_randomPosition = [(_targetPosition select 0) + (_randomX),(_targetPosition select 1) + (_randomY),_targetPosition select 2];
			_rabbit = _rabbitGroup createUnit ["Rabbit_F", _randomPosition,[],0,"NONE"];
			_rabbit enableSimulation true;
			_rabbit setVectorUp surfaceNormal position _animal;
			_rabbit addEventHandler ["handleDamage", { _a = _this select 0; _d = _this select 2; _p = getPos _a; if (_d >= 1) then { _a setDamage 1; _v = vectorUp _a; _v set [2, (_v select 2) - 1]; _a setVectorUp _v; _p set [2, 0.1]; _a setPos _p; }; }];
		};
	};
    sleep 120;
};