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
	case "GNT_C185F": {150};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "wirk_gtr": {40};
	case "wirk_cayenne": {65};
	case "GeK_Mercedes_ML63": {70};
	case "GeK_Mercedes_ML63_Rebelle": {50};
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
	case "GeK_S60": {50};
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
	case "GeK_Renault_Trafic": {130};
	case "I_G_Van_01_transport_F": {150};
	case "B_G_Van_01_transport_F": {180};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "ALFR_GeK_Scania_420": {600};
	case "ALFR_GeK_Volvo_FH16_2012": {700};
	case "cl3_veyron_wht_blu": {10};
	case "B_Truck_01_box_F": {600};
	case "B_Truck_01_covered_F": {500};
	case "B_Truck_01_transport_F": {425};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {60};
	case "B_Heli_Light_01_F": {5};
	case "C_Heli_Light_01_civil_F": {5};
	case "O_Heli_Transport_04_bench_F": {5};
	case "I_Heli_light_03_unarmed_F": {5};
	case "O_Heli_Light_02_unarmed_F": {25};
	case "O_Heli_Transport_04_covered_F": {5};
	case "O_Heli_Transport_04_ammo_F": {5};
	case "B_Heli_Transport_03_F": {5};
	case "O_Heli_Transport_04_F": {5};
	case "I_Heli_Transport_02_F": {55};
	case "B_Heli_Transport_03_unarmed_F": {5};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {1000};
	case "O_Truck_03_covered_F": {1250};
	case "O_Truck_03_device_F": {850};
	case "O_Truck_03_ammo_F": {1500};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
    case "CL3_bus_cl_black": {80};
	case "cl3_suv_taxi": {100};
    case "cl3_suv_black": {100};
    case "cl3_taurus_black": {55};
	case "cl3_q7_black": {80};
	case "cl3_transit_black": {140};
	case "ivory_b206": {70};
    case "cl3_arielatom_race_black": {0};
    case "cl3_xr_1000_black": {5};
	case "cl3_arielatom_race_black": {0};
	case "DAR_4X4": {200};
	case "DAR_MK27": {300};
	case "DAR_MK27T": {400};
	case "DAR_MK23": {500};
	case "DAR_LHS_16": {600};
	case "GeK_TLC100": {75};
	case "ALFR_GeK_Pagani_Zonda": {20};
	case "wirk_ferrari_california": {20};
	case "ALFR_GeK_MF1": {20};
	case "GeK_Civilian_H1": {85};
    case "cg_rv_camper": {250};
    case "ivory_lfa": {10};
    case "ALFR_suv_armee": {100};
    case "Cha_UH60L_Unarmed_FFV_AUS": {5};
    case "Gurkha_f5": {60};
    case "AudiA8_Limo": {50};
	default {-1};
};
