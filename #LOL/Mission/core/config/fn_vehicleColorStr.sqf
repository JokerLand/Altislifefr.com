/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge Foncé";};
			case 5: {_color = "Bleu / Blanc"};
			case 6: {_color = "Néon Bleu"};
			case 7: {_color = "Hardline"};
			case 8: {_color = "Sexy Vert"};
			case 9: {_color = "Skylight"};
			case 10: {_color = "Sunshine"};
			case 11: {_color = "Vivid Rouge"};
		};
	};
	
	case "C_Offroad_PN" :
	{
		switch (_index) do
		{
			case 0: {_color = "Petit Navire";};
		};
	};
	
	case "C_Boat_PN" :
	{
		switch (_index) do
		{
			case 0: {_color = "Petit Navire";};
		};
	};
	
	case "B_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
		};
	};
	
	case "DAR_SWATPolice" :
	{
		switch (_index) do
		{
			case 0: {_color = "GIGN";};
		};
	};
	
	case "cl3_xr_1000_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
		};
	};
	
	case "cl3_aventador_lp7004_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "cl3_440cuda_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune";};
			case 1: {_color = "Jaune (Bandes noires)";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu (Flammes Rouges)";};
			case 4: {_color = "Vert";};
			case 5: {_color = "Vert Tribal";};
			case 6: {_color = "Course (08)";};
			case 7: {_color = "Course (12)";};
			case 8: {_color = "Course (14)";};
			case 9: {_color = "Course (27)";};
			case 10: {_color = "Course (51)";};
			case 11: {_color = "Course (55)";};
			case 12: {_color = "Course (69)";};
			case 13: {_color = "Course (70)";};
			case 14: {_color = "Noir/Bleu";};
			case 15: {_color = "Noir";};
			case 16: {_color = "Noir (Bandes blanches)";};
		};
	};
	
	case "RDS_Golf4_Civ_01" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Rouge";};
			case 2: {_color = "Vert";};
			case 3: {_color = "Blanc";};
			case 4: {_color = "Jaune";};
		};
	};
	
	case "RDS_Octavia_Civ_01" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Bleu";};
			case 2: {_color = "Blanc";};
		};
	};
	
	case "cl3_civic_vti_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_transit_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_golf_mk2_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_polo_gti_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_range_rover_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_dbs_volante_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
		};
	};
	
	case "cl3_q7_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_e60_m5_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_taurus_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_e63_amg_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_insignia_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_r8_spyder_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "cl3_z4_2008_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_lamborghini_gt1_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "cl3_murcielago_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "cl3_reventon_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "civ_mondeo_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Cyan";};
			case 1: {_color = "Burgundy";};
			case 2: {_color = "Cardinal";};
			case 3: {_color = "Vert Foncé";};
			case 4: {_color = "Doré";};
			case 5: {_color = "Vert";};
			case 6: {_color = "Gris";};
			case 7: {_color = "Lavende";};
			case 8: {_color = "Bleu Clair";};
			case 9: {_color = "Jaune Clair";};
			case 10: {_color = "Lime";};
			case 11: {_color = "Bleu Foncé";};
			case 12: {_color = "Orange";};
			case 13: {_color = "Rose";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Rouge";};
			case 16: {_color = "Argent";};
			case 17: {_color = "Blanc";};
			case 18: {_color = "Jaune";};
			case 19: {_color = "Noir";};
		};
	};
			
	
	case "cl3_carrera_gt_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_veyron_blk_wht" :
	{
		switch (_index) do
		{
			case 0: {_color = "Bleu";};
			case 1: {_color = "Bleu Clair";};
			case 2: {_color = "Noir";};
			case 3: {_color = "Noir/Rouge";};
			case 4: {_color = "Noir/Blanc";};
			case 5: {_color = "Rouge";};
			case 6: {_color = "Arctique";};
			case 7: {_color = "Blanc";};
		};
	};
	
	case "cl3_458_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
			case 23: {_color = "Flames 1";};
			case 24: {_color = "Flames 2";};
			case 25: {_color = "Flames 3";};
			case 26: {_color = "Bleu/Vert";};
			case 27: {_color = "Violet/Noir";};
			case 28: {_color = "Cyan/Blanc";};
			case 29: {_color = "Vert/Jaune";};
			case 30: {_color = "Rouge/Orange";};
		};
	};
	
	case "cl3_challenger_red" :
	{
		switch (_index) do
		{
			case 0: {_color = "Cyan";};
			case 1: {_color = "Beige 1";};
			case 2: {_color = "Beige 2";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Marron";};
			case 5: {_color = "Vert";};
			case 6: {_color = "Argent Foncé";};
			case 7: {_color = "Lime";};
			case 8: {_color = "Orange";};
			case 9: {_color = "Orange (Flammes)";};
			case 10: {_color = "Rose";};
			case 11: {_color = "Violet";};
			case 12: {_color = "Rouge";};
			case 13: {_color = "Jaune";};
		};
	};
	
	case "cl3_challenger_2009_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_arielatom_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_arielatom_race_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "cl3_dodge_charger_s_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Jaune Clair";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bleu Clair";};
			case 5: {_color = "Bleu Foncé";};
			case 6: {_color = "Cyan";};
			case 7: {_color = "Rouge";};
			case 8: {_color = "Burgundy";};
			case 9: {_color = "Cardinal";};
			case 10: {_color = "Orange";};
			case 11: {_color = "Vert";};
			case 12: {_color = "Vert foncé";};
			case 13: {_color = "Doré";};
			case 14: {_color = "Violet";};
			case 15: {_color = "Gris";};
			case 16: {_color = "Lavande";};
			case 17: {_color = "Lime";};
			case 18: {_color = "Sable";};
			case 19: {_color = "Argent";};
			case 20: {_color = "Camo Woodland";};
			case 21: {_color = "Camo Urbain";};
			case 22: {_color = "Blanc";};
		};
	};
	
	case "B_Truck_01_mover_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "R.S Depan";};
		};
	};
	
	case "I_Truck_02_covered_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Redline"};
			case 3: {_color = "Blue Sky"};
			case 4: {_color = "Blanc/Vert"};
			case 5: {_color = "Jaune/Blanc"};
			case 6: {_color = "Rebel Camo"};
		};
	};
	
	case "ALE_Zamak_Couvert" :
	{
		switch (_index) do
		{
			case 0: {_color = "Blue Sky"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu Foncé";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu Foncé"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir / Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge foncé";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Rouge Furious";};
			case 5: {_color = "Bleu Abstract";};
			case 6: {_color = "Antartica";};
		};
	};
	
	case "cl3_defender_110_yellow":
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune";};
			case 1: {_color = "Rouge";};
			case 2: {_color = "Camo Désert";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Marron"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Vert"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Civ Bleu"};
			case 2: {_color = "Civ Rouge"};
			case 3: {_color = "Digi Vert"};
			case 4: {_color = "Blueline"};
			case 5: {_color = "Elliptical"};
			case 6: {_color = "Furious"};
			case 7: {_color = "Jeans Bleu"};
			case 8: {_color = "Speedy Redline"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Waves Bleu"};
			case 12: {_color = "Wasp"};
			case 13: {_color = "Shadow"};
			case 14: {_color = "Sheriff"};
			case 15: {_color = "Vert Camo"};
			case 16: {_color = "Rebel Digital"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Digi Vert"};
			case 3: {_color = "Desert Digi"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Rebel Camo"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Rebel Camo"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "O_Heli_Attack_02_Noir_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Digi Vert"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
};

_color;