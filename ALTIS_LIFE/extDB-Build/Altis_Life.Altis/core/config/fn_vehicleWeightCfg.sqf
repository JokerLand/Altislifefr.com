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
	case "RDS_Gaz24_Civ_02": {45};
	case "GNT_C185F": {150};
	case "RDS_S1203_Civ_01": {65};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "RDS_Golf4_Civ_01": {40};
	case "RDS_Octavia_Civ_01": {45};
	case "DAR_ImpalaCiv": {55};
	case "A3L_PuntoBlue": {35};
	case "DAR_FusionCiv": {50};
	case "DAR_TaurusCiv": {55};
	case "DAR_TahoeCiv": {95};
	case "C_Offroad_01_F": {65};
	case "SAL_AudiCiv": {50};
	case "DAR_M3CivGrey": {20};
	case "BMW_M5Black": {50};
	case "SAL_IROCCiv": {20};
	case "SAL_77TRANSAMCiv": {20};
	case "cl3_civic_vti_black": {35};
	case "cl3_polo_gti_black": {30};
	case "cl3_insignia_black": {50};
	case "cl3_e63_amg_black": {50};
	case "cl3_range_rover_black": {85};
	case "cl3_dodge_charger_s_black": {65};
	case "cl3_z4_2008_black": {10};
	case "cl3_carrera_gt_black": {10};
	case "cl3_dbs_volante_black": {20};
	case "cl3_r8_spyder_black": {10};
	case "cl3_458_black": {10};
	case "cl3_murcielago_black": {10};
	case "cl3_reventon_black": {10};
	case "cl3_insignia_camo": {40};
	case "cl3_dodge_charger_s_camo": {40};
	case "cl3_e63_amg_camo": {40};
	case "cl3_range_rover_camo": {85};
	case "DAR_ChallengerCivWhite": {20};
	case "Jonzie_Viper": {20};
	case "cl3_veyron_blk_wht": {10};
	case "cl3_lamborghini_gt1_black": {10};
	case "DAR_MF1Civ": {10};
	case "A3L_Dumptruck": {400};
	case "GNT_C185": {90};
	case "IVORY_T6A_1": {50};
	case "C_Offroad_01_F": {65};
	case "I_G_Offroad_01_F": {75};
	case "B_G_Offroad_01_F": {65};
	case "C_Offroad_01_repair_F": {50};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {350};
	case "I_Truck_02_transport_F": {300};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {130};
	case "I_G_Van_01_transport_F": {150};
	case "B_G_Van_01_transport_F": {180};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "ALFR_GeK_Scania_420": {600};
	case "cl3_veyron_wht_blu": {10};
	case "B_Truck_01_box_F": {600};
	case "B_Truck_01_covered_F": {500};
	case "B_Truck_01_transport_F": {425};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {50};
	case "I_Heli_light_03_unarmed_F": {100};
	case "O_Heli_Light_02_unarmed_F": {100};
	case "I_Heli_Transport_02_F": {175};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {500};
	case "O_Truck_03_covered_F": {550};
	case "O_Truck_03_device_F": {400};
	case "O_Truck_03_ammo_F": {700};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
    case "RDS_Ikarus_Civ_01": {80};
    case "ALFR_Armee_Hummingbird": {50};
	default {-1};
};