/*
	File: fn_clothing_transevo.sqf
	Author: Sam
	
	Description:
	Configuration file for TransEvolution Clothing Shop
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Uniformes TransEvolution"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["ALE_TransEvo",nil,1000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["rds_worker_cap1",nil,115],
			["rds_worker_cap2",nil,115],
			["rds_worker_cap3",nil,115],
			["rds_worker_cap4",nil,115],
			["rds_Villager_cap1",nil,105],
			["rds_Villager_cap2",nil,105],
			["rds_Villager_cap3",nil,105],
			["rds_Villager_cap4",nil,105],
			["rds_Profiteer_cap1",nil,90],
			["rds_Profiteer_cap2",nil,90],
			["rds_Profiteer_cap3",nil,90],
			["rds_Profiteer_cap4",nil,90],
			["rds_Woodlander_cap1",nil,100],
			["rds_Woodlander_cap2",nil,100],
			["rds_Woodlander_cap3",nil,100],
			["rds_Woodlander_cap4",nil,100],
			["Kio_Pirate_Hat",nil,175],
			["Kio_Spinning_Hat",nil,175],
			["Kio_Capital_Hat",nil,175],
			["kio_vfv_mask",nil,175],
			["Kio_Hat",nil,180],
			["Kio_Afro_Hat","Coupe afro",200],
			["Kio_Santa_Hat",nil,200],
			["Kio_No1_Hat",nil,175],
			["ALE_H_NewEra_Black",nil,310],
			["ALE_H_NewEra_Cyan",nil,310],
			["ALE_H_NewEra_Superman",nil,310],
			["ALE_H_NewEra_Rouge",nil,310],
			["ALE_H_NewEra_Monster",nil,310],
			["ALE_H_NewEra_Lakers",nil,310],
			["ALE_H_NewEra_Redsox",nil,310],
			["ALE_H_Cowboy_Brown",nil,250],
			["ALE_H_Cowboy_Black",nil,250],
			["ALE_H_Cowboy_White",nil,250],
			["H_Bandanna_camo","Bandana Camo",120],
			["H_Bandanna_surfer","Bandana de Surfeur",130],
			["H_Bandanna_gry","Bandana Gris",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Bandana Khaki",145],
			["H_Bandanna_sgg","Bandana Sauge",160],
			["H_StrawHat","Fedora",225],
			["H_BandMask_blk","Casquette & Bandana",300],
			["H_Cap_marshal","Casquette rouge + Casque jaune",550],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Sport_Blackred",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["cl3_gangcut_regular",nil,500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};