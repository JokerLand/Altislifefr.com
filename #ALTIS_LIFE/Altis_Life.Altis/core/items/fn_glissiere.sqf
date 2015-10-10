/*
	File: fn_glissiere.sqf
	Author: Sakzy
	
	Description:
	cree la glissiere et la place
*/
private["_position","_glissiere"];
_glissiere = "Land_Mil_ConcreteWall_F" createVehicle [0,0,0];
_glissiere attachTo[player,[0,5.5,0]];
_glissiere setDir 90;
_glissiere setVariable["item",true];
_glissiere setVariable["idleTime",time,true];

life_glissiere = _glissiere;
waitUntil {isNull life_glissiere};

if(isNull _glissiere) exitWith {life_glissiere = ObjNull;};
_glissiere setPos [(getPos _glissiere select 0),(getPos _glissiere select 1),0];
_glissiere enableSimulation false;
_glissiere allowDamage false;
