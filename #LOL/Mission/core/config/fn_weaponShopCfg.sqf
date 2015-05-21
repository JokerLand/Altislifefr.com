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
			case (playerSide != west): {"Interdit aux civils !};
			case (__GETC__(life_coplevel) == 1):
			{
				["Matériel Policier",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["M4_Benelli",nil,6500],
						["8Rnd_B_Beneli_74Slug",nil,80],
						["8Rnd_12Gauge_Pellets",nil,80],
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["R3F_Famas_G2_HG",nil,12500],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn",nil,3200],
						["optic_Aco",nil,3200]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 2):
			{
				["Matériel Brigadier/Brigadier-Chef",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
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
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr","ACW-R (Brigadier-Chef)",20000],
						["wirk_acwr_mag",nil,100],
						["R3F_Famas_G2_HG",nil,12500],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
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
			
			case (__GETC__(life_coplevel) == 3):
			{
				["Matériel Adjudant/Adjudant-Chef",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
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
						["R3F_Famas_G2_HG",nil,12500],
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,20000],
						["wirk_acwr_mag",nil,100],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
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
			
			case (__GETC__(life_coplevel) == 4):
			{
				["Matériel Major",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
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
						["R3F_Famas_G2_HG",nil,12500],
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,20000],
						["wirk_acwr_mag",nil,100],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
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
						["Trixie_M40A3_NG",nil,45000],
						["Trixie_5x762_Mag",nil,100],
						["HandGrenade_Stone","Flashbang",1700],
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
			
			case (__GETC__(life_coplevel) == 5):
			{
				["Matériel Lieutenant",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
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
						["R3F_Famas_G2_HG",nil,12500],
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,20000],
						["wirk_acwr_mag",nil,100],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
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
						["150Rnd_762x54_Box_Tracer",nil,800],
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
			
			case (__GETC__(life_coplevel) == 6):
			{
				["Matériel Capitaine",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
						["arifle_sdar_F",nil,10000],
						["20Rnd_556x45_UW_mag",nil,125],
						["hgun_P07_snds_F","Tazer",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,70],
						["SMG_02_F",nil,4600],
						["30Rnd_9x21_Mag",nil,60],
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,20000],
						["wirk_acwr_mag",nil,100],
						["R3F_Famas_G2_HG",nil,12500],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
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
						["150Rnd_762x54_Box_Tracer",nil,800],
						["R3F_PGM_Hecate_II_POLY",nil,100000],
						["R3F_7Rnd_127x99_PGM",nil,800],
						["srifle_LRR_F",nil,150000],
						["R3F_M107",nil,350000],
						["R3F_10Rnd_127x99_M107",nil,800],
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
			
			case (__GETC__(life_coplevel) == 7):
			{
				["Matériel Commandant",
					[
						["ItemRadio","Telephone",500],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,2000],
						["NVGoggles_OPFOR",nil,2500],
						["Rangefinder",nil,3400],
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
						["wirk_p90",nil,10000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,10000],
						["30Rnd_556x45_Stanag",nil,100],
						["wirk_acwr",nil,20000],
						["wirk_acwr_mag",nil,100],
						["R3F_Famas_G2_HG",nil,12500],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,100],
						["R3F_HK416M_HG",nil,15000],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,100],
						["R3F_HK417L",nil,20000],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,100],
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
						["150Rnd_762x54_Box_Tracer",nil,800],
						["R3F_PGM_Hecate_II_POLY",nil,100000],
						["R3F_7Rnd_127x99_PGM",nil,800],
						["srifle_LRR_F",nil,150000],
						["7Rnd_408_Mag",nil,800],
						["R3F_M107",nil,350000],
						["R3F_10Rnd_127x99_M107",nil,800],
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
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_gun): {"Vous n'avez pas de permis de port d'arme !"};
			case (license_civ_gun):
			{
				["Armurerie",
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
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (__GETC__(life_donator) < 1): {"Vous n'êtes pas donateur !"};
			case (__GETC__(life_donator) == 1):
			{
				["Magasin Donateur",
					[
						["hgun_Rook40_F",nil,8000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_SA_nambu_type14_F",nil,10000],
						["8Rnd_8x22_Mag",nil,100],
						["hgun_SA_makarov_pm_F",nil,12000],
						["8Rnd_9x18_Mag",nil,100],
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
						["wirk_p90",nil,80000],
						["wirk_p90_mag",nil,100],
						["arifle_sa80_Sam_F",nil,150000],
						["SG553",nil,150000],
						["SG553_CQB",nil,150000],
						["SG553_GL",nil,150000],
						["LMG_Mk200_F",nil,200000],
						["LMG_Zafir_F",nil,350000],
						["srifle_LRR_camo_F",nil,400000],
						["srifle_GM6_F",nil,400000],
						["srifle_GM6_camo_F",nil,400000],
						["R3F_FRF2",nil,250000],
						["Trixie_M24_Clean",nil,300000],
						["Trixie_M40A3_Clean",nil,300000],
						["Trixie_CZ750",nil,350000],
						["Trixie_AWM338",nil,400000],
						["R3F_PGM_Hecate_II",nil,500000],
						["Rangefinder",nil,50000],
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
						["11Rnd_45ACP_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,60],
						["30Rnd_556x45_Stanag",nil,70],
						["200Rnd_65x39_cased_Box_Tracer",nil,800],
						["150Rnd_762x54_Box_Tracer",nil,800],
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
					]
				];
			};
			
			case (__GETC__(life_donator) < 1):
			{
				["Revendeur d'armes illégales",
					[
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
			case (license_civ_rebel):
			{
				["Armement Rebelle",
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
						["hlc_rifle_akmgl",nil,215000],
						["hlc_rifle_aek971",nil,250000],
						["Trixie_M14",nil,275000],
						["Trixie_M14_Green",nil,275000],
						["Trixie_M14_Black",nil,275000],
						["wirk_acwr",nil,300000],
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
						["10Rnd_762x54_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hlc_30Rnd_545x39_B_AK",nil,300],
						["hlc_30Rnd_545x39_t_ak",nil,300],
						["hlc_30Rnd_545x39_EP_ak",nil,300],
						["hlc_30Rnd_762x39_b_ak",nil,300],
						["hlc_30Rnd_762x39_t_ak",nil,300],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["Trixie_20x762_Mag",nil,100],
						["wirk_acwr_mag",nil,300],
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
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas du SAMU"};
			default {
				["Magasin SAMU",
					[
					]
				];
			};
		};
	};
};