/*
	ARRAY FORMAT:
		0: STRING (Classname)
		1: STRING (Display Name, leave as "" for default)
		2: SCALAR (Price)
		4: ARRAY (This is for limiting items to certain things)
			0: Variable to read from
			1: Variable Value Type
			2: Wcouvre-chef to compare to
*/
class Clothing {
	class bruce {
		title = "STR_Shops_C_Bruce";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "ALFR_FR_tenualfr_2", "Tenue AltisLifeFR", 400, { "", "", -1 } },
            { "ALFR_FR_tenualfr_1", "Tenue AltisLifeFR", 400, { "", "", -1 } },
            { "ALFR_FR_tenualfr", "Tenue AltisLifeFR", 400, { "", "", -1 } },
			{ "U_PMC_BluePlaidShirt_BeigeCords", "Chemise à carreau PG bleu", 400, { "", "", -1 } },
			{ "U_PMC_RedPlaidShirt_DenimCords", "Chemise à carreau PG rouge", 400, { "", "", -1 } },
			{ "U_PMC_BluPolo_BgPants", "Polo PG Bleu", 400, { "", "", -1 } },
			{ "U_PMC_BluPolo_GrnPants", "Polo PG Bleu 2", 400, { "", "", -1 } },
			{ "U_PMC_WhtPolo_BluPants", "Polo PG Blanc", 400, { "", "", -1 } },
			{ "U_PMC_WhtPolo_GrnPants", "Polo PG Blanc 2", 400, { "", "", -1 } },
			{ "U_PMC_WhtPolo_BgPants", "Polo PG Blanc 3", 400, { "", "", -1 } },
			{ "U_PMC_BgPolo_GrnPants", "Polo PG Beige", 400, { "", "", -1 } },
			{ "U_PMC_BlckPolo_BgPants", "Polo PG Noir", 400, { "", "", -1 } },
			{ "U_PMC_BlackPoloShirt_BeigeCords", "Polo PG Noir 2", 400, { "", "", -1 } },
			{ "U_PMC_BlckPolo_BluPants", "Polo PG Noir 3", 400, { "", "", -1 } },
			{ "U_PMC_BlckPolo_BluPants", "Polo PG Noir 3", 400, { "", "", -1 } },
			{ "U_PMC_GrnPolo_BgPants", "Polo PG Vert", 400, { "", "", -1 } },
			{ "ALFR_FR_armani_black", "", 400, { "", "", -1 } },
			{ "ALFR_FR_armani_blue", "", 400, { "", "", -1 } },
			{ "ALFR_FR_armani_white", "", 400, { "", "", -1 } },
			{ "ALFR_FR_tenukenny", "", 400, { "", "", -1 } },
			{ "ALFR_FR_nitrado", "", 400, { "", "", -1 } },
			{ "U_Hipster_A", "Hipster 1", 400, { "", "", -1 } },
			{ "U_Hipster_B", "Hipster 2", 400, { "", "", -1 } },
			{ "U_CivilianPilot_A", "Tenue branché", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_F", "T-shirt Tête de mort", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_A", "T-shirt Tête de mort 2", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_B", "T-shirt Tête de mort 3", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_D", "T-shirt Tête de mort 4", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_B", "T-shirt Bleu", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_A", "T-shirt Bleu 2", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_G", "T-shirt Marron", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_E", "T-shirt Marron 2", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_E", "T-shirt Orange", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_I", "T-shirt Orange 2", 400, { "", "", -1 } },
			{ "U_CivilianTShirt_D", "T-shirt Jaune", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_C", "T-shirt Jaune 2", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_G", "T-shirt Noir", 400, { "", "", -1 } },
			{ "U_CivilianTShirtCasual_H", "T-shirt Tigre", 400, { "", "", -1 } },
			{ "U_CivilianCoat_D", "Parka Noir", 400, { "", "", -1 } },
			{ "U_CivilianCoat_E", "Parka Marron", 400, { "", "", -1 } },
			{ "U_CivilianCoat_F", "Parka Verte", 400, { "", "", -1 } },
			{ "U_CivilianCoat_B", "Parka Bleu Clair", 400, { "", "", -1 } },
			{ "U_CivilianCoat_C", "Parka Bleu Foncé", 400, { "", "", -1 } },
			{ "U_CivilianCoat_A", "Parka Blanche", 400, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "", 400, { "", "", -1 } },
			{ "U_BG_Guerilla3_1", "Habits de chasseur 2", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_blue", "Polo Shirt Bleu", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_burgundy", "Polo Shirt Bordeau", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_stripped", "Polo Shirt Rayé", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_redwhite", "Polo Shirt Rouge-Blanc", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_salmon", "Polo Shirt Saumon", 400, { "", "", -1 } },
			{ "U_C_Poloshirt_tricolour", "Polo Shirt Tricolore", 400, { "", "", -1 } },
			{ "U_CivilianMetro_D", "Vieille Veste 1", 400, { "", "", -1 } },
			{ "U_CivilianMetro_A", "Vieille Veste 2", 400, { "", "", -1 } },
			{ "U_CivilianMetro_C", "Vieille Veste 3", 400, { "", "", -1 } },		
			{ "U_CivilianMetro_B", "Vieille Veste 4", 400, { "", "", -1 } },
			{ "U_CivilianMetro_B", "Vieille Veste 5", 400, { "", "", -1 } },
			{ "U_CivilianOutdoor_C", "Travailleur 1", 400, { "", "", -1 } },
			{ "U_CivilianOutdoor_D", "Travailleur 2", 400, { "", "", -1 } },
			{ "U_CivilianOutdoor_B", "Travailleur 3", 400, { "", "", -1 } },
			{ "U_CivilianOutdoor_A", "Travailleur 4", 400, { "", "", -1 } },
			{ "ALE_CivilLacoste_B", "Lacoste Blanc", 400, { "", "", -1 } },
			{ "ALE_CivilLacoste_Bl", "Lacoste Bleu", 400, { "", "", -1 } },
			{ "ALE_CivilLacoste_O", "Lacoste Orange", 400, { "", "", -1 } },
			{ "ALE_CivilLacoste_V", "Lacoste Vert", 400, { "", "", -1 } },
			{ "U_Rangemaster_A", "Rangemaster Noir", 400, { "", "", -1 } },
			{ "U_Rangemaster_D", "Rangemaster Bleu", 400, { "", "", -1 } },
			{ "U_Rangemaster_G", "Rangemaster Or", 400, { "", "", -1 } },
			{ "U_Rangemaster_C", "Rangemaster Vert", 400, { "", "", -1 } },
			{ "U_Rangemaster_E", "Rangemaster Rouge", 400, { "", "", -1 } },
			{ "U_Rangemaster_F", "Rangemaster Violet", 400, { "", "", -1 } },
			{ "U_Rangemaster_B", "Rangemaster Blanc", 400, { "", "", -1 } },
			{ "U_Office_A", "Chemise Violette", 400, { "", "", -1 } },
			{ "U_Office_B", "Chemise Noir", 400, { "", "", -1 } },
			{ "U_Office_C", "Chemise Blanche", 400, { "", "", -1 } },
			{ "U_Skater_A", "Skateur 1", 400, { "", "", -1 } },
			{ "U_Skater_B", "Skateur 2", 400, { "", "", -1 } },
			{ "U_CivilianSuit_A", "Costard Noir", 400, { "", "", -1 } },
			{ "U_CivilianSuit_C", "Costard Bleu", 400, { "", "", -1 } },
			{ "U_CivilianSuit_B", "Costard Marron", 400, { "", "", -1 } },
			{ "U_CivilianSuit_B", "Costard Marron", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_E_A", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_E_B", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_E_C", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_A_D", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_A_C", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_A_B", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_C_C", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_C_B", "", 400, { "", "", -1 } },
			{ "U_DressTKLocalUni_C_A", "", 400, { "", "", -1 } },	
			{ "ALE_CivilALE", "T-shirt Bleu avec Logo", 400, { "", "", -1 } },
			{ "ALE_CivilDayZ", "", 400, { "", "", -1 } },
			{ "ALE_CivilVincent_1", "Tenue Pyj", 400, { "", "", -1 } },
			{ "ALE_CivilFuckMe", "", 400, { "", "", -1 } },
			{ "ALE_CivilGrisNoir", "", 400, { "", "", -1 } },
			{ "ALE_CivilImWithStupid", "", 400, { "", "", -1 } },
			{ "ALE_CivilManLegend", "", 400, { "", "", -1 } },
			{ "ALE_CivilMickey", "", 400, { "", "", -1 } },
			{ "ALE_CivilOM", "", 400, { "", "", -1 } },
			{ "ALE_CivilPSG", "", 400, { "", "", -1 } },
			{ "ALE_CivilPorsche", "", 400, { "", "", -1 } },
			{ "ALE_CivilRougeBlanc", "", 400, { "", "", -1 } },
			{ "ALE_CivilVioletJaune", "", 400, { "", "", -1 } },
			{ "ALE_CivilAveng", "", 400, { "", "", -1 } },
			{ "ALE_CivilEleven", "", 400, { "", "", -1 } },
			{ "ALE_CivilObey", "", 400, { "", "", -1 } },
			{ "ALE_CivilSkull", "", 400, { "", "", -1 } },
			{ "ALE_CivilSkull", "", 400, { "", "", -1 } },
			{ "rds_uniform_priest", "", 400, { "", "", -1 } },
			{ "ALE_Worker", "", 400, { "", "", -1 } },
			{ "rds_uniform_citizen1", "", 400, { "", "", -1 } },
			{ "rds_uniform_citizen2", "", 400, { "", "", -1 } },
			{ "rds_uniform_citizen3", "", 400, { "", "", -1 } },
			{ "rds_uniform_citizen4", "", 400, { "", "", -1 } },
			{ "rds_uniform_citizen4", "", 400, { "", "", -1 } },
			{ "rds_uniform_Villager1", "", 400, { "", "", -1 } },
			{ "rds_uniform_Villager2", "", 400, { "", "", -1 } },
			{ "rds_uniform_Villager3", "", 400, { "", "", -1 } },
			{ "rds_uniform_Villager4", "", 400, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
            { "H_Cap_red", "", 200, { "", "", -1 } },
            { "H_Cap_blu", "", 200, { "", "", -1 } },
            { "H_Cap_oli", "", 200, { "", "", -1 } },
            { "H_Cap_grn", "", 200, { "", "", -1 } },
            { "H_Cap_tan", "", 200, { "", "", -1 } },
            { "H_Cap_blk", "", 200, { "", "", -1 } },
            { "H_Cap_blk_CMMG", "", 200, { "", "", -1 } },
			{ "H_Cap_grn_BI", "", 200, { "", "", -1 } },
			{ "H_Cap_usblack", "", 200, { "", "", -1 } },
			{ "H_Cap_khaki_specops_UK", "", 200, { "", "", -1 } },
            { "H_Cap_surfer", "", 200, { "", "", -1 } },
            { "H_Capbw_tan_pmc", "", 200, { "", "", -1 } },
            { "H_Capbw_pmc", "", 200, { "", "", -1 } },
			{ "H_Cap_pmc", "", 200, { "", "", -1 } },
			{ "H_Cap_tan_pmc", "", 200, { "", "", -1 } },
            { "H_BoonieHat_grn", "", 200, { "", "", -1 } },
            { "H_BoonieHat_tan", "", 200, { "", "", -1 } },
            { "H_BoonieHat_dirty", "", 200, { "", "", -1 } },
            { "H_Bandanna_surfer", "", 200, { "", "", -1 } },
			{ "H_Bandanna_surfer_blk", "", 200, { "", "", -1 } },
			{ "H_Bandanna_surfer_grn", "", 200, { "", "", -1 } },
            { "H_Bandanna_khk", "", 200, { "", "", -1 } },
            { "H_Bandanna_cbr", "", 200, { "", "", -1 } },
            { "H_Bandanna_sgg", "", 200, { "", "", -1 } },
            { "H_Bandanna_gry", "", 200, { "", "", -1 } },
			{ "H_Bandanna_blu", "", 200, { "", "", -1 } },
			{ "H_Bandanna_sand", "", 200, { "", "", -1 } },
            { "H_StrawHat", "", 200, { "", "", -1 } },
            { "H_StrawHat_dark", "", 200, { "", "", -1 } },
            { "H_Hat_blue", "", 200, { "", "", -1 } },
            { "H_Hat_brown", "", 200, { "", "", -1 } },
            { "H_Hat_grey", "", 200, { "", "", -1 } },
			{ "H_Hat_camo", "", 200, { "", "", -1 } },
			{ "H_Hat_checker", "", 200, { "", "", -1 } },
            { "H_Watchcap_blk", "", 200, { "", "", -1 } },
            { "H_Watchcap_khk", "", 200, { "", "", -1 } },
            { "H_Watchcap_sgg", "", 200, { "", "", -1 } },
            { "H_Watchcap_camo", "", 200, { "", "", -1 } },
            { "H_Hat_checker", "", 200, { "", "", -1 } },
			{ "H_Hat_Beret_Basque_A", "", 200, { "", "", -1 } },
			{ "H_Hat_Beret_Basque_B", "", 200, { "", "", -1 } },
			{ "H_Hat_Beret_Basque_C", "", 200, { "", "", -1 } },
			{ "H_Hat_Beret_Basque_D", "", 200, { "", "", -1 } },
            { "rds_Villager_cap1", "", 200, { "", "", -1 } },
            { "rds_Villager_cap2", "", 200, { "", "", -1 } },
            { "rds_Villager_cap3", "", 200, { "", "", -1 } },
            { "rds_Villager_cap4", "", 200, { "", "", -1 } },
            { "rds_worker_cap1", "", 200, { "", "", -1 } },
            { "rds_worker_cap2", "", 200, { "", "", -1 } },
            { "rds_worker_cap3", "", 200, { "", "", -1 } },
            { "rds_worker_cap4", "", 200, { "", "", -1 } },
			{ "rds_Profiteer_cap1", "", 200, { "", "", -1 } },
			{ "rds_Profiteer_cap2", "", 200, { "", "", -1 } },
			{ "rds_Profiteer_cap3", "", 200, { "", "", -1 } },
			{ "rds_Profiteer_cap4", "", 200, { "", "", -1 } },
            { "H_Hat_HelmetConical", "", 200, { "", "", -1 } },
            { "H_Hat_Golf_Black", "", 200, { "", "", -1 } },
            { "H_Hat_Golf_Blue", "", 200, { "", "", -1 } },
            { "H_Hat_Golf", "", 200, { "", "", -1 } },
			{ "H_Hat_Boonie_Cowboy", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_White", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_Brown", "", 200, { "", "", -1 } },
            { "ALE_H_Cowboy_Black", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Cyan", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Monster", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Black", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Lakers", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Rouge", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Superman", "", 200, { "", "", -1 } },
            { "ALE_H_NewEra_Redsox", "", 200, { "", "", -1 } },
			{ "H_Hat_Ghutra", "", 200, { "", "", -1 } },
			{ "H_Hat_Ghutra_A", "", 200, { "", "", -1 } },
			{ "H_Hat_Turban_D", "Turban 1", 500, {"", "", -1} },
            { "H_Hat_Pagri", "Turban 2", 500, {"", "", -1} },
            { "H_Hat_Turban_C", "Turban 3", 500, {"", "", -1} },
            { "H_Hat_Turban_B", "Turban 4", 500, {"", "", -1} },
            { "H_Hat_Turban_A", "Turban 5", 500, {"", "", -1} },
            { "H_Hat_Pagri_C", "Turban 6", 500, {"", "", -1} },
            { "H_Hat_Pagri_B", "Turban 7", 500, {"", "", -1} },
            { "H_Hat_Turban_E", "Turban 8", 500, {"", "", -1} }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
			{ "G_Spectacles_Tinted", "", 200, { "", "", -1 } },
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
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 500, { "", "", -1 } },
            { "V_BandollierB_khk", "", 200, { "", "", -1 } },
            { "V_BandollierB_rgr", "", 200, { "", "", -1 } },
            { "V_BandollierB_blk", "", 200, { "", "", -1 } },
			{ "V_BandollierB_oli", "", 200, { "", "", -1 } },
			{ "V_Rangemaster_belt", "", 200, { "", "", -1 } },
			{ "ALFR_V_Tactical_Vest_Light", "", 200, { "", "", -1 } },
			{ "ALFR_V_Tactical_Vest_Light_blk", "", 200, { "", "", -1 } },
			{ "ALFR_V_Tactical_Vest_Light_oli", "", 200, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "B_Parachute", "", 200, { "", "", -1 } }
			{ "CUP_B_SLA_Medicbag", "", 400, { "", "", -1 } },
			{ "CUP_B_AlicePack_Khaki", "", 500, { "", "", -1 } },
			{ "CUP_B_CivPack_WDL", "", 500, { "", "", -1 } },
			{ "B_FieldPack_cbr", "", 500, { "", "", -1 } },
			{ "B_FieldPack_khk", "", 500, { "", "", -1 } },
			{ "B_FieldPack_blk", "", 500, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_DC", "Sac DC", 1000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_terminator", "Sac Terminator", 1000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_monster", "Sac Monster", 1000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_superman", "Sac Superman", 1000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_Nitrado", "", 1000, { "", "", -1 } },
			{ "B_Carryall_oli", "", 1000, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 1000, { "", "", -1 } },
			{ "B_Carryall_khk", "", 1000, { "", "", -1 } },
			{ "TRYK_B_Carryall_blk", "", 1000, { "", "", -1 } },
		};
	};

	class cop {
		title = "STR_Shops_C_Police";
		license = "";
		side = "cop";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "ALFR_FR_police_tenu", "Tenue Police", 30, { "", "", -1 } },
            { "U_B_Wetsuit", "", 50, { "", "", -1 } },
			{ "U_PMC_CombatUniformRS_SSBPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
			{ "U_PMC_BluPolo_GrnPants", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
			{ "U_PMC_WhtPolo_BluPants", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_GTShirt_SJeans", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_BlkTShirt_DJeans", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_BlackPoloShirt_BeigeCords", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_CombatUniformLS_SSGPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_CombatUniformLS_ChckDBS_GPSB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_CombatUniformLS_ChckP_BPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_CombatUniformRS_BSGPSB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } },
            { "U_PMC_CombatUniformRS_GSSPBB", "Tenue BAC", 30, { "life_coplevel", "SCALAR", 3 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_MilCap_blue", "", 20, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 20, { "", "", -1 } },
			{ "H_Beret_blk", "", 20, { "life_coplevel", "SCALAR", 2 } },
            { "H_PilotHelmetHeli_B", "", 20, { "life_coplevel", "SCALAR", 2 } },
            { "H_PilotHelmetHeli_O", "Casque Heli BAC", 20, { "life_coplevel", "SCALAR", 3 } },
			{ "H_Beret_C", "", 20, { "life_coplevel", "SCALAR", 3 } },
            { "H_Beret_02", "", 20, { "life_coplevel", "SCALAR", 4 } },
            { "H_Beret_B", "", 20, { "life_coplevel", "SCALAR", 5 } },
            { "H_Beret_Colonel", "", 20, { "life_coplevel", "SCALAR", 6 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
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
            { "G_B_Diving", "", 10, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
			{ "V_TacVest_blk_POLICE", "", 125, { "", "", -1 } },
			{ "V_Police_light", "", 125, { "", "", 1 } },
			{ "V_Police_medium", "", 125, { "", "", 1 } },
            { "V_Police_heavy", "", 125, { "", "", -1 } },
            { "V_RebreatherB", "", 125, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "ALFR_Police_Backpack", "", 50, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 5000, { "life_coplevel", "SCALAR", 4 } }
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
			{ "G_Diving", "", 150, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 600, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } }
		};
	};

	class armer {
		title = "Vendeur d'équipement militaire";
		license = "";
		side = "armer";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "ALFR_FR_armee_tenu", "", 30, { "", "", -1 } },
			{ "ALFR_FR_Armee_Base", "", 30, { "", "", -1 } },
			{ "U_GhillieSuit_A", "", 30, { "", "", -1 } },
			{ "U_GhillieSuit_B", "", 30, { "", "", -1 } },
			{ "U_GhillieSuit_C", "", 30, { "", "", -1 } },
            { "U_O_Wetsuit", "", 30, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
            { "ALFR_armee_casque", "", 10, { "", "", -1 } },
            { "H_Cap_headphones", "", 10, { "", "", -1 } },
            { "H_Beret_A", "", 10, { "", "", -1 } },
            { "H_PilotHelmetHeli_B", "", 10, { "", "", -1 } },
            { "H_PilotHelmetHeli_O", "", 10, { "", "", -1 } },
            { "H_ALFR_Gasmask", "", 10, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
            { "G_Aviator", "", 10, { "", "", -1 } },
            { "G_Lowprofile", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_1", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_9", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_10", "", 10, { "", "", -1 } },
            { "H_ALFR_SkiMask_lunette_1", "", 10, { "", "", -1 } },
			{ "G_Balaclava_oli", "", 10, { "", "", -1 } },
			{ "G_Balaclava_blk", "", 10, { "", "", -1 } },
			{ "G_Balaclava_lowprofile", "", 10, { "", "", -1 } },
            { "G_Diving", "", 10, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
			{ "ALFR_armee_gilet", "", 30, { "", "", -1 } },
            { "V_RebreatherB", "", 30, { "", "", -1 } },
            { "V_PlateCarrierL_CTRG", "", 30, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
            { "ALFR_armee_Bags", "", 50, { "", "", -1 } },
            { "O_UAV_01_backpack_F", "", 500, { "", "", -1 } }
		};
	};
    
    //Shop Gangster
    class gangster {
		title = "Boutique Ganster";
		license = "gangster";
		side = "civ";

        uniforms[] = {
            { "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "U_CivilianTShirt_C", "", 800, {"", "", -1} },
			{ "U_CivilianTShirtCasual_F", "", 800, {"", "", -1} },
			{ "U_CivilianHunter_D", "", 800, {"", "", -1} },
			{ "U_CivilianHunter_A", "", 800, {"", "", -1} },
			{ "U_CivilianHunter_C", "", 800, {"", "", -1} },
			{ "U_CivilianHunter_B", "", 800, {"", "", -1} },
            { "U_MilitiaUniTShirt_B", "", 800, {"", "", -1} },
			{ "U_MilitiaUniTShirt_G", "", 800, {"", "", -1} },
			{ "U_MilitiaUniTShirt_E", "", 800, {"", "", -1} },
			{ "U_MilitiaUniTShirt_F", "", 800, {"", "", -1} },
			{ "U_MilitiaUniTShirt_A", "", 800, {"", "", -1} },
			{ "U_MilitiaUniTShirt_C", "", 800, {"", "", -1} },
            { "U_InsUniShirt_Leader", "", 800, {"", "", -1} },
			{ "U_InsUniShirt_B", "", 800, {"", "", -1} },
			{ "U_InsUniShirt_A", "", 800, {"", "", -1} },
			{ "U_CombatUniLeadMerc_E", "", 800, {"", "", -1} },
			{ "U_CombatUniLeadMerc_D", "", 800, {"", "", -1} },
			{ "U_CombatUniLeadMerc_A", "", 800, {"", "", -1} },
			{ "U_CombatUniLeadMerc_B", "", 800, {"", "", -1} },
			{ "U_CombatUniLeadMerc_C", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercB_E", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercB_H", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercB_F", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercB_I", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercB_A", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercA_E", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercA_A", "", 800, {"", "", -1} },
			{ "U_CombatUniShirtMercD_A", "", 800, {"", "", -1} },
			{ "U_MilitiaSport_A", "", 800, {"", "", -1} },
			{ "U_MilitiaSport_B", "", 800, {"", "", -1} },
			{ "U_MilitiaSport_C", "", 800, {"", "", -1} },
			{ "U_CivilianCroppedPants_B", "", 800, {"", "", -1} },		
			{ "U_CivilianCroppedPants_D", "", 800, {"", "", -1} },
			{ "U_CivilianSport_A", "", 800, {"", "", -1} },		
			{ "U_CivilianSport_B", "", 800, {"", "", -1} },
			{ "U_CivilianSport_C", "", 800, {"", "", -1} },
			{ "U_CivilianSport_D", "", 800, {"", "", -1} },
			{ "U_TerrorCombat_B", "", 800, {"", "", -1} },	
			{ "rds_uniform_Woodlander1", "", 800, {"", "", -1} },
			{ "rds_uniform_Woodlander2", "", 800, {"", "", -1} },
			{ "rds_uniform_Woodlander3", "", 800, {"", "", -1} },	
			{ "rds_uniform_Woodlander4", "", 800, {"", "", -1} }			
        };

		headgear[] = {
            { "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
            { "H_Bandanna_cbr", "", 500, {"", "", -1} },
			{ "H_Bandanna_khk", "", 500, {"", "", -1} },
			{ "H_Bandanna_gry", "", 500, {"", "", -1} },
			{ "H_Bandanna_mcamo", "", 500, {"", "", -1} },
			{ "H_Bandanna_sand", "", 500, {"", "", -1} },
			{ "H_Watchcap_camo", "", 500, {"", "", -1} },
			{ "H_Watchcap_cbr", "", 500, {"", "", -1} },
			{ "H_Booniehat_khk", "", 500, {"", "", -1} },
			{ "H_Booniehat_mcamo", "", 500, {"", "", -1} },
			{ "H_Booniehat_oli", "", 500, {"", "", -1} },
			{ "H_Booniehat_tan", "", 500, {"", "", -1} },
			{ "H_Booniehat_khk_hs", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap4", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap1", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap2", "", 500, {"", "", -1} },
			{ "rds_Woodlander_cap3", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Cover", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Cover_Black", "", 500, {"", "", -1} },	
			{ "H_Hat_Face_Cover_Gold", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Cover_Green", "", 500, {"", "", -1} }
        };

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
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
			{ "G_Bandanna_tan", "", 200, {"", "", -1} },
			{ "G_Bandanna_khk", "", 200, {"", "", -1} },
			{ "G_Bandanna_oli", "", 200, {"", "", -1} },
			{ "G_Bandanna_blk", "", 200, {"", "", -1} },
			{ "G_Bandanna_beast", "", 200, {"", "", -1} },
			{ "G_Balaclava_oli", "", 200, {"", "", -1} }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "ALFR_V_Tactical_Vest_Light_oli", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_blk", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Light_MTP", "", 1300, {"", "", -1} },
			{ "V_I_G_resistanceLeader_F", "", 1600, {"", "", -1} },
			{ "V_TacVest_oli", "", 1600, {"", "", -1} },
			{ "V_TacVest_blk", "", 1600, {"", "", -1} },
			{ "V_TacVest_brn", "", 1600, {"", "", -1} },
			{ "V_TacVest_khk", "", 1600, {"", "", -1} },
			{ "V_TacVest_camo", "", 1600, {"", "", -1} },
			{ "V_PlateCarrier_heavy_F", "", 2100, {"", "", -1} },
			{ "V_PlateCarrier_heavy_A", "", 2100, {"", "", -1} },
			{ "V_PlateCarrier_heavy_C", "", 2100, {"", "", -1} },
			{ "V_PlateCarrier_heavy_B", "", 2100, {"", "", -1} },
			{ "V_PlateCarrier_heavy_E", "", 2100, {"", "", -1} },
			{ "V_PlateCarrier_heavy_D", "", 2100, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "B_Parachute", "", 200, { "", "", -1 } }
			{ "CUP_B_AlicePack_Khaki", "", 500, { "", "", -1 } },
			{ "CUP_B_CivPack_WDL", "", 500, { "", "", -1 } },
			{ "B_FieldPack_cbr", "", 500, { "", "", -1 } },
			{ "B_FieldPack_khk", "", 500, { "", "", -1 } },
			{ "B_FieldPack_blk", "", 500, { "", "", -1 } },
			{ "B_Carryall_oli", "", 1000, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 1000, { "", "", -1 } },
			{ "B_Carryall_khk", "", 1000, { "", "", -1 } },
			{ "TRYK_B_Carryall_blk", "", 1000, { "", "", -1 } }
		};
	};
    
    //Shop Rebelle
    class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "U_AFASoldierUni_A", "", 800, {"", "", -1} },
			{ "U_AFAOfficerUni_A", "", 800, {"", "", -1} },
			{ "U_AFASpecialUni_A", "", 800, {"", "", -1} },
			{ "U_O_PilotCoveralls", "", 800, {"", "", -1} },
			{ "U_CDFSoldierUni_A", "", 800, {"", "", -1} },
			{ "U_CombatUniLong_A", "", 800, {"", "", -1} },
			{ "U_CombatUniLong_B", "", 800, {"", "", -1} },
			{ "U_CombatUniFatigue_A", "", 800, {"", "", -1} },
			{ "U_TKSpecialUni_A", "", 800, {"", "", -1} },
			{ "U_TKSpecialUni_B", "", 800, {"", "", -1} },
			{ "U_TKSoldierUni_A", "", 800, {"", "", -1} },
			{ "U_TKSoldierUni_B", "", 800, {"", "", -1} },
			{ "U_DressTKLocalUni_C_B", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_A", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_B", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_C", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_D", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_E", "", 800, {"", "", -1} },
			{ "U_TKLocalUni_F", "", 800, {"", "", -1} },
			{ "U_TKLocalCombat_A", "", 800, {"", "", -1} },
			{ "U_TKLocalCombat_B", "", 800, {"", "", -1} },
			{ "U_TKLocalCombat_C", "", 800, {"", "", -1} },
			{ "U_TKLocalCombat_D", "", 800, {"", "", -1} },
			{ "U_TKLocalCombat_E", "", 800, {"", "", -1} },
			{ "U_CDGCombatUni_A", "", 800, {"", "", -1} },
			{ "U_CDGCombatUni_B", "", 800, {"", "", -1} },
			{ "U_CDGCombatUni_C", "", 800, {"", "", -1} },
			{ "U_TerrorCombat_A", "", 800, {"", "", -1} },
			{ "U_CombatUniSleeves_A", "", 800, {"", "", -1} },
			{ "U_CombatUniSleeves_B", "", 800, {"", "", -1} },
			{ "U_CombatUniSleeves_C", "", 800, {"", "", -1} },
			{ "U_CombatUniSleevesShort_A", "", 800, {"", "", -1} },
			{ "U_CombatUniSleevesShort_B", "", 800, {"", "", -1} },
			{ "U_CombatUniSleevesShort_C", "", 800, {"", "", -1} },
			{ "U_CombatUniTShirt_B", "", 800, {"", "", -1} },
			{ "U_CombatUniTShirt_C", "", 800, {"", "", -1} },			
			{ "U_TerrorCombat_Black", "", 800, {"", "", -1} },
			{ "U_O_CombatUniform_ocamo", "", 800, {"", "", -1} },			
			{ "U_B_CombatUniform_mcam", "", 800, {"", "", -1} },			
			{ "U_B_CombatUniform_mcam_tshirt", "", 800, {"", "", -1} },
			{ "U_B_CTRG_3", "", 800, {"", "", -1} },
			{ "U_B_CombatUniform_mcam_worn", "", 800, {"", "", -1} },
			{ "U_O_GhillieSuit", "", 1250, {"", "", -1} },	
			{ "U_GhillieSuit_A", "", 1500, {"", "", -1} },	
			{ "U_GhillieSuit_F", "", 1500, {"", "", -1} },	
			{ "U_GhillieSuit_C", "", 1500, {"", "", -1} },	
			{ "U_GhillieSuit_B", "", 1500, {"", "", -1} },	
			{ "U_GhillieSuit_D", "", 1500, {"", "", -1} },	
			{ "U_GhillieSuit_E", "", 1500, {"", "", -1} },	
			{ "U_I_FullGhillie_ard", "", 1500, {"", "", -1} },	
			{ "U_O_FullGhillie_ard", "", 1500, {"", "", -1} },	
			{ "U_I_FullGhillie_lsh", "", 1500, {"", "", -1} },	
			{ "U_I_FullGhillie_sard", "", 1500, {"", "", -1} },	
			{ "U_B_FullGhillie_sard", "", 1500, {"", "", -1} },	
			{ "U_O_GhillieSuit", "", 1500, {"", "", -1} }			
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_Booniehat_DMARPAT", "", 500, {"", "", -1} },
			{ "H_Booniehat_GCAMO", "", 500, {"", "", -1} },
			{ "H_Bandanna_mcamo", "", 500, {"", "", -1} },
			{ "H_Bandanna_camo", "", 500, {"", "", -1} },
			{ "H_Hat_Boonie_Flecktarn", "", 500, {"", "", -1} },
			{ "H_Hat_Boonie_Marpat", "", 500, {"", "", -1} },
			{ "H_Hat_Boonie_Woodland", "", 500, {"", "", -1} },
			{ "H_Hat_Cap_RU", "", 500, {"", "", -1} },
			{ "H_Cap_blk_Raven", "", 500, {"", "", -1} },
			{ "H_Cap_brn_SPECOPS", "", 500, {"", "", -1} },
			{ "H_Booniehat_mcamo", "", 500, {"", "", -1} },
			{ "H_Booniehat_dgtl", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Black", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Dark", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Gold", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_White", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_DPM", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Flecktarn", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Sand", "", 500, {"", "", -1} },
			{ "H_Hat_HeadTie_E", "", 500, {"", "", -1} },
			{ "H_Hat_HeadTie_F", "", 500, {"", "", -1} },
			{ "H_Hat_HeadTie_G", "", 500, {"", "", -1} },
			{ "H_Hat_HeadbandL_E", "", 500, {"", "", -1} },
			{ "H_Hat_HeadbandL_F", "", 500, {"", "", -1} },
			{ "H_Hat_HeadbandL_G", "", 500, {"", "", -1} },
			{ "H_Hat_Headband_E", "", 500, {"", "", -1} },
			{ "H_Hat_Headband_D", "", 500, {"", "", -1} },
			{ "H_MilCap_ocamo", "", 500, {"", "", -1} },
			{ "H_MilCap_mcamo", "", 500, {"", "", -1} },
			{ "H_MilCap_dgtl", "", 500, {"", "", -1} },
			{ "H_ShemagOpen_tan", "", 500, {"", "", -1} },
			{ "H_Shemag_olive", "", 500, {"", "", -1} },
			{ "H_Shemag_olive_hs", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_B", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_D", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_F", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_G", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_R", "", 500, {"", "", -1} },
			{ "H_Hat_Kufiya_C", "", 500, {"", "", -1} },
			{ "H_Hat_CapSov_B", "", 500, {"", "", -1} },
			{ "H_Hat_CapSov_C", "", 500, {"", "", -1} },
			{ "H_Hat_CapSov_A", "", 500, {"", "", -1} },
			{ "H_ShemagOpen_khk", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap", "", 500, {"", "", -1} },	
			{ "H_Hat_Face_Wrap_Desert", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Olive", "", 500, {"", "", -1} },
			{ "H_Hat_Face_Wrap_Red", "", 500, {"", "", -1} },
			{ "H_Hat_Ushanka_Rnd_A", "", 500, {"", "", -1} },
			{ "H_Hat_Ushanka_Rnd_B", "", 500, {"", "", -1} },
			{ "H_Hat_Ushanka_Rnd_C", "", 500, {"", "", -1} },
			{ "H_HelmetCrew_I", "", 500, {"", "", -1} },
			{ "H_HelmetB", "", 500, {"", "", -1} },
			{ "H_Hat_HelmetR", "", 500, {"", "", -1} },
			{ "H_Hat_Headbag", "Sac en papier", 1500, {"", "", -1} }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
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
			{ "G_Balaclava_oli", "", 200, {"", "", -1} }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "ALFR_V_Tactical_Vest_Heavy_oli", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_blk", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_khk", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_MTP", "", 1300, {"", "", -1} },
			{ "ALFR_V_Tactical_Vest_Heavy_OPFOR", "", 1300, {"", "", -1} },
            { "ALFR_V_Tactical_Vest_Heavy_AAF", "", 1300, {"", "", -1} },
			{ "V_FlakJacket_KP_Black", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_digiCamo", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_Green", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_Tan", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_Woodland", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_Pliskin_Black", "", 1600, {"", "", -1} },		
			{ "V_FlakJacket_KP_digiCamo", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_Green", "", 1600, {"", "", -1} },	
			{ "V_FlakJacket_KP_Tan", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_KP_Woodland", "", 1600, {"", "", -1} },		
			{ "V_FlakJacket_Pliskin_Black", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_Pliskin_digiCamo", "", 1600, {"", "", -1} },	
			{ "V_FlakJacket_Pliskin_Green", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_Pliskin_Woodland", "", 1600, {"", "", -1} },		
			{ "V_FlakJacket_SH_Black", "", 1600, {"", "", -1} },
			{ "V_FlakJacket_SH_digiCamo", "", 1600, {"", "", -1} },	
			{ "V_FlakJacket_SH_Woodland", "", 1600, {"", "", -1} },
			{ "V_Ballistic_A", "", 2100, {"", "", -1} },
			{ "V_Ballistic_C", "", 2100, {"", "", -1} },
			{ "V_Ballistic_E", "", 2100, {"", "", -1} },
			{ "V_Ballistic_B", "", 2100, {"", "", -1} },
			{ "V_Ballistic_D", "", 2100, {"", "", -1} }		
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "B_FieldPack_oucamo", "", 500, {"", "", -1} },
			{ "CUP_B_CivPack_WDL", "", 500, {"", "", -1} },
			{ "CUP_B_USMC_MOLLE_WDL", "", 500, {"", "", -1} },
			{ "TRYK_B_FieldPack_Wood", "", 500, {"", "", -1} },
			{ "CUP_B_GER_Pack_Flecktarn", "", 1000, {"", "", -1} },
			{ "CUP_B_GER_Pack_Tropentarn", "", 1000, {"", "", -1} },
			{ "CUP_B_HikingPack_Civ", "", 1000, {"", "", -1} },
			{ "B_Carryall_ocamo", "", 1000, {"", "", -1} },
			{ "B_Carryall_mcamo", "", 1000, {"", "", -1} },
			{ "TRYK_B_Carryall_JSDF", "", 1000, {"", "", -1} },
			{ "TRYK_B_Carryall_wood", "", 1000, {"", "", -1} },
			{ "CUP_B_ACRPara_m95", "", 2100, {"", "", -1} },
			{ "B_Parachute", "", 500, {"", "", -1} }
		};
	};
    
    //Shop ChefRebelle
    class chefrebelle {
		title = "Vestiaire Chef Rebelle";
		license = "chefrebelle";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "U_CDFOfficerUni_A", "", 800, {"", "", -1} },
			{ "U_TKOfficerUni_B", "", 800, {"", "", -1} },
			{ "U_TKOfficerUni_A", "", 800, {"", "", -1} },
			{ "U_CombatUniShirt_E", "", 800, {"", "", -1} },
			{ "U_CombatUniShirt_C", "", 800, {"", "", -1} },
			{ "U_CombatUniShirt_B", "", 800, {"", "", -1} },
			{ "U_CombatUniShirt_A", "", 800, {"", "", -1} },
			{ "U_CombatUniShirt_D", "", 800, {"", "", -1} },			
			{ "U_I_OfficerUniform", "", 800, {"", "", -1} },
			{ "U_O_OfficerUniform_ocamo", "", 800, {"", "", -1} }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_Hat_Cap_Thai", "", 500, { "", "", -1 } },
			{ "rds_police_cap", "", 500, { "", "", -1 } },
			{ "H_Hat_Ushanka", "", 500, { "", "", -1 } },
			{ "H_HelmetB_camo", "", 500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_BombJacket", "Veste Explosive", 90000, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } }
		};
	};
	
	// SHOP ENTREPRISE AAN
	class aan {
		title = "Vestiaire AAN";
		license = "aan";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "U_C_Journalist", "", 150, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 50, { "", "", -1 } },
			{ "H_Cap_press", "", 100, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
			{ "V_BandollierB_blk", "", 250, { "", "", -1 } },
			{ "V_Press_F", "", 1000, { "", "", -1 } }			
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "CUP_B_AssaultPack_Black", "", 500, { "", "", -1 } }
		};
	};	
    
    //Shop Femme
    class girl {
		title = "Vestiaire Féminin";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "O_FEM_CSAT", "Tenue Femme CSAT(T-Shirt)", 800, {"", "", -1} },
            { "O_FEM_CSAT_Long", "Tenue Femme CSAT(Manche longue)", 800, {"", "", -1} },
            { "O_FEM_CSAT_Rolled", "Tenue Femme CSAT(Manche courte)", 800, {"", "", -1} },
            { "I_FEM_AAF", "Tenue Femme AAF(T-Shirt)", 800, {"", "", -1} },
            { "I_FEM_AAF_long", "Tenue Femme AAF(Manche longue)", 800, {"", "", -1} },
            { "B_FEM_AAF_Rolled", "Tenue Femme AAF(Manche courte)", 800, {"", "", -1} },
            { "B_FEM_FIA", "Tenue Femme CIVIL (T-Shirt)", 800, {"", "", -1} },
            { "B_FEM_NATO", "Tenue Femme NATO (complète)", 800, {"", "", -1} },
            { "B_FEM_NATO_long", "Tenue Femme NATO (T-Shirt)", 800, {"", "", -1} },
            { "B_FEM_NATO_Collar", "Tenue Femme NATO (Manche longue)", 800, {"", "", -1} },
            { "B_FEM_NATO_Rolled", "Tenue Femme NATO (Manche courte)", 800, {"", "", -1} }			
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } }
		};
	};
    
    //Shop Entreprise ION
    class ion {
		title = "Vestiaire ION";
		license = "ion";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "U_Competitor", "Tenue ION", 100, {"", "", -1} },
            { "U_Coveralls_B", "Tenue Ouvrier ION", 100, {"", "", -1} },
			{ "ALE_Worker", "Tenue Ouvrier ION 2", 100, {"", "", -1} },
            { "U_CivilianSuit_A", "Tenue Patron Noir", 200, {"", "", -1} },
            { "U_CivilianSuit_C", "Tenue Patron Bleu", 200, {"", "", -1} },
			{ "U_Office_A", "Tenue Patron été", 200, {"", "", -1} }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
            { "H_Cap_blk_ION", "Casquette ION", 50, {"", "", -1} }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
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
            { "Mask_M40", "Masque a Gaz", 250, {"", "", -1} }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_BandollierB_blk", "Sac Noir ION", 200, {"", "", -1} },
            { "V_Chestrig_blk", "Sac Noir ION", 500, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
            { "TRYK_B_Carryall_blk", "Sac Noir ION", 200, {"", "", -1} }
		};
	};
      /*
      class depannage {
            title = "STR_Shops_C_Diving";
            license = "depanneur";
            side = "civ";

            uniforms[] = {
                  { "NONE", "Supprime uniforme", 0, { "", "", -1 } },
                  { "ALE_RsDep", "Tenue de dépanneur", 500, { "", "", -1 } }
            };

            headgear[] = {
                  { "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
                  { "H_Cap_headphones", "", 15, { "", "", -1 } },
                  { "H_Cap_marshal", "", 15, { "", "", -1 } },
                  { "H_PilotHelmetHeli_B", "", 50, { "", "", -1 } }
            };

            goggles[] = {
                  { "NONE", "Supprime lunette", 0, { "", "", -1 } },
                  { "G_Shades_Black", "", 20, { "", "", -1 } },
                  { "G_Shades_Blue", "", 20, { "", "", -1 } },
                  { "G_Sport_Blackred", "", 20, { "", "", -1 } },
                  { "G_Sport_Checkered", "", 20, { "", "", -1 } },
                  { "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
                  { "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
                  { "G_Squares", "", 20, { "", "", -1 } },
                  { "G_Aviator", "", 20, { "", "", -1 } },
                  { "G_Lady_Mirror", "", 20, { "", "", -1 } },
                  { "G_Lady_Dark", "", 20, { "", "", -1 } },
                  { "G_Lady_Blue", "", 20, { "", "", -1 } },
                  { "G_Lowprofile", "", 20, { "", "", -1 } },
                  { "G_Combat", "", 20, { "", "", -1 } }
            };

            vests[] = {
                  { "NONE", "Supprime gilet", 0, { "", "", -1 } }
            };

            backpacks[] = {
                  { "NONE", "Supprime sac", 0, { "", "", -1 } }
                  { "B_Carryall_ocamo", "", 200, { "", "", -1 } },
                  { "B_Carryall_oucamo", "", 200, { "", "", -1 } },
                  { "B_Carryall_mcamo", "", 200, { "", "", -1 } },
                  { "B_Carryall_oli", "", 200, { "", "", -1 } },
                  { "B_Carryall_khk", "", 200, { "", "", -1 } },
                  { "B_Carryall_cbr", "", 200, { "", "", -1 } },
                  { "ALFR_Civ_Bags_Nitrado", "", 200, { "", "", -1 } }
            };
      };
      */
	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
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
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
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
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } }
		};
	};
	
	class mask {
		title = "STR_Shops_C_Mask";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 800, { "", "", -1 } },
			{ "H_ALFR_PaintballMsk", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_blk", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_oli", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_grey", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Gasmask_RU_khk", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Gasmask_RU_fuckyou", "", 800, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_blk", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_oli", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_sand", "", 800, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_gry", "", 800, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_1", "", 800, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_2", "", 800, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_3", "", 800, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_4", "", 800, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_5", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Heist_Mask_6", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Heist_Mask_7", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Samurai_Mask", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Sheep_Mask", "", 800, { "", "", -1 } },	
			{ "H_ALFR_Dallas_Mask", "", 800, { "", "", -1 } },
			{ "H_ALFR_DinoMask", "", 800, { "", "", -1 } },
			{ "H_ALFR_HorseMask", "", 800, { "", "", -1 } },	
			{ "H_ALFR_HorseMask_2", "", 800, { "", "", -1 } },	
			{ "H_ALFR_HorseMask_blk", "", 800, { "", "", -1 } },
			{ "H_ALFR_HorseMask_pnk", "", 800, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_I", "", 800, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_II", "", 800, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_III", "", 800, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_IV", "", 800, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } }
		};
	};
};