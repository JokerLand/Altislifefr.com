#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	File: fn_updatePartial.sqf
	
	Description:
	Sends specific information to the server to update on the player,
	meant to keep the network traffic down with large sums of data flowing
	through life_fnc_MP
*/
if (spawnmenuon > 0) exitwith {};
private["_mode","_packet","_array","_flag"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_packet = [steamid,playerSide,nil,_mode];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"adac"};};

switch(_mode) do {
	case 0: {
		_packet set[2,CASH];
	};
	
	case 1: {
		_packet set[2,BANK];
	};
	
	case 2: {
		{
			_varName = LICENSE_VARNAME(configName _x,_flag);
			_array pushBack [_varName,LICENSE_VALUE(configName _x,_flag)];
		} foreach (format["getText(_x >> 'side') isEqualTo '%1'",_flag] configClasses (missionConfigFile >> "Licenses"));
		
		_packet set[2,_array];
	};
	
	case 3: {
		[] call life_fnc_saveGear;
		_packet set[2,life_gear];
	};
	
	case 4: {
		//Not yet implemented
	};
	
	case 5: {
		_packet set[2,life_is_arrested];
	};
	
	case 6: {
		_packet set[2,CASH];
		_packet set[4,BANK];
		
	};
	
	case 8: {
		if((player getVariable["ACE_isUnconscious",false]) || !(alive player)) then {life_is_alive = false;} else {life_is_alive = true;};
		// if((player getVariable["Revive",true]) && alive player) then {life_is_alive = true;} else {life_is_alive = false;};
		_packet set[4,life_is_alive];
		// _packet set[5,life_hunger];
		// _packet set[6,life_thirst];
		// _packet set[5,damage player];
		_packet set[5,(player getVariable["ACE_medical_bloodVolume",100])];
	};
};

[_packet,"DB_fnc_updatePartial",false,false] call life_fnc_MP;