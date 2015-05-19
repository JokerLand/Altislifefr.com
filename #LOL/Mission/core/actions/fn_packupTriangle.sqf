/*
	File: fn_packupTriangle.sqf
	Author: Sam
	
	Description:
	Packs up a deployed luminescent triangle.
*/
private["_triangle"];
_triangle = nearestObjects[getPos player,["ALE_Triangle_Signalisation"],8] select 0;
if(isNil "_triangle") exitWith {};

if(([true,"triangleSignal",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé un triangle de signalisation","PLAIN"];
	player removeAction life_action_triangleSignalPickup;
	life_action_triangleSignalPickup = nil;
	deleteVehicle _triangle;
};