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
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Quincaillerie Police",
					[
						["ItemWatch",nil,50],
						["ItemCompass",nil,50],
						["Binocular",nil,150],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles",nil,2500],
						["Rangefinder",nil,3400]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_policier":  //Grade: Policier= CopLevel1
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Policier",
					[
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200]
					]
				];
			};
		};
	};

	case "cop_brigadier":  //Grade: Brigadier= CopLevel2
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Brigadier",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["arifle_MX_Black_F",nil,6200],
						["30Rnd_65x39_caseless_mag",nil,80],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_adjudant":  //Grade: Adjudant= CopLevel3
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Adjudant",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["M110",nil,12000],
						["20Rnd_762x51_Mag",nil,60],
						["gign_shield",nil,1500],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_LRPS",nil,50000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_major":  //Grade: Major= CopLevel4
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Major",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["M110",nil,12000],
						["20Rnd_762x51_Mag",nil,60],
						["gign_shield",nil,1500],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["optic_DMS",nil,30000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["B_UavTerminal",nil,5200],
						["acc_pointer_IR",nil,4200],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":  //Grade: Lieutenant= CopLevel5
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Lieutenant",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["M110",nil,12000],
						["20Rnd_762x51_Mag",nil,60],
						["gign_shield",nil,1500],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
						["LMG_Zafir_F",nil,200000],
						["150Rnd_762x51_Box_Tracer",nil,800],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["optic_DMS",nil,30000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["B_UavTerminal",nil,5200],
						["acc_pointer_IR",nil,4200],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_capitaine":  //Grade: Capitaine= CopLevel6
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Capitaine",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["M110",nil,12000],
						["20Rnd_762x51_Mag",nil,60],
						["gign_shield",nil,1500],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
						["LMG_Zafir_F",nil,400000],
						["150Rnd_762x51_Box_Tracer",nil,800],
						["srifle_LRR_F",nil,15000],
						["7Rnd_408_Mag",nil,800],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["optic_DMS",nil,30000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_tws",nil,40000],
						["B_UavTerminal",nil,5200],
						["acc_pointer_IR",nil,4200],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_commandant":  //Grade: Commandant= CopLevel7
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie Commandant",
					[
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["HK430",nil,6500],
						["HK430_30Rnd_556x45",nil,80],
						["FHQ_M4A1_BLK",nil,6000],
						["FHQ_M4A1_AFG_BLK",nil,6000],
						["FHQ_M4A1_M203_BLK",nil,6000],
						["30rnd_556x45_STANAG",nil,20],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["M110",nil,12000],
						["20Rnd_762x51_Mag",nil,60],
						["gign_shield",nil,1500],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
						["LMG_Zafir_F",nil,200000],
						["150Rnd_762x51_Box_Tracer",nil,800],
						["srifle_LRR_F",nil,15000],
						["7Rnd_408_Mag",nil,800],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,10000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_tws",nil,40000],
						["B_UavTerminal",nil,5200],
						["acc_pointer_IR",nil,4200],
						["optic_DMS",nil,1200],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
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
};
