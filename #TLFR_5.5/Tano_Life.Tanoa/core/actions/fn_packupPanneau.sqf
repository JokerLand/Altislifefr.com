/*
	File: fn_packupPanneau.sqf
	Author: Bryan "Tonic" Boardwine
	Modified : Artkyom
	
	Description:
	Ramasser un Panneau.
*/
private["_panneau"];
_panneau = nearestObjects[getPos player,["Orel_Panneau_Pied_Rond"],8] select 0;
if(isNil "_panneau") exitWith {};

if(([true,"panneau",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez ramassé votre panneau Rond.","PLAIN"];
	playSound "bag";
	deleteVehicle _panneau;
};
