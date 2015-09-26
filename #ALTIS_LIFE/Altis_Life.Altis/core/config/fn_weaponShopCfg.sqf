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
			case (playerSide != west): {"Vous n'êtes pas policier !"};
			default
			{
				["Quincaillerie Police",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,1]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Vous n'êtes pas medecin !"};
			default {
				["Quincaillerie Medecin",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["Binocular",nil,150],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles",nil,2500],
						["B_Carryall_khk",nil,5000]
					]
				];
			};
		};
	};

	case "cop_recrue": //nouvelle reforme: coplvl 1 policier
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000]
					]
				];
			};
		};
	};

	case "cop_policier": //nouvelle reforme: coplvl 2 Brigadier
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr","ACW-R (Brigadier-Chef)",10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90","FN-P90 (Brigadier-Chef)",10000],
                        ["wirk_p90_mag",nil,100],
                        ["arifle_MXM_Black_F","MXM (Brigadier-Chef)",100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100]
					]
				];
			};
		};
	};

	case "cop_brigadier":  //nouvelle reforme: coplvl 3 Adjudant
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr",nil,10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90",nil,10000],
                        ["wirk_p90_mag",nil,100],
                        ["arifle_MXM_Black_F",nil,100],
                        ["arifle_MXC_Black_F",nil,100],
                        ["arifle_MX_Black_F",nil,100],
                        ["arifle_MX_GL_Black_F",nil,100],
                        ["arifle_MX_SW_Black_F",nil,100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        //Adj
						["M110",nil,10000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["arifle_Sam_scarh_F",nil,20000],
                        ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["ALFR_Shield_F",nil,1000],
                        ["optic_LRPS",nil,30000],
			            ["optic_DMS",nil,25000],
			            //Adj-Chef
			            ["R3F_HK417L","HK-417 (Adjudant-Chef)",10000],
			            ["R3F_20Rnd_762x51_TRACER_HK417",nil,90],
                        ["Trixie_M40A3_Clean","M40A3 (Adjudant-Chef)",10000],
                        ["Trixie_5x762_Mag",nil,100],
                        ["SmokeShellGreen","Grenade Lacrymogène (Adjudant-Chef)",1000]
					]
				];
			};
		};
	};

	case "cop_major":  //nouvelle reforme: coplvl 4 Major
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr",nil,10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90",nil,10000],
                        ["wirk_p90_mag",nil,100],
						["arifle_MXM_Black_F",nil,100],
                        ["arifle_MXC_Black_F",nil,100],
                        ["arifle_MX_Black_F",nil,100],
                        ["arifle_MX_GL_Black_F",nil,100],
                        ["arifle_MX_SW_Black_F",nil,100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,100],
                        //Adj
						["M110",nil,10000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["arifle_Sam_scarh_F",nil,20000],
                        ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["optic_LRPS",nil,30000],
						["optic_DMS",nil,25000],
						//Adj-Chef
						["R3F_HK417L",nil,10000],
                        ["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
						["Trixie_M40A3_Clean",nil,10000],
                        ["Trixie_5x762_Mag",nil,100],
						["SmokeShellGreen","Grenade Lacrymogène",1000],
                        //Mjr
						["B_UavTerminal",nil,500],
                        ["optic_SOS",nil,30000],
                        ["HandGrenade_Stone","Flashbang",1000],
                        ["B_UavTerminal",nil,5200],
                        ["srifle_EBR_F",nil,20000],
                        ["20Rnd_762x51_Mag",nil,90],
                        ["Trixie_AWM338",nil,20000],
                        ["Trixie_5x338_Mag",nil,100]
					]
				];
			};
		};
	};

	case "cop_lieutenant":  //nouvelle reforme: coplvl 5 Lieutenant
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
                        ["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr",nil,10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90",nil,10000],
                        ["wirk_p90_mag",nil,100],
						["arifle_MXM_Black_F",nil,100],
                        ["arifle_MXC_Black_F",nil,100],
                        ["arifle_MX_Black_F",nil,100],
                        ["arifle_MX_GL_Black_F",nil,100],
                        ["arifle_MX_SW_Black_F",nil,100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,100],
                        //Adj
						["M110",nil,10000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["arifle_Sam_scarh_F",nil,20000],
                        ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["optic_LRPS",nil,30000],
						["optic_DMS",nil,25000],
						//Adj-Chef
						["R3F_HK417L",nil,10000],
                        ["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
						["Trixie_M40A3_Clean",nil,10000],
                        ["Trixie_5x762_Mag",nil,100],
						["SmokeShellGreen","Grenade Lacrymogène",1000],
                        //Mjr
						["B_UavTerminal",nil,500],
                        ["optic_SOS",nil,30000],
                        ["HandGrenade_Stone","Flashbang",1000],
                        ["B_UavTerminal",nil,5200],
                        ["srifle_EBR_F",nil,20000],
                        ["20Rnd_762x51_Mag",nil,90],
                        ["Trixie_AWM338",nil,20000],
                        ["Trixie_5x338_Mag",nil,100],
                        //Lnt
                        ["LMG_Mk200_F",nil,75000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["LMG_Zafir_F",nil,250000],
                        ["150Rnd_762x54_Box_Tracer",nil,500],
						["srifle_LRR_F",nil,350000],
                        ["7Rnd_408_Mag",nil,800]
					]
				];
			};
		};
	};

	case "cop_capitaine":  //nouvelle reforme: coplvl 6 capitaine
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr",nil,10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90",nil,10000],
                        ["wirk_p90_mag",nil,100],
						["arifle_MXM_Black_F",nil,100],
                        ["arifle_MXC_Black_F",nil,100],
                        ["arifle_MX_Black_F",nil,100],
                        ["arifle_MX_GL_Black_F",nil,100],
                        ["arifle_MX_SW_Black_F",nil,100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,100],
                        //Adj
						["M110",nil,10000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["arifle_Sam_scarh_F",nil,20000],
                        ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["optic_LRPS",nil,30000],
						["optic_DMS",nil,25000],
						//Adj-Chef
						["R3F_HK417L",nil,10000],
                        ["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
						["Trixie_M40A3_Clean",nil,10000],
                        ["Trixie_5x762_Mag",nil,100],
						["SmokeShellGreen","Grenade Lacrymogène",1000],
                        //Mjr
						["B_UavTerminal",nil,500],
                        ["optic_SOS",nil,30000],
                        ["HandGrenade_Stone","Flashbang",1000],
                        ["B_UavTerminal",nil,5200],
                        ["srifle_EBR_F",nil,20000],
                        ["20Rnd_762x51_Mag",nil,90],
                        ["Trixie_AWM338",nil,20000],
                        ["Trixie_5x338_Mag",nil,100],
                        //Lnt
                        ["LMG_Mk200_F",nil,75000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["LMG_Zafir_F",nil,250000],
                        ["150Rnd_762x54_Box_Tracer",nil,500],
						["srifle_LRR_F",nil,350000],
                        ["7Rnd_408_Mag",nil,800],
                        //CPT
                        ["R3F_M107",nil,350000],
                        ["R3F_10Rnd_127x99_M107",nil,800]
					]
				];
			};
		};
	};

	case "cop_admin":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//Accesories
						["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["optic_ACO_grn_smg",nil,2000],
                        ["optic_Aco_smg",nil,2000],
                        ["optic_ACO_grn",nil,3200],
                        ["optic_Aco",nil,3200],
                        ["optic_MRCO",nil,10000],
                        ["optic_Hamr",nil,10000],
                        ["optic_Arco",nil,10000],
                        ["acc_pointer_IR",nil,4200],
                        ["SmokeShell",nil,100],
                        //Policier
                        ["hgun_P07_snds_F","Tazer",1000],
                        ["16Rnd_9x21_Mag",nil,50],
						["hgun_Sam_flashball_F",nil,2500],
						["ALFR_1Rnd_Flashball",nil,50],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,60],
                        ["prifle_alfr_Sam_870cms_F",nil,6500],
                        ["8Rnd_ALFR_12Gauge_Pellets",nil,80],
						["ALFR_Shield_F",nil,1000],
                        //Brigadier
                        ["arifle_sdar_F",nil,1000],
                        ["20Rnd_556x45_UW_mag",nil,25],
                        ["FHQ_M4A1_BLK",nil,10000],
                        ["FHQ_M4A1_AFG_BLK",nil,10000],
                        ["FHQ_M4A1_M203_BLK",nil,10000],
                        ["arifle_Sam_g36c_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,70],
						//Brigadier-Chef
                        ["wirk_acwr",nil,10000],
                        ["wirk_acwr_mag",nil,100],
						["wirk_p90",nil,10000],
                        ["wirk_p90_mag",nil,100],
						["arifle_MXM_Black_F",nil,100],
                        ["arifle_MXC_Black_F",nil,100],
                        ["arifle_MX_Black_F",nil,100],
                        ["arifle_MX_GL_Black_F",nil,100],
                        ["arifle_MX_SW_Black_F",nil,100],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,100],
                        //Adj
                        ["M110",nil,10000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["arifle_Sam_scarh_F",nil,20000],
                        ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["optic_LRPS",nil,30000],
						["optic_DMS",nil,25000],
						//Adj-Chef
                        ["R3F_HK417L",nil,30000],
                        ["R3F_20Rnd_762x51_TRACER_HK417",nil,30000],
						["Trixie_M40A3_Clean",nil,10000],
                        ["Trixie_5x762_Mag",nil,100],
						["SmokeShellGreen","Grenade Lacrymogène",1000],
                        //Mjr
						["B_UavTerminal",nil,500],
                        ["optic_SOS",nil,30000],
                        ["HandGrenade_Stone","Flashbang",1000],
                        ["B_UavTerminal",nil,5200],
                        ["srifle_EBR_F",nil,20000],
                        ["20Rnd_762x51_Mag",nil,90],
                        ["Trixie_AWM338",nil,20000],
                        ["Trixie_5x338_Mag",nil,100],
                        //Lnt
                        ["LMG_Zafir_F",nil,250000],
                        ["150Rnd_762x54_Box_Tracer",nil,500],
						["srifle_LRR_F",nil,350000],
                        ["7Rnd_408_Mag",nil,800],
                        //CPT
                        ["R3F_M107",nil,350000],
                        ["R3F_10Rnd_127x99_M107",nil,800]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas civil!"};
			case (!license_civ_rebel): {"Vous n'avez pas de licence rebelle !"};
			default
			{
				["Armurerie Rebelle",
					[
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_Pistol_heavy_02_F",nil,12000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["SMG_01_F",nil,28000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["hgun_Sam_hk45_F",nil,16500],
						["10Rnd_45acp_hk45_Mag",nil,50],
						["arifle_SDAR_F",nil,50000],
						["hgun_Sam_flashball_F",nil,75000],
						["ALFR_1Rnd_Flashball",nil,110],
						["arifle_TRG20_F",nil,90000],
						["arifle_Katiba_F",nil,100000],
						["hlc_rifle_aks74u",nil,125000],
						["hlc_rifle_aks74",nil,150000],
						["srifle_DMR_01_F",nil,175000],
						["hlc_rifle_ak74",nil,100000],
						["hlc_rifle_ak12",nil,150000],
						["hlc_rifle_aks74_GL",nil,175000],
						["hlc_rifle_ak47",nil,175000],
						["hlc_rifle_akm",nil,200000],
						["hlc_rifle_saiga12k",nil,150000],
						["hlc_rifle_akmgl",nil,215000],
						["hlc_rifle_aek971",nil,250000],
						["SG553",nil,250000],
						["SG553_CQB",nil,250000],
						["SG553_GL",nil,250000],
						["Trixie_M14",nil,275000],
						["Trixie_M14_Green",nil,275000],
						["Trixie_M14_Black",nil,275000],
						["Trixie_20x762_Mag",nil,100],
						["arifle_sam_stg58_F",nil,275000],
						["20Rnd_762x51_STG58_Mag",nil,90],
						["wirk_acwr",nil,300000],
						["wirk_acwr_mag",nil,300],
						["LMG_Mk200_F",nil,375000],
						["200Rnd_65x39_cased_Box_Tracer",nil,800],
                        ["srifle_DMR_06_olive_F",nil,375000],
                        ["srifle_DMR_06_camo_F",nil,375000],
                        ["20Rnd_762x51_Mag",nil,800],
                        ["srifle_DMR_03_woodland_F",nil,400000],
                        ["srifle_DMR_03_multicam_F",nil,400000],
                        ["srifle_DMR_03_khaki_F",nil,400000],
                        ["srifle_DMR_03_tan_F",nil,400000],
                        ["20Rnd_762x51_Mag",nil,800],
						["LMG_Zafir_F",nil,550000],
						["150Rnd_762x54_Box_Tracer",nil,800],
						["optic_ACO_grn",nil,3500],
						["hlc_optic_kobra",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["HLC_Optic_1p29",nil,7500],
						["HLC_Optic_PSO1",nil,8000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x54_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["30Rnd_56x45_GP90",nil,100],
						["30Rnd_56x45_GP90_Armour_Piercing",nil,500],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_30Rnd_545x39_t_ak",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["hlc_GRD_White",nil,5000],
						["hlc_GRD_red",nil,5000],
						["hlc_GRD_green",nil,5000],
						["hlc_GRD_blue",nil,5000],
						["hlc_GRD_orange",nil,5000],
						["hlc_GRD_purple",nil,5000],
						["SmokeShellRed","Fumigene rouge",5000]
					]
				];
			};
		};
	};

	case "tlt":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas civil!"};
			case (!license_tlt): {"Vous n'etes pas BL !"};
			default
			{
				["Armurerie Armée",
					[

						["hlc_rifle_ak12",nil,200000],
						["hlc_rifle_akm",nil,250000],
						["hlc_rifle_akmgl",nil,350000],
						["srifle_EBR_F",nil,400000],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x54_Box_Tracer",nil,800],
						["optic_DMS",nil,1200],
						["optic_ACO_grn",nil,3500],
						["hlc_optic_kobra",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["HLC_Optic_1p29",nil,7500],
						["HLC_Optic_PSO1",nil,80000],
						["optic_SOS",nil,30000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_30Rnd_545x39_t_ak",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["hlc_GRD_White",nil,5000],
						["hlc_GRD_red",nil,5000],
						["hlc_GRD_green",nil,5000],
						["hlc_GRD_blue",nil,5000],
						["hlc_GRD_orange",nil,5000],
						["hlc_GRD_purple",nil,5000],
						["SmokeShellRed","Fumigene rouge",5000]
					]
				];
			};
		};
	};

	case "EasyC":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas civil!"};
			case (!license_moa): {"Vous n'êtes pas EasyC !"};
			default
			{
				["Armurerie",
					[
                        ["C1987_MP7",nil,45000],
                        ["C1987_20Rnd_46x30_mp7",nil,100],
                        ["C1987_40Rnd_46x30_mp7",nil,200],
						["wirk_p90",nil,50000],
						["wirk_p90_mag",nil,50],
						["arifle_Sam_auga3_F",nil,100000],
						["30Rnd_556x45_Aug_Mag",nil,75],
                        ["arifle_Sam_g36c_F",nil,135000],
                        ["30Rnd_556x45_Aug_Mag",nil,75],
						["Trixie_M14_Black",nil,150000],
						["Trixie_20x762_Mag",nil,100],
                        ["Wirk_beret",nil,1000],
                        ["R3F_vestetactique_noire",nil,7500],
                        ["V_PlateCarrier2_blk",nil,15000],
						["acc_flashlight",nil,50],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000]
					]
				];
			};
		};
	};

	case "armer":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas civil!"};
			case (!license_armer): {"Vous n'avez pas de license militaire !"};
			default
			{
				["Armurerie",
					[
						["Rangefinder",nil,3400],
						["B_UavTerminal",nil,5200],
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["R3F_HK416M_HG",nil,30000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_Famas_G2_HG",nil,50000],
						["R3F_Famas_F1_HG_DES",nil,50000],
						["R3F_PGM_Hecate_II_DES",nil,165000],
						["R3F_7Rnd_127x99_PGM",nil,1300],
						["arifle_MX_SW_Black_F",nil,100],						
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,1],		
						["R3F_25Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_LAMPE_SURB_DES",nil,500],
						["R3F_AIMPOINT_DES",nil,500],
						["R3F_J10_MILDOT_DES",nil,700],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box",nil,500],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
						["srifle_DMR_06_camo_F",nil,65000],
						["20Rnd_762x51_Mag",nil,1150],
						["LMG_Mk200_F",nil,75000],
						["200Rnd_65x39_cased_Box",nil,2000],
						["200Rnd_65x39_cased_Box_Tracer",nil,2100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,150000],
						["wirk_acwr_mag",nil,300],
						["arifle_Sam_scarh_F",nil,30000],
						["20Rnd_762x51_ScarH_Mag",nil,90],
						["srifle_EBR_F",nil,55000],
						["20Rnd_762x51_Mag",nil,150],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["srifle_LRR_F",nil,200000],
						["7Rnd_408_Mag",nil,500],
						["hgun_Pistol_heavy_01_F",nil,8500],
						["11Rnd_45ACP_Mag",nil,100],
						["hgun_Sam_deagle_F",nil,11000],
						["7Rnd_50AE_Mag",nil,250],
						["SmokeShell",nil,1500],
						["SmokeShellRed",nil,1500],
						["SmokeShellBlue",nil,1500],
						["SmokeShellOrange",nil,1500],
						["SmokeShellPurple",nil,1500],
						["SmokeShellYellow",nil,1500],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["FHQ_optic_AC11704",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["FHQ_optic_ACOG",nil,10000],
						["optic_Arco",nil,10000],
						["optic_LRPS",nil,50000],
						["optic_DMS",nil,30000],
						["optic_SOS",nil,30000]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas civil!"};
			case (!license_civ_gun): {"Vous n'avez pas de license d'arme à feu !"};
			default
			{
				["Armurerie",
					[
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_SA_makarov_pm_F",nil,12000],
						["8Rnd_9x18_Mag",nil,100],
						["hgun_sam_browning_hp_F",nil,12000],
						["8Rnd_9x18_Mag",nil,100],
						["SIG_P226",nil,13000],
						["smg_SA_9a91",nil,50000],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,75],
						["20Rnd_SA_9x39",nil,100],
						["C1987_MP7",nil,60000],
						["C1987_20Rnd_46x30_mp7",nil,100],
						["C1987_40Rnd_46x30_mp7",nil,200],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};

	case "donator":
	{
				["Donator Shop",
					[
						["ALFR_BaseballBat",nil,500],
						["hgun_SA_nambu_type14_F",nil,500],
						["8Rnd_8x22_Mag",nil,5],
						["ALFR_BaseballBat_Grey",nil,800],
						["ALFR_Machete",nil,1200],
						["hgun_Rook40_F",nil,8000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_Sam_deagle_F",nil,11000],
						["7Rnd_50AE_Mag",nil,100],
						["hgun_Sam_tec9_F",nil,12000],
						["32Rnd_9x21_Tec9_Mag",nil,100],
						["hgun_PDW2000_F",nil,15000],
						["SMG_01_F",nil,18000],
						["arifle_Mk20C_plain_F",nil,80000],
						["SIG_P226",nil,8000],
						["hgun_sam_mr96_F",nil,15000],
						["ALFR_6Rnd_357_Mag",nil,50],
						["6Rnd_45ACP_Cylinder",nil,50],
						["smg_SA_9a91_tac",nil,45000],
						["20Rnd_SA_9x39",nil,100],
						["C1987_MP7",nil,45000],
						["C1987_MP7_ucp",nil,45000],
						["C1987_MP7_urb",nil,45000],
						["C1987_MP7_dmarpat",nil,45000],
						["C1987_MP7_marpat",nil,45000],
						["C1987_MP7_wcam",nil,45000],
						["C1987_MP7_sand",nil,45000],
						["C1987_MP7_nwu",nil,45000],
						["C1987_MP7_folded_p",nil,45000],
						["C1987_20Rnd_46x30_mp7",nil,100],
						["C1987_40Rnd_46x30_mp7",nil,200],
						["wirk_p90",nil,75000],
						["wirk_p90_mag",nil,100],
						["arifle_Sam_auga3_F",nil,75000],
						["30Rnd_556x45_Aug_Mag",nil,100],
						["arifle_Sam_galilar_F",nil,85000],
						["30Rnd_556x45_Galil_Mag",nil,100],
						["arifle_sa80_Sam_F",nil,135000],
						["arifle_Sam_g36c_F",nil,135000],
						["prifle_alfr_Sam_870cms_F",nil,135000],
						["8Rnd_ALFR_12Gauge_Pellets",nil,95],
						["arifle_Sam_stg58_F",nil,180000],
						["20Rnd_762x51_STG58_Mag",nil,90],
						["arifle_Sam_scarh_F",nil,180000],
						["20Rnd_762x51_ScarH_Mag",nil,90],
						["R3F_FRF2",nil,230000],
						["Trixie_M24_Clean",nil,280000],
						["Trixie_M40A3_Clean",nil,300000],
						["Trixie_CZ750",nil,325000],
						["Trixie_AWM338",nil,375000],
						["R3F_PGM_Hecate_II",nil,485000],
						["Rangefinder",nil,15000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_MRCO",nil,10000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_ACO_grn_smg",nil,2000],
						["optic_MRD",nil,1500],
						["acc_pointer_IR",nil,10000],
						["NVGoggles",nil,2000],
						["ItemRadio","Telephone",500],
						["ToolKit",nil,250],
						["itemgps",nil,150],
						["FirstAidKit",nil,150],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60],
						["11Rnd_45ACP_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["30Rnd_556x45_Stanag",nil,70],
						["7Rnd_408_Mag",nil,800],
						["5Rnd_127x108_Mag",nil,800],
						["R3F_10Rnd_762x51_FRF2",nil,800],
						["Trixie_5x762_Mag",nil,800],
						["Trixie_10x762_Mag",nil,800],
						["Trixie_5x338_Mag",nil,800],
						["R3F_7Rnd_127x99_PGM",nil,800]
					]
				];
	};

	case "gang":
	{
		["Altis Hideout Store",
			[
						["arifle_SDAR_F",nil,150000],
						["arifle_TRG20_F",nil,200000],
						["arifle_Katiba_F",nil,250000],
						["hlc_rifle_aks74u",nil,250000],
						["hlc_rifle_aks74",nil,300000],
						["srifle_DMR_01_F",nil,350000],
						["hlc_rifle_ak74",nil,200000],
						["hlc_rifle_ak12",nil,300000],
						["hlc_rifle_aks74_GL",nil,300000],
						["hlc_rifle_ak47",nil,350000],
						["hlc_rifle_akm",nil,400000],
						["hlc_rifle_saiga12k",nil,300000],
						["hlc_rifle_akmgl",nil,400000],
						["hlc_rifle_aek971",nil,500000],
						["optic_ACO_grn",nil,3500],
						["hlc_optic_kobra",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["HLC_Optic_1p29",nil,7500],
						["HLC_Optic_PSO1",nil,80000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_30Rnd_545x39_t_ak",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["Cha_100Rnd_762x54_PK",nil,100],
						["Cha_100Rnd_762x54_PK_T",nil,100],
						["hlc_GRD_White",nil,5000],
						["hlc_GRD_red",nil,5000],
						["hlc_GRD_green",nil,5000],
						["hlc_GRD_blue",nil,5000],
						["hlc_GRD_orange",nil,5000],
						["hlc_GRD_purple",nil,5000],
						["SmokeShellRed","Fumigene rouge",5000],
						["ItemCompass",nil,50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,12000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,75],
						["SMG_01_F",nil,28000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["SIG_P226",nil,13000],
						["C1987_MP7",nil,30000],
						["C1987_20Rnd_46x30_mp7",nil,100],
						["C1987_40Rnd_46x30_mp7",nil,200],
						["optic_ACO_grn_smg",nil,2500],
						["Chemlight_blue",nil,300]
			]
		];
	};

	case "genstore":
	{
		["Quincaillerie",
			[
				["ItemRadio","Telephone",500],
				["ItemCompass",nil,50],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
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
                        ["ToolKit",nil,200],
                        ["FirstAidKit",nil,100],
						["Mask_M40","Masque a Gaz",85000],
                        ["U_C_Scientist","Combinaison Antiradiation",100000]
                    ]
                ];
            };
        };
    };
};
