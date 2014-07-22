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
	
	case "med_air_hs": {
		_return = [
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["C_Hatchback_01_F",5000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["I_G_Offroad_01_F",65000]
		];
	};
	
	case "civ_truck":
	{
			_return =
			[
				["C_Van_01_box_F",60000],
				["C_Offroad_01_repair_F",75000],
				["I_Truck_02_transport_F",75000],
				["I_Truck_02_covered_F",100000],
				["B_Truck_01_transport_F",200000],
				["B_Truck_01_covered_F",400000]
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
				["C_Hatchback_01_sport_F",50000],
				["B_Heli_Light_01_F",200000],
				["B_Truck_01_box_F",250000],
				["O_Truck_03_device_F",750000],
				["O_Heli_Light_02_unarmed_F",600000],
				["I_Heli_Transport_02_F",1200000]
			];
		};
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_G_Offroad_01_F",15000],
			["B_G_Van_01_transport_F",50000],
			["O_MRAP_02_F",1000000],
			["O_Truck_03_transport_F",1000000],
			["O_Truck_03_covered_F",1350000],			
			["O_Truck_03_ammo_F",1500000],
			["B_Heli_Light_01_F",325000],
			["O_Heli_Light_02_unarmed_F",850000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",1500000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",5000000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_Hatchback_01_F",5000]];
  
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
		["C_SUV_01_F",20000]];
		};
  
			if(__GETC__(life_coplevel) > 4) then
			{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
			}; 
  
				if(__GETC__(life_coplevel) > 5) then
				{
				_return set[count _return,
				["B_MRAP_01_hmg_F",750000]];
				}; 
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
			if(__GETC__(life_coplevel) > 1) then
			{
				_return set[count _return,
				["B_Heli_Light_01_F",75000]];
			};
			
			if(__GETC__(life_coplevel) > 2) then
			{
				_return set[count _return,
				["I_Heli_light_03_unarmed_F",150000]];
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
};

_return;