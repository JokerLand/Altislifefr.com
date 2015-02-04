#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "delta_shop":
	{
		_return = [
			["FLAY_HangGlider",10000],
			["FLAY_HangGliderBlack",50000]
		];
	};

	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",100000],
			["C_Kart_01_Fuel_F",100000],
			["C_Kart_01_Red_F",100000],
			["C_Kart_01_Vrana_F",100000]
		];
	};

	case "med_shop":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
	};

	case "med_air_hs":
	{
			if(__GETC__(life_mediclevel) > 1) then
			{
				_return set[count _return,
				["O_Heli_Light_02_unarmed_F",75000]];
			};
	};
	
	case "civ_car":
	{
		_return =
		[
			["RDS_Gaz24_Civ_02",2000],
			["RDS_S1203_Civ_01",3300],
			["A3L_VolksWagenGolfGTiblack",3300],
			["DAR_ImpalaCiv",5500],
			["RDS_Golf4_Civ_01",6000],
			["RDS_Octavia_Civ_01",6000],
			["A3L_PuntoBlue",6000],
			["cl3_civic_vti_black",7500],
			["DAR_FusionCiv",10000],
			["DAR_TaurusCiv",12000],
			["cl3_polo_gti_black",12000],
			["cl3_insignia_black",13000],
			["C_Offroad_01_F",14000],
			["DAR_TahoeCiv",16000],
			["C_SUV_01_F",22000],
			["SAL_AudiCiv",22000],
			["I_G_Offroad_01_F",55000],
			["DAR_M3CivGrey",40000],
			["cl3_e63_amg_black",50000],
			["cl3_range_rover_black",50000],
			["SAL_IROCCiv",95000],
			["SAL_77TRANSAMCiv",100000],
			["cl3_dodge_charger_s_black",110000],
			["DAR_ChallengerCivWhite",120000],
			["cl3_z4_2008_black",120000],
			["cl3_carrera_gt_black",150000],
			["cl3_dbs_volante_black",150000],
			["Jonzie_Viper",270000],
			["cl3_r8_spyder_black",270000],
			["cl3_458_black",275000],
			["cl3_murcielago_black",300000],
			["cl3_reventon_black",320000],
			["DAR_MF1Civ",400000],
			["cl3_lamborghini_gt1_black",1000000]
		];
	};

	case "civ_truck":
	{
			_return =
			[
				["C_Van_01_transport_F",40000],
				["C_Van_01_box_F",60000],
				["C_Offroad_01_repair_F",75000],
				["I_Truck_02_transport_F",75000],
				["I_Truck_02_covered_F",100000],
				["B_Truck_01_transport_F",200000],
				["A3L_Dumptruck",250000],
				["B_Truck_01_covered_F",300000],
				["ALFR_GeK_Scania_420",400000]
			];
	};

	case "donator":
	{
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["C_Offroad_01_F",2500],
				["C_Van_01_Fuel_F",7500],
				["C_SUV_01_F",20000],
				["I_G_Offroad_01_F",45000],
				["B_Heli_Light_01_F",100000],
				["B_Truck_01_box_F",250000],
				["ALFR_GeK_Scania_420",250000],
				["cl3_veyron_wht_blu",270000],
				["O_Truck_03_device_F",750000],
				["O_Heli_Light_02_unarmed_F",300000],
				["I_Heli_Transport_02_F",600000],
				["IVORY_T6A_1",3000000],
                ["RDS_Ikarus_Civ_01",100000]
			];
		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_G_Offroad_01_F",15000],
			["B_G_Van_01_transport_F",50000],
			["cl3_insignia_camo",75000],
			["cl3_dodge_charger_s_camo",200000],
			["cl3_e63_amg_camo",300000],
			["cl3_range_rover_camo",400000],
			["O_Truck_03_transport_F",1000000],
			["O_Truck_03_covered_F",1350000],
			["O_Truck_03_ammo_F",1500000],
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",650000]
		];

		if(license_civ_rebel) then
		{
			_return set[count _return,
			["O_MRAP_02_F",1666667]];
		};
		if(license_tlt) then
		{
			_return set[count _return,
			["B_MRAP_01_F",200000]];
		};
	};

	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",30000]];
		_return set[count _return,
		["DAR_ImpalaPolice",50000]];
		_return set[count _return,
		["DAR_TahoePolice",100000]];

		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["C_SUV_01_F",100000]];
		_return set[count _return,
		["DAR_TaurusPolice",100000]];
		};

			if(__GETC__(life_coplevel) > 2) then
			{
			_return set[count _return,
			["DAR_ChargerPoliceState",200000]];
			_return set[count _return,
			["DAR_DAR_02FirebirdSSVPolice",250000]];
			_return set[count _return,
			["cl3_murcielago_black",400000]];
			_return set[count _return,
			["cl3_e63_amg_camo",55000]];
			_return set[count _return,
			["cl3_insignia_camo",50000]];
			_return set[count _return,
			["I_MRAP_03_F",1000000]];
			_return set[count _return,
			["RDS_Ikarus_Civ_01",100000]];
			};

				if(__GETC__(life_coplevel) > 3) then
				{
				_return set[count _return,
				["DAR_ExplorerPolice",150000]];
				};
	};

	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",153000],
			["O_Heli_Light_02_unarmed_F",550000],
			["GNT_C185F",800000]
		];
	};

	case "cop_air":
	{
			if(__GETC__(life_coplevel) > 1) then
			{
				_return set[count _return,
				["B_Heli_Light_01_F",75000]];
			};

			if(__GETC__(life_coplevel) > 5) then
			{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			};
	};

	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};
	};

	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
    
    case "altis_armee":
    {
        _return = 
        [
            ["ALFR_armee_hunter",300],
            ["ALFR_armee_rover_camo",300],
            ["C_Van_01_box_F",60000],
            ["ALFR_armee_Insignia_camo",300]
        ];
    };
};

_return;