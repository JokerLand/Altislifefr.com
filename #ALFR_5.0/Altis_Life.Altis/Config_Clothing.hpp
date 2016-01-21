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
            { "ALFR_FR_tenualfr_2", "Tenue AltisLifeFR", 200, { "", "", -1 } },
            { "ALFR_FR_tenualfr_1", "Tenue AltisLifeFR", 200, { "", "", -1 } },
            { "ALFR_FR_tenualfr", "Tenue AltisLifeFR", 200, { "", "", -1 } },
            { "U_C_Poloshirt_blue", "Poloshirt Blue", 200, { "", "", -1 } },
            { "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 200, { "", "", -1 } },
            { "U_C_Poloshirt_stripped", "Poloshirt Stripped", 200, { "", "", -1 } },
            { "U_C_Poloshirt_tricolour", "Poloshirt Tricolour", 200, { "", "", -1 } },
            { "U_C_Poloshirt_salmon", "Poloshirt Salmon", 200, { "", "", -1 } },
            { "U_C_Poloshirt_redwhite", "Poloshirt Red and White", 200, { "", "", -1 } },
            { "U_C_Poor_1", "Shirt Blue", 200, { "", "", -1 } },
            { "U_I_G_Story_Protagonist_F" , "Buttonup Black Camo", 200, { "", "", -1 } },
            { "U_NikosBody", "Buttonup Red Dragon", 200, { "", "", -1 } },
            { "U_OrestesBody", "Tenue basic", 200, { "", "", -1 } },
            { "U_C_HunterBody_grn", "Hunter Cream", 200, { "", "", -1 } },
            { "rds_uniform_Villager1", "Tenue Villageois 1", 200, { "", "", -1 } },
            { "rds_uniform_Villager2", "Tenue Villageois 2", 200, { "", "", -1 } },
            { "rds_uniform_Villager3", "Tenue Villageois 3", 200, { "", "", -1 } },
            { "rds_uniform_Villager4", "Tenue Villageois 4", 200, { "", "", -1 } },
            { "U_OG_Guerilla3_1", "Hunter Tan", 200, { "", "", -1 } },
            { "U_OG_Guerilla3_2", "Hunter Green", 200, { "", "", -1 } },
            { "U_IG_Guerilla2_1", "Buttonup Black", 200, { "", "", -1 } },
            { "U_IG_Guerilla2_2", "Buttonup Checked", 200, { "", "", -1 } },
            { "U_IG_Guerilla2_3", "Buttonup Navy", 200, { "", "", -1 } },
            { "rds_uniform_Worker1", "Tenue de travail 1", 200, { "", "", -1 } },
            { "rds_uniform_Worker2", "Tenue de travail 2", 200, { "", "", -1 } },
            { "rds_uniform_Worker3", "Tenue de travail 3", 200, { "", "", -1 } },
            { "rds_uniform_Worker4", "Tenue de travail 4", 200, { "", "", -1 } },
            { "rds_uniform_citizen1", "Tenue de Ville 1", 200, { "", "", -1 } },
            { "rds_uniform_citizen2", "Tenue de Ville 2", 200, { "", "", -1 } },
            { "rds_uniform_citizen3", "Tenue de Ville 3", 200, { "", "", -1 } },
            { "rds_uniform_citizen4", "Tenue de Ville 4", 200, { "", "", -1 } },
            { "U_CivilianTShirt_F", "TeeShirt noire tete de mort pantalon marron", 200, { "", "", -1 } },
            { "U_CivilianTShirt_A", "TeeShirt rouge tete de mort pantalon orange", 200, { "", "", -1 } },
            { "U_CivilianTShirt_G", "TeeShirt marron pantalon noire", 200, { "", "", -1 } },
            { "U_CivilianTShirt_E", "TeeShirt orange pantalon vert", 200, { "", "", -1 } },
            { "U_CivilianTShirt_D", "TeeShirt jaune pantalon marron", 200, { "", "", -1 } },
            { "U_CivilianCoat_E", "Tenue de vieux 1", 200, { "", "", -1 } },
            { "U_CivilianCoat_F", "Tenue de vieux 2", 200, { "", "", -1 } },
            { "U_Rangemaster_A", "TeeShirt noire pantalon blue", 200, { "", "", -1 } },
            { "U_Rangemaster_D", "TeeShirt blue pantalon marron", 200, { "", "", -1 } },
            { "U_Rangemaster_G", "TeeShirt gold pantalon vert", 200, { "", "", -1 } },
            { "U_Rangemaster_C", "TeeShirt vert pantalon noire", 200, { "", "", -1 } },
            { "U_Rangemaster_E", "TeeShirt rose pantalon vert", 200, { "", "", -1 } },
            { "U_Rangemaster_F", "TeeShirt violet pantalon beige", 200, { "", "", -1 } },
            { "U_Rangemaster_B", "TeeShirt blanc pantalon jungle", 200, { "", "", -1 } },
            { "U_CivilianPilot_A", "Tenue de vieux pilote", 200, { "", "", -1 } },
            { "ALE_Worker", "Uniforme de Chantier", 200, { "", "", -1 } },
            { "rds_uniform_assistant", "Uniforme d'assistant", 200, { "", "", -1 } },
            { "rds_uniform_schoolteacher", "Uniforme de Professeur", 200, { "", "", -1 } },
            { "rds_uniform_priest", "Tenue de prête", 200, { "", "", -1 } },
            { "U_OrestesBody", "Surfing On Land", 200, { "", "", -1 } },
            { "U_Competitor", "Tenue ION jaune", 200, { "", "", -1 } },
            { "U_Marshal", "Tenue Chauffeur de Bus", 200, { "", "", -1 } },
            { "rds_uniform_Functionary2", "Costard cravate bleu", 200, { "", "", -1 } },
            { "rds_uniform_Functionary1", "Costard cravate rouge", 200, { "", "", -1 } },
            { "U_NikosAgedBody", "Costard cravate", 200, { "", "", -1 } },
            { "ALE_CivilObey", "T-Shirt Obey & Short Noir", 200, { "", "", -1 } },
            { "ALE_CivilAveng", "T-Shirt Bleu Avengers", 200, { "", "", -1 } },
            { "ALE_CivilSkull", "T-Shirt Tête de mort", 200, { "", "", -1 } },
            { "ALE_CivilLacoste_B", "Polo Lacoste Blanc", 200, { "", "", -1 } },
            { "ALE_CivilLacoste_Bl", "Polo Lacoste Bleu", 20050, { "", "", -1 } },
            { "ALE_CivilLacoste_O", "Polo Lacoste Orange", 200, { "", "", -1 } },
            { "ALE_CivilLacoste_V", "Polo Lacoste Vert", 200, { "", "", -1 } },
            { "ALE_CivilEleven", "T-Shirt Eleven Paris", 200, { "", "", -1 } },
            { "ALE_CivilPSG", "Maillot du PSG", 200, { "", "", -1 } },
            { "ALE_CivilOM", "Maillot de l'OM", 200, { "", "", -1 } },
            { "ALE_CivilVioletJaune", "T-Shirt Violet à bandes jaunes", 200, { "", "", -1 } },
            { "ALE_CivilRougeBlanc", "T-Shirt Rouge à bandes blanches", 200, { "", "", -1 } },
            { "ALE_CivilGrisNoir", "T-Shirt Gris à bandes noires", 200, { "", "", -1 } },
            { "ALE_CivilFuckMe", "T-Shirt F*ck Me I'm Famous", 200, { "", "", -1 } },
            { "ALE_CivilMickey", "T-Shirt Mickey", 200, { "", "", -1 } },
            { "ALE_CivilDayZ", "T-Shirt DayZ", 200, { "", "", -1 } },
            { "ALE_CivilPorsche", "T-Shirt Porsche", 200, { "", "", -1 } },
            { "ALE_CivilImWithStupid", "T-Shirt ImStupid", 200, { "", "", -1 } },
            { "ALE_CivilManLegend", "T-Shirt The Man, The Legend", 200, { "", "", -1 } },
            { "U_C_WorkerCoveralls", "Tenue de garagiste", 200, { "", "", -1 } },
            { "U_PMC_BluePlaidShirt_BeigeCords", "Chemise Courte Bleu", 200, { "", "", -1 } },
            { "U_PMC_RedPlaidShirt_DenimCords", "Chemise Courte Rose", 200, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckDBS_GPSB", "Tenue Chemise Bleu", 200, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckLB_GPBB", "Tenue Chemise Bleu Claire", 200, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckLR_SPBB", "Tenue Chemise Rose Claire", 200, { "", "", -1 } },
            { "U_PMC_CombatUniformRS_ChckP_BPBB", "Tenue Chemise Violette", 200, { "", "", -1 } },
            { "ALFR_FR_tenukenny", "Tenue Monsieur Rat Super", 200, { "", "", -1 } },
            { "ALFR_FR_nitrado", "Tenue Nitrado", 200, { "", "", -1 } },
            { "ALFR_FR_armani_black", "Tenue armani noir", 200, { "", "", -1 } },
            { "ALFR_FR_armani_blue", "Tenue armani bleu", 200, { "", "", -1 } },
            { "ALFR_FR_armani_white", "Tenue armani blanche", 200, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
            { "H_Cap_red", "", 200, { "", "", -1 } },
            { "H_Cap_blu", "", 200, { "", "", -1 } },
            { "H_Cap_oli", "", 200, { "", "", -1 } },
            { "H_Cap_grn", "", 200, { "", "", -1 } },
            { "H_Cap_tan", "", 200, { "", "", -1 } },
            { "H_Cap_blk", "", 200, { "", "", -1 } },
            { "H_Cap_blk_CMMG", "", 200, { "", "", -1 } },
            { "H_Cap_surfer", "", 200, { "", "", -1 } },
            { "H_Cap_blk_ION", "", 200, { "", "", -1 } },
            { "H_Capbw_tan_pmc", "", 200, { "", "", -1 } },
            { "H_Capbw_pmc", "", 200, { "", "", -1 } },
            { "H_Cap_marshal", "", 200, { "", "", -1 } },
            { "H_Booniehat_grn", "", 200, { "", "", -1 } },
            { "H_Booniehat_tan", "", 200, { "", "", -1 } },
            { "H_Booniehat_dirty", "", 200, { "", "", -1 } },
            { "H_Bandanna_surfer", "", 200, { "", "", -1 } },
            { "H_Bandanna_khk", "", 200, { "", "", -1 } },
            { "H_Bandanna_cbr", "", 200, { "", "", -1 } },
            { "H_Bandanna_sgg", "", 200, { "", "", -1 } },
            { "H_Bandanna_gry", "", 200, { "", "", -1 } },
            { "H_StrawHat", "", 200, { "", "", -1 } },
            { "H_StrawHat_dark", "", 200, { "", "", -1 } },
            { "H_Hat_blue", "", 200, { "", "", -1 } },
            { "H_Hat_brown", "", 200, { "", "", -1 } },
            { "H_Hat_grey", "", 200, { "", "", -1 } },
            { "H_Watchcap_blk", "", 200, { "", "", -1 } }, 
            { "H_Watchcap_khk", "", 200, { "", "", -1 } }, 
            { "H_Watchcap_sgg", "", 200, { "", "", -1 } },
            { "H_Watchcap_camo", "", 200, { "", "", -1 } },
            { "H_Hat_checker", "", 200, { "", "", -1 } },
            { "rds_Villager_cap1", "", 200, { "", "", -1 } },
            { "rds_Villager_cap2", "", 200, { "", "", -1 } }, 
            { "rds_Villager_cap3", "", 200, { "", "", -1 } },
            { "rds_Villager_cap4", "", 200, { "", "", -1 } },
            { "rds_worker_cap1", "", 200, { "", "", -1 } },
            { "rds_worker_cap2", "", 200, { "", "", -1 } },
            { "rds_worker_cap3", "", 200, { "", "", -1 } },
            { "rds_worker_cap4", "", 200, { "", "", -1 } },
            { "H_Hat_HelmetConical", "", 200, { "", "", -1 } },
            { "H_Hat_Boonie_Cowboy", "", 200, { "", "", -1 } },
            { "H_Hat_Golf_Black", "", 200, { "", "", -1 } },
            { "H_Hat_Golf_Blue", "", 200, { "", "", -1 } },
            { "H_Hat_Golf", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_White", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_Brown", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_Black", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Cyan", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Monster", "", 200, { "", "", -1 } }, 
            { "ALE_H_NewEra_Black", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Lakers", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Rouge", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Superman", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Redsox", "", 200, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 200, { "", "", -1 } },
			{ "G_Shades_Blue", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 200, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 200, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 200, { "", "", -1 } },
			{ "G_Squares", "", 200, { "", "", -1 } },
			{ "G_Aviator", "", 200, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 200, { "", "", -1 } },
			{ "G_Lady_Dark", "", 200, { "", "", -1 } },
			{ "G_Lady_Blue", "", 200, { "", "", -1 } },
			{ "G_Lowprofile", "", 200, { "", "", -1 } },
			{ "G_Combat", "", 200, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 200, { "", "", -1 } },
            { "V_BandollierB_khk", "", 200, { "", "", -1 } },
            { "V_BandollierB_rgr", "", 200, { "", "", -1 } },
            { "V_BandollierB_blk", "", 200, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
            { "B_AssaultPack_blk", "", 200, { "", "", -1 } },
            { "B_AssaultPack_cbr", "", 200, { "", "", -1 } },
            { "B_AssaultPack_khk", "", 200, { "", "", -1 } },
            { "B_AssaultPack_sgg", "", 200, { "", "", -1 } },
            { "B_AssaultPack_rgr", "", 200, { "", "", -1 } },
            { "B_FieldPack_cbr", "", 200, { "", "", -1 } },
            { "B_FieldPack_blk", "", 200, { "", "", -1 } },
            { "B_FieldPack_ocamo", "", 200, { "", "", -1 } },
            { "B_FieldPack_oucamo", "", 200, { "", "", -1 } },
            { "B_FieldPack_cbr", "", 200, { "", "", -1 } },
            { "B_Kitbag_mcamo", "", 200, { "", "", -1 } },
            { "B_Kitbag_sgg", "", 200, { "", "", -1 } },
            { "B_Kitbag_cbr", "", 200, { "", "", -1 } },
            { "B_Bergen_sgg", "", 200, { "", "", -1 } },
            { "B_Bergen_blk", "", 200, { "", "", -1 } },
            { "B_Bergen_mcamo", "", 200, { "", "", -1 } },
            { "B_Carryall_ocamo", "", 200, { "", "", -1 } },
            { "B_Carryall_oucamo", "", 200, { "", "", -1 } },
            { "B_Carryall_mcamo", "", 200, { "", "", -1 } },
            { "B_Carryall_oli", "", 200, { "", "", -1 } },
            { "B_Carryall_khk", "", 200, { "", "", -1 } },
            { "B_Carryall_cbr", "", 200, { "", "", -1 } },
            { "B_Parachute", "", 200, { "", "", -1 } },
            { "ALFR_Civ_Bags_Nitrado", "", 200, { "", "", -1 } }
		};
	};

	class cop {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "ALFR_FR_police_tenu", "Tenue Police", 30, { "", "", -1 } },
            { "U_B_Wetsuit", "", 50, { "", "", -1 } },
			{ "U_PMC_CombatUniformRS_SSBPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
			{ "U_PMC_BluPolo_GrnPants", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
			{ "U_PMC_WhtPolo_BluPants", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_GTShirt_SJeans", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_BlkTShirt_DJeans", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_BlackPoloShirt_BeigeCords", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_SSGPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_ChckDBS_GPSB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformLS_ChckP_BPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformRS_BSGPSB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } },
            { "U_PMC_CombatUniformRS_GSSPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 2 } }    
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_MilCap_blue", "", 20, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 20, { "", "", -1 } },
			{ "H_Beret_blk", "", 20, { "life_coplevel", "SCALAR", 1 } },
            { "H_PilotHelmetHeli_B", "", 20, { "life_coplevel", "SCALAR", 1 } },
            { "H_PilotHelmetHeli_O", "Casque Heli BAC", 20, { "life_coplevel", "SCALAR", 3 } },
            { "H_Beret_02", "", 20, { "life_coplevel", "SCALAR", 4 } },
            { "R3F_beret", "", 20, { "life_coplevel", "SCALAR", 4 } },
            { "R3F_beret_commando", "", 20, { "life_coplevel", "SCALAR", 5 } },
            { "H_Beret_Colonel", "", 20, { "life_coplevel", "SCALAR", 6 } }    
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 5, { "", "", -1 } },
			{ "G_Shades_Blue", "", 5, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 5, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 5, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 5, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 5, { "", "", -1 } },
			{ "G_Squares", "", 5, { "", "", -1 } },
			{ "G_Aviator", "", 5, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 5, { "", "", -1 } },
			{ "G_Lady_Dark", "", 5, { "", "", -1 } },
			{ "G_Lady_Blue", "", 5, { "", "", -1 } },
			{ "G_Lowprofile", "", 5, { "", "", -1 } },
			{ "G_Combat", "", 5, { "", "", -1 } },
            { "G_B_Diving", "", 10, { "", "", -1 } },
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_TacVest_blk_POLICE", "", 125, { "", "", -1 } },
			{ "V_Police_light", "", 125, { "", "", 1 } },
            { "V_Police_heavy", "", 125, { "", "", -1 } },
            { "V_RebreatherB", "", 125, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "ALFR_Police_Backpack", "", 50, { "", "", -1 } },
			{ "tf_rt1523g_big_bwmod", "P Radio 20km", 50, { "", "", -1 } },
            { "tf_anarc164", "PA Radio 40km", 50, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 5000, { "life_coplevel", "SCALAR", 3 } }
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Diving", "", 150, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 600, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};

	class armer {
		title = "Vendeur d'équipement militaire";
		license = "";
		side = "armer";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "R3F_uniform_f1", "", 30, { "", "", -1 } },
            { "R3F_uniform_Ghillie", "", 30, { "", "", -1 } },
            { "R3F_uniform_diver", "", 30, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
            { "R3F_casque_spectra", "", 10, { "", "", -1 } },
            { "R3F_casquette_off", "", 10, { "", "", -1 } },
            { "R3F_beret_para", "", 10, { "", "", -1 } },
            { "H_PilotHelmetHeli_B", "", 10, { "", "", -1 } },
            { "H_PilotHelmetHeli_O", "", 10, { "", "", -1 } },
            { "H_ALFR_Gasmask", "", 10, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "R3F_cagoule_olive", "", 10, { "", "", -1 } },
            { "R3F_cagoule_punisher", "", 10, { "", "", -1 } },
            { "G_Aviator", "", 10, { "", "", -1 } },
            { "G_Balaclava_blk", "", 10, { "", "", -1 } },
            { "R3F_lunettes_X800", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_1", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_9", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_10", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_Glasses_1", "", 10, { "", "", -1 } },
            { "G_Diving", "", 10, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
			{ "R3F_veste_ce600", "", 30, { "", "", -1 } },
            { "V_RebreatherB", "", 30, { "", "", -1 } },
            { "V_PlateCarrierL_CTRG", "", 30, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
            { "ALFR_Police_Backpack", "Sac Invisible", 50, { "", "", -1 } },
            { "O_UAV_01_backpack_F", "", 500, { "", "", -1 } }    
		};
	};

    
    class gangster {
		title = "La boutique du Parrain";
		license = "gangster";
		side = "civ";

        uniforms[] = {
            { "NONE", "Remove Uniform", 0, { "", "", -1 } },
            { "U_IG_Guerilla2_1", "Buttonup Black", 800, {"", "", -1} },
            { "U_IG_Guerilla2_2", "Buttonup Checked", 800, {"", "", -1} },
            { "U_IG_Guerilla2_3", "Buttonup Navy", 800, {"", "", -1} },
            { "rds_uniform_Woodlander1", "Tenue Gangster 1", 800, {"", "", -1} },
            { "rds_uniform_Woodlander2", "Tenue Gangster 2", 800, {"", "", -1} },
            { "rds_uniform_Woodlander3", "Tenue Gangster 3", 800, {"", "", -1} },
            { "rds_uniform_Woodlander4", "Tenue Gangster 4", 800, {"", "", -1} }, 
            { "U_IG_Guerilla1_1", "", 800, {"", "", -1} },
            { "U_CivilianTShirt_C", "TeeShirt gris et pantalon vert", 800, {"", "", -1} },
            { "U_InsUniShirt_C", "Uniforme desert", 800, {"", "", -1} },
            { "U_InsUniShirt_Leader", "Uniforme leader", 800, {"", "", -1} },
            { "U_InsUniShirt_B", "Uniforme tigre", 800, {"", "", -1} },
            { "U_MilitiaSport_B", "Tenue sport adidas camo 1", 800, {"", "", -1} },
            { "U_MilitiaSport_C", "Tenue sport adidas camo 2", 800, {"", "", -1} },
            { "U_CivilianSport_A", "Tenue gangster adidas blue", 800, {"", "", -1} },
            { "U_CivilianSport_B", "Tenue gangster adidas vert", 800, {"", "", -1} },
            { "U_CivilianSport_C", "Tenue gangster adidas rouge", 800, {"", "", -1} },
            { "U_CivilianSport_D", "Tenue gangster adidas jaune", 800, {"", "", -1} },
            { "U_I_G_Story_Protagonist_F", "", 800, {"", "", -1} },
            { "U_I_G_resistanceLeader_F", "", 800, {"", "", -1} }
        };

		headgear[] = {
            { "NONE", "Remove Hat", 0, { "", "", -1 } },
            { "H_Hat_HeadbandL_E", "Ruban camo", 500, {"", "", -1} },
            { "H_Hat_HeadbandL_C", "Ruban marron", 500, {"", "", -1} },
            { "H_Hat_HeadbandL_B", "Ruban khaki", 500, {"", "", -1} },
            { "H_Hat_HeadbandL_F", "Ruban MTP", 500, {"", "", -1} },
            { "H_Hat_HeadbandL_G", "Ruban rouge", 500, {"", "", -1} },
            { "H_Hat_HeadbandL_D", "Ruban vert", 500, {"", "", -1} }, 
            { "H_Hat_Ushanka", "", 500, {"", "", -1} },
            { "H_Hat_CapSov_B", "Casquette russe 1", 500, {"", "", -1} },
            { "H_Hat_CapSov_C", "Casquette russe 2", 500, {"", "", -1} },
            { "H_Hat_CapSov_A", "Casquette russe 3", 500, {"", "", -1} },
            { "H_Hat_Face_Balaclava_T", "Cagoule tortue ninja", 500, {"", "", -1} },
            { "rds_Woodlander_cap1", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap2", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap3", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap4", "", 500, {"", "", -1} }
        }; 

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 200, {"", "", -1} },
			{ "G_Shades_Blue", "", 200, {"", "", -1} },
			{ "G_Sport_Blackred", "", 200, {"", "", -1} },
			{ "G_Sport_Checkered", "", 200, {"", "", -1} },
			{ "G_Sport_Blackyellow", "", 200, {"", "", -1} },
			{ "G_Sport_BlackWhite", "", 200, {"", "", -1} },
			{ "G_Squares", "", 200, {"", "", -1} },
			{ "G_Aviator", "", 200, {"", "", -1} },
			{ "G_Lady_Mirror", "", 200, {"", "", -1} },
			{ "G_Lady_Dark", "", 200, {"", "", -1} },
			{ "G_Lady_Blue", "", 200, {"", "", -1} },
			{ "G_Lowprofile", "", 200, {"", "", -1} },
			{ "G_Balaclava_blk", "", 200, {"", "", -1} },
			{ "G_Balaclava_lowprofile", "", 200, {"", "", -1} },
			{ "G_Balaclava_combat", "", 200, {"", "", -1} },
			{ "G_Balaclava_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_aviator", "", 200, {"", "", -1} },
			{ "G_Bandanna_beast", "", 200, {"", "", -1} },
			{ "G_Bandanna_tan", "", 200, {"", "", -1} },
			{ "G_Bandanna_sport", "", 200, {"", "", -1} },
			{ "G_Bandanna_blk", "", 200, {"", "", -1} },
			{ "G_Bandanna_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_shades", "", 200, {"", "", -1} },
			{ "G_Combat", "", 200, {"", "", -1} },
			{ "G_Bandanna_tan", "", 200, {"", "", -1} },
			{ "G_Bandanna_khk", "", 200, {"", "", -1} },
			{ "G_Bandanna_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_blk", "", 200, {"", "", -1} }, 
			{ "G_Bandanna_beast", "", 200, {"", "", -1} },
			{ "G_Balaclava_oli", "", 200, {"", "", -1} },
			{ "R3F_cagoule_punisher", "", 600, {"", "", -1} }
		};

		vests[] = {
            { "V_HarnessO_brn", "", 1100, {"", "", -1} },
            { "V_TacVestIR_blk", "", 1300, {"", "", -1} },
            { "V_TacVest_camo", "", 1300, {"", "", -1} },
			{ "V_TacVest_khk", "", 1300, {"", "", -1} },
			{ "V_I_G_resistanceLeader_F", "", 1300, {"", "", -1} },
            { "ALFR_V_Tactical_Vest_Light", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_oli", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_blk", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_AAF", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_OPFOR", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_MTP", "", 1300, {"", "", -1} },
            { "V_PlateCarrierInd_PMC_blk", "", 1500, {"", "", -1} } 
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_blk", "", 200, {"", "", -1} },
			{ "B_AssaultPack_cbr", "", 200, {"", "", -1} },
			{ "B_AssaultPack_khk", "", 200, {"", "", -1} },
			{ "B_AssaultPack_sgg", "", 200, {"", "", -1} },
			{ "B_AssaultPack_rgr", "", 200, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 200, {"", "", -1} },
			{ "B_FieldPack_blk", "", 200, {"", "", -1} },
			{ "B_FieldPack_ocamo", "", 200, {"", "", -1} },
			{ "B_FieldPack_oucamo", "", 200, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 200, {"", "", -1} },
			{ "B_Kitbag_mcamo", "", 200, {"", "", -1} },
			{ "B_Kitbag_sgg", "", 200, {"", "", -1} },
			{ "B_Kitbag_cbr", "", 200, {"", "", -1} },
			{ "B_Bergen_sgg", "", 200, {"", "", -1} },
			{ "B_Bergen_blk", "", 200, {"", "", -1} },
			{ "B_Bergen_mcamo", "", 200, {"", "", -1} },
            { "B_Carryall_ocamo", "", 200, {"", "", -1} },
			{ "B_Carryall_oucamo", "", 200, {"", "", -1} },
			{ "B_Carryall_mcamo", "", 200, {"", "", -1} },
			{ "B_Carryall_oli", "", 200, {"", "", -1} },
			{ "B_Carryall_khk", "", 200, {"", "", -1} },
			{ "B_Carryall_cbr", "", 200, {"", "", -1} },
            { "TRYK_B_Carryall_JSDF", "", 200, {"", "", -1} },
            { "TRYK_B_Carryall_blk", "", 200, {"", "", -1} },
			{ "B_Parachute", "", 500, {"", "", -1} }
		};
	};
         
            
    class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";
        
		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
            { "U_O_SpecopsUniform_ocamo", "", 800, {"", "", -1} },
            { "U_O_CombatUniform_oucamo", "", 800, {"", "", -1} },
            { "U_O_PilotCoveralls", "", 800, {"", "", -1} },
            { "U_IG_leader", "Guerilla Leader", 800, {"", "", -1} },
			{ "U_I_OfficerUniform", "", 800, {"", "", -1} },
            { "U_I_CombatUniform", "", 800, {"", "", -1} }, 
            { "U_CombatUniFatigue_A", "Tenue digital black", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_B", "Tenue insurge noire", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_G", "Tenue insurge noire et marron", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_D", "Tenue insurge noire et vert", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_E", "Tenue insurge tigre", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_F", "Tenue insurge tigre noire", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_A", "Tenue insurge woodland", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_C", "Tenue insurge woodland noire", 800, {"", "", -1} },
            { "U_CombatUniLeadMerc_F", "Tenue mercenaire blue", 800, {"", "", -1} },
            { "U_CombatUniLeadMerc_D", "Tenue mercenaire vert", 800, {"", "", -1} },
            { "U_CombatUniLeadMerc_A", "Tenue mercenaire marron", 800, {"", "", -1} },
            { "U_CombatUniLeadMerc_B", "Tenue mercenaire digital", 800, {"", "", -1} },
            { "U_CombatUniLeadMerc_C", "Tenue mercenaire woodland", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_J", "Tenue mercenaire full noire", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_G", "Tenue mercenaire full blue", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_C", "Tenue mercenaire desert", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_E", "Tenue mercenaire dpm", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_B", "Tenue mercenaire jungle", 800, {"", "", -1} },
            { "U_CombatUniShirtMercB_I", "Tenue mercenaire tigre stripe", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_G", "Tenue mercenaire noire sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_B", "Tenue mercenaire vert sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_C", "Tenue mercenaire desert sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_D", "Tenue mercenaire dpm1 sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_E", "Tenue mercenaire dpm2 sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercA_F", "Tenue mercenaire splitter sandals", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_F", "Tenue mercenaire adidas noire", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_E", "Tenue mercenaire adidas marron", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_G", "Tenue mercenaire adidas desert", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_D", "Tenue mercenaire adidas khaki", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_C", "Tenue mercenaire adidas tigre", 800, {"", "", -1} },
            { "U_CombatUniShirtMercD_A", "Tenue mercenaire adidas dpm", 800, {"", "", -1} },
            { "U_CombatUniShirtMercC_B", "Tenue mercenaire marron bottes", 800, {"", "", -1} },
            { "U_CombatUniShirtMercC_D", "Tenue mercenaire vert bottes", 800, {"", "", -1} },
            { "U_DressTKLocalUni_E_E", "Tenue takistan 1", 800, {"", "", -1} },
            { "U_DressTKLocalUni_E_D", "Tenue takistan 2", 800, {"", "", -1} },
            { "U_DressTKLocalUni_E_C", "Tenue takistan 3", 800, {"", "", -1} },
            { "U_DressTKLocalUni_D_A", "Tenue takistan 4", 800, {"", "", -1} },
            { "U_DressTKLocalUni_E_B", "Tenue takistan 5", 800, {"", "", -1} },
            { "U_DressTKLocalUni_E_A", "Tenue takistan 6", 800, {"", "", -1} },
            { "U_DressTKLocalUni_D_E", "Tenue takistan 7", 800, {"", "", -1} }, 
            { "U_DressTKLocalUni_D_D", "Tenue takistan 8", 800, {"", "", -1} },
            { "U_DressTKLocalUni_D_C", "Tenue takistan 9", 800, {"", "", -1} },
            { "U_DressTKLocalUni_D_B", "Tenue takistan 10", 800, {"", "", -1} },
            { "U_DressTKLocalUni_A_A", "Tenue takistan 11", 800, {"", "", -1} },
            { "U_DressTKLocalUni_C_E", "Tenue takistan 12", 800, {"", "", -1} },
            { "U_DressTKLocalUni_C_D", "Tenue takistan 13", 800, {"", "", -1} },
            { "U_DressTKLocalUni_C_C", "Tenue takistan 14", 800, {"", "", -1} },
            { "U_DressTKLocalUni_C_B", "Tenue takistan 15", 800, {"", "", -1} },
            { "U_DressTKLocalUni_C_A", "Tenue takistan 16", 800, {"", "", -1} },
            { "U_DressTKLocalUni_B_E", "Tenue takistan 17", 800, {"", "", -1} },
            { "U_DressTKLocalUni_B_D", "Tenue takistan 18", 800, {"", "", -1} },
            { "U_DressTKLocalUni_B_C", "Tenue takistan 19", 800, {"", "", -1} },
            { "U_DressTKLocalUni_B_B", "Tenue takistan 20", 800, {"", "", -1} },
            { "U_DressTKLocalUni_B_A", "Tenue takistan 21", 800, {"", "", -1} },
            { "U_DressTKLocalUni_A_E", "Tenue takistan 22", 800, {"", "", -1} },
            { "U_DressTKLocalUni_A_D", "Tenue takistan 23", 800, {"", "", -1} },
            { "U_DressTKLocalUni_A_C", "Tenue takistan 24", 800, {"", "", -1} },
            { "U_DressTKLocalUni_A_B", "Tenue takistan 25", 800, {"", "", -1} },
            { "U_TKLocalCombat_A", "Tenue pakistan 1", 800, {"", "", -1} },
            { "U_TKLocalUni_C", "Tenue pakistan 2", 800, {"", "", -1} },
            { "U_TKLocalUni_D", "Tenue pakistan 3", 800, {"", "", -1} },
            { "U_TKLocalUni_B", "Tenue pakistan 4", 800, {"", "", -1} },
            { "U_TKLocalCombat_C", "Tenue pakistan 5", 800, {"", "", -1} },
            { "U_TKLocalTactic_C", "Tenue pakistan 6", 800, {"", "", -1} },
            { "U_TKLocalCombat_E", "Tenue pakistan 7", 800, {"", "", -1} },
            { "U_TKLocalCombat_D", "Tenue pakistan 8", 800, {"", "", -1} },
            { "U_TKLocalTactic_E", "Tenue pakistan 9", 800, {"", "", -1} },
            { "U_TKLocalTactic_A", "Tenue pakistan 10", 800, {"", "", -1} },
            { "U_TKLocalUni_E", "Tenue pakistan 11", 800, {"", "", -1} },
            { "U_TKLocalTactic_D", "Tenue pakistan 12", 800, {"", "", -1} },
            { "U_TKLocalUni_F", "Tenue pakistan 13", 800, {"", "", -1} },
            { "U_TKLocalCombat_B", "Tenue pakistan 14", 800, {"", "", -1} },
            { "U_TerrorCombat_A", "Tenue terroriste 1", 800, {"", "", -1} },
            { "U_TerrorCombat_B", "Tenue terroriste 2", 800, {"", "", -1} },
            { "U_TerrorCombat_Black", "Tenue terroriste 3", 800, {"", "", -1} },
            { "U_GhillieSuit_A", "Ghillie Suit 1", 1500, {"", "", -1} },
            { "U_GhillieSuit_B", "Ghillie Suit 2", 1500, {"", "", -1} },    
            { "U_GhillieSuit_C", "Ghillie Suit 3", 1500, {"", "", -1} },
            { "U_GhillieSuit_D", "Ghillie Suit 4", 1500, {"", "", -1} },
            { "U_GhillieSuit_E", "Ghillie Suit 5", 1500, {"", "", -1} },
            { "U_GhillieSuit_F", "Ghillie Suit 6", 1500, {"", "", -1} },
            { "U_I_FullGhillie_ard", "Ghillie MarksMen 1", 1500, {"", "", -1} },
            { "U_O_FullGhillie_ard", "Ghillie MarksMen 2", 1500, {"", "", -1} },
            { "U_B_FullGhillie_ard", "Ghillie MarksMen 3", 1500, {"", "", -1} },
            { "U_I_FullGhillie_lsh", "Ghillie MarksMen 4", 1500, {"", "", -1} },
            { "U_O_FullGhillie_lsh", "Ghillie MarksMen 5", 1500, {"", "", -1} },
            { "U_B_FullGhillie_lsh", "Ghillie MarksMen 6", 1500, {"", "", -1} },
            { "U_I_FullGhillie_sard", "Ghillie MarksMen 7", 1500, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 8", 1500, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 9", 1500, {"", "", -1} },
            { "U_O_GhillieSuit", "", 1500, {"", "", -1} },
            { "U_I_GhillieSuit", "", 1500, {"", "", -1} }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_ShemagOpen_tan", "", 500, {"", "", -1} },
			{ "H_Shemag_olive", "", 500, {"", "", -1} },
			{ "H_ShemagOpen_khk", "", 500, {"", "", -1} },
			{ "H_Shemag_tan", "", 500, {"", "", -1} },
			{ "H_Shemag_olive_hs", "", 500, {"", "", -1} },
			{ "H_HelmetO_ocamo", "", 500, {"", "", -1} },
			{ "H_MilCap_oucamo", "", 500, {"", "", -1} },
			{ "H_HelmetCrew_I", "", 500, {"", "", -1} },
			{ "H_Bandanna_camo", "", 500, {"", "", -1} },
            { "H_Hat_Cap_Thai", "Casquette marine", 500, {"", "", -1} },
            { "H_Hat_Face_Balaclava_T", "Cagoule tortue ninja", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Black", "Wrapped noire", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Dark", "Wrapped dark", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Gold", "Wrapped desert", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_White", "Wrapped Dirty", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_DPM", "Wrapped DPM", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Flecktarn", "Wrapped Flecktarn", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Sand", "Wrapped Sand", 500, {"", "", -1} },
            { "H_Hat_Kufiya_B", "Kufiya noire", 500, {"", "", -1} },
            { "H_Hat_Kufiya_D", "Kufiya desert", 500, {"", "", -1} },
            { "H_Hat_Kufiya", "Kufiya dirty", 500, {"", "", -1} },
            { "H_Hat_Kufiya_F", "Kufiya flecktarn", 500, {"", "", -1} },
            { "H_Hat_Kufiya_G", "Kufiya vert", 500, {"", "", -1} },
            { "H_Hat_Kufiya_R", "Kufiya rouge", 500, {"", "", -1} },
            { "H_Hat_Face_Cover", "Scarf noire", 500, {"", "", -1} },
            { "H_Hat_Face_Cover_Gold", "Scarf desert", 500, {"", "", -1} },
            { "H_Hat_Face_Cover_Green", "Scarf vert", 500, {"", "", -1} },
            { "H_Hat_Face_Wrap_Red", "Shemagh rouge", 500, {"", "", -1} },
            { "H_Hat_Taqiyah_A", "Taqiyah 1", 500, {"", "", -1} },
            { "H_Hat_Taqiyah_D", "Taqiyah 2", 500, {"", "", -1} },
            { "H_Hat_Taqiyah_C", "Taqiyah 3", 500, {"", "", -1} },
            { "H_Hat_Taqiyah_B", "Taqiyah 4", 500, {"", "", -1} },
            { "H_Hat_Taqiyah_E", "Taqiyah 5", 500, {"", "", -1} },
            { "H_Hat_Turban_D", "Turban 1", 500, {"", "", -1} },
            { "H_Hat_Pagri", "Turban 2", 500, {"", "", -1} },
            { "H_Hat_Turban_C", "Turban 3", 500, {"", "", -1} },
            { "H_Hat_Turban_B", "Turban 4", 500, {"", "", -1} },
            { "H_Hat_Turban_A", "Turban 5", 500, {"", "", -1} }, 
            { "H_Hat_Pagri_C", "Turban 6", 500, {"", "", -1} },
            { "H_Hat_Pagri_B", "Turban 7", 500, {"", "", -1} },
            { "H_Hat_Turban_E", "Turban 8", 500, {"", "", -1} }, 
            { "H_PilotHelmetHeli_I", "", 500, {"", "", -1} }
		}; 

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 200, {"", "", -1} },
			{ "G_Shades_Blue", "", 200, {"", "", -1} },
			{ "G_Sport_Blackred", "", 200, {"", "", -1} },
			{ "G_Sport_Checkered","", 200, {"", "", -1} },
			{ "G_Sport_Blackyellow", "", 200, {"", "", -1} },
			{ "G_Sport_BlackWhite", "", 200, {"", "", -1} },
			{ "G_Squares", "", 200, {"", "", -1} },
			{ "G_Aviator", "", 200, {"", "", -1} },
			{ "G_Lady_Mirror", "", 200, {"", "", -1} },
			{ "G_Lady_Dark", "", 200, {"", "", -1} },
			{ "G_Lady_Blue", "", 200, {"", "", -1} },
			{ "G_Lowprofile", "", 200, {"", "", -1} },
			{ "G_Balaclava_blk", "", 200, {"", "", -1} },
			{ "G_Balaclava_lowprofile", "", 200, {"", "", -1} },
			{ "G_Balaclava_combat", "", 200, {"", "", -1} },
			{ "G_Balaclava_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_aviator", "", 200, {"", "", -1} },
			{ "G_Bandanna_beast", "", 200, {"", "", -1} },
			{ "G_Bandanna_tan", "", 200, {"", "", -1} },
			{ "G_Bandanna_sport", "", 200, {"", "", -1} },
			{ "G_Bandanna_blk", "", 200, {"", "", -1} },
			{ "G_Bandanna_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_shades", "", 200, {"", "", -1} },
			{ "G_Combat", "", 200, {"", "", -1} },
			{ "G_Bandanna_tan", "", 200, {"", "", -1} },
			{ "G_Bandanna_khk", "", 200, {"", "", -1} },
			{ "G_Bandanna_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_blk", "", 200, {"", "", -1} }, 
			{ "G_Bandanna_beast", "", 200, {"", "", -1} },
			{ "G_Balaclava_oli", "", 200, {"", "", -1} },
			{ "R3F_cagoule_punisher", "", 600, {"", "", -1} }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
            { "V_TacVest_camo", "", 1300, {"", "", -1} },
			{ "V_TacVest_khk", "", 1300, {"", "", -1} },
			{ "V_I_G_resistanceLeader_F", "", 1300, {"", "", -1} },
            { "V_PlateCarrier1_blk", "", 1300, {"", "", -1} },
			{ "V_PlateCarrierGL_rgr", "", 1300, {"", "", -1} },
			{ "V_PlateCarrierIAGL_dgtl", "", 1500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_khk", "", 1500, {"", "", -1} }, 
			{ "ALFR_V_Tactical_Vest_Heavy_blk", "", 1500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_oli", "", 1500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_AAF", "", 1500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_OPFOR", "", 1500, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_MTP", "", 1500, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } },
			{ "B_AssaultPack_blk", "", 200, {"", "", -1} },
			{ "B_AssaultPack_cbr", "", 200, {"", "", -1} },
			{ "B_AssaultPack_khk", "", 200, {"", "", -1} },
			{ "B_AssaultPack_sgg", "", 200, {"", "", -1} },
			{ "B_AssaultPack_rgr", "", 200, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 200, {"", "", -1} },
			{ "B_FieldPack_blk", "", 200, {"", "", -1} },
			{ "B_FieldPack_ocamo", "", 200, {"", "", -1} },
			{ "B_FieldPack_oucamo", "", 200, {"", "", -1} },
			{ "B_FieldPack_cbr", "", 200, {"", "", -1} },
			{ "B_Kitbag_mcamo", "", 200, {"", "", -1} },
			{ "B_Kitbag_sgg", "", 200, {"", "", -1} },
			{ "B_Kitbag_cbr", "", 200, {"", "", -1} },
			{ "B_Bergen_sgg", "", 200, {"", "", -1} },
			{ "B_Bergen_blk", "", 200, {"", "", -1} },
			{ "B_Bergen_mcamo", "", 200, {"", "", -1} },
            { "B_Carryall_ocamo", "", 200, {"", "", -1} },
			{ "B_Carryall_oucamo", "", 200, {"", "", -1} },
			{ "B_Carryall_mcamo", "", 200, {"", "", -1} },
			{ "B_Carryall_oli", "", 200, {"", "", -1} },
			{ "B_Carryall_khk", "", 200, {"", "", -1} },
			{ "B_Carryall_cbr", "", 200, {"", "", -1} },
            { "TRYK_B_Carryall_JSDF", "", 200, {"", "", -1} },
            { "TRYK_B_Carryall_blk", "", 200, {"", "", -1} },
			{ "B_Parachute", "", 500, {"", "", -1} }
		};
	};

    class chefrebelle {
		title = "Vestiaire chef rebelle";
		license = "chefrebelle";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Remove Glasses", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Remove Vest", 0, { "", "", -1 } },
            { "V_HarnessOGL_brn", "Veste Explosive", 160000, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Remove Backpack", 0, { "", "", -1 } }
		};
	};
    
	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Remove Uniform", 0, { "", "", -1 } },
			{ "U_C_Driver_1_black", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 150, { "", "", -1 } },
			{ "U_C_Driver_2", "", 150, { "", "", -1 } },
			{ "U_C_Driver_1", "", 150, { "", "", -1 } },
			{ "U_C_Driver_3", "", 150, { "", "", -1 } },
			{ "U_C_Driver_4", "", 150, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Remove Hat", 0, { "", "", -1 } },
			{ "H_RacingHelmet_1_black_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 200, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 200, { "", "", -1 } }
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