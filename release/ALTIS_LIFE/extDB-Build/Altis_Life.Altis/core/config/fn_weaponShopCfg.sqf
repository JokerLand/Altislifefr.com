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
				["Altis Cop Shop",
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
						["Rangefinder",nil,3400],
                        ["ItemRadio","Telephone",500]
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
						["ItemWatch",nil,50],
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
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_policier": //nouvelle reforme: coplvl 2 Brigadier
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_brigadier":  //nouvelle reforme: coplvl 3 Adjudant
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_major":  //nouvelle reforme: coplvl 4 Major
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_lieutenant":  //nouvelle reforme: coplvl 5 Lieutenant
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_capitaine":  //nouvelle reforme: coplvl 6 capitaine
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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

	case "cop_admin":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie",
					[
						//["DDOPP_X26","Tazer",2000],
						//["DDOPP_X26_b","Tazer",2000],
						//["DDOPP_1Rnd_X26",nil,50],
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
			case (!license_civ_rebel): {"Vous n'avez pas de licence rebelle !"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,50000],
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
						["hlc_rifle_rpk",nil,300000],
						["hlc_rifle_akmgl",nil,215000],
						["hlc_rifle_aek971",nil,250000],
						["Cha_PK",nil,300000],
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
						["hlc_45Rnd_545x39_t_rpk",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_45Rnd_762x39_t_rpk",nil,300],
						["hlc_45Rnd_762x39_m_rpk",nil,300],
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
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_tlt): {"Vous n'etes pas BL !"};
			default
			{
				["Armurerie Armée",
					[

						["hlc_rifle_ak12",nil,200000],
						["hlc_rifle_akm",nil,250000],
						["hlc_rifle_rpk",nil,350000],
						["hlc_rifle_akmgl",nil,350000],
						["srifle_EBR_F",nil,400000],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x51_Box_Tracer",nil,800],
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
						["hlc_45Rnd_545x39_t_rpk",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_45Rnd_762x39_t_rpk",nil,300],
						["hlc_45Rnd_762x39_m_rpk",nil,300],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["hlc_GRD_White",nil,5000],
						["hlc_GRD_red",nil,5000],
						["hlc_GRD_green",nil,5000],
						["hlc_GRD_blue",nil,5000],
						["hlc_GRD_orange",nil,5000],
						["hlc_GRD_purple",nil,5000],
						["ItemRadio","Telephone",500],
						["SmokeShellRed","Fumigene rouge",5000]
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
			case (!license_civ_gun): {"Vous n'avez pas de license d'arme à feu !"};
			default
			{
				["Billy Joe's Firearms",
					[
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
						["hgun_Rook40_F",nil,8000],
						["ItemRadio","Telephone",500],
						["hgun_PDW2000_F",nil,15000],
						["SMG_01_F",nil,20000],
						["arifle_Mk20C_plain_F",nil,100000],
						["SIG_P226",nil,8000],
						["C1987_MP7",nil,50000],
						["C1987_MP7_ucp",nil,50000],
						["C1987_MP7_urb",nil,50000],
						["C1987_MP7_dmarpat",nil,50000],
						["C1987_MP7_marpat",nil,50000],
						["C1987_MP7_wcam",nil,50000],
						["C1987_MP7_sand",nil,50000],
						["C1987_MP7_nwu",nil,50000],
						["C1987_MP7_folded_p",nil,50000],
						["C1987_20Rnd_46x30_mp7",nil,100],
						["C1987_40Rnd_46x30_mp7",nil,200],
						["SG553",nil,150000],
						["SG553_CQB",nil,150000],
						["SG553_GL",nil,150000],
						["LMG_Mk200_F",nil,200000],
						["LMG_Zafir_F",nil,350000],
						["srifle_LRR_camo_F",nil,400000],
						["srifle_GM6_F",nil,400000],
						["srifle_GM6_camo_F",nil,400000],
						["Rangefinder",nil,50000],
						["optic_LRPS",nil,50000],
						["optic_SOS",nil,30000],
						["optic_MRCO",nil,10000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_ACO_grn_smg",nil,2000],
						["acc_pointer_IR",nil,10000],
						["ToolKit",nil,250],
						["itemgps",nil,150],
						["FirstAidKit",nil,150],
						["30Rnd_56x45_GP90",nil,100],
						["30Rnd_56x45_GP90_Armour_Piercing",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,100],
						["1Rnd_SmokeRed_Grenade_shell",nil,100],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],
						["1Rnd_SmokeYellow_Grenade_shell",nil,100],
						["1Rnd_SmokePurple_Grenade_shell",nil,100],
						["1Rnd_SmokeBlue_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["1Rnd_SmokeOrange_Grenade_shell",nil,100],
						["Cha_Pecheneg",nil,300000],
						["Cha_100Rnd_762x54_PK",nil,100],
						["Cha_100Rnd_762x54_PK_T",nil,100],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["30Rnd_556x45_Stanag",nil,70],
						["200Rnd_65x39_cased_Box_Tracer",nil,800],
						["150Rnd_762x51_Box_Tracer",nil,800],
						["7Rnd_408_Mag",nil,800],
						["5Rnd_127x108_Mag",nil,800]

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
						["hlc_rifle_rpk",nil,500000],
						["hlc_rifle_akmgl",nil,400000],
						["hlc_rifle_aek971",nil,500000],
						["Cha_PK",nil,600000],
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
						["hlc_45Rnd_545x39_t_rpk",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_45Rnd_762x39_t_rpk",nil,300],
						["hlc_45Rnd_762x39_m_rpk",nil,300],
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
						["ItemWatch",nil,50],
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
		["Altis General Store",
			[
				["ItemWatch",nil,50],
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
    
    case "cellphone":
    {
        ["Store phone",
            [
                ["ItemRadio","Cellphone",500]
            ]
        ];
    };
};