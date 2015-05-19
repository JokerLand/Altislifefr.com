#include <macro.h>
/*
	File: fn_adminFreeze.sqf
	Author: ColinM9991
 
	Description: Freezes selected player
*/
if(__GETC__(life_adminlevel) < 7) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error";};


if(life_frozen) then {
	[{hint localize "STR_NOTF_Unfrozen";},"BIS_fnc_Spawn",_unit,false] call BIS_fnc_MP;
	[{disableUserInput false;},"BIS_fnc_Spawn",_unit,false] call BIS_fnc_MP;
	hint format[localize "STR_ANOTF_Unfrozen",_unit getVariable["realname",name _unit]];
	life_frozen = false;
	_pname = player getVariable ["realname",name player];
	_uname = _unit getVariable["realname",name _unit];
	_message = format["%1 a défreezé %2 !",_pname,_uname];
	adminLog = _message;
	publicVariableServer "adminLog";
} else {
	[{hint localize "STR_NOTF_Frozen";},"BIS_fnc_Spawn",_unit,false] call BIS_fnc_MP;
	[{disableUserInput true;},"BIS_fnc_Spawn",_unit,false] call BIS_fnc_MP;
	hint format[localize "STR_ANOTF_Frozen",_unit getVariable["realname",_unit]];
	life_frozen = true;
	_pname = player getVariable ["realname",name player];
	_uname = _unit getVariable["realname",name _unit];
	_message = format["%1 a freezé %2 !",_pname,_uname];
	adminLog = _message;
	publicVariableServer "adminLog";
};