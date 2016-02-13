#include <macro.h>
/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag"];
if (spawnmenuon >= 2) exitwith {};
_packet = [getPlayerUID player,(profileName),playerSide,CASH,BANK];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};

{
	_varName = LICENSE_VARNAME(configName _x,_flag);
	_array pushBack [_varName,LICENSE_VALUE(configName _x,_flag)];
} foreach (format["getText(_x >> 'side') isEqualTo '%1'",_flag] configClasses (missionConfigFile >> "Licenses"));

_packet pushBack _array;

if (spawnmenuon == 1) then {
	spawnmenuon = 2;
	_packet pushBack [];
} else {
//	_packet pushBack (getPosATL player);
};

// if((player getVariable["Revive",true]) && alive player) then {life_is_alive = true;} else {life_is_alive = false;};
if((player getVariable["ACE_isUnconscious",false]) || !(alive player)) then {life_is_alive = false;} else {life_is_alive = true;};
//diag_log format ["DEBUG CLIENT UPDATE %1, %2", player getVariable["Revive",false], alive player];
_packet pushBack life_is_alive;

_packet pushBack life_hunger;
_packet pushBack life_thirst;
// _packet pushBack (damage player);
_packet pushBack (player getVariable["ACE_medical_bloodVolume",100]);

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	case civilian: {
		_packet pushBack life_is_arrested;
	};
};

[_packet,"DB_fnc_updateRequest",false,false] call life_fnc_MP;