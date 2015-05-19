/*
	File: fn_startBMission.sqf
	Author: Mash6 <Altis Life: Evolution> -- http://www.altislife-evolution.fr/ --
	
	Description:
	Starts Brinks Mission
*/

private["_veh","_pos"];


// 2 Checks, license, mission already taken
if(!license_civ_brinks) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous n'êtes pas un employé de la Brinks !","PLAIN"];};
if(brinks_inMission) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous êtes déjà en mission !","PLAIN"];};


// Get vehicle spawn position from map placed marker
_pos = getMarkerPos "brinks_vspawn";

// Check if vehicles around spawn point
if(count(nearestObjects[_pos,["Car","Ship","Air"],5]) != 0) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nQuelque chose bloque la sortie du véhicule !","PLAIN"];};

// Spawn vehicle
_veh = "ALE_Brinks_Hunter" createVehicle _pos;
_veh setDir 38;

_veh lock 2;

clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;

_money = round((random 100000) + 50000);
brinks_moneyStart = _money;

// Make the vehicle a Brinks vehicle and money to random amount
_veh setVariable ["money",_money,true];
_veh setVariable ["brinksvehic",true,true];

// Add to keychain
life_vehicles pushBack _veh;

// Set GVariables for future handling
brinks_inMission = true;
brinksVehic = _veh;


titleText[format["\n\n\n\n\n\n\n\n\n\n\n\nVotre Objectif : Remplir les DAB\nVotre véhicule à été préparé et contient %1 €. Revenez lorqu'il sera vide.\nSi vous êtes en équipe, vous êtes le seul a pouvoir remplir les DAB, vos collègues doivent vous protéger.",_money],"PLAIN"];