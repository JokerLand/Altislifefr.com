/*
	File: fn_packupGlissiere.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : Sakzy
	
	Description:
	Ramasser une glissiere.
*/
private["_glissiere"];
_glissiere = nearestObjects[getPos player,["Land_Mil_ConcreteWall_F"],8] select 0;
if(isNil "_glissiere") exitWith {};

if(([true,"glissiere",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre glissière.","PLAIN"];
	playSound "bag";
	deleteVehicle _glissiere;
};
