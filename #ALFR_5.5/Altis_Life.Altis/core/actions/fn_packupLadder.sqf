/*
	File: fn_packupLadder.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux
	
	Description:
	Packs up a deployed ladder.
*/
private["_ladder"];
_ladder = nearestObjects[getPos player,["Land_PierLadder_F"],8] select 0;
if(isNil "_ladder") exitWith {};

if(([true,"ladder",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre échelle.","PLAIN"];
	playSound "bag";
	deleteVehicle _ladder;
};
