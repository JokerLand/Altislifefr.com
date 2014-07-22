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
						["ItemWatch",nil,50],
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

	case "cop_recrue":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie pour recrue",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};
	
	case "cop_policier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie pour policier",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};
		};
	};
	
	case "cop_brigadier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Equipement Armurerie Brigadier/Brigadier-Chef",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
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
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie pour major",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
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
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie pour lieutenant",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
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
						["B_UavTerminal",nil,5200],
						["acc_pointer_IR",nil,4200],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShell",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
			default
			{
				["Armurerie pour capitaine",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
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
				["Armurerie pour commandant",
					[
						["arifle_sdar_F","Taser Rifle",2500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["arifle_MX_Black_F",nil,6200],
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,7300],
						["30Rnd_65x39_caseless_mag",nil,80],
						["srifle_EBR_F",nil,8200],
						["20Rnd_762x51_Mag",nil,90],
						["LMG_Mk200_F",nil,15000],
						["200Rnd_65x39_cased_Box",nil,500],
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
						["arifle_TRG20_F",nil,80000],
						["arifle_Katiba_F",nil,100000],
						["srifle_DMR_01_F",nil,150000],
						["arifle_SDAR_F",nil,30000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
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
						["hgun_PDW2000_F",nil,15000],
						["SMG_01_F",nil,20000],
						["arifle_Mk20C_plain_F",nil,100000],
						["LMG_Mk200_F",nil,250000],
						["LMG_Zafir_F",nil,400000],
						["srifle_LRR_camo_F",nil,400000],
						["srifle_GM6_F",nil,600000],
						["srifle_GM6_camo_F",nil,600000],
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
	
	case "genstore":
	{
		["Altis General Store",
			[
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
				["Chemlight_blue",nil,300]
			]
		];
	};
};
