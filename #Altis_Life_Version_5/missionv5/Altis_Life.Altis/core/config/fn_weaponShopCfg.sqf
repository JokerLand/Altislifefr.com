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

switch(_shop) do {
	case "cop_basic": {
		switch(true) do {
			case (playerSide != west): {"Vous n'êtes pas policier !"};
			default {
				["Quincaillerie Police",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["pmc_earpiece",nil,2500],
						["Rangefinder",nil,1]
					]
				];
			};
		};
	};
	
	case "med_basic": {
		switch (true) do {
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
						["pmc_earpiece",nil,2500],
                        ["H_PilotHelmetHeli_B",nil,500],
						["ALFR_Police_Backpack",nil,5000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
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
						["Rangefinder",nil,15000],
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_Pistol_heavy_02_F",nil,12000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["SMG_01_F",nil,28000],
                                                ["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["arifle_Mk20C_plain_F",nil,80000],
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
                                                ["arifle_Sam_scarh_F",nil,180000],
                                                ["20Rnd_762x51_ScarH_Mag",nil,90],
                        ["srifle_DMR_06_olive_F",nil,375000],
                        ["srifle_DMR_06_camo_F",nil,375000],
                        ["20Rnd_762x51_Mag",nil,800],
                        ["srifle_DMR_03_woodland_F",nil,400000],
                        ["srifle_DMR_03_multicam_F",nil,400000],
                        ["srifle_DMR_03_khaki_F",nil,400000],
                        ["srifle_DMR_03_tan_F",nil,400000],
                        ["20Rnd_762x51_Mag",nil,800],
						["LMG_Zafir_F",nil,500000],
						["150Rnd_762x54_Box_Tracer",nil,800],
                        ["srifle_GM6_F",nil,550000],
                        ["srifle_GM6_camo_F",nil,550000],
                        ["5Rnd_127x108_APDS_Mag",nil,800],
						["optic_ACO_grn",nil,3500],
                                                ["optic_LRPS",nil,50000],
                                                ["optic_SOS",nil,30000],
                                                ["optic_MRCO",nil,20000],
                                                ["optic_Arco",nil,10000],
                                                ["optic_Hamr",nil,10000],
                                                ["optic_MRD",nil,1500],
                                                ["acc_pointer_IR",nil,10000],
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
                        ["hgun_Pistol_heavy_01_F",nil,10000],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_SA_makarov_pm_F",nil,12000],
						["8Rnd_9x18_Mag",nil,100],
						["hgun_sam_browning_hp_F",nil,12000],
						["8Rnd_9x18_Mag",nil,100],
						["SIG_P226",nil,13000],
						["smg_SA_9a91",nil,50000],
						["hgun_PDW2000_F",nil,20000],
                        ["11Rnd_45ACP_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["20Rnd_SA_9x39",nil,100],
						["C1987_MP7",nil,60000],
						["C1987_20Rnd_46x30_mp7",nil,100],
						["C1987_40Rnd_46x30_mp7",nil,200],
                        ["R3F_MP5A5",nil,60000],
                        ["R3F_30Rnd_9x19_MP5",nil,150],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900]
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
};
