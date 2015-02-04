/*
	File: fn_cone.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	cree la barriere et la place
*/
private["_position","_cone"];
_cone = "RoadCone_F" createVehicle [0,0,0];
_cone attachTo[player,[0,5.5,0]];
_cone setDir 90;
_cone setVariable["item",true];
_cone setVariable["idleTime",time,true];

life_cone = _cone;
waitUntil {isNull life_cone};

if(isNull _cone) exitWith {life_cone = ObjNull;};
_cone setPos [(getPos _cone select 0),(getPos _cone select 1),0];
_cone setDamage 1;
