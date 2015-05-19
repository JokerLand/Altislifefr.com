/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_G_Offroad_01_armed_F": {65};
	case "B_Quadbike_01_F": {25};
	case "cl3_volha_black": {30};
	case "cl3_golf_mk2_black": {40};
	case "cl3_lada_red": {43};
	case "cl3_civic_vti_black": {47};
	case "cl3_polo_gti_black": {40};
	case "cl3_suv_black": {55};
	case "cl3_range_rover_black": {58};
	case "cl3_transit_black": {88};
	case "cl3_taurus_black": {20};
	case "cl3_defender_110_yellow": {60};
	case "C_Offroad_PN": {65};
	case "ALE_Fourgon_Caisse": {150};
	case "ALE_HEMTT_Box": {1000};
	case "D41_Trawler": {1000};
	case "ALE_Zamak_Couvert": {250};
	case "cl3_q7_black": {27};
	case "RDS_Octavia_Civ_01": {45};
	case "cl3_e60_m5_black": {20};
	case "cl3_dbs_volante_black": {13};
	case "cl3_e63_amg_black": {20};
	case "cl3_insignia_black": {20};
	case "cl3_z4_2008_black": {13};
	case "cl3_440cuda_black": {10};
	case "cl3_lamborghini_gt1_black": {8};
	case "D41_Trawler": {1000};
	case "cl3_carrera_gt_black": {10};
	case "cl3_murcielago_black": {8};
	case "cl3_reventon_black": {10};
	case "cl3_aventador_lp7004_black": {10};
	case "cl3_arielatom_black": {6};
	case "cl3_arielatom_race_black": {6};
	case "cl3_458_black": {8};
	case "cl3_r8_spyder_black": {13};
	case "cl3_dodge_charger_s_black": {15};
	case "cl3_veyron_blk_wht": {10};
	case "cl3_xr_1000_black": {5};
	case "civ_mondeo_Black": {50};
	case "ALE_MedSUV": {30};
	case "ALE_MedHayonSport": {37};
	case "ALE_MedOrca": {45};
	case "ALE_GendOffroad": {65};
	case "ALE_GendSUV": {30};
	case "ALE_GendQ7": {37};
	case "ALE_GendLB": {15};
	case "ALE_GignHellcat": {50};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_PN": {250};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_covered_F": {375};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {15};
	case "O_Heli_Light_02_unarmed_F": {20};
	case "I_Heli_Transport_02_F": {75};
	case "C_Rubberboat": {45};
	case "dezkit_b206_ls": {40};
	case "dezkit_b206_hs": {58};
	case "NH90": {130};
	case "Orel_Agora": {80};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {650};
	case "O_Truck_03_covered_F": {750};
	case "O_Truck_03_device_F": {425};
	case "Land_Box_AmmoOld_F": {700};
    case "B_supplyCrate_F": {1000};
	case "ford_mondeo_gend": {70};
	case "ALE_Brinks_Hunter": {0};
	default {-1};
};