/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin de Vêtements"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["rds_uniform_citizen1",nil,200],
		["rds_uniform_citizen2",nil,200],
		["rds_uniform_citizen3",nil,200],
		["rds_uniform_citizen4",nil,200],
		["rds_uniform_Worker1",nil,205],
		["rds_uniform_Worker2",nil,205],
		["rds_uniform_Worker3",nil,205],
		["rds_uniform_Worker4",nil,205],
		["rds_uniform_Profiteer1",nil,190],
		["rds_uniform_Profiteer2",nil,190],
		["rds_uniform_Profiteer3",nil,190],
		["rds_uniform_Profiteer4",nil,190],
		["rds_uniform_Woodlander1",nil,230],
		["rds_uniform_Woodlander2",nil,230],
		["rds_uniform_Woodlander3",nil,230],
		["rds_uniform_Woodlander4",nil,230],
		["rds_uniform_Villager1",nil,210],
		["rds_uniform_Villager2",nil,210],
		["rds_uniform_Villager3",nil,210],
		["rds_uniform_Villager4",nil,210],
		["rds_uniform_Functionary1",nil,1300],
		["rds_uniform_Functionary2",nil,1300],
		["rds_uniform_schoolteacher",nil,300],
		["ALE_Worker","Uniforme de travailleur",50],
		["ALE_CivilObey","T-Shirt Obey & Short Noir",375],
		["ALE_CivilAveng","T-Shirt Bleu Avengers",265],
		["ALE_CivilSkull","T-Shirt Tête de mort",125],
		["ALE_CivilLacoste_B","Polo Lacoste Blanc",1900],
		["ALE_CivilLacoste_Bl","Polo Lacoste Bleu",1900],
		["ALE_CivilLacoste_O","Polo Lacoste Orange",1900],
		["ALE_CivilLacoste_V","Polo Lacoste Vert",1900],
		["ALE_CivilEleven","T-Shirt Eleven Paris",400],
		["ALE_CivilALE","T-Shirt Altis Life Evolution",115],
		["ALE_CivilPSG","Maillot du PSG",750],
		["ALE_CivilOM","Maillot de l'OM",749],
		["ALE_CivilVioletJaune","T-Shirt Violet à bandes jaunes",305],
		["ALE_CivilRougeBlanc","T-Shirt Rouge à bandes blanches",305],
		["ALE_CivilGrisNoir","T-Shirt Gris à bandes noires",305],
		["ALE_CivilFuckMe","T-Shirt F*ck Me I'm Famous",255],
		["ALE_CivilMickey","T-Shirt Mickey",205],
		["ALE_CivilPorsche","T-Shirt Porsche",750],
		["ALE_CivilManLegend","T-Shirt The Man, The Legend",320],
		["U_C_Poloshirt_blue","Poloshirt Bleu",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Rouge/Blanc",150],
		["U_C_Poloshirt_salmon","Poloshirt Saumon",175],
		["U_C_Poloshirt_stripped","Poloshirt rayé",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Vêtements de pauvre",250],
		["U_NikosBody","Tenue de Jacky",500],
		["U_Competitor","Tenue Ion",450],
		["U_IG_Guerilla2_2","Haut vert à rayure & Pantalon",650],
		["U_IG_Guerilla2_1","Haut bleu & Pantalon beige",710],
		["U_IG_Guerilla3_1","Veste marron & Pantalon",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1000],
		["U_C_HunterBody_grn","Tenue de Chasseur",1500],
		["U_OrestesBody","Tenue de Surfeur",1100],
		["U_NikosAgedBody","Chemise Cravate",2500],
		["U_Marshal","Chemise blanche & Pantalon noir",2700]
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
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,3500],
			["B_TacticalPack_oli",nil,4500],
			["B_FieldPack_ocamo",nil,4000],
			["B_Bergen_sgg",nil,5500],
			["B_Kitbag_cbr",nil,5500],
			["B_Carryall_oli",nil,8000],
			["B_Carryall_khk",nil,8000],
			["B_Parachute",nil,8000]
		];
	};
};