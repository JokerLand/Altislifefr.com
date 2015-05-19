/*
	File: fn_calVehWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Base configuration for vehicle weight
*/
private["_vehicle","_weight","_used"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};

_weight = -1;
_used = (_vehicle getVariable "Trunk") select 1;

switch ((typeOf _vehicle)) do
{
	case "C_Offroad_01_F": {_weight = 65;};
	case "cl3_volha_black": {_weight = 30;};
	case "B_G_Offroad_01_F": {_weight = 65;};
	case "B_G_Offroad_01_armed_F": {_weight = 35;};
	case "B_Quadbike_01_F": {_weight = 25;};
	case "I_Truck_02_covered_F": {_weight = 250;};
	case "I_Truck_02_transport_F": {_weight = 200;};
	case "C_Hatchback_01_F": {_weight = 40;};
	case "cl3_golf_mk2_black": {_weight = 40;};
	case "RDS_Octavia_Civ_01": {_weight = 45;};
	case "cl3_lada_red": {_weight = 43;};
	case "cl3_civic_vti_black": {_weight = 47;};
	case "cl3_polo_gti_black": {_weight = 40;};
	case "cl3_suv_black": {_weight = 55;};
	case "cl3_defender_110_yellow": {_weight = 60;};
	case "C_Offroad_PN": {_weight = 65;};
	case "C_Boat_PN": {_weight = 250;};
	case "ALE_Fourgon_Caisse": {_weight = 150;};
	case "ALE_HEMTT_Box": {_weight = 1000;};
	case "D41_Trawler": {_weight = 1000;};
	case "ALE_Zamak_Couvert": {_weight = 250;};
	case "cl3_range_rover_black": {_weight = 58;};
	case "cl3_transit_black": {_weight = 88;};
	case "cl3_taurus_black": {_weight = 20;};
	case "cl3_q7_black": {_weight = 27;};
	case "cl3_e60_m5_black": {_weight = 20;};
	case "cl3_dbs_volante_black": {_weight = 13;};
	case "cl3_defender_110_red": {_weight = 45;};
	case "cl3_e63_amg_black": {_weight = 20;};
	case "cl3_insignia_black": {_weight = 20;};
	case "cl3_z4_2008_black": {_weight = 13;};
	case "cl3_440cuda_black": {_weight = 10;};
	case "cl3_lamborghini_gt1_black": {_weight = 8;};
	case "cl3_carrera_gt_black": {_weight = 10;};
	case "cl3_murcielago_black": {_weight = 8;};
	case "cl3_reventon_black": {_weight = 10;};
	case "cl3_aventador_lp7004_black": {_weight = 10;};
	case "cl3_arielatom_black": {_weight = 6;};
	case "cl3_arielatom_race_black": {_weight = 6;};
	case "cl3_458_black": {_weight = 8;};
	case "cl3_r8_spyder_black": {_weight = 13;};
	case "cl3_dodge_charger_s_black": {_weight = 15;};
	case "cl3_veyron_blk_wht": {_weight = 10;};
	case "cl3_xr_1000_black": {_weight = 5;};
	case "civ_mondeo_Black": {_weight = 50;};
	case "ALE_MedSUV": {_weight = 30;};
	case "ALE_MedHayonSport": {_weight = 37;};
	case "ALE_MedOrca": {_weight = 45;};
	case "ALE_GendOffroad": {_weight = 65;};
	case "ALE_GendSUV": {_weight = 30;};
	case "ALE_GendQ7": {_weight = 37;};
	case "ALE_GendLB": {_weight = 15;};
	case "ALE_GignHellcat": {_weight = 50;};
	case "C_Hatchback_01_sport_F": {_weight = 45;};
	case "B_Truck_01_covered_F": {_weight = 375;};
	case "C_SUV_01_F": {_weight = 50;};
	case "C_Van_01_transport_F": {_weight = 100;};
	case "I_G_Van_01_transport_F": {_weight = 100;};
	case "C_Van_01_box_F": {_weight = 150;};
	case "C_Boat_Civil_01_F": {_weight = 85;};
	case "C_Boat_Civil_01_police_F": {_weight = 85;};
	case "C_Boat_Civil_01_rescue_F": {_weight = 85;};
	case "B_Truck_01_box_F": {_weight = 450;};
	case "B_Truck_01_transport_F": {_weight = 325;};
	case "O_Truck_03_transport_F": {_weight = 650;};
	case "O_Truck_03_covered_F": {_weight = 750;};
	case "O_Truck_03_device_F": {_weight = 425;};
	case "B_MRAP_01_F": {_weight = 65;};
	case "O_MRAP_02_F": {_weight = 60;};
	case "I_MRAP_03_F": {_weight = 58;};
	case "B_Heli_Light_01_F": {_weight = 15;};
	case "O_Heli_Light_02_unarmed_F": {_weight = 30;};
	case "dezkit_b206_ls": {_weight = 40;};
	case "dezkit_b206_hs": {_weight = 58;};
	case "I_Heli_Transport_02_F": {_weight = 75;};
	case "NH90": {_weight = 130;};
	case "Orel_Agora": {_weight = 80;};
	case "C_Rubberboat": {_weight = 45;};
	case "O_Boat_Armed_01_hmg_F": {_weight = 175;};
	case "B_Boat_Armed_01_minigun_F": {_weight = 175;};
	case "I_Boat_Armed_01_minigun_F": {_weight = 175;};
	case "B_G_Boat_Transport_01_F": {_weight = 45;};
	case "B_Boat_Transport_01_F": {_weight = 45;};
};

if(isNil "_used") then {_used = 0};
[_weight,_used];