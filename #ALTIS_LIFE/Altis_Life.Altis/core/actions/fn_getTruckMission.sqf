/*
	File: fn_getTruckMission.sqf
	Author: "GeK" - www.altislifefr.com

	Description:
	Give a long truck mission delivery (Kavala-Athira-Sofia-Pyrgos). Accessible only with a truck.
*/
private["_dTruck","_target","_life_dTruck_point"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if (vehicle player == player) exitWith {
  hint format["Vous devez être dans un vehicule de transport (Camionnette ou Camion) pour prendre ce type de livraison"];
};

DtruckPlayerVeh = vehicle player;

if(!(typeOf DtruckPlayerVeh in ["C_Van_01_transport_F","cl3_transit_black","GeK_Renault_Trafic","C_Van_01_box_F","C_Van_01_Fuel_F","I_Truck_02_transport_F","I_Truck_02_covered_F","B_Truck_01_transport_F","A3L_Dumptruck","B_Truck_01_covered_F","B_Truck_01_box_F","ALFR_GeK_Scania_420","ALFR_GeK_Volvo_FH16_2012","GeK_Renault_Magnum"])) exitWith {
  hint format["Vous devez avoir un vehicule de transport (Camionnette ou Camion) pour ce type de livraison"];
};


if(str(_target) in life_dTruck_points) then
{
	private["_point"];
	_point = life_dTruck_points - [(str(_target))];
	_dTruck = _point call BIS_fnc_selectRandom;
}
	else
{
	_dTruck = life_dTruck_points call BIS_fnc_selectRandom;
};

life_dTruck_start = _target;

life_delivery_in_progress = true;
life_dTruck_point = call compile format["%1",_dTruck];

_dTruck = [_dTruck,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Delivery_%1",life_dTruck_point]];
life_cur_task setSimpleTaskDescription [format[localize "STR_NOTF_DPStart",toUpper _dTruck],"Transport de Fret",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;

["DeliveryAssigned",[format[localize "STR_NOTF_DPTask",toUpper _dTruck]]] call bis_fnc_showNotification;

[] spawn
{
	waitUntil {!life_delivery_in_progress OR !alive player OR !alive DtruckPlayerVeh};
	if(!alive DtruckPlayerVeh) then
	{
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dTruck_point = nil;
	};
	if(!alive player) then
	{
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dTruck_point = nil;
	};
};
