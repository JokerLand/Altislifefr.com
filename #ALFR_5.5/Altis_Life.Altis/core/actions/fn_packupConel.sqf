/*
	File: fn_packupConel.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux
	
	Description:
	Packs up a deployed conel.
*/
private["_conel"];
_conel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_conel") exitWith {};

if(([true,"conel",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre cône lumineux.","PLAIN"];
	playSound "bag";
	deleteVehicle _conel;
};
