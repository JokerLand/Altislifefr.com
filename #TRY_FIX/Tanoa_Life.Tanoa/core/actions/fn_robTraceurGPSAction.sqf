/*
	File: fn_robTraceurGPSAction.sqf
	Author: Bryan "Tonic" Boardwine
	Edit by: UpperM

*/
private["_target"];
_target = cursorTarget;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};

hint "Vous avez pris le traceur GPS.";

[[player],"life_fnc_robTraceurGPS",_target,false] spawn life_fnc_MP;