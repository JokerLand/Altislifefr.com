/*
	File: fn_packupLightd.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : Sakzy
	
	Description:
	Ramasser une lightd.
*/
private["_lightd"];
_lightd = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0;
if(isNil "_lightd") exitWith {};

if(([true,"lightd",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre lightd.","PLAIN"];
	playSound "bag";
	deleteVehicle _lightd;
};
