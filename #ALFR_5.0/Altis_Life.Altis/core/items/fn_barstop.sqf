/*
	File: fn_barstop.sqf
	Author: Sakzy
	
	Description:
	cree la barstop et la place
*/
private["_position","_barstop"];
_barstop = "Land_BarGate_F" createVehicle [0,0,0];
_barstop attachTo[player,[0,5.5,0]];
_barstop setDir 90;
_barstop setVariable["item",true];
_barstop setVariable["idleTime",time,true];

life_barstop = _barstop;
waitUntil {isNull life_barstop};

if(isNull _barstop) exitWith {life_barstop = ObjNull;};
_barstop setPos [(getPos _barstop select 0),(getPos _barstop select 1),0];
_barstop allowDamage false;
