/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_ret =
		[
			["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa","civ","\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa","\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"],
			["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa","civ","\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa","\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"],
			["\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_1_indp_co.paa","reb","\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_2_indp_co.paa","\a3\air_f_beta\Heli_Transport_02\Data\heli_transport_02_3_indp_co.paa"]
		];
	};
	
	case "RDS_Golf4_Civ_01":
	{
		_ret =
		[
			["\rds_a2port_civ\VWGOLF\Data\vwgolf_body_black_co.paa","civ"],
			["\rds_a2port_civ\VWGOLF\Data\vwgolf_body_co.paa","civ"],
			["\rds_a2port_civ\VWGOLF\Data\vwgolf_body_green_co.paa","civ"],
			["\rds_a2port_civ\VWGOLF\Data\vwgolf_body_white_co.paa","civ"],
			["\rds_a2port_civ\VWGOLF\Data\vwgolf_body_yellow_co.paa","civ"]
		];
	};
	
	case "DAR_SWATPolice":
	{
		_ret =
		[
			["\dar_razorback\Data\body_co.PNG","cop"]
		];
	};
	
	case "C_Offroad_PN":
	{
		_ret =
		[
			["\ale_config\data\tex\offroad_pn.paa","pn"]
		];
	};
	
	case "C_Boat_PN":
	{
		_ret =
		[
			["\ale_config\data\tex\boat_pn.paa","pn"]
		];
	};
	
	case "cl3_xr_1000_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"]
		];
	};
	
	case "cl3_aventador_lp7004_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_440cuda_black":
	{
		_ret =
		[
			["\cl3_wheeled\plymouth\cuda\skin_yellow_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_yellow_stripe_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_blue_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_blue_flame_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_green_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_green_logo_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery08_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery12_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery14_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery27_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery51_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery55_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery69_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_flannery70_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_blue_ltn_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_black_co.paa","civ"],
			["\cl3_wheeled\plymouth\cuda\skin_black1_co.paa","civ"]
		];
	};
	
	case "RDS_Octavia_Civ_01":
	{
		_ret =
		[
			["\rds_a2port_civ\Octavia\Data\car_body_black_co.paa","civ"],
			["\rds_a2port_civ\Octavia\Data\car_body_blue_co.paa","civ"],
			["\rds_a2port_civ\Octavia\Data\car_body_co.paa","civ"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"]
		];
	};
	
	case "B_G_Offroad_01_armed_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Offroad_01\data\offroad_01_ext_ig01_co.paa","reb"]
		];
	};
	
	case "cl3_civic_vti_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_transit_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_golf_mk2_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_polo_gti_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_range_rover_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_dbs_volante_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"]
		];
	};
	
	case "cl3_q7_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_e60_m5_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_taurus_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_e63_amg_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_insignia_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_r8_spyder_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_z4_2008_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_lamborghini_gt1_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_murcielago_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_reventon_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_carrera_gt_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "civ_mondeo_Black":
	{
		_ret =
		[
			["\cl3_wheeled\ford\mondeo\data\flannery1\AquaMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\BurgundyMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\CardinalBurgundy_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\DarkGreenMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\GoldMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\GreenMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\GreyMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\LavendelMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\LightBlueMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\LightYellowMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\LimeMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\NavyBlueMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\OrangeMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\PinkMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\PurpleMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\RedMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\SilverMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\WhiteMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\YellowMondeo_co.paa","civ"],
			["\cl3_wheeled\ford\mondeo\data\flannery1\BlackMondeo_co.paa","civ"]
		];
	};
	
	case "cl3_defender_110_yellow":
	{
		_ret =
		[
			["\CL3_wheeled\a2cars\land_rover\data\lr_base_acr_co.paa","civ"],
			["\CL3_wheeled\a2cars\land_rover\data\lr_base_red_co.paa","civ"],
			["\CL3_wheeled\a2cars\land_rover\data\lr_base_acrs_co.paa","civ"]
		];
	};
	
	case "cl3_veyron_blk_wht":
	{
		_ret =
		[
			["\cl3_wheeled\bugatti\veyron\data\skin_bb_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_blb_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_blk_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_br_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_bw_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_rr_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_wb_co.paa","civ"],
			["\cl3_wheeled\bugatti\veyron\data\skin_ww_co.paa","civ"]
		];
	};
	
	case "cl3_458_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_flame2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone1_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone2_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone3_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone4_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\2tone5_co.paa","civ"]
		];
	};
	
	case "cl3_challenger_red":
	{
		_ret =
		[
			["\cl3_wheeled\dodge\challenger\skin\skin_aquablue_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_beige_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_Beige2_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_blue_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_brown_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_green_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_darksilver_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_lime_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_orange_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_orangeflame_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_pink_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_purple_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_red_co.paa","civ"],
			["\cl3_wheeled\dodge\challenger\skin\skin_yellow_co.paa","civ"]
		];
	};
	
	case "cl3_challenger_2009_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_arielatom_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_arielatom_race_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "cl3_dodge_charger_s_black":
	{
		_ret =
		[
			["\cl3_vehiclefunctions\skins\skin_black_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_yellow_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\light_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\navy_blue_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\aqua_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\red_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\burgundy_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\cardinal_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\orange_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\dark_green_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\gold_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\purple_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\grey_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lavender_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\lime_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\sand_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\silver_co.paa","civ"],
			["\cl3_vehiclefunctions\skins\skin_camo_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_camo_urban_co.paa","reb"],
			["\cl3_vehiclefunctions\skins\skin_white_co.paa","civ"]
		];
	};
	
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["\ale_config\data\tex\off_blue_neon.paa","civ"],
			["\ale_config\data\tex\off_hardline.paa","civ"],
			["\ale_config\data\tex\off_sexy_green.paa","civ"],
			["\ale_config\data\tex\off_skylight.paa","civ"],
			["\ale_config\data\tex\off_sunshine.paa","civ"],
			["\ale_config\data\tex\off_vivid_red.paa","civ"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["\ale_config\data\tex\suv_furious.paa","civ"],
			["\ale_config\data\tex\suv_abstract.paa","civ"],
			["\ale_config\data\tex\suv_antartica.paa","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blufor_co.paa","reb"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","reb"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","reb"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"]
		];
	};
	
	case "B_Truck_01_mover_F":
	{
		_ret =
		[
			["\ale_config\data\tex\hemtt_1.paa","rs","\ale_config\data\tex\hemtt_2.paa"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"],
			["\ale_config\data\tex\zk_red_f.paa","civ","\ale_config\data\tex\zk_red_t.paa"],
			["\ale_config\data\tex\zk_sky_f.paa","civ","\ale_config\data\tex\zk_sky_t.paa"],
			["\ale_config\data\tex\zk_white_f.paa","civ","\ale_config\data\tex\zk_white_t.paa"],
			["\ale_config\data\tex\zk_yellow_f.paa","civ","\ale_config\data\tex\zk_yellow_t.paa"],
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_opfor_co.paa","reb","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_opfor_co.paa"]
		];
	};
	
	case "ALE_Zamak_Couvert":
	{
		_ret =
		[
			["\ale_config\data\tex\zk_sky_f.paa","civ","\ale_config\data\tex\zk_sky_t.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_opfor_co.paa","reb","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_opfor_co.paa"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;