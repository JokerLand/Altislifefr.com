/*
	File: fn_packupPanneauattention.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : Artkyom - AltisLifeFR.com
	
	Description:
	Ramasser un Panneau attention.
*/
private["_panneauattention"];
_panneauattention = nearestObjects[getPos player,["Orel_Panneau_Pied_Triangle"],8] select 0;
if(isNil "_panneauattention") exitWith {};

if(([true,"panneauattention",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre panneau Triangle.","PLAIN"];
	playSound "bag";
	deleteVehicle _panneauattention;
};
