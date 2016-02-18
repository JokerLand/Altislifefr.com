/*
	File: fn_lightd.sqf
	Author: Sakzy
	
	Description:
	cree la lightd et la place
*/
private["_position","_lightd"];
_lightd = "Land_PortableLight_double_F" createVehicle [0,0,0];
_lightd attachTo[player,[0,5.5,0]];
_lightd setDir 90;
_lightd setVariable["item",true];
_lightd setVariable["idleTime",time,true];

life_lightd = _lightd;
waitUntil {isNull life_lightd};

if(isNull _lightd) exitWith {life_lightd = ObjNull;};
_lightd setPos [(getPos _lightd select 0),(getPos _lightd select 1),0];
_lightd allowDamage false;
