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
	case "ALFR_GeK_Scania_420" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_veyron_wht_blu" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "A3L_VolksWagenGolfGTiblack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "RDS_Golf4_Civ_01" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_ImpalaCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "A3L_PuntoBlue" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_civic_vti_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_FusionCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_TaurusCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_polo_gti_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_insignia_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_TahoeCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_M3CivGrey" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_e63_amg_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_range_rover_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "BMW_M5Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "SAL_IROCCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Bordeau";};
			case 5: {_color = "Blanc";};
		};
	};

	case "SAL_AudiCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Bordeau";};
			case 5: {_color = "Blanc";};
		};
	};

	case "cl3_dodge_charger_s_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_ChallengerCivWhite" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Bordeau";};
			case 5: {_color = "Blanc";};
		};
	};

	case "cl3_z4_2008_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_carrera_gt_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_dbs_volante_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "Jonzie_Viper" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_r8_spyder_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_458_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_murcielago_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
			case 14: {_color = "Police";};
		};
	};

	case "cl3_reventon_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "DAR_MF1Civ" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Bordeau";};
			case 5: {_color = "Blanc";};
		};
	};

	case "cl3_veyron_blk_wht" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_lamborghini_gt1_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Gris Sombre";};
			case 2: {_color = "Gris";};
			case 3: {_color = "Gris Clair";};
			case 4: {_color = "Blanc";};
			case 5: {_color = "Sable";};
			case 6: {_color = "Bordeau";};
			case 7: {_color = "Bleu";};
			case 8: {_color = "Bleu Nuit";};
			case 9: {_color = "Mauve Nuit";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Rouge";};
			case 12: {_color = "Jaune";};
			case 13: {_color = "Orange";};
		};
	};

	case "cl3_insignia_camo" :
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
			case 1: {_color = "Camo Urbain";};
			case 2: {_color = "Noir";};
			case 3: {_color = "Noir";};
		};
	};

	case "cl3_dodge_charger_s_camo" :
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
			case 1: {_color = "Camo Urbain";};
			case 2: {_color = "Noir";};
		};
	};

	case "cl3_e63_amg_camo" :
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
			case 1: {_color = "Camo Urbain";};
			case 2: {_color = "Noir";};
			case 3: {_color = "Noir";};
		};
	};

	case "cl3_range_rover_camo" :
	{
		switch (_index) do
		{
			case 0: {_color = "Camo";};
			case 1: {_color = "Camo Urbain";};
			case 2: {_color = "Noir";};
		};
	};

	case "A3L_Dumptruck" :
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune";};
			case 1: {_color = "Rouge";};
			case 2: {_color = "Vert";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Brun";};
			case 5: {_color = "Noir";};
		};
	};


	case "I_Heli_light_03_unarmed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Police";};
		};
	};

	case "I_G_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rockstar";};
			case 1: {_color = "Red Bull";};
		};
	};

	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Bordeau";};
			case 5: {_color = "Bleu / Blanc"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Police"};
			case 8: {_color = "Jaune 2"};
			case 9: {_color = "Rouge 2";};
			case 10: {_color = "Vert";};
			case 11: {_color = "Bleu 2";};
			case 12: {_color = "Brun";};
			case 13: {_color = "Noir";};
			case 14: {_color = "Medecin"};
		};
	};

	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
		};
	};

	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Monster"};
			case 1: {_color = "Police"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Red"};
			case 7: {_color = "Red Waves"};
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bordeau";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Cop";};
			case 5: {_color = "Noir";};
			case 6: {_color = "Noir Sport";};
			case 7: {_color = "Blanc Sport";};
			case 8: {_color = "NB Sport";};
			case 9: {_color = "NB Sport V2";};
			case 10: {_color = "Rouge Sport";};
			case 11: {_color = "Taxi";};
			case 12: {_color = "Medecin"};
		};
	};

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune"};
			case 1: {_color = "Orange"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Vert"};
			case 4: {_color = "Noir"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Rouge"};
		};
	};

	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Jaune"};
			case 1: {_color = "Orange"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Vert"};
			case 4: {_color = "Noir"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Rouge"};
		};
	};

	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};

	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};

	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Gray"};
			case 15: {_color = "Shadow"};
			case 16: {_color = "Wasp"};
		};
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Foret Digital"};
			case 3: {_color = "Desert Digital"};
			case 4: {_color = "Medecin"};
		};
	};

	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};

	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sable"};
			case 1: {_color = "Rouge Terre"};
			case 2: {_color = "Vert"};
			case 3: {_color = "Bleu Glacial"};
			case 4: {_color = "Noir"};
		};
	};

	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sable"};
			case 1: {_color = "Rouge Terre"};
			case 2: {_color = "Vert"};
			case 3: {_color = "Bleu Glacial"};
			case 4: {_color = "Noir"};
		};
	};

	case "B_G_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo Gris"};
			case 1: {_color = "Camo Vert"};
			case 2: {_color = "Camo Rouge"};
		};
	};

	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bleu"};
			case 1: {_color = "Jaune"};
			case 2: {_color = "Rouge"};
			case 3: {_color = "Vert"};
			case 4: {_color = "Noir"};
			case 5: {_color = "Orange"};
			case 6: {_color = "Noir"};
		};
	};


	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bleu"};
			case 1: {_color = "Jaune"};
			case 2: {_color = "Rouge"};
			case 3: {_color = "Vert"};
			case 4: {_color = "Noir"};
			case 5: {_color = "Orange"};
			case 6: {_color = "Noir"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Armée Altis"};
		};
	};
	
	case "RDS_Ikarus_Civ_01":
    {
        switch (_index) do {
            
            case 0 : {_color = "Police"};
            case 1 : {_color = "Donateur"};
        };
    };
    
    
    case "DAR_TaurusPolice":
    {
        switch (_index) do {
            case 0 :{_color ="Police";};
        };
    };
    

   /* case "IVORY_T6A_1":
    {
      switch (_index) do
      {
        case 0: {_color = "dogfight";};
      };

    };*/

};

_color;