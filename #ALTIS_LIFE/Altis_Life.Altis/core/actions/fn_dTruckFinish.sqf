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
  hint format["Ceci n'est pas le véhicule qui contient le transport. Veuillez revenir dans le véhicule avec lequel vous avez récupéré la marchandise"];
};

life_delivery_in_progress = false;
life_dTruck_point = nil;

_vehName = typeOf vehicle player;

_price = switch (_vehName) do {
	case "C_Van_01_transport_F": { "12500" };
	case "cl3_transit_black": { "18750" };
	case "C_Van_01_box_F": { "25000" };
	case "C_Van_01_Fuel_F": { "31250" };
	case "GeK_Renault_Trafic": { "35000" };
	case "I_Truck_02_transport_F": { "37500" };
	case "I_Truck_02_covered_F": { "43750" };
	case "B_Truck_01_transport_F": { "50000" };
	case "A3L_Dumptruck": { "56250" };
	case "B_Truck_01_covered_F": { "62500" };
	case "B_Truck_01_box_F": { "68750" };
        case "ALFR_GeK_Scania_420": { "68750" };
	case "ALFR_GeK_Volvo_FH16_2012": { "75000" };
	case "GeK_Renault_Magnum": { "100000" };
};

_price = parseNumber _price;

["DeliverySucceeded",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
life_cash = life_cash + _price;
