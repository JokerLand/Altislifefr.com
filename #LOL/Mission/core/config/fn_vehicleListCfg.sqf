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
			["C_Kart_01_Blu_F",3000],
			["C_Kart_01_Fuel_F",3000],
			["C_Kart_01_Red_F",3000],
			["C_Kart_01_Vrana_F",3000]
		];
	};
	
	case "bike":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["cl3_xr_1000_black",33000]];
		};
	};
	
	case "aratv":
	{
		_return = [
			["cl3_transitNews",25000]
		];
	};
	
	case "aratv_air":
	{
		_return = [
			["dezkit_b206_news",666750]
		];
	};
	
	case "skate":
	{
		_return = [
			["cl_skatea",200],
			["cl_skateb",200],
			["cl_skatec",200],
			["cl_skated",200],
			["cl_skatee",200],
			["cl_skatef",200],
			["cl_skateg",200],
			["cl_skateh",200],
			["cl_skatei",200],
			["cl_skatej",200],
			["cl_skatek",200],
			["cl_skatel",200],
			["cl_skatem",200],
			["cl_skaten",200],
			["cl_skatep",200],
			["cl_skateq",200],
			["cl_skater",200],
			["cl_skates",200],
			["cl_skatet",200],
			["cl_skateu",200],
			["cl_skatev",200],
			["cl_skatew",200],
			["cl_skatex",200],
			["cl_skatey",200]
		];
	};
	
	case "civ_used_cars":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["B_Quadbike_01_F",840]];
			_return set[count _return,
			["RDS_Gaz24_Civ_01",1650]];
			_return set[count _return,
			["RDS_Gaz24_Civ_02",1650]];
			_return set[count _return,
			["RDS_Gaz24_Civ_03",1650]];
			_return set[count _return,
			["cl3_volha_black",1400]];
			_return set[count _return,
			["RDS_Golf4_Civ_01",2250]];
			_return set[count _return,
			["cl3_golf_mk2_black",1862]];
			_return set[count _return,
			["RDS_Octavia_Civ_01",2100]];
			_return set[count _return,
			["C_Hatchback_01_F",2282]];
			_return set[count _return,
			["cl3_lada_red",2331]];
			_return set[count _return,
			["cl3_civic_vti_black",5600]];
			_return set[count _return,
			["C_Offroad_01_F",6062]];
			_return set[count _return,
			["cl3_polo_gti_black",6762]];
			_return set[count _return,
			["civ_mondeo_Black",11200]];
			_return set[count _return,
			["C_SUV_01_F",23268]];
			_return set[count _return,
			["cl3_suv_black",24500]];
			_return set[count _return,
			["cl3_range_rover_black",25900]];
			_return set[count _return,
			["C_Van_01_transport_F",28000]];
			_return set[count _return,
			["cl3_transit_black",35000]];
		} else {
			_return set[count _return,
			["B_Quadbike_01_F",1200]];
			_return set[count _return,
			["cl3_volha_black",2000]];
			_return set[count _return,
			["cl3_golf_mk2_black",2660]];
			_return set[count _return,
			["RDS_Octavia_Civ_01",3000]];
			_return set[count _return,
			["C_Hatchback_01_F",3260]];
			_return set[count _return,
			["cl3_lada_red",3330]];
			_return set[count _return,
			["cl3_civic_vti_black",8000]];
			_return set[count _return,
			["C_Offroad_01_F",8660]];
			_return set[count _return,
			["cl3_polo_gti_black",9660]];
			_return set[count _return,
			["civ_mondeo_Black",16000]];
			_return set[count _return,
			["C_SUV_01_F",33240]];
			_return set[count _return,
			["cl3_suv_black",35000]];
			_return set[count _return,
			["cl3_range_rover_black",37000]];
			_return set[count _return,
			["C_Van_01_transport_F",40000]];
			_return set[count _return,
			["cl3_transit_black",50000]];
		};
	};
	
	case "civ_luxury_cars":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["cl3_taurus_black",74662]];
			_return set[count _return,
			["cl3_q7_black",84000]];
			_return set[count _return,
			["cl3_e60_m5_black",98000]];
			_return set[count _return,
			["cl3_dbs_volante_black",146660]];
			_return set[count _return,
			["cl3_defender_110_yellow",107331]];
			_return set[count _return,
			["cl3_e63_amg_black",160000]];
			_return set[count _return,
			["cl3_insignia_black",119000]];
		} else {
			_return set[count _return,
			["cl3_taurus_black",106660]];
			_return set[count _return,
			["cl3_q7_black",120000]];
			_return set[count _return,
			["cl3_e60_m5_black",140000]];
			_return set[count _return,
			["cl3_defender_110_yellow",153330]];
			_return set[count _return,
			["cl3_insignia_black",170000]];
		};
	};
	
	case "civ_sport_cars":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",88662]];
			_return set[count _return,
			["cl3_z4_2008_black",107331]];
			_return set[count _return,
			["cl3_440cuda_black",133000]];
			_return set[count _return,
			["cl3_lamborghini_gt1_black",163331]];
			_return set[count _return,
			["cl3_carrera_gt_black",250000]];
			_return set[count _return,
			["cl3_murcielago_black",182000]];
			_return set[count _return,
			["cl3_reventon_black",316660]];
			_return set[count _return,
			["cl3_458_black",333330]];
			_return set[count _return,
			["cl3_r8_spyder_black",261331]];
			_return set[count _return,
			["cl3_dodge_charger_s_black",364000]];
			_return set[count _return,
			["cl3_aventador_lp7004_black",406000]];
			_return set[count _return,
			["cl3_arielatom_black",400000]];
			_return set[count _return,
			["cl3_arielatom_race_black",430000]];
			_return set[count _return,
			["cl3_veyron_blk_wht",1166660]];
		} else {
			_return set[count _return,
			["C_Hatchback_01_sport_F",126660]];
			_return set[count _return,
			["cl3_z4_2008_black",153330]];
			_return set[count _return,
			["cl3_440cuda_black",190000]];
			_return set[count _return,
			["cl3_lamborghini_gt1_black",233330]];
			_return set[count _return,
			["cl3_murcielago_black",260000]];
			_return set[count _return,
			["cl3_r8_spyder_black",373330]];
			_return set[count _return,
			["cl3_dodge_charger_s_black",520000]];
			_return set[count _return,
			["cl3_aventador_lp7004_black",580000]];
		};
	};
	
	case "med_shop":
	{
		_return = [
			["ALE_MedSUV",0],
			["ALE_MedHayonSport",0]
		];
	};
	
	case "med_air_hs":
	{
		_return = [
			["ALE_MedOrca",0]
		];
	};
	
	case "med_air_bell":
	{
		_return = [
			["dezkit_b206_ems",0]
		];
	};
	
	case "donator":
	{
		if(__GETC__(life_donator) > 0) then
		{
			_return set[count _return,
			["C_Offroad_01_F",5625]];
			_return set[count _return,
			["C_SUV_01_F",10500]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",50100]];
			_return set[count _return,
			["I_Heli_Transport_02_F",495000]];
			_return set[count _return,
			["O_Truck_03_device_F",750000]];
			_return set[count _return,
			["O_Truck_03_transport_F",910000]];
			_return set[count _return,
			["O_Truck_03_covered_F",1300000]];
			_return set[count _return,
			["B_Truck_01_box_F",294000]];
			_return set[count _return,
			["B_Truck_01_covered_F",161000]];
		};
	};
			
	case "civ_truck":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["C_Van_01_box_F",42000]];
			_return set[count _return,
			["I_Truck_02_transport_F",71862]];
			_return set[count _return,
			["I_Truck_02_covered_F",101962]];
			_return set[count _return,
			["B_Truck_01_transport_F",133231]];
			_return set[count _return,
			["B_Truck_01_covered_F",161000]];
			_return set[count _return,
			["B_Truck_01_box_F",231000]];
		} else {
			_return set[count _return,
			["C_Van_01_box_F",60000]];
			_return set[count _return,
			["I_Truck_02_transport_F",102660]];
			_return set[count _return,
			["I_Truck_02_covered_F",145660]];
			_return set[count _return,
			["B_Truck_01_transport_F",190330]];
			_return set[count _return,
			["B_Truck_01_covered_F",230000]];
			_return set[count _return,
			["B_Truck_01_box_F",330000]];
		};			
	};
		
		
	case "reb_car":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["cl3_volha_black",1400]];
			_return set[count _return,
			["B_Quadbike_01_F",1750]];
			_return set[count _return,
			["cl3_lada_red",2331]];
			_return set[count _return,
			["B_G_Offroad_01_F",10500]];
			_return set[count _return,
			["cl3_range_rover_black",25900]];
			_return set[count _return,
			["cl3_dodge_charger_s_black",364000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",455000]];
		} else {
			_return set[count _return,
			["cl3_volha_black",2000]];
			_return set[count _return,
			["B_Quadbike_01_F",2500]];
			_return set[count _return,
			["cl3_lada_red",3330]];
			_return set[count _return,
			["B_G_Offroad_01_F",15000]];
			_return set[count _return,
			["cl3_range_rover_black",37000]];
			_return set[count _return,
			["cl3_dodge_charger_s_black",520000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",650000]];
		};
	};
	
	case "reb_air":
	{
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",553000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1200000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",1800000]];
		};
	};
	
	case "ac_air":
	{
		if(license_civ_ac) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",553000]];
		};
	};
	
	case "gis_car":
	{
		if(license_civ_gis) then
		{
			_return set[count _return,
			["cl3_suv_black",35000]];
			_return set[count _return,
			["cl3_range_rover_black",37000]];
			_return set[count _return,
			["cl3_insignia_black",170000]];
		};
	};
	
	case "ac_car":
	{
		if(license_civ_ac) then
		{
			_return set[count _return,
			["cl3_suv_black",35000]];
			_return set[count _return,
			["cl3_insignia_black",170000]];
			_return set[count _return,
			["cl3_e60_m5_black",140000]];
		};
	};
	
	case "pn_cars":
	{
		if(license_civ_pn) then
		{
			_return set[count _return,
			["C_Offroad_PN",0]];
			_return set[count _return,
			["ALE_Fourgon_Caisse",0]];
			_return set[count _return,
			["ALE_HEMTT_Box",0]];
			_return set[count _return,
			["ALE_Zamak_Couvert",0]];
		};
	};
	
	case "transevo_car":
	{
		if(license_civ_transevo) then
		{
			_return set[count _return,
			["Orel_Agora",0]];
		};
	};
	
	case "pn_ship":
	{
		if(license_civ_pn) then
		{
			_return set[count _return,
			["C_Boat_PN",0]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["ALE_GendOffroad",0]];
		_return set[count _return,
		["ALE_GendSUV",0]];
		_return set[count _return,
		["ALE_Gend_Bus",0]];
		_return set[count _return,
		["ford_mondeo_gend",0]];
		_return set[count _return,
		["ALE_GendQ7",0]];
		if(__GETC__(life_coplevel) >= 7) then
		{
			_return set[count _return,
			["cl3_suv_black",0]];
			_return set[count _return,
			["DAR_SWATPolice",0]];
		};
	};
	
	case "civ_air":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",466725]];
			_return set[count _return,
			["C_Heli_Light_01_civil_F",466725]];
			_return set[count _return,
			["GNT_C185",650000]];
			_return set[count _return,
			["dezkit_b206_ls",665000]];
			_return set[count _return,
			["dezkit_b206_hs",711666]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",816676]];
			_return set[count _return,
			["I_Heli_Transport_02_F",1155000]];
			_return set[count _return,
			["NH90",1400000]];
		} else {
			_return set[count _return,
			["B_Heli_Light_01_F",666750]];
			_return set[count _return,
			["C_Heli_Light_01_civil_F",666750]];
			_return set[count _return,
			["dezkit_b206_ls",950000]];
			_return set[count _return,
			["dezkit_b206_hs",1016666]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1166680]];
			_return set[count _return,
			["I_Heli_Transport_02_F",1650000]];
			_return set[count _return,
			["NH90",2000000]];
		};
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["dezkit_b206_gend",0]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["ALE_GignHellcat",0]];
		};
		if(__GETC__(life_coplevel) >= 10) then
		{
			_return set[count _return,
			["B_Heli_Transport_03_F",0]];
			_return set[count _return,
			["C130J",0]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["ALE_GendLB",0]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["ALE_GignHellcat",0]];
		};
		if(__GETC__(life_coplevel) >= 10) then
		{
			_return set[count _return,
			["B_Heli_Transport_03_F",0]];
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
			["B_Boat_Transport_01_F",0],
			["C_Boat_Civil_01_police_F",0],
			["B_SDV_01_F",0]
		];
	};
	case "rs_car":
	{
		_return =
		[
			["B_Truck_01_mover_F",10000],
			["C_Offroad_01_repair_F",5000]
		];
	};
};

_return;
