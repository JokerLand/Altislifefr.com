/*
	File: fn_dTruckFinish.sqf
	Author: "GeK" - www.altislifefr.com

	Description:
	Ends the Truck delivery mission.
*/
private["_dTruck","_dis","_price","_spaceMultiplicator","_trunkSpace","_vehName"];
_dTruck = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if (vehicle player == player) exitWith {
  hint format["Vous devez être dans votre vehicule"];
};

if (vehicle player != DtruckPlayerVeh) exitWith {
  hint format["Ceci n'est pas le véhicule qui contient les organes. Veuillez revenir dans le véhicule avec lequel vous avez stocké les organes"];
};

life_delivery_in_progress = false;
life_dTruck_point = nil;

_vehName = typeOf vehicle player;

_price = switch (_vehName) do {
	case "C_Offroad_01_F": { "12500" };
	case "GeK_Renault_Trafic_Ambulance": { "18750" };
	case "C_SUV_01_F": { "25000" };
	case "Jonzie_Ambulance": { "31250" };
	case "GeK_TLC100_Medic": { "35000" };
	case "zorak_master_ambulance": { "37500" };
	case "GeK_S60_Medic": { "43750" };
	case "B_Truck_01_medical_F": { "50000" };
};

_price = parseNumber _price;

["Dépôt d'Organes : Accompli",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
life_cash = life_cash + _price;
