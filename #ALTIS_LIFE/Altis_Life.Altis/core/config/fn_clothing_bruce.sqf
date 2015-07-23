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
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["ALFR_FR_tenualfr_2","Tenue AltisLifeFR",250],
			["ALFR_FR_tenualfr_1","Tenue AltisLifeFR",250],
			["ALFR_FR_tenualfr","Tenue AltisLifeFR",250],
			["U_C_Poloshirt_blue","Poloshirt Blue",250],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",250],
			["U_C_Poloshirt_stripped","Poloshirt Stripped",250],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolour",250],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",250],
			["U_C_Poloshirt_redwhite","Poloshirt Red and White",250],
			["U_C_Poor_1","Shirt Blue",250],
			["U_I_G_Story_Protagonist_F","Buttonup Black Camo",500],
			["U_NikosBody","Buttonup Red Dragon",500],
			["U_OrestesBody",nil,500],
			["U_C_HunterBody_grn","Hunter Cream",500],
			["rds_uniform_Villager1","Tenue Villageois 1",450],
			["rds_uniform_Villager2","Tenue Villageois 2",450],
			["rds_uniform_Villager3","Tenue Villageois 3",450],
			["rds_uniform_Villager4","Tenue Villageois 4",450],
			["U_OG_Guerilla3_1","Hunter Tan",500],
			["U_OG_Guerilla3_2","Hunter Green",500],
			["U_IG_Guerilla2_1","Buttonup Black",500],
			["U_IG_Guerilla2_2","Buttonup Checked",500],
			["U_IG_Guerilla2_3","Buttonup Navy",500],
			["rds_uniform_Worker1","Tenue de travail 1",550],
			["rds_uniform_Worker2","Tenue de travail 2",550],
			["rds_uniform_Worker3","Tenue de travail 3",550],
			["rds_uniform_Worker4","Tenue de travail 4",550],
			["rds_uniform_citizen1","Tenue de Ville 1",600],
			["rds_uniform_citizen2","Tenue de Ville 2",600],
			["rds_uniform_citizen3","Tenue de Ville 3",600],
			["rds_uniform_citizen4","Tenue de Ville 4",600],
            ["U_CivilianTShirt_F","TeeShirt noire tete de mort pantalon marron",650],
            ["U_CivilianTShirt_A","TeeShirt rouge tete de mort pantalon orange",650],
            ["U_CivilianTShirt_G","TeeShirt marron pantalon noire",650],
            ["U_CivilianTShirt_E","TeeShirt orange pantalon vert",650],
            ["U_CivilianTShirt_D","TeeShirt jaune pantalon marron",650],
            ["U_CivilianCoat_E","Tenue de vieux 1",650],
            ["U_CivilianCoat_F","Tenue de vieux 2",650],
            ["U_Rangemaster_A","TeeShirt noire pantalon blue",650],
            ["U_Rangemaster_D","TeeShirt blue pantalon marron",650],
            ["U_Rangemaster_G","TeeShirt gold pantalon vert",650],
            ["U_Rangemaster_C","TeeShirt vert pantalon noire",650],
            ["U_Rangemaster_E","TeeShirt rose pantalon vert",650],
            ["U_Rangemaster_F","TeeShirt violet pantalon beige",650],
            ["U_Rangemaster_B","TeeShirt blanc pantalon jungle",650],
            ["U_CivilianPilot_A","Tenue de vieux pilote",650],
            ["ALE_Worker","Uniforme de Chantier",650],
			["rds_uniform_assistant","Uniforme d'assistant",700],
			["rds_uniform_schoolteacher","Uniforme de Professeur",700],
			["rds_uniform_priest","Tenue de prête",750],
			["U_OrestesBody","Surfing On Land",1100],
			["U_Competitor","Tenue ION jaune",1200],
			["U_Marshal","Tenue Chauffeur de Bus",1500],
			["rds_uniform_Functionary2","Costard cravate bleu",4500],
			["rds_uniform_Functionary1","Costard cravate rouge",4500],
			["U_NikosAgedBody","Costard cravate",5000],
			["ALE_CivilObey","T-Shirt Obey & Short Noir",3750],
		    ["ALE_CivilAveng","T-Shirt Bleu Avengers",2650],
		    ["ALE_CivilSkull","T-Shirt Tête de mort",1250],
		    ["ALE_CivilLacoste_B","Polo Lacoste Blanc",4900],
		    ["ALE_CivilLacoste_Bl","Polo Lacoste Bleu",4900],
		    ["ALE_CivilLacoste_O","Polo Lacoste Orange",4900],
		    ["ALE_CivilLacoste_V","Polo Lacoste Vert",4900],
		    ["ALE_CivilEleven","T-Shirt Eleven Paris",4000],
		    ["ALE_CivilPSG","Maillot du PSG",3500],
		    ["ALE_CivilOM","Maillot de l'OM",3500],
		    ["ALE_CivilVioletJaune","T-Shirt Violet à bandes jaunes",3050],
		    ["ALE_CivilRougeBlanc","T-Shirt Rouge à bandes blanches",3050],
		    ["ALE_CivilGrisNoir","T-Shirt Gris à bandes noires",3050],
		    ["ALE_CivilFuckMe","T-Shirt F*ck Me I'm Famous",2550],
		    ["ALE_CivilMickey","T-Shirt Mickey",2050],
			["ALE_CivilDayZ","T-Shirt DayZ",1900],
		    ["ALE_CivilPorsche","T-Shirt Porsche",7500],
			["ALE_CivilImWithStupid","T-Shirt ImStupid",3500],
		    ["ALE_CivilManLegend","T-Shirt The Man, The Legend",3500],
			["U_C_WorkerCoveralls","Tenue de garagiste",5000],
			["U_PMC_BluePlaidShirt_BeigeCords","Chemise Courte Bleu",5500],
			["U_PMC_RedPlaidShirt_DenimCords","Chemise Courte Rose",5500],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB","Tenue Chemise Bleu",6000],
			["U_PMC_CombatUniformRS_ChckLB_GPBB","Tenue Chemise Bleu Claire",6000],
			["U_PMC_CombatUniformRS_ChckLR_SPBB","Tenue Chemise Rose Claire",6000],
			["U_PMC_CombatUniformRS_ChckP_BPBB","Tenue Chemise Violette",6000],
            ["ALFR_FR_tenukenny","Tenue Monsieur Rat Super", 5000],
            ["ALFR_FR_nitrado", "Tenue Nitrado", 5000],
            ["ALFR_FR_armani_black", "Tenue armani noir", 7000],
            ["ALFR_FR_armani_blue", "Tenue armani bleu", 7000],
            ["ALFR_FR_armani_white", "Tenue armani blanche", 7000]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Cap_red",nil,50],
			["H_Cap_blu",nil,50],
			["H_Cap_oli",nil,50],
			["H_Cap_grn",nil,50],
			["H_Cap_tan",nil,50],
			["H_Cap_blk",nil,50],
			["H_Cap_blk_CMMG",nil,50],
			["H_Cap_surfer",nil,50],
			["H_Cap_blk_ION",nil,50],
			["H_Capbw_tan_pmc",nil,50],
			["H_Capbw_pmc",nil,50],
			["H_Cap_marshal",nil,50],
			["H_Booniehat_grn",nil,50],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_dirty",nil,50],
			["H_Bandanna_surfer",nil,50],
			["H_Bandanna_khk",nil,50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_sgg",nil,50],
			["H_Bandanna_gry",nil,50],
			["H_StrawHat",nil,50],
			["H_StrawHat_dark",nil,50],
			["H_Hat_blue",nil,50],
			["H_Hat_brown",nil,50],
			["H_Hat_grey",nil,50],
			["H_Watchcap_blk",nil,50],
			["H_Watchcap_khk",nil,50],
			["H_Watchcap_sgg",nil,50],
			["H_Watchcap_camo",nil,50],
			["H_Hat_checker",nil,50],
			["rds_Villager_cap1",nil,50],
			["rds_Villager_cap2",nil,50],
			["rds_Villager_cap3",nil,50],
			["rds_Villager_cap4",nil,50],
			["rds_worker_cap1",nil,100],
			["rds_worker_cap2",nil,100],
			["rds_worker_cap3",nil,100],
			["rds_worker_cap4",nil,100],
            ["H_Hat_HelmetConical",nil,120],
            ["H_Hat_Boonie_Cowboy",nil,120],
            ["H_Hat_Golf_Black",nil,120],
            ["H_Hat_Golf_Blue",nil,120],
            ["H_Hat_Golf",nil,120],
			["ALE_H_Cowboy_White",nil,150],
			["ALE_H_Cowboy_Brown",nil,150],
			["ALE_H_Cowboy_Black",nil,150],
			["ALE_H_NewEra_Cyan",nil,500],
			["ALE_H_NewEra_Monster",nil,500],
			["ALE_H_NewEra_Black",nil,500],
			["ALE_H_NewEra_Lakers",nil,500],
			["ALE_H_NewEra_Rouge",nil,500],
			["ALE_H_NewEra_Superman",nil,500],
			["ALE_H_NewEra_Redsox",nil,500],
			["H_PilotHelmetHeli_O",nil,500]
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
			["V_BandollierB_cbr",nil,4500],
			["V_BandollierB_khk",nil,4500],
			["V_BandollierB_rgr",nil,4500],
			["V_BandollierB_blk",nil,4500]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,600],
			["B_AssaultPack_cbr",nil,600],
			["B_AssaultPack_khk",nil,600],
			["B_AssaultPack_sgg",nil,600],
			["B_AssaultPack_rgr",nil,600],
			["B_FieldPack_cbr",nil,1000],
			["B_FieldPack_blk",nil,1000],
			["B_FieldPack_ocamo",nil,1000],
			["B_FieldPack_oucamo",nil,1000],
			["B_FieldPack_cbr",nil,1000],
			["B_Kitbag_mcamo",nil,1500],
			["B_Kitbag_sgg",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["B_Bergen_sgg",nil,1500],
			["B_Bergen_blk",nil,1500],
			["B_Bergen_mcamo",nil,1500],
			["B_Carryall_ocamo",nil,2500],
			["B_Carryall_oucamo",nil,2500],
			["B_Carryall_mcamo",nil,2500],
			["B_Carryall_oli",nil,2500],
			["B_Carryall_khk",nil,2500],
			["B_Carryall_cbr",nil,2500],
			["B_Parachute",nil,2500],
            ["ALFR_Civ_Bags_Nitrado",nil, 2500],
            ["ALFR_Civ_Bags_backpack_DC",nil, 5000],
            ["ALFR_Civ_Bags_backpack_monster",nil, 5000],
            ["ALFR_Civ_Bags_backpack_superman",nil, 5000],
            ["ALFR_Civ_Bags_backpack_terminator",nil, 5000]
		];
	};
};