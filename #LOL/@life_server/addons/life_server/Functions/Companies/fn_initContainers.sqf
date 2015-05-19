/*
	File: fn_initContainers.sqf
	Author: Mash6 -- Altis Life FR -- <http://www.altislifefr.com/>
	Compiled function name: life_fnc_initContainers
	
	DO NOT USE WITHOUT PERMISSION
	
	Description:
	Merci je suis Top FR
*/

waitUntil{!DB_Async_Active};
_count = (["SELECT COUNT(*) FROM containers",2] call DB_fnc_asyncCall) select 0;

_containers = [];

for "_x" from 1 to _count do {
	waitUntil{!DB_Async_Active};
	_new = [format["SELECT * FROM containers WHERE id='%1'",_x],2] call DB_fnc_asyncCall;
	_containers pushBack _new;
};

{
	_pos = call compile format["%1",_x select 2];
	// Get from map placed object
	_house = nearestObject _pos;

	// Disable damages
	_house allowDamage false;

	// Set objects in container
	_trunk = [_x select 3] call DB_fnc_mresToArray;
	if(typeName _trunk == "STRING") then {_trunk = call compile format["%1", _trunk];};
	_house setVariable["Trunk",_trunk,true];
	_house setVariable["contid",_x select 0,true];
	_house setVariable["companyID",_x select 1,true];
	_house setVariable["trunk_in_use",false,true];
} foreach _containers;