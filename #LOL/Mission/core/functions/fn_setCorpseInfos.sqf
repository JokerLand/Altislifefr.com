// Killtype 1 = Gun
// Killtype 2 = Vehicle
// Killtype 3 = Déjà récup

_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

_dna = "NODNA";
_randomDNA = random 100;
if(!isNull _killer && {_killer != _unit}) then {
	// Killed by player
	if((vehicle _killer) == _killer) then {
		// Killed with weapon
		_weaponClass = currentWeapon _killer;
		_weapon = getText(configFile >> "CfgWeapons" >> _weaponClass >> "displayName");
		_distance = _unit distance _killer;
		_killerName = _killer getVariable ["realname",name _killer];
		switch (true) do {
            case (_distance < 1): {
				if(_randomDNA < 85) then {
					_dna = _killername;
				};
			};
            case (_distance < 2): {
				if(_randomDNA < 75) then {
					_dna = _killername;
				};
			};
            case (_distance < 4): {
				if(_randomDNA < 65) then {
					_dna = _killername;
				};
			};
            case (_distance < 5): {
				if(_randomDNA < 50) then {
					_dna = _killername;
				};
			};
            case (_distance < 15): {
				if(_randomDNA < 13) then {
					_dna = _killername;
				};
			};
		};
		_unit setVariable ["killedType",1,true];
		_unit setVariable ["killedInfos",[_weapon,_dna],true];
	} else {
		_vehicleClass = typeOf (vehicle _killer);
		_vehicle = getText(configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");
		_unit setVariable ["killedType",2,true];
		_unit setVariable ["killedInfos",[_vehicle],true];
	};
};