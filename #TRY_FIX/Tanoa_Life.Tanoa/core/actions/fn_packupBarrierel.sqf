/*
	File: fn_packupBarrierel.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : ALFR
	
	Description:
	Packs up a deployed barrierel.
*/
private["_barrierel"];
_barrierel = nearestObjects[getPos player,["plp_up_WoodBarrierShortPoliceLightsOn"],8] select 0;
if(isNil "_barrierel") exitWith {};

if([true,"barrierl",1] call life_fnc_handleInv) then
{
    titleText[localize "STR_NOTF_barrierl","PLAIN"];
	playSound "bag";
	deleteVehicle _barrierel;
};
