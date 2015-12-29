/*
	ARRAY FORMAT:
		0: STRING (Classname)
		1: STRING (Display Name, leave as "" for default)
		2: SCALAR (Price)
		4: ARRAY (This is for limiting items to certain things)
			0: Variable to read from
			1: Variable Value Type
			2: What to compare to
*/
class Clothing {
	class bruce {
		title = "STR_Shops_C_Bruce";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
            { "ALFR_FR_tenualfr_2", "Tenue AltisLifeFR", 250, { "", "", -1 } },
            { "ALFR_FR_tenualfr_1", "Tenue AltisLifeFR", 250, { "", "", -1 } },
            { "ALFR_FR_tenualfr", "Tenue AltisLifeFR", 250, { "", "", -1 } },
            { "U_C_Poloshirt_blue", "Poloshirt Blue", 250, { "", "", -1 } },
            { "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 250, { "", "", -1 } },
            { "U_C_Poloshirt_stripped", "Poloshirt Stripped", 250, { "", "", -1 } },
            { "U_C_Poloshirt_tricolour", "Poloshirt Tricolour", 250, { "", "", -1 } },
            { "U_C_Poloshirt_salmon", "Poloshirt Salmon", 250, { "", "", -1 } },
            { "U_C_Poloshirt_redwhite", "Poloshirt Red and White", 250, { "", "", -1 } },
            { "U_C_Poor_1", "Shirt Blue", 250, { "", "", -1 } },
            { "U_I_G_Story_Protagonist_F" , "Buttonup Black Camo", 500, { "", "", -1 } },
            { "U_NikosBody", "Buttonup Red Dragon", 500, { "", "", -1 } },
            { "U_OrestesBody", "Tenue basic", 500, { "", "", -1 } },
            { "U_C_HunterBody_grn", "Hunter Cream", 500, { "", "", -1 } },
            { "rds_uniform_Villager1", "Tenue Villageois 1", 450, { "", "", -1 } },
            { "rds_uniform_Villager2", "Tenue Villageois 2", 450, { "", "", -1 } },
            { "rds_uniform_Villager3", "Tenue Villageois 3", 450, { "", "", -1 } },
            { "rds_uniform_Villager4", "Tenue Villageois 4", 450, { "", "", -1 } },
            { "U_OG_Guerilla3_1", "Hunter Tan", 500, { "", "", -1 } },
            { "U_OG_Guerilla3_2", "Hunter Green", 500, { "", "", -1 } },
            { "U_IG_Guerilla2_1", "Buttonup Black", 500, { "", "", -1 } },
            { "U_IG_Guerilla2_2", "Buttonup Checked", 500, { "", "", -1 } },
            { "U_IG_Guerilla2_3", "Buttonup Navy", 500, { "", "", -1 } },
            { "rds_uniform_Worker1", "Tenue de travail 1", 550, { "", "", -1 } },
            { "rds_uniform_Worker2", "Tenue de travail 2", 550, { "", "", -1 } },
            { "rds_uniform_Worker3", "Tenue de travail 3", 550, { "", "", -1 } },
            { "rds_uniform_Worker4", "Tenue de travail 4", 550, { "", "", -1 } },
            { "rds_uniform_citizen1", "Tenue de Ville 1", 600, { "", "", -1 } },
            { "rds_uniform_citizen2", "Tenue de Ville 2", 600, { "", "", -1 } },
            { "rds_uniform_citizen3", "Tenue de Ville 3", 600, { "", "", -1 } },
            { "rds_uniform_citizen4", "Tenue de Ville 4", 600, { "", "", -1 } },
            { "U_CivilianTShirt_F", "TeeShirt noire tete de mort pantalon marron", 650, { "", "", -1 } },
            { "U_CivilianTShirt_A", "TeeShirt rouge tete de mort pantalon orange", 650, { "", "", -1 } },
            { "U_CivilianTShirt_G", "TeeShirt marron pantalon noire", 650, { "", "", -1 } },
            { "U_CivilianTShirt_E", "TeeShirt orange pantalon vert", 650, { "", "", -1 } },
            { "U_CivilianTShirt_D", "TeeShirt jaune pantalon marron", 650, { "", "", -1 } },
            { "U_CivilianCoat_E", "Tenue de vieux 1", 650, { "", "", -1 } },
            { "U_CivilianCoat_F", "Tenue de vieux 2", 650, { "", "", -1 } },
            { "U_Rangemaster_A", "TeeShirt noire pantalon blue", 650, { "", "", -1 } },
            { "U_Rangemaster_D", "TeeShirt blue pantalon marron", 650, { "", "", -1 } },
            { "U_Rangemaster_G", "TeeShirt gold pantalon vert", 650, { "", "", -1 } },
            { "U_Rangemaster_C", "TeeShirt vert pantalon noire", 650, { "", "", -1 } },
            { "U_Rangemaster_E", "TeeShirt rose pantalon vert", 650, { "", "", -1 } },
            { "U_Rangemaster_F", "TeeShirt violet pantalon beige", 650, { "", "", -1 } },
            { "U_Rangemaster_B", "TeeShirt blanc pantalon jungle", 650, { "", "", -1 } },
            { "U_CivilianPilot_A", "Tenue de vieux pilote", 650, { "", "", -1 } },
            { "ALE_Worker", "Uniforme de Chantier", 650, { "", "", -1 } },
            { "rds_uniform_assistant", "Uniforme d'assistant", 700, { "", "", -1 } },
            { "rds_uniform_schoolteacher", "Uniforme de Professeur", 700, { "", "", -1 } },
            { "rds_uniform_priest", "Tenue de prête", 750, { "", "", -1 } },
            { "U_OrestesBody", "Surfing On Land", 1100, { "", "", -1 } },
            { "U_Competitor", "Tenue ION jaune", 1200, { "", "", -1 } },
            { "U_Marshal", "Tenue Chauffeur de Bus", 1500, { "", "", -1 } },
            { "rds_uniform_Functionary2", "Costard cravate bleu", 4500, { "", "", -1 } },
            { "rds_uniform_Functionary1", "Costard cravate rouge", 4500, { "", "", -1 } },
            { "U_NikosAgedBody", "Costard cravate", 5000, { "", "", -1 } },
            { "ALE_CivilObey", "T-Shirt Obey & Short Noir", 3750, { "", "", -1 } },
            { "ALE_CivilAveng", "T-Shirt Bleu Avengers", 2650, { "", "", -1 } },
            { "ALE_CivilSkull", "T-Shirt Tête de mort", 1250, { "", "", -1 } },
            { "ALE_CivilLacoste_B", "Polo Lacoste Blanc", 4900, { "", "", -1 } },
            { "ALE_CivilLacoste_Bl", "Polo Lacoste Bleu", 4900, { "", "", -1 } },
            { "ALE_CivilLacoste_O", "Polo Lacoste Orange", 4900, { "", "", -1 } },
            { "ALE_CivilLacoste_V", "Polo Lacoste Vert", 4900, { "", "", -1 } },
            { "ALE_CivilEleven", "T-Shirt Eleven Paris", 4000, { "", "", -1 } },
            { "ALE_CivilPSG", "Maillot du PSG", 3500, { "", "", -1 } },
            { "ALE_CivilOM", "Maillot de l'OM", 3500, { "", "", -1 } },
            { "ALE_CivilVioletJaune", "T-Shirt Violet à bandes jaunes", 3050, { "", "", -1 } },
            { "ALE_CivilRougeBlanc", "T-Shirt Rouge à bandes blanches", 3050, { "", "", -1 } },
            { "ALE_CivilGrisNoir", "T-Shirt Gris à bandes noires", 3050, { "", "", -1 } },
            { "ALE_CivilFuckMe", "T-Shirt F*ck Me I'm Famous", 2550, { "", "", -1 } },
            { "ALE_CivilMickey", "T-Shirt Mickey", 2050, { "", "", -1 } },
            { "ALE_CivilDayZ", "T-Shirt DayZ", 1900, { "", "", -1 } },
            { "ALE_CivilPorsche", "T-Shirt Porsche", 7500, { "", "", -1 } },
            { "ALE_CivilImWithStupid", "T-Shirt ImStupid", 3500, { "", "", -1 } },
            { "ALE_CivilManLegend", "T-Shirt The Man, The Legend", 3500, { "", "", -1 } },
            { "U_C_WorkerCoveralls", "Tenue de garagiste", 5000, { "", "", -1 } },
            { "U_PMC_BluePlaidShirt_BeigeCords", "Chemise Courte Bleu", 5500, { "", "", -1 } },
            { "U_PMC_RedPlaidShirt_DenimCords", "Chemise Courte Rose", 5500, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckDBS_GPSB", "Tenue Chemise Bleu", 6000, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckLB_GPBB", "Tenue Chemise Bleu Claire", 6000, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckLR_SPBB", "Tenue Chemise Rose Claire", 6000, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckP_BPBB", "Tenue Chemise Violette", 6000, { "", "", -1 } },
            { "ALFR_FR_tenukenny", "Tenue Monsieur Rat Super", 5000, { "", "", -1 } },
            { "ALFR_FR_nitrado", "Tenue Nitrado", 5000, { "", "", -1 } },
            { "ALFR_FR_armani_black", "Tenue armani noir", 7000, { "", "", -1 } },
            { "ALFR_FR_armani_blue", "Tenue armani bleu", 7000, { "", "", -1 } },
            { "ALFR_FR_armani_white", "Tenue armani blanche", 7000, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
            { "H_Cap_red", "", 50, { "", "", -1 } },
            { "H_Cap_blu", "", 50, { "", "", -1 } },
            { "H_Cap_oli", "", 50, { "", "", -1 } },
            { "H_Cap_grn", "", 50, { "", "", -1 } },
            { "H_Cap_tan", "", 50, { "", "", -1 } },
            { "H_Cap_blk", "", 50, { "", "", -1 } },
            { "H_Cap_blk_CMMG", "", 50, { "", "", -1 } },
            { "H_Cap_surfer", "", 50, { "", "", -1 } },
            { "H_Cap_blk_ION", "", 50, { "", "", -1 } },
            { "H_Capbw_tan_pmc", "", 50, { "", "", -1 } },
            { "H_Capbw_pmc", "", 50, { "", "", -1 } },
            { "H_Cap_marshal", "", 50, { "", "", -1 } },
            { "H_Booniehat_grn", "", 50, { "", "", -1 } },
            { "H_Booniehat_tan", "", 50, { "", "", -1 } },
            { "H_Booniehat_dirty", "", 50, { "", "", -1 } },
            { "H_Bandanna_surfer", "", 50, { "", "", -1 } },
            { "H_Bandanna_khk", "", 50, { "", "", -1 } },
            { "H_Bandanna_cbr", "", 50, { "", "", -1 } },
            { "H_Bandanna_sgg", "", 50, { "", "", -1 } },
            { "H_Bandanna_gry", "", 50, { "", "", -1 } },
            { "H_StrawHat", "", 50, { "", "", -1 } },
            { "H_StrawHat_dark", "", 50, { "", "", -1 } },
            { "H_Hat_blue", "", 50, { "", "", -1 } },
            { "H_Hat_brown", "", 50, { "", "", -1 } },
            { "H_Hat_grey", "", 50, { "", "", -1 } },
            { "H_Watchcap_blk", "", 50, { "", "", -1 } }, 
            { "H_Watchcap_khk", "", 50, { "", "", -1 } }, 
            { "H_Watchcap_sgg", "", 50, { "", "", -1 } },
            { "H_Watchcap_camo", "", 50, { "", "", -1 } },
            { "H_Hat_checker", "", 50, { "", "", -1 } },
            { "rds_Villager_cap1", "", 50, { "", "", -1 } },
            { "rds_Villager_cap2", "", 50, { "", "", -1 } }, 
            { "rds_Villager_cap3", "", 50, { "", "", -1 } },
            { "rds_Villager_cap4", "", 50, { "", "", -1 } },
            { "rds_worker_cap1", "", 100, { "", "", -1 } },
            { "rds_worker_cap2", "", 100, { "", "", -1 } },
            { "rds_worker_cap3", "", 100, { "", "", -1 } },
            { "rds_worker_cap4", "", 100, { "", "", -1 } },
            { "H_Hat_HelmetConical", "", 120, { "", "", -1 } },
            { "H_Hat_Boonie_Cowboy", "", 120, { "", "", -1 } },
            { "H_Hat_Golf_Black", "", 120, { "", "", -1 } },
            { "H_Hat_Golf_Blue", "", 120, { "", "", -1 } },
            { "H_Hat_Golf", "", 120, { "", "", -1 } },
            { "ALE_H_Cowboy_White", "", 150, { "", "", -1 } },
            { "ALE_H_Cowboy_Brown", "", 150, { "", "", -1 } },
            { "ALE_H_Cowboy_Black", "", 150, { "", "", -1 } },
            { "ALE_H_NewEra_Cyan", "", 500, { "", "", -1 } },
            { "ALE_H_NewEra_Monster", "", 500, { "", "", -1 } }, 
            { "ALE_H_NewEra_Black", "", 500, { "", "", -1 } },
            { "ALE_H_NewEra_Lakers", "", 500, { "", "", -1 } },
            { "ALE_H_NewEra_Rouge", "", 500, { "", "", -1 } },
            { "ALE_H_NewEra_Superman", "", 500, { "", "", -1 } },
            { "ALE_H_NewEra_Redsox", "", 500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 4500, { "", "", -1 } },
            { "V_BandollierB_khk", "", 4500, { "", "", -1 } },
            { "V_BandollierB_rgr", "", 4500, { "", "", -1 } },
            { "V_BandollierB_blk", "", 4500, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
            { "B_AssaultPack_blk", "", 600, { "", "", -1 } },
            { "B_AssaultPack_cbr", "", 600, { "", "", -1 } },
            { "B_AssaultPack_khk", "", 600, { "", "", -1 } },
            { "B_AssaultPack_sgg", "", 600, { "", "", -1 } },
            { "B_AssaultPack_rgr", "", 600, { "", "", -1 } },
            { "B_FieldPack_cbr", "", 1000, { "", "", -1 } },
            { "B_FieldPack_blk", "", 1000, { "", "", -1 } },
            { "B_FieldPack_ocamo", "", 1000, { "", "", -1 } },
            { "B_FieldPack_oucamo", "", 1000, { "", "", -1 } },
            { "B_FieldPack_cbr", "", 1000, { "", "", -1 } },
            { "B_Kitbag_mcamo", "", 1500, { "", "", -1 } },
            { "B_Kitbag_sgg", "", 1500, { "", "", -1 } },
            { "B_Kitbag_cbr", "", 1500, { "", "", -1 } },
            { "B_Bergen_sgg", "", 1500, { "", "", -1 } },
            { "B_Bergen_blk", "", 1500, { "", "", -1 } },
            { "B_Bergen_mcamo", "", 1500, { "", "", -1 } },
            { "B_Carryall_ocamo", "", 2500, { "", "", -1 } },
            { "B_Carryall_oucamo", "", 2500, { "", "", -1 } },
            { "B_Carryall_mcamo", "", 2500, { "", "", -1 } },
            { "B_Carryall_oli", "", 2500, { "", "", -1 } },
            { "B_Carryall_khk", "", 2500, { "", "", -1 } },
            { "B_Carryall_cbr", "", 2500, { "", "", -1 } },
            { "B_Parachute", "", 2500, { "", "", -1 } },
            { "ALFR_Civ_Bags_Nitrado", "", 2500, { "", "", -1 } }
		};
	};

	class cop {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "ALFR_FR_police_tenu", "Tenue Police", 2000, { "", "", -1 } },
			{ "U_PMC_CombatUniformRS_SSBPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
			{ "U_PMC_BluPolo_GrnPants", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
			{ "U_PMC_WhtPolo_BluPants", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_GTShirt_SJeans", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_BlkTShirt_DJeans", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_BlackPoloShirt_BeigeCords", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_SSGPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_ChckDBS_GPSB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_ChckP_BPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformRS_BSGPSB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformRS_GSSPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 2 } }    
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_MilCap_blue", "", 75, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 75, { "", "", -1 } },
			{ "H_Beret_blk", "", 100, { "life_coplevel", "SCALAR", 1 } },
            { "H_PilotHelmetHeli_B", "", 100, { "life_coplevel", "SCALAR", 1 } },
            { "H_PilotHelmetHeli_O", "Casque Heli BAC", 100, { "life_coplevel", "SCALAR", 3 } },
            { "H_Beret_02", "", 100, { "life_coplevel", "SCALAR", 4 } },
            { "R3F_beret", "", 100, { "life_coplevel", "SCALAR", 4 } },
            { "R3F_beret_commando", "", 100, { "life_coplevel", "SCALAR", 5 } },
            { "H_Beret_Colonel", "", 100, { "life_coplevel", "SCALAR", 6 } }    
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, { "", "", -1 } },
			{ "G_Shades_Blue", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 20, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 20, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
			{ "G_Squares", "", 10, { "", "", -1 } },
			{ "G_Aviator", "", 100, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 150, { "", "", -1 } },
			{ "G_Lady_Dark", "", 150, { "", "", -1 } },
			{ "G_Lady_Blue", "", 150, { "", "", -1 } },
			{ "G_Lowprofile", "", 30, { "", "", -1 } },
			{ "G_Combat", "", 55, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_TacVest_blk_POLICE", "", 500, { "", "", -1 } },
			{ "V_Police_light", "", 1000, { "", "", 1 } },
            { "V_Police_heavy", "", 1000, { "", "", -1 } },
            { "V_RebreatherB", "", 5000, { "", "", -1 } }    
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "ALFR_Police_Backpack", "", 1000, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 3500, { "life_coplevel", "SCALAR", 3 } }
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 2000, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Diving", "", 500, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 5000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};

	class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "Hunter Cream", 5000, {"", "", -1} },
            { "U_OG_Guerilla3_1", "Hunter Tan", 5000, {"", "", -1} },
            { "U_OG_Guerilla3_2", "Hunter Green", 5000, {"", "", -1} },
            { "U_IG_Guerilla2_1", "Buttonup Black", 5000, {"", "", -1} },
            { "U_IG_Guerilla2_2", "Buttonup Checked", 5000, {"", "", -1} },
            { "U_IG_Guerilla2_3", "Buttonup Navy", 5000, {"", "", -1} },
            { "rds_uniform_Woodlander1", "Tenue Gangster 1", 10000, {"", "", -1} },
            { "rds_uniform_Woodlander2", "Tenue Gangster 2", 10000, {"", "", -1} },
            { "rds_uniform_Woodlander3", "Tenue Gangster 3", 10000, {"", "", -1} },
            { "rds_uniform_Woodlander4", "Tenue Gangster 4", 10000, {"", "", -1} },
            { "U_IG_Guerilla1_1", "", 5000, {"", "", -1} },
            { "U_I_G_Story_Protagonist_F", "", 7500, {"", "", -1} },
            { "U_I_G_resistanceLeader_F", "", 11500, {"", "", -1} },
            { "U_O_SpecopsUniform_ocamo", "", 17500, {"", "", -1} },
            { "U_O_CombatUniform_oucamo", "", 17500, {"", "", -1} },
            { "U_O_PilotCoveralls", "", 15000, {"", "", -1} },
            { "U_IG_leader", "Guerilla Leader", 15000, {"", "", -1} },
			{ "U_I_OfficerUniform", "", 50000, {"", "", -1} },
            { "U_I_CombatUniform", "", 50000, {"", "", -1} },
            { "U_O_GhillieSuit", "", 80000, {"", "", -1} },
            { "U_I_GhillieSuit", "", 80000, {"", "", -1} },
            { "U_CivilianTShirt_C", "TeeShirt grey et pantalon vert", 10000, {"", "", -1} },    
            { "U_CombatUniFatigue_A", "Tenue digital black", 10000, {"", "", -1} },
            { "U_GhillieSuit_A", "Ghillie Suit 1", 80000, {"", "", -1} },
            { "U_GhillieSuit_B", "Ghillie Suit 2", 80000, {"", "", -1} },    
            { "U_GhillieSuit_C", "Ghillie Suit 3", 80000, {"", "", -1} },
            { "U_GhillieSuit_D", "Ghillie Suit 4", 80000, {"", "", -1} },
            { "U_GhillieSuit_E", "Ghillie Suit 5", 80000, {"", "", -1} },
            { "U_GhillieSuit_F", "Ghillie Suit 6", 80000, {"", "", -1} },
            { "U_MilitiaUniTShirt_B", "Tenue insurge noire", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_G", "Tenue insurge noire et marron", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_D", "Tenue insurge noire et vert", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_E", "Tenue insurge tigre", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_F", "Tenue insurge tigre noire", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_A", "Tenue insurge woodland", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_C", "Tenue insurge woodland noire", 15000, {"", "", -1} },
            { "U_InsUniShirt_C", "Uniforme desert", 12000, {"", "", -1} },
            { "U_InsUniShirt_Leader", "Uniforme leader", 12000, {"", "", -1} },
            { "U_InsUniShirt_B", "Uniforme tigre", 12000, {"", "", -1} },
            { "U_CombatUniLeadMerc_F", "Tenue mercenaire blue", 20000, {"", "", -1} },
            { "U_CombatUniLeadMerc_D", "Tenue mercenaire vert", 20000, {"", "", -1} },
            { "U_CombatUniLeadMerc_A", "Tenue mercenaire marron", 20000, {"", "", -1} },
            { "U_CombatUniLeadMerc_B", "Tenue mercenaire digital", 20000, {"", "", -1} },
            { "U_CombatUniLeadMerc_C", "Tenue mercenaire woodland", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_J", "Tenue mercenaire full noire", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_G", "Tenue mercenaire full blue", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_C", "Tenue mercenaire desert", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_E", "Tenue mercenaire dpm", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_B", "Tenue mercenaire jungle", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercB_I", "Tenue mercenaire tigre stripe", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_G", "Tenue mercenaire noire sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_B", "Tenue mercenaire vert sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_C", "Tenue mercenaire desert sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_D", "Tenue mercenaire dpm1 sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_E", "Tenue mercenaire dpm2 sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercA_F", "Tenue mercenaire splitter sandals", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_F", "Tenue mercenaire adidas noire", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_E", "Tenue mercenaire adidas marron", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_G", "Tenue mercenaire adidas desert", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_D", "Tenue mercenaire adidas khaki", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_C", "Tenue mercenaire adidas tigre", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercD_A", "Tenue mercenaire adidas dpm", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercC_B", "Tenue mercenaire marron bottes", 20000, {"", "", -1} },
            { "U_CombatUniShirtMercC_D", "Tenue mercenaire vert bottes", 20000, {"", "", -1} },
            { "U_MilitiaSport_B", "Tenue sport adidas camo 1", 20000, {"", "", -1} },
            { "U_MilitiaSport_C", "Tenue sport adidas camo 2", 20000, {"", "", -1} },
            { "U_CivilianSport_A", "Tenue gangster adidas blue", 35000, {"", "", -1} },
            { "U_CivilianSport_B", "Tenue gangster adidas vert", 35000, {"", "", -1} },
            { "U_CivilianSport_C", "Tenue gangster adidas rouge", 35000, {"", "", -1} },
            { "U_CivilianSport_D", "Tenue gangster adidas jaune", 35000, {"", "", -1} },
            { "U_DressTKLocalUni_E_E", "Tenue takistan 1", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_E_D", "Tenue takistan 2", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_E_C", "Tenue takistan 3", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_D_A", "Tenue takistan 4", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_E_B", "Tenue takistan 5", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_E_A", "Tenue takistan 6", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_D_E", "Tenue takistan 7", 5000, {"", "", -1} }, 
            { "U_DressTKLocalUni_D_D", "Tenue takistan 8", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_D_C", "Tenue takistan 9", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_D_B", "Tenue takistan 10", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_A_A", "Tenue takistan 11", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_C_E", "Tenue takistan 12", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_C_D", "Tenue takistan 13", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_C_C", "Tenue takistan 14", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_C_B", "Tenue takistan 15", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_C_A", "Tenue takistan 16", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_B_E", "Tenue takistan 17", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_B_D", "Tenue takistan 18", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_B_C", "Tenue takistan 19", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_B_B", "Tenue takistan 20", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_B_A", "Tenue takistan 21", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_A_E", "Tenue takistan 22", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_A_D", "Tenue takistan 23", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_A_C", "Tenue takistan 24", 5000, {"", "", -1} },
            { "U_DressTKLocalUni_A_B", "Tenue takistan 25", 5000, {"", "", -1} },
            { "U_TKLocalCombat_A", "Tenue pakistan 1", 5000, {"", "", -1} },
            { "U_TKLocalUni_C", "Tenue pakistan 2", 5000, {"", "", -1} },
            { "U_TKLocalUni_D", "Tenue pakistan 3", 5000, {"", "", -1} },
            { "U_TKLocalUni_B", "Tenue pakistan 4", 5000, {"", "", -1} },
            { "U_TKLocalCombat_C", "Tenue pakistan 5", 5000, {"", "", -1} },
            { "U_TKLocalTactic_C", "Tenue pakistan 6", 5000, {"", "", -1} },
            { "U_TKLocalCombat_E", "Tenue pakistan 7", 5000, {"", "", -1} },
            { "U_TKLocalCombat_D", "Tenue pakistan 8", 5000, {"", "", -1} },
            { "U_TKLocalTactic_E", "Tenue pakistan 9", 5000, {"", "", -1} },
            { "U_TKLocalTactic_A", "Tenue pakistan 10", 5000, {"", "", -1} },
            { "U_TKLocalUni_E", "Tenue pakistan 11", 5000, {"", "", -1} },
            { "U_TKLocalTactic_D", "Tenue pakistan 12", 5000, {"", "", -1} },
            { "U_TKLocalUni_F", "Tenue pakistan 13", 5000, {"", "", -1} },
            { "U_TKLocalCombat_B", "Tenue pakistan 14", 5000, {"", "", -1} },
            { "U_TerrorCombat_A", "Tenue terroriste 1", 75000, {"", "", -1} },
            { "U_TerrorCombat_B", "Tenue terroriste 2", 75000, {"", "", -1} },
            { "U_TerrorCombat_Black", "Tenue terroriste 3", 75000, {"", "", -1} },
            { "U_I_FullGhillie_ard", "Ghillie MarksMen 1", 85000, {"", "", -1} },
            { "U_O_FullGhillie_ard", "Ghillie MarksMen 2", 85000, {"", "", -1} },
            { "U_B_FullGhillie_ard", "Ghillie MarksMen 3", 85000, {"", "", -1} },
            { "U_I_FullGhillie_lsh", "Ghillie MarksMen 4", 85000, {"", "", -1} },
            { "U_O_FullGhillie_lsh", "Ghillie MarksMen 5", 85000, {"", "", -1} },
            { "U_B_FullGhillie_lsh", "Ghillie MarksMen 6", 85000, {"", "", -1} },
            { "U_I_FullGhillie_sard", "Ghillie MarksMen 7", 85000, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 8", 85000, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 9", 85000, {"", "", -1} }    
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_Booniehat_grn", "", 50, {"", "", -1} },
			{ "H_Booniehat_tan", "", 50, {"", "", -1} },
			{ "H_Booniehat_dirty", "", 50, {"", "", -1} },
			{ "H_Bandanna_khk", "", 50, {"", "", -1} },
			{ "H_Bandanna_cbr", "", 50, {"", "", -1} },
			{ "H_Bandanna_sgg", "", 50, {"", "", -1} },
			{ "H_Bandanna_gry", "", 50, {"", "", -1} },
			{ "H_Watchcap_blk", "", 50, {"", "", -1} },
			{ "H_Watchcap_khk", "", 50, {"", "", -1} },
			{ "H_Watchcap_sgg", "", 50, {"", "", -1} },
			{ "H_Watchcap_camo", "", 50, {"", "", -1} },
			{ "H_ShemagOpen_tan", "", 850, {"", "", -1} },
			{ "H_Shemag_olive", "", 850, {"", "", -1} },
			{ "H_ShemagOpen_khk", "", 800, {"", "", -1} },
			{ "H_Shemag_tan", "", 800, {"", "", -1} },
			{ "H_Shemag_olive_hs", "", 750, {"", "", -1} },
			{ "H_HelmetO_ocamo", "", 2500, {"", "", -1} },
			{ "H_MilCap_oucamo", "", 1200, {"", "", -1} },
			{ "H_HelmetCrew_I", "", 500, {"", "", -1} },
			{ "H_Bandanna_camo", "", 650, {"", "", -1} },
			{ "rds_Woodlander_cap1", "", 800, {"", "", -1} },
			{ "rds_Woodlander_cap2", "", 800, {"", "", -1} },
			{ "rds_Woodlander_cap3", "", 800, {"", "", -1} },
			{ "rds_Woodlander_cap4", "", 800, {"", "", -1} },
            { "H_Hat_Face_Balaclava_T", "Cagoule tortue ninja", 500, {"", "", -1} }, 
            { "H_Hat_Cap_Thai", "Casquette marine", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Black", "Wrapped noire", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Dark", "Wrapped dark", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Gold", "Wrapped desert", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_White", "Wrapped Dirty", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_DPM", "Wrapped DPM", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Flecktarn", "Wrapped Flecktarn", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Sand", "Wrapped Sand", 1500, {"", "", -1} },
            { "H_Hat_HeadbandL_E", "Ruban camo", 100, {"", "", -1} },
            { "H_Hat_HeadbandL_C", "Ruban marron", 100, {"", "", -1} },
            { "H_Hat_HeadbandL_B", "Ruban khaki", 100, {"", "", -1} },
            { "H_Hat_HeadbandL_F", "Ruban MTP", 100, {"", "", -1} },
            { "H_Hat_HeadbandL_G", "Ruban rouge", 100, {"", "", -1} },
            { "H_Hat_HeadbandL_D", "Ruban vert", 100, {"", "", -1} }, 
            { "H_Hat_Kufiya_B", "Kufiya noire", 2500, {"", "", -1} },
            { "H_Hat_Kufiya_D", "Kufiya desert", 2500, {"", "", -1} },
            { "H_Hat_Kufiya", "Kufiya dirty", 2500, {"", "", -1} },
            { "H_Hat_Kufiya_F", "Kufiya flecktarn", 2500, {"", "", -1} },
            { "H_Hat_Kufiya_G", "Kufiya vert", 2500, {"", "", -1} },
            { "H_Hat_Kufiya_R", "Kufiya rouge", 2500, {"", "", -1} },
            { "H_Hat_CapSov_B", "Casquette russe 1", 1200, {"", "", -1} },
            { "H_Hat_CapSov_C", "Casquette russe 2", 1200, {"", "", -1} },
            { "H_Hat_CapSov_A", "Casquette russe 3", 1200, {"", "", -1} },
            { "H_Hat_Face_Cover", "Scarf noire", 1500, {"", "", -1} },
            { "H_Hat_Face_Cover_Gold", "Scarf desert", 1500, {"", "", -1} },
            { "H_Hat_Face_Cover_Green", "Scarf vert", 1500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Red", "Shemagh rouge", 1500, {"", "", -1} },
            { "H_Hat_Taqiyah_A", "Taqiyah 1", 1000, {"", "", -1} },
            { "H_Hat_Taqiyah_D", "Taqiyah 2", 1000, {"", "", -1} },
            { "H_Hat_Taqiyah_C", "Taqiyah 3", 1000, {"", "", -1} },
            { "H_Hat_Taqiyah_B", "Taqiyah 4", 1000, {"", "", -1} },
            { "H_Hat_Taqiyah_E", "Taqiyah 5", 1000, {"", "", -1} },
            { "H_Hat_Turban_D", "Turban 1", 1000, {"", "", -1} },
            { "H_Hat_Pagri", "Turban 2", 1000, {"", "", -1} },
            { "H_Hat_Turban_C", "Turban 3", 1000, {"", "", -1} },
            { "H_Hat_Turban_B", "Turban 4", 1000, {"", "", -1} },
            { "H_Hat_Turban_A", "Turban 5", 1000, {"", "", -1} }, 
            { "H_Hat_Pagri_C", "Turban 6", 1000, {"", "", -1} },
            { "H_Hat_Pagri_B", "Turban 7", 1000, {"", "", -1} },
            { "H_Hat_Turban_E", "Turban 8", 1000, {"", "", -1} }, 
            { "H_Hat_Ushanka", "", 1000, {"", "", -1} },
            { "H_PilotHelmetHeli_I", "", 1000, {"", "", -1} }
		}; 

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 25, {"", "", -1} },
			{ "G_Shades_Blue", "", 20, {"", "", -1} },
			{ "G_Sport_Blackred", "", 20, {"", "", -1} },
			{ "G_Sport_Checkered","", 20, {"", "", -1} },
			{ "G_Sport_Blackyellow", "", 20, {"", "", -1} },
			{ "G_Sport_BlackWhite", "", 20, {"", "", -1} },
			{ "G_Squares", "", 10, {"", "", -1} },
			{ "G_Aviator", "", 100, {"", "", -1} },
			{ "G_Lady_Mirror", "", 150, {"", "", -1} },
			{ "G_Lady_Dark", "", 150, {"", "", -1} },
			{ "G_Lady_Blue", "", 150, {"", "", -1} },
			{ "G_Lowprofile", "", 30, {"", "", -1} },
			{ "G_Balaclava_blk", "", 1000, {"", "", -1} },
			{ "G_Balaclava_lowprofile", "", 1000, {"", "", -1} },
			{ "G_Balaclava_combat", "", 1000, {"", "", -1} },
			{ "G_Balaclava_oli", "", 1000, {"", "", -1} },
			{ "G_Bandanna_aviator", "", 1500, {"", "", -1} },
			{ "G_Bandanna_beast", "", 1500, {"", "", -1} },
			{ "G_Bandanna_tan", "", 1500, {"", "", -1} },
			{ "G_Bandanna_sport", "", 1500, {"", "", -1} },
			{ "G_Bandanna_blk", "", 1500, {"", "", -1} },
			{ "G_Bandanna_oli", "", 1500, {"", "", -1} },
			{ "G_Bandanna_shades", "", 1500, {"", "", -1} },
			{ "G_Combat", "", 55, {"", "", -1} },
			{ "G_Bandanna_tan", "", 3500, {"", "", -1} },
			{ "G_Bandanna_khk", "", 3500, {"", "", -1} },
			{ "G_Bandanna_oli", "", 3500, {"", "", -1} },
			{ "G_Bandanna_blk", "", 3500, {"", "", -1} }, 
			{ "G_Bandanna_beast", "", 5000, {"", "", -1} },
			{ "G_Balaclava_oli", "", 8000, {"", "", -1} },
			{ "R3F_cagoule_punisher", "", 10000, {"", "", -1} }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_PlateCarrierGL_rgr", "", 50000, {"", "", -1} },
            { "V_PlateCarrierInd_PMC_blk", "", 40000, {"", "", -1} },
			{ "V_PlateCarrier1_blk", "", 30000, {"", "", -1} },
			{ "V_PlateCarrierIAGL_dgtl", "", 30000, {"", "", -1} },
            { "V_TacVestIR_blk", "", 15000, {"", "", -1} },
			{ "V_TacVest_camo", "", 12500, {"", "", -1} },
			{ "V_TacVest_khk", "", 12500, {"", "", -1} },
			{ "V_I_G_resistanceLeader_F", "", 7500, {"", "", -1} },
			{ "V_HarnessO_brn", "", 5500, {"", "", -1} },
			{ "V_BandollierB_cbr", "", 4500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_oli", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_blk", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_AAF", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_OPFOR", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_MTP", "", 18000, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_khk", "", 36500, {"", "", -1} }, 
			{ "ALFR_V_Tactical_Vest_Heavy_blk", "", 36500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_oli", "", 36500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_AAF", "", 36500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_OPFOR", "", 36500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_MTP", "", 36500, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_blk", "", 600, {"", "", -1} },
			{ "B_AssaultPack_cbr", "", 600, {"", "", -1} },
			{ "B_AssaultPack_khk", "", 600, {"", "", -1} },
			{ "B_AssaultPack_sgg", "", 600, {"", "", -1} },
			{ "B_AssaultPack_rgr", "", 600, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 1000, {"", "", -1} },
			{ "B_FieldPack_blk", "", 1000, {"", "", -1} },
			{ "B_FieldPack_ocamo", "", 1000, {"", "", -1} },
			{ "B_FieldPack_oucamo", "", 1000, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 1000, {"", "", -1} },
			{ "B_Kitbag_mcamo", "", 1500, {"", "", -1} },
			{ "B_Kitbag_sgg", "", 1500, {"", "", -1} },
			{ "B_Kitbag_cbr", "", 1500, {"", "", -1} },
			{ "B_Bergen_sgg", "", 1500, {"", "", -1} },
			{ "B_Bergen_blk", "", 1500, {"", "", -1} },
			{ "B_Bergen_mcamo", "", 1500, {"", "", -1} },
            { "B_Carryall_ocamo", "", 2500, {"", "", -1} },
			{ "B_Carryall_oucamo", "", 2500, {"", "", -1} },
			{ "B_Carryall_mcamo", "", 2500, {"", "", -1} },
			{ "B_Carryall_oli", "", 2500, {"", "", -1} },
			{ "B_Carryall_khk", "", 2500, {"", "", -1} },
			{ "B_Carryall_cbr", "", 2500, {"", "", -1} },
			{ "B_Parachute", "", 2500, {"", "", -1} }
		};
	};

	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Driver_1_black", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_2", "", 3500, { "", "", -1 } },
			{ "U_C_Driver_1", "", 3600, { "", "", -1 } },
			{ "U_C_Driver_3", "", 3700, { "", "", -1 } },
			{ "U_C_Driver_4", "", 3700, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_RacingHelmet_1_black_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 2500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
};