/*
	File: fn_packupBarstop.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : Sakzy
	
	Description:
	Ramasser une barstop.
*/
private["_barstop"];
_barstop = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0;
if(isNil "_barstop") exitWith {};

if(([true,"barstop",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre barstop.","PLAIN"];
	playSound "bag";
	deleteVehicle _barstop;
};
