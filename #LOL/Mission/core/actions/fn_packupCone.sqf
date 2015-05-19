/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed spike strip.
*/
private["_cone"];
_cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_cone") exitWith {};

if(([true,"roadCone",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé un cone","PLAIN"];
	player removeAction life_action_roadConePickup;
	life_action_roadConePickup = nil;
	deleteVehicle _cone;
};