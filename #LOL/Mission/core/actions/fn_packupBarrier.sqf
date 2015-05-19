/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed spike strip.
*/
private["barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"roadBarrier",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé une barrière","PLAIN"];
	player removeAction life_action_roadBarrierPickup;
	life_action_roadBarrierPickup = nil;
	deleteVehicle _barrier;
};