#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Gendarme"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Matériel GAV",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 2):
			{
				["Matériel Gendarme",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 3):
			{
				["Matériel Brigadier",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["acc_flashlight",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 4):
			{
				["Matériel Brigadier-Chef",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 5):
			{
				["Matériel Sergent",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 6):
			{
				["Matériel Adjudant",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 7):
			{
				["Matériel Adjudant-Chef",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_python",nil,0],
						["hlc_rifle_hk53",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["FHQ_optic_ACOG",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30rnd_556x45_b_HK53",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 8):
			{
				["Matériel Sous-Lieutenant",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_python",nil,0],
						["hlc_rifle_hk53",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["FHQ_optic_ACOG",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30rnd_556x45_b_HK53",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 9):
			{
				["Matériel Lieutenant",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_python",nil,0],
						["hlc_rifle_hk53",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["FHQ_optic_ACOG",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30rnd_556x45_b_HK53",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			case (__GETC__(life_coplevel) == 10):
			{
				["Matériel Capitaine",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_python",nil,0],
						["hlc_rifle_hk53",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["FHQ_optic_ACOG",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30rnd_556x45_b_HK53",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) >= 11):
			{
				["Matériel Capitaine/GIGN",
					[
						["DDOPP_X26","Taser",0],
						["Radar_Gun",nil,0],
						["RH_p226",nil,0],
						["RH_g17",nil,0],
						["hlc_smg_mp5k_PDW",nil,0],
						["hlc_smg_mp5a2",nil,0],
						["FHQ_M4A1_BLK",nil,0],
						["FHQ_M4A1_M203_BLK",nil,0],
						["hlc_smg_mp5n",nil,0],
						["RH_python",nil,0],
						["hlc_rifle_hk53",nil,0],
						["RH_mp412",nil,0],
						["RH_kimber_nw",nil,0],
						["Rangefinder",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["FHQ_optic_ACOG",nil,0],
						["RH_x300",nil,0],
						["FHQ_optic_HWS",nil,0],
						["FHQ_optic_MicroCCO_low",nil,0],
						["FHQ_optic_MicroCCO",nil,0],
						["FHQ_optic_AC11704",nil,0],
						["acc_flashlight",nil,0],
						["hlc_30rnd_556x45_b_HK53",nil,0],
						["RH_6Rnd_357_Mag",nil,0],
						["RH_7Rnd_45cal_m1911",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["hlc_30Rnd_9x19_B_MP5",nil,0],
						["RH_17Rnd_9x19_g17",nil,0],
						["RH_15Rnd_9x19_SIG",nil,0],
						["1Rnd_SmokeBlue_Grenade_shell",nil,0],
						["1Rnd_Smoke_Grenade_shell",nil,0],
						["1Rnd_SmokeOrange_Grenade_shell",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["UGL_FlareCIR_F",nil,0],
						["DDOPP_1Rnd_X26",nil,0]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_gun): {"Vous n'avez pas de permis de port d'arme !"};
			case (__GETC__(life_donator) == 1):
			{
				["Armurerie Donateur",
					[
						["arifle_SDAR_F","Harpon",7700],
						["cl3_crossbow",nil,12250],
						["SA_CZ452_Scoped",nil,14000],
						["RH_cz75",nil,4900],
						["RH_sw659",nil,6300],
						["RH_vp70",nil,7000],
						["RH_g19",nil,9100],
						["Trixie_LSMARK4",nil,2450],
						["FHQ_optic_LeupoldERT",nil,5250],
						["hgun_Pistol_heavy_02_F","Flash-Ball",84000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",35000],
						["cl3_gangcut_regular",nil,3500],
						["20Rnd_556x45_UW_mag","Chargeurs harpon",35],
						["4Rnd_crossbow_mag",nil,31],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,66],
						["SA_5Rnd_22_Mag",nil,140],
						["RH_16Rnd_9x19_cz",nil,52],
						["RH_18Rnd_9x19_VP",nil,52],
						["RH_14Rnd_9x19_sw",nil,59],
						["RH_17Rnd_9x19_g17",nil,80]
					]
				];
			};
			case (__GETC__(life_donator) < 1):
			{
				["Armurerie",
					[
						["arifle_SDAR_F","Harpon",11000],
						["cl3_crossbow",nil,17500],
						["SA_CZ452_Scoped",nil,20000],
						["RH_cz75",nil,7000],
						["RH_sw659",nil,9000],
						["RH_vp70",nil,10000],
						["RH_g19",nil,13000],
						["Trixie_LSMARK4",nil,3500],
						["FHQ_optic_LeupoldERT",nil,7500],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["cl3_gangcut_regular",nil,5000],
						["20Rnd_556x45_UW_mag","Chargeurs harpon",50],
						["4Rnd_crossbow_mag",nil,45],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,95],
						["SA_5Rnd_22_Mag",nil,200],
						["RH_16Rnd_9x19_cz",nil,75],
						["RH_18Rnd_9x19_VP",nil,75],
						["RH_14Rnd_9x19_sw",nil,85],
						["RH_17Rnd_9x19_g17",nil,115]
					]
				];
			};			
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (__GETC__(life_donator) < 1): {"Vous n'êtes pas donateur !"};
			case ((__GETC__(life_donator) == 1) && (license_civ_crim)):
			{
				["Magasin Donateur",
					[
						["hgun_PDW2000_F",nil,23100],
						["Trixie_Enfield_Rail",nil,25900],
						["hlc_smg_mp5k_PDW",nil,29400],
						["hlc_rifle_aks74u",nil,31500],
						["hlc_rifle_aks74",nil,38500],
						["hlc_rifle_ak12",nil,45500],
						["hlc_rifle_ak74",nil,52500],
						["hlc_rifle_ak47",nil,66500],
						["RH_vz61",nil,11900],
						["RH_g18",nil,13650],
						["RH_p226s",nil,15400],
						["RH_ttracker",nil,17500],
						["RH_tec9",nil,18900],
						["RH_muzi",nil,20300],
						["cl3_crossbow",nil,12250],
						["SA_CZ452_Scoped",nil,14000],
						["RH_cz75",nil,4900],
						["RH_sw659",nil,6300],
						["RH_vp70",nil,7000],
						["RH_g19",nil,9100],
						["Trixie_LSMARK4",nil,2450],
						["hlc_optic_kobra",nil,1750],
						["FHQ_optic_AC11704",nil,2450],
						["FHQ_optic_AC12136",nil,2590],
						["FHQ_optic_HWS",nil,2800],
						["FHQ_optic_ACOG",nil,3010],
						["RH_m6x",nil,875],
						["FHQ_optic_LeupoldERT",nil,5250],
						["hgun_Pistol_heavy_02_F","Flash-Ball",84000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",35000],
						["cl3_gangcut_regular",nil,3500],
						["4Rnd_crossbow_mag",nil,31],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,66],
						["SA_5Rnd_22_Mag",nil,140],
						["Trixie_Enfield_Mag",nil,367],
						["30Rnd_9x21_Mag",nil,350],
						["RH_16Rnd_9x19_cz",nil,52],
						["RH_18Rnd_9x19_VP",nil,52],
						["RH_14Rnd_9x19_sw",nil,59],
						["RH_17Rnd_9x19_g17",nil,80],
						["hlc_30Rnd_545x39_B_AK",nil,5950],
						["hlc_30Rnd_762x39_b_ak",nil,11900],
						["hlc_30Rnd_9x19_B_MP5",nil,1050],
						["RH_16Rnd_9x19_cz",nil,72],
						["RH_20Rnd_32cal_vz61",nil,80],
						["RH_33Rnd_9x19_g18",nil,87],
						["RH_15Rnd_9x19_SIG",nil,98],
						["RH_6Rnd_45ACP_Mag",nil,112],
						["RH_32Rnd_9x19_tec",nil,129],
						["RH_30Rnd_9x19_UZI",nil,136]
					]
				];
			};
			
			case ((__GETC__(life_donator) == 1) && (license_civ_rebel)):
			{
				["Magasin Donateur",
					[
						["cl3_crossbow",nil,12250],
						["SA_CZ452_Scoped",nil,14000],
						["hgun_PDW2000_F",nil,23100],
						["Trixie_Enfield_Rail",nil,25900],
						["hlc_smg_mp5k_PDW",nil,29400],
						["hlc_rifle_aks74u",nil,31500],
						["hlc_rifle_aks74",nil,38500],
						["hlc_rifle_ak12",nil,45500],
						["hlc_rifle_ak74",nil,52500],
						["hlc_rifle_ak47",nil,66500],
						["hlc_rifle_STG58F",nil,70000],
						["hlc_rifle_rpk",nil,77000],
						["hlc_rifle_falosw",nil,84000],
						["Trixie_M14",nil,112000],
						["RH_cz75",nil,4900],
						["RH_sw659",nil,6300],
						["RH_vp70",nil,7000],
						["RH_vz61",nil,11900],
						["RH_g19",nil,9100],
						["RH_g18",nil,13650],
						["RH_p226s",nil,15400],
						["RH_bull",nil,18200],
						["RH_ttracker",nil,17500],
						["RH_tec9",nil,18900],
						["RH_muzi",nil,20300],
						["hlc_optic_kobra",nil,1750],
						["FHQ_optic_AC11704",nil,2450],
						["FHQ_optic_AC12136",nil,2590],
						["FHQ_optic_HWS",nil,2800],
						["FHQ_optic_ACOG",nil,3010],
						["FHQ_optic_MARS",nil,3220],
						["FHQ_optic_HWS_G33",nil,3570],
						["FHQ_optic_VCOG",nil,3780],
						["Trixie_LSMARK4",nil,3920],
						["RH_m6x",nil,875],
						["4Rnd_crossbow_mag",nil,31],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,66],
						["SA_5Rnd_22_Mag",nil,140],
						["hgun_Pistol_heavy_02_F","Flash-Ball",84000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",35000],
						["cl3_gangcut_regular",nil,3500],
						["hlc_30Rnd_545x39_B_AK",nil,5950],
						["hlc_30Rnd_762x39_b_ak",nil,11900],
						["hlc_20rnd_762x51_b_fal",nil,13300],
						["hlc_75Rnd_762x39_b_rpk",nil,16100],
						["Trixie_20x762_Mag",nil,18200],
						["hlc_30Rnd_9x19_B_MP5",nil,1050],
						["30Rnd_9x21_Mag",nil,350],
						["Trixie_Enfield_Mag",nil,367],
						["RH_16Rnd_9x19_cz",nil,59],
						["RH_20Rnd_32cal_vz61",nil,80],
						["RH_33Rnd_9x19_g18",nil,87],
						["RH_15Rnd_9x19_SIG",nil,98],
						["RH_6Rnd_45ACP_Mag",nil,112],
						["RH_6Rnd_454_Mag",nil,119],
						["RH_32Rnd_9x19_tec",nil,129],
						["RH_30Rnd_9x19_UZI",nil,136],
						["RH_16Rnd_9x19_cz",nil,52],
						["RH_18Rnd_9x19_VP",nil,52],
						["RH_14Rnd_9x19_sw",nil,59],
						["RH_17Rnd_9x19_g17",nil,80],
						["SmokeShellGreen","Grenade Lacrymogène",28000],
						["DemoCharge_Remote_Mag",nil,210000],
						["Rangefinder",nil,24500],
						["Binocular",nil,105],
						["ItemGPS",nil,70],
						["ToolKit",nil,1750],
						["FirstAidKit",nil,105],
						["NVGoggles",nil,1400],
						["ItemWatch",nil,100],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,210],
						["Chemlight_yellow",nil,210],
						["Chemlight_green",nil,210],
						["Chemlight_blue",nil,210]
					]
				];
			};
			
			case ((__GETC__(life_donator) == 1) && (!license_civ_crim)):
			{
				["Magasin Donateur",
					[
						["arifle_SDAR_F","Harpon",7700],
						["cl3_crossbow",nil,12250],
						["SA_CZ452_Scoped",nil,14000],
						["RH_cz75",nil,4900],
						["RH_sw659",nil,6300],
						["RH_vp70",nil,7000],
						["RH_g19",nil,9100],
						["Trixie_LSMARK4",nil,2450],
						["FHQ_optic_LeupoldERT",nil,5250],
						["hgun_Pistol_heavy_02_F","Flash-Ball",84000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",35000],
						["cl3_gangcut_regular",nil,3500],
						["20Rnd_556x45_UW_mag","Chargeurs harpon",35],
						["4Rnd_crossbow_mag",nil,31],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,66],
						["SA_5Rnd_22_Mag",nil,140],
						["RH_16Rnd_9x19_cz",nil,52],
						["RH_18Rnd_9x19_VP",nil,52],
						["RH_14Rnd_9x19_sw",nil,59],
						["RH_17Rnd_9x19_g17",nil,80]
					]
				];
			};
		};
	};
	
	case "aratv_equip":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_aratv): {"Vous n'êtes pas un employé d'ARA TV !"};
			default
			{
				["Matériel vidéo",
					[
						["cl3_camcorder",nil,3250],
						["cl3_camcorder_optic","Optique pour Caméra Sony",750]
					]
				];
			};
		};
	};
	
	case "brinks":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_brinks): {"Vous n'êtes pas un employé de la Brinks !"};
			default
			{
				["Armurerie",
					[
						["arifle_SDAR_F","Harpon",11000],
						["hlc_smg_mp510",nil,15000],
						["cl3_crossbow",nil,17500],
						["SA_CZ452_Scoped",nil,20000],
						["RH_cz75",nil,7000],
						["RH_sw659",nil,9000],
						["RH_vp70",nil,10000],
						["RH_g19",nil,13000],
						["RH_bullb",nil,15000],
						["Trixie_LSMARK4",nil,3500],
						["FHQ_optic_LeupoldERT",nil,7500],
						["FHQ_optic_AC12136",nil,1700],
						["FHQ_acc_LLM01F",nil,1700],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["20Rnd_556x45_UW_mag","Chargeurs harpon",50],
						["hlc_30Rnd_10mm_B_MP5",nil,75],
						["4Rnd_crossbow_mag",nil,45],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,95],
						["SA_5Rnd_22_Mag",nil,200],
						["RH_16Rnd_9x19_cz",nil,75],
						["RH_18Rnd_9x19_VP",nil,75],
						["RH_14Rnd_9x19_sw",nil,85],
						["RH_17Rnd_9x19_g17",nil,115],
						["RH_6Rnd_454_Mag",nil,135]
					]
				];
			};
		};
	};
	
	case "acog":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_acog): {"Vous ne faites pas parti des A.C.O.G !"};
			default
			{
				["Armurerie",
					[
						["arifle_SDAR_F","Harpon",11000],
						["SMG_01_F",nil,14000],
						["cl3_crossbow",nil,17500],
						["SA_CZ452_Scoped",nil,20000],
						["hlc_smg_mp5k_PDW",nil,29400],
						["RH_cz75",nil,7000],
						["RH_sw659",nil,9000],
						["RH_vp70",nil,10000],
						["RH_g19",nil,13000],
						["FHQ_optic_AC11704",nil,3500],
						["Trixie_LSMARK4",nil,3500],
						["FHQ_optic_LeupoldERT",nil,7500],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["cl3_gangcut_regular",nil,5000],
						["20Rnd_556x45_UW_mag","Chargeurs harpon",50],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["4Rnd_crossbow_mag",nil,45],
						["4Rnd_crossbow_PrecisionArrow_mag",nil,95],
						["SA_5Rnd_22_Mag",nil,200],
						["hlc_30Rnd_9x19_B_MP5",nil,1050],
						["RH_16Rnd_9x19_cz",nil,75],
						["RH_18Rnd_9x19_VP",nil,75],
						["RH_14Rnd_9x19_sw",nil,85],
						["RH_17Rnd_9x19_g17",nil,115]
					]
				];
			};
		};
	};
						
	
	case "ac":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_ac): {"Vous n'êtes pas un membre de la Assassin's Corp !"};
			default
			{
				["Armurerie",
					[
						["hlc_smg_mp510",nil,30000],
						["hlc_rifle_aks74u",nil,42000],
						["hlc_rifle_falosw",nil,85000],
						["Trixie_CZ750_Black",nil,95000],
						["RH_g18",nil,11000],
						["RH_fn57",nil,13000],
						["RH_tec9",nil,15000],
						["RH_muzi",nil,19000],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["hlc_optic_kobra",nil,2500],
						["FHQ_optic_ACOG",nil,2800],
						["FHQ_optic_AC11704",nil,2500],
						["FHQ_optic_HWS",nil,3200],
						["RH_gemtech9",nil,3700],
						["RH_sfn57",nil,4000],
						["RH_tecsd",nil,4200],
						["RH_muzisd",nil,5100],
						["Trixie_Cyclone",nil,7500],
						["Trixie_LSMARK4",nil,5600],
						["hlc_30Rnd_545x39_B_AK",nil,85],
						["hlc_30Rnd_10mm_B_MP5",nil,85],
						["hlc_20rnd_762x51_b_fal",nil,95],
						["Trixie_10x762_Mag",nil,85],
						["RH_33Rnd_9x19_g18",nil,45],
						["RH_20Rnd_57x28_FN",nil,45],
						["RH_32Rnd_9x19_tec",nil,45],
						["RH_30Rnd_9x19_UZI",nil,45],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["ItemWatch",nil,100],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["SmokeShellGreen","Grenade Lacrymogène",28000],
						["DemoCharge_Remote_Mag",nil,210000],
						["Rangefinder",nil,24500]
					]
				];
			};
		};
	};

	case "crim":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_crim): {"Désolé, je ne vous connais pas."};
			case (__GETC__(life_donator) == 1):
			{
				["Revendeur d'armes illégales Donateur",
					[
						["hgun_PDW2000_F",nil,23100],
						["Trixie_Enfield_Rail",nil,25900],
						["hlc_smg_mp5k_PDW",nil,29400],
						["RH_cz75",nil,10500],
						["RH_vz61",nil,11900],
						["RH_g18",nil,13650],
						["RH_p226s",nil,15400],
						["RH_ttracker",nil,17500],
						["RH_tec9",nil,18900],
						["RH_muzi",nil,20300],
						["hlc_optic_kobra",nil,1750],
						["FHQ_optic_AC11704",nil,2450],
						["FHQ_optic_AC12136",nil,2590],
						["FHQ_optic_HWS",nil,2800],
						["FHQ_optic_ACOG",nil,3010],
						["RH_m6x",nil,875],
						["hlc_30Rnd_9x19_B_MP5",nil,1050],
						["30Rnd_9x21_Mag",nil,350],
						["Trixie_Enfield_Mag",nil,367],
						["RH_16Rnd_9x19_cz",nil,59],
						["RH_20Rnd_32cal_vz61",nil,80],
						["RH_33Rnd_9x19_g18",nil,87],
						["RH_15Rnd_9x19_SIG",nil,98],
						["RH_6Rnd_45ACP_Mag",nil,112],
						["RH_32Rnd_9x19_tec",nil,129],
						["RH_30Rnd_9x19_UZI",nil,136]
					]
				];
			};
			
			case (__GETC__(life_donator) < 1):
			{
				["Revendeur d'armes illégales",
					[
						["hgun_PDW2000_F",nil,33000],
						["Trixie_Enfield_Rail",nil,37000],
						["hlc_smg_mp5k_PDW",nil,42000],
						["RH_cz75",nil,15000],
						["RH_vz61",nil,17000],
						["RH_g18",nil,19500],
						["RH_p226s",nil,22000],
						["RH_ttracker",nil,25000],
						["RH_tec9",nil,27000],
						["RH_muzi",nil,29000],
						["hlc_optic_kobra",nil,2500],
						["FHQ_optic_AC11704",nil,3500],
						["FHQ_optic_AC12136",nil,3700],
						["FHQ_optic_HWS",nil,4000],
						["FHQ_optic_ACOG",nil,4300],
						["RH_m6x",nil,1250],
						["hlc_30Rnd_9x19_B_MP5",nil,1500],
						["30Rnd_9x21_Mag",nil,500],
						["Trixie_Enfield_Mag",nil,525],
						["RH_16Rnd_9x19_cz",nil,85],
						["RH_20Rnd_32cal_vz61",nil,115],
						["RH_33Rnd_9x19_g18",nil,125],
						["RH_15Rnd_9x19_SIG",nil,140],
						["RH_6Rnd_45ACP_Mag",nil,160],
						["RH_32Rnd_9x19_tec",nil,185],
						["RH_30Rnd_9x19_UZI",nil,195]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Quincaillerie",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["ItemWatch",nil,100],
				["ItemRadio","Téléphone",100],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "rsstore":
	{
		["Quincaillerie",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,150],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["ItemWatch",nil,100],
				["ItemRadio","Téléphone",100],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "pompist":
	{
		["Pompiste",
			[
				["ToolKit",nil,2500],
				["ItemWatch",nil,100],
				["ItemRadio","Téléphone",100],
				["Chemlight_yellow",nil,300]
			]
		];
	};
	
    case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Tu n'es pas civil!"};
            case (!license_civ_uranium): {"Tu n'as pas la formation Uranium!"};
            default
            {
                ["Objet Traitement Uranium",
                    [
                        ["ToolKit",nil,2500],
                        ["FirstAidKit",nil,100],
                        ["U_C_Scientist","Combinaison Antiradiation",100000]
                    ]
                ];
            };
        };
    }; 
	
    case "gis":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Tu n'es pas civil !"};
            case (!license_civ_gis): {"Vous n'êtes pas de la GIS !"};
            default
            {
                ["Armurerie des G.I.S",
                    [
						["hlc_smg_MP5N",nil,30000],
						["STI_SCAR_H",nil,65000],
						["Trixie_M40A3_NG",nil,80000],
						["RH_m1911",nil,12000],
						["hgun_Pistol_Signal_F",nil,1000],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["hlc_30Rnd_9x19_B_MP5",nil,2100],
						["FHQ_optic_LeupoldERT",nil,5600],
						["hlc_optic_kobra",nil,2500],
						["FHQ_optic_AC11704",nil,3500],
						["FHQ_optic_AC12136",nil,3700],
						["FHQ_optic_HWS",nil,4000],
						["FHQ_optic_ACOG",nil,4300],
						["FHQ_optic_MARS",nil,4600],
						["FHQ_optic_HWS_G33",nil,5100],
						["FHQ_optic_VCOG",nil,5400],
						["RH_m6x",nil,1250],
						["20rnd_762x51_b_scarh",nil,4500],
						["Trixie_5x762_Mag",nil,5000],
						["RH_7Rnd_45cal_m1911",nil,1500],
						["6Rnd_RedSignal_F",nil,200],
						["6Rnd_GreenSignal_F",nil,200],
						["SmokeShellGreen","Grenade Lacrymogène",40000],
						["SmokeShellPurple",nil,2000],
						["SmokeShellOrange",nil,2000],
						["SmokeShellRed",nil,2000]
                    ]
                ];
            };
        };
    }; 
	
	case "terror":
	{
		switch (true) do 
		{
		    case (playerSide != civilian): {"Tu n'es pas civil !"};
            case (!license_civ_rebel): {"Tu n'es pas terroriste !"};
			case (__GETC__(life_donator) == 1):
			{
				["Armement Guérilleros Donateur",
					[
						["cl3_crossbow",nil,12250],
						["hgun_PDW2000_F",nil,23100],
						["Trixie_Enfield_Rail",nil,25900],
						["hlc_smg_mp5k_PDW",nil,29400],
						["hlc_rifle_aks74u",nil,31500],
						["hlc_rifle_aks74",nil,38500],
						["hlc_rifle_ak12",nil,45500],
						["hlc_rifle_ak74",nil,52500],
						["hlc_rifle_ak47",nil,66500],
						["hlc_rifle_STG58F",nil,70000],
						["hlc_rifle_rpk",nil,77000],
						["hlc_rifle_falosw",nil,84000],
						["Trixie_M14",nil,112000],
						["RH_cz75",nil,4900],
						["RH_vz61",nil,11900],
						["RH_g18",nil,13650],
						["RH_p226s",nil,15400],
						["RH_bull",nil,18200],
						["RH_ttracker",nil,17500],
						["RH_tec9",nil,18900],
						["RH_muzi",nil,20300],
						["hlc_optic_kobra",nil,1750],
						["FHQ_optic_AC11704",nil,2450],
						["FHQ_optic_AC12136",nil,2590],
						["FHQ_optic_HWS",nil,2800],
						["FHQ_optic_ACOG",nil,3010],
						["FHQ_optic_MARS",nil,3220],
						["FHQ_optic_HWS_G33",nil,3570],
						["FHQ_optic_VCOG",nil,3780],
						["Trixie_LSMARK4",nil,3920],
						["RH_m6x",nil,875],
						["hgun_Pistol_heavy_02_F","Flash-Ball",84000],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",35000],
						["hlc_30Rnd_545x39_B_AK",nil,5950],
						["hlc_30Rnd_762x39_b_ak",nil,11900],
						["hlc_20rnd_762x51_b_fal",nil,13300],
						["hlc_75Rnd_762x39_b_rpk",nil,16100],
						["Trixie_20x762_Mag",nil,18200],
						["hlc_30Rnd_9x19_B_MP5",nil,1050],
						["30Rnd_9x21_Mag",nil,350],
						["Trixie_Enfield_Mag",nil,367],
						["RH_20Rnd_32cal_vz61",nil,80],
						["RH_33Rnd_9x19_g18",nil,87],
						["RH_15Rnd_9x19_SIG",nil,98],
						["RH_6Rnd_45ACP_Mag",nil,112],
						["RH_6Rnd_454_Mag",nil,119],
						["RH_32Rnd_9x19_tec",nil,129],
						["RH_30Rnd_9x19_UZI",nil,136],
						["RH_16Rnd_9x19_cz",nil,52],
						["SmokeShellGreen","Grenade Lacrymogène",28000],
						["DemoCharge_Remote_Mag",nil,210000],
						["Rangefinder",nil,24500],
						["Binocular",nil,105],
						["ItemGPS",nil,70],
						["ToolKit",nil,1750],
						["FirstAidKit",nil,105],
						["NVGoggles",nil,1400],
						["ItemWatch",nil,100],
						["ItemRadio","Téléphone",100],
						["Chemlight_red",nil,210],
						["Chemlight_yellow",nil,210],
						["Chemlight_green",nil,210],
						["Chemlight_blue",nil,210]
					]
				];
			};
			
			case (__GETC__(life_donator) < 1):
			{
				["Armement Guérilleros",
					[
						["cl3_crossbow",nil,17500],
						["hgun_PDW2000_F",nil,33000],
						["Trixie_Enfield_Rail",nil,37000],
						["hlc_smg_mp5k_PDW",nil,42000],
						["hlc_rifle_aks74u",nil,45000],
						["hlc_rifle_aks74",nil,55000],
						["hlc_rifle_ak12",nil,65000],
						["hlc_rifle_ak74",nil,75000],
						["hlc_rifle_ak47",nil,95000],
						["hlc_rifle_STG58F",nil,100000],
						["hlc_rifle_rpk",nil,110000],
						["hlc_rifle_falosw",nil,120000],
						["Trixie_M14",nil,160000],
						["RH_cz75",nil,15000],
						["RH_vz61",nil,17000],
						["RH_g18",nil,19500],
						["RH_p226s",nil,22000],
						["RH_ttracker",nil,25000],
						["RH_bull",nil,26000],
						["RH_tec9",nil,27000],
						["RH_muzi",nil,29000],
						["hgun_Pistol_heavy_02_F","Flash-Ball",120000],
						["hlc_optic_kobra",nil,2500],
						["FHQ_optic_AC11704",nil,3500],
						["FHQ_optic_AC12136",nil,3700],
						["FHQ_optic_HWS",nil,4000],
						["FHQ_optic_ACOG",nil,4300],
						["FHQ_optic_MARS",nil,4600],
						["FHQ_optic_HWS_G33",nil,5100],
						["FHQ_optic_VCOG",nil,5400],
						["Trixie_LSMARK4",nil,5600],
						["RH_m6x",nil,1250],
						["hlc_30Rnd_545x39_B_AK",nil,8500],
						["hlc_30Rnd_762x39_b_ak",nil,17000],
						["hlc_20rnd_762x51_b_fal",nil,19000],
						["hlc_75Rnd_762x39_b_rpk",nil,23000],
						["Trixie_20x762_Mag",nil,26000],
						["hlc_30Rnd_9x19_B_MP5",nil,1500],
						["30Rnd_9x21_Mag",nil,500],
						["Trixie_Enfield_Mag",nil,525],
						["RH_16Rnd_9x19_cz",nil,85],
						["RH_20Rnd_32cal_vz61",nil,115],
						["RH_33Rnd_9x19_g18",nil,125],
						["RH_15Rnd_9x19_SIG",nil,140],
						["RH_6Rnd_45ACP_Mag",nil,160],
						["RH_6Rnd_454_Mag",nil,170],
						["RH_32Rnd_9x19_tec",nil,185],
						["RH_30Rnd_9x19_UZI",nil,195],
						["6Rnd_45ACP_Cylinder","Munitions Flash-Ball",50000],
						["SmokeShellGreen","Grenade Lacrymogène",40000],
						["DemoCharge_Remote_Mag",nil,300000],
						["Rangefinder",nil,35000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["ItemRadio","Téléphone",100],
						["ItemWatch",nil,100],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas du SAMU"};
			default {
				["Magasin SAMU",
					[
						["rds_uniform_doctor",nil,0],
						["ALE_SamuUniform",nil,0],
						["ItemGPS",nil,0],
						["ItemWatch",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ToolKit",nil,2500],
						["Medikit",nil,0],
						["NVGoggles",nil,250],
						["cl3_police_vest_pm",nil,0],
						["cl3_emt_tacticalbelt_black",nil,0]
					]
				];
			};
		};
	};
};