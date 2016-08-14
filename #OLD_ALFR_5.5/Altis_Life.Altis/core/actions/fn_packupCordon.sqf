/*
	File: fn_packupCordon.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : John.C
	
	Description:
	Ramasser un Cordon.
*/
private["_cordon"];
_cordon = nearestObjects[getPos player,["TapeSign_F"],8] select 0;
if(isNil "_cordon") exitWith {};

if(([true,"cordon",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre cordon.","PLAIN"];
	playSound "bag";
	deleteVehicle _cordon;
};
