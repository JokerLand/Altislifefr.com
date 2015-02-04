/*
	File: fn_packupCone.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux
	
	Description:
	Packs up a deployed cone.
*/
private["_cone"];
_cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_cone") exitWith {};

if(([true,"cone",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre cône.","PLAIN"];
	playSound "bag";
	deleteVehicle _cone;
};
