/*
	File: fn_packupBarrier.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux
	
	Description:
	Packs up a deployed barriere.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["plp_upm_WoodBarrierLongPolice"],8] select 0;
if (isNil "_barrier") exitWith {};

if ([true,"barrier",1] call life_fnc_handleInv) then {
    titleText[localize "STR_NOTF_barrier","PLAIN"];
    player removeAction life_action_barrierPickup;
    life_action_barrierPickup = nil;
    deleteVehicle _barrier;
};