/*
*    ARRAY FORMAT:
*        0: STRING (Classname)
*        1: STRING (Display Name, leave as "" for default)
*        2: SCALAR (Price)
*        4: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*
*   Clothing classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
*   Backpacks/remaining classnames can be found here (TIP: Search page for "pack"): https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EMPTY
*
*/
class Clothing {
    class bruce {
        title = "STR_Shops_C_Bruce";
        license = "";
        side = "civ";
        uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
            { "ALFR_FR_tenualfr_2", "Tenue AltisLifeFR", 250, { "", "", -1 } },
            { "ALFR_FR_tenualfr_1", "Tenue AltisLifeFR", 250, { "", "", -1 } },
            { "ALFR_FR_tenualfr", "Tenue AltisLifeFR", 250, { "", "", -1 } },
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
			{ "ALFR_FR_armani_black", "", 4000, { "", "", -1 } },
			{ "ALFR_FR_armani_blue", "", 4000, { "", "", -1 } },
			{ "ALFR_FR_armani_white", "", 4000, { "", "", -1 } },
			{ "ALFR_FR_tenukenny", "", 4000, { "", "", -1 } },
			{ "ALFR_FR_nitrado", "", 4000, { "", "", -1 } },
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
			{ "ALE_CivilLacoste_B", "Lacoste Blanc", 4000, { "", "", -1 } },
			{ "ALE_CivilLacoste_Bl", "Lacoste Bleu", 4000, { "", "", -1 } },
			{ "ALE_CivilLacoste_O", "Lacoste Orange", 4000, { "", "", -1 } },
			{ "ALE_CivilLacoste_V", "Lacoste Vert", 4000, { "", "", -1 } },
			{ "U_Rangemaster_A", "Rangemaster Noir", 600, { "", "", -1 } },
			{ "U_Rangemaster_D", "Rangemaster Bleu", 600, { "", "", -1 } },
			{ "U_Rangemaster_G", "Rangemaster Or", 600, { "", "", -1 } },
			{ "U_Rangemaster_C", "Rangemaster Vert", 600, { "", "", -1 } },
			{ "U_Rangemaster_E", "Rangemaster Rouge", 600, { "", "", -1 } },
			{ "U_Rangemaster_F", "Rangemaster Violet", 600, { "", "", -1 } },
			{ "U_Rangemaster_B", "Rangemaster Blanc", 600, { "", "", -1 } },
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
			{ "ALE_CivilALE", "T-shirt Bleu avec Logo", 4000, { "", "", -1 } },
			{ "ALE_CivilDayZ", "", 4000, { "", "", -1 } },
			{ "ALE_CivilVincent_1", "Tenue Pyj", 4000, { "", "", -1 } },
			{ "ALE_CivilFuckMe", "", 4000, { "", "", -1 } },
			{ "ALE_CivilGrisNoir", "", 4000, { "", "", -1 } },
			{ "ALE_CivilImWithStupid", "", 4000, { "", "", -1 } },
			{ "ALE_CivilManLegend", "", 4000, { "", "", -1 } },
			{ "ALE_CivilMickey", "", 4000, { "", "", -1 } },
			{ "ALE_CivilOM", "", 4000, { "", "", -1 } },
			{ "ALE_CivilPSG", "", 4000, { "", "", -1 } },
			{ "ALE_CivilPorsche", "", 4000, { "", "", -1 } },
			{ "ALE_CivilRougeBlanc", "", 4000, { "", "", -1 } },
			{ "ALE_CivilVioletJaune", "", 4000, { "", "", -1 } },
			{ "ALE_CivilAveng", "", 4000, { "", "", -1 } },
			{ "ALE_CivilEleven", "", 4000, { "", "", -1 } },
			{ "ALE_CivilObey", "", 4000, { "", "", -1 } },
			{ "ALE_CivilSkull", "", 4000, { "", "", -1 } },
			{ "ALE_CivilSkull", "", 4000, { "", "", -1 } },
			{ "rds_uniform_priest", "", 4000, { "", "", -1 } },
			{ "ALE_Worker", "", 4000, { "", "", -1 } },
			{ "rds_uniform_citizen1", "", 500, { "", "", -1 } },
			{ "rds_uniform_citizen2", "", 500, { "", "", -1 } },
			{ "rds_uniform_citizen3", "", 500, { "", "", -1 } },
			{ "rds_uniform_citizen4", "", 500, { "", "", -1 } },
			{ "rds_uniform_citizen4", "", 500, { "", "", -1 } },
			{ "rds_uniform_Villager1", "", 500, { "", "", -1 } },
			{ "rds_uniform_Villager2", "", 500, { "", "", -1 } },
			{ "rds_uniform_Villager3", "", 500, { "", "", -1 } },
			{ "rds_uniform_Villager4", "", 500, { "", "", -1 } }
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
			{ "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_NB_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_tan_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_NB_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Glasses_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_tan_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Cig4", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig4", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_NB", "", 200, { "", "", -1 } },		
			{ "EWK_Shemag_LULZ", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_GRE", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_tan", "", 200, { "", "", -1 } }	
		};
        vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 5000, { "", "", -1 } },
            { "V_BandollierB_khk", "", 5000, { "", "", -1 } },
            { "V_BandollierB_rgr", "", 5000, { "", "", -1 } },
            { "V_BandollierB_blk", "", 5000, { "", "", -1 } },
			{ "V_BandollierB_oli", "", 5000, { "", "", -1 } },
			{ "V_Rangemaster_belt", "", 4000, { "", "", -1 } }
		};
        backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "B_Parachute", "", 1000, { "", "", -1 } },
			{ "CUP_B_SLA_Medicbag", "", 400, { "", "", -1 } },
			{ "CUP_B_AlicePack_Khaki", "", 500, { "", "", -1 } },
			{ "CUP_B_CivPack_WDL", "", 500, { "", "", -1 } },
			{ "B_FieldPack_cbr", "", 1000, { "", "", -1 } },
			{ "B_FieldPack_khk", "", 1000, { "", "", -1 } },
			{ "B_FieldPack_blk", "", 1000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_DC", "Sac DC", 5000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_terminator", "Sac Terminator", 5000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_monster", "Sac Monster", 5000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_backpack_superman", "Sac Superman", 5000, { "", "", -1 } },
			{ "ALFR_Civ_Bags_Nitrado", "", 5000, { "", "", -1 } },
			{ "B_Carryall_oli", "", 3000, { "", "", -1 } },
			{ "B_Carryall_cbr", "", 3000, { "", "", -1 } },
			{ "B_Carryall_khk", "", 3000, { "", "", -1 } },
			{ "TRYK_B_Carryall_blk", "", 3000, { "", "", -1 } },
            { "B_Bergen_hex_F", "", 10000, { "", "", -1 } },
            { "B_Bergen_mcamo_F", "", 10000, { "", "", -1 } },
            { "B_Bergen_dgtl_F", "", 10000, { "", "", -1 } },
            { "B_Bergen_tna_F", "", 10000, { "", "", -1 } }    
		};
    };

    class cop {
        title = "STR_Shops_C_Police";
        license = "";
        side = "cop";
        uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
			{ "hightline_gendarmerie_gilet", "Gilet Jaune", 1500, { "", "", -1 } },
			{ "hightline_gendarmerie_03", "Tenue Gendarme", 1500, { "", "", -1 } },
			{ "hightline_gendarmerie_04", "Tenue Motard", 1500, { "life_coplevel", "SCALAR", 4 } },
            { "hightline_gendarmerie_02", "Tenue Officier de Gendarmerie", 1500, { "life_coplevel", "SCALAR", 6 } },
            { "U_B_Wetsuit", "", 1500, { "", "", -1 } },
			{ "U_B_JaKdo_PCU_kryptek", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_B_JaKdo_PCU_kryptek_hood", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_B_JaKdo_PCU_Oliv", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_B_JaKdo_PCU_oliv_hood", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_B_JaKdo_PCU_winter", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_B_JaKdo_PCU_winter_hood", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_PMC_CombatUniformRS_SSBPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_PMC_BluPolo_GrnPants", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
			{ "U_PMC_WhtPolo_BluPants", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_GTShirt_SJeans", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_BlkTShirt_DJeans", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_BlackPoloShirt_BeigeCords", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_CombatUniformLS_SSGPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_CombatUniformLS_ChckDBS_GPSB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_CombatUniformLS_ChckP_BPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_CombatUniformRS_BSGPSB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } },
            { "U_PMC_CombatUniformRS_GSSPBB", "Tenue BAC", 1500, { "life_coplevel", "SCALAR", 5 } }
		};
        headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
            { "hightline_gendarmerie_cap_01", "Casquette de Gendarmerie", 100, { "", "", -1 } },
            { "ALE_H_Calot", "Calot de Gendarmerie", 100, { "", "", -1 } },
			{ "H_MilCap_gen_F", "", 200, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 200, { "", "", -1 } },
			//{ "H_Beret_blk", "", 200, { "life_coplevel", "SCALAR", 2 } },
            { "H_PilotHelmetHeli_O", "Casque Heli BAC", 200, { "life_coplevel", "SCALAR", 3 } },
            { "H_PilotHelmetHeli_B", "", 200, { "life_coplevel", "SCALAR", 1 } },
            { "ALFR_Beret_Brigadier", "", 200, { "life_coplevel", "SCALAR", 2 } },
            { "ALFR_Beret_BrigadierChef", "", 200, { "life_coplevel", "SCALAR", 3 } },
            { "ALFR_Beret_Adjudant", "", 200, { "life_coplevel", "SCALAR", 4 } },
            { "ALFR_Beret_AdjudantChef", "", 200, { "life_coplevel", "SCALAR", 5 } },
            { "ALFR_Beret_Major", "", 200, { "life_coplevel", "SCALAR", 6 } },
            { "ALFR_Beret_Lieutenant", "", 200, { "life_coplevel", "SCALAR", 7 } },
            { "ALFR_Beret_Capitaine", "", 200, { "life_coplevel", "SCALAR", 8 } },
			//{ "H_Beret_C", "", 200, { "life_coplevel", "SCALAR", 3 } },
            //{ "H_Beret_02", "", 200, { "life_coplevel", "SCALAR", 4 } },
            //{ "H_Beret_B", "", 200, { "life_coplevel", "SCALAR", 5 } },
            { "H_Beret_Colonel", "", 200, { "life_coplevel", "SCALAR", 8 } }
        };
        goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
			{ "G_Shades_Black", "", 50, { "", "", -1 } },
			{ "G_Shades_Blue", "", 50, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 50, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 50, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 50, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 50, { "", "", -1 } },
			{ "G_Squares", "", 50, { "", "", -1 } },
			{ "G_Aviator", "", 50, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 50, { "", "", -1 } },
			{ "G_Lady_Dark", "", 50, { "", "", -1 } },
			{ "G_Lady_Blue", "", 50, { "", "", -1 } },
			{ "G_Lowprofile", "", 50, { "", "", -1 } },
			{ "G_Combat", "", 50, { "", "", -1 } },
            { "G_B_Diving", "", 50, { "", "", -1 } },
			{ "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } }
        };
        vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
			{ "V_Gendarmes_GiletJaune", "", 1000, { "", "", -1 } },
			{ "V_TacVest_blk_POLICE", "", 1000, { "", "", -1 } },
			{ "V_Police_light", "", 1000, { "", "", -1 } },
			{ "V_Police_medium", "", 1000, { "life_coplevel", "SCALAR", 2 } },
            { "V_Police_heavy", "", 1000, { "life_coplevel", "SCALAR", 3 } },
            { "V_RebreatherB", "", 1000, { "", "", -1 } }
        };
        backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "ALFR_Police_Bags", "", 5000, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 10000, { "life_coplevel", "SCALAR", 6 } }
        };
    };
    
    class armeeclothing {
		title = "Vestiaire de l'Armée";
		license = "armee";
		side = "cop";
		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "R3F_uniform_f1", "", 1250, { "", "", -1 } },
			{ "R3F_uniform_apso", "", 1250, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "R3F_casque_spectra", "", 100, { "", "", -1 } },
			{ "R3F_chapeaubrousse_CE", "", 100, { "life_coplevel", "SCALAR", 2 } },
			{ "R3F_casquette_off", "", 100, { "life_coplevel", "SCALAR", 2 } },
			{ "R3F_beret_para", "", 100, { "life_coplevel", "SCALAR", 3 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
			{ "R3F_cagoule_punisher", "", 125, { "", "", -1 } },
			{ "R3F_cagoule_olive", "", 125, { "", "", -1 } },
			{ "G_Aviator", "", 125, { "life_coplevel", "SCALAR", 2 } },
			{ "G_Squares_Tinted", "", 125, { "life_coplevel", "SCALAR", 2 } },
			{ "G_Spectacles_Tinted", "", 125, { "life_coplevel", "SCALAR", 3 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "R3F_veste_ce600", "", 1250, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 10000, { "life_coplevel", "SCALAR", 3 } },
			{ "R3F_sac_moyen_CE", "", 5000, { "", "", -1 } }
		};
	};

    class dive {
        title = "STR_Shops_C_Diving";
        license = "dive";
        side = "civ";
        uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 2000, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } }
        };
        goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } },
			{ "G_Diving", "", 500, { "", "", -1 } }
        };
        vests[] = {
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 5000, { "", "", -1 } }
        };
        backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } }
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        license = "gun";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprime uniforme", 0, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprime couvre-chef", 0, { "", "", -1 } }
        };
        goggles[] = {
            { "NONE", "Supprime lunette", 0, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_Rangemaster_belt", "", 1500, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprime sac", 0, { "", "", -1 } }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        license = "";
        side = "med";
        uniforms[] = {
            { "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
            { "U_B_Wetsuit", "Tenue Plongée", 1500, { "", "", -1 } },
            { "U_Pompiers_TenueIntervention", "Tenue Intervention", 1500, { "", "", -1 } },
            { "U_Pompiers_Uniforme", "Uniforme Pompiers", 1500, { "", "", -1 } },
            { "U_Pompiers_Pilote", "Tenue Pilote Pompiers", 1500, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
            { "H_Pompiers_CasqueHelico", "", 100, { "", "", -1 } }
        };
        goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
			{ "G_Diving", "Lunettes Plongée", 50, { "", "", -1 } },
			{ "G_Shades_Black", "", 50, { "", "", -1 } },
			{ "G_Shades_Blue", "", 50, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 50, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 50, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 50, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 50, { "", "", -1 } },
			{ "G_Squares", "", 50, { "", "", -1 } },
			{ "G_Aviator", "", 50, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 50, { "", "", -1 } },
			{ "G_Lady_Dark", "", 50, { "", "", -1 } },
			{ "G_Lady_Blue", "", 50, { "", "", -1 } },
			{ "G_Lowprofile", "", 50, { "", "", -1 } },
			{ "G_Combat", "", 50, { "", "", -1 } },
            { "G_B_Diving", "", 50, { "", "", -1 } },
			{ "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } }	
        };
        vests[] = {
            { "NONE", "Supprimer gilet", 0, { "", "", -1 } },
            { "V_RebreatherB", "Recycleur", 5000, { "", "", -1 } },
            { "V_Pompiers_GiletMedecin", "Gilet Medecin (OP ONLY)", 5000, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimer sac", 0, { "", "", -1 } },
            { "ALFR_Police_Backpack", "Sac à dos Invisible", 5000, { "", "", -1 } }
        };
    };

    //Shop Gangster
    /*class gangster {
		title = "La boutique du Parrain";
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
            { "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
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
			{ "G_Balaclava_oli", "", 200, {"", "", -1} },
			{ "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_NB_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_tan_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_NB_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Glasses_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_tan_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Cig4", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig4", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_NB", "", 200, { "", "", -1 } },		
			{ "EWK_Shemag_LULZ", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_GRE", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_tan", "", 200, { "", "", -1 } }	
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
			{ "B_Parachute", "", 200, { "", "", -1 } },
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
    */
	
    //Shop Rebelle
    class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
            { "U_O_SpecopsUniform_ocamo", "", 8000, {"", "", -1} },
            { "U_O_CombatUniform_oucamo", "", 8000, {"", "", -1} },
            { "U_O_PilotCoveralls", "", 8000, {"", "", -1} },
            { "U_IG_leader", "Guerilla Leader", 8000, {"", "", -1} },
			{ "U_I_OfficerUniform", "", 8000, {"", "", -1} },
            { "U_I_CombatUniform", "", 8000, {"", "", -1} },
            { "U_CombatUniFatigue_A", "Tenue digital black", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_B", "Tenue insurge noire", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_G", "Tenue insurge noire et marron", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_D", "Tenue insurge noire et vert", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_E", "Tenue insurge tigre", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_F", "Tenue insurge tigre noire", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_A", "Tenue insurge woodland", 15000, {"", "", -1} },
            { "U_MilitiaUniTShirt_C", "Tenue insurge woodland noire", 15000, {"", "", -1} },
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
            { "U_TerrorCombat_A", "Tenue terroriste 1", 60000, {"", "", -1} },
            { "U_TerrorCombat_B", "Tenue terroriste 2", 60000, {"", "", -1} },
            { "U_TerrorCombat_Black", "Tenue terroriste 3", 60000, {"", "", -1} },
            { "U_GhillieSuit_A", "Ghillie Suit 1", 65000, {"", "", -1} },
            { "U_GhillieSuit_B", "Ghillie Suit 2", 65000, {"", "", -1} },
            { "U_GhillieSuit_C", "Ghillie Suit 3", 65000, {"", "", -1} },
            { "U_GhillieSuit_D", "Ghillie Suit 4", 65000, {"", "", -1} },
            { "U_GhillieSuit_E", "Ghillie Suit 5", 65000, {"", "", -1} },
            { "U_GhillieSuit_F", "Ghillie Suit 6", 65000, {"", "", -1} },
            { "U_I_FullGhillie_ard", "Ghillie MarksMen 1", 80000, {"", "", -1} },
            { "U_O_FullGhillie_ard", "Ghillie MarksMen 2", 80000, {"", "", -1} },
            { "U_B_FullGhillie_ard", "Ghillie MarksMen 3", 80000, {"", "", -1} },
            { "U_I_FullGhillie_lsh", "Ghillie MarksMen 4", 80000, {"", "", -1} },
            { "U_O_FullGhillie_lsh", "Ghillie MarksMen 5", 80000, {"", "", -1} },
            { "U_B_FullGhillie_lsh", "Ghillie MarksMen 6", 80000, {"", "", -1} },
            { "U_I_FullGhillie_sard", "Ghillie MarksMen 7", 80000, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 8", 80000, {"", "", -1} },
            { "U_O_FullGhillie_sard", "Ghillie MarksMen 9", 80000, {"", "", -1} },
            { "U_O_GhillieSuit", "", 65000, {"", "", -1} },
            { "U_I_GhillieSuit", "", 65000, {"", "", -1} }
		};

		headgear[] = {
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
			{ "H_ShemagOpen_tan", "", 500, {"", "", -1} },
			{ "H_Shemag_olive", "", 500, {"", "", -1} },
			{ "H_ShemagOpen_khk", "", 500, {"", "", -1} },
			{ "H_Shemag_tan", "", 500, {"", "", -1} },
			{ "H_Shemag_olive_hs", "", 500, {"", "", -1} },
			{ "H_HelmetO_ocamo", "", 500, {"", "", -1} },
			{ "H_MilCap_oucamo", "", 500, {"", "", -1} },
			{ "H_HelmetCrew_I", "", 500, {"", "", -1} },
			{ "H_Hat_HelmetR", "", 500, {"", "", -1} },
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
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
			{ "H_Hat_Cap_Thai", "", 500, { "", "", -1 } },
			{ "rds_police_cap", "", 500, { "", "", -1 } },
			{ "H_Hat_Ushanka", "", 500, { "", "", -1 } },
			{ "H_HelmetB_camo", "", 500, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } },
            { "V_BombJacket", "Veste Explosive", 90000, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } }
		};
	};

    // SHOP ENTREPRISE AAN
	class aan {
		title = "Vestiaire AAN";
		license = "aan";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
			{ "U_C_Journalist", "", 150, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 50, { "", "", -1 } },
			{ "H_Cap_press", "", 100, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } },
			{ "V_BandollierB_blk", "", 250, { "", "", -1 } },
			{ "V_Press_F", "", 1000, { "", "", -1 } }			
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } },
			{ "CUP_B_AssaultPack_Black", "", 500, { "", "", -1 } }
		};
	};
    
    // SHOP ENTREPRISE Dépannage 
    class depan {
		title = "Vestiaire Dépanneur";
		license = "depan";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
			{ "ALE_RsDep", "", 1500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
			{ "H_Bandanna_cbr", "", 50, { "", "", -1 } },
			{ "H_Bandanna_gry", "", 100, { "", "", -1 } },
            { "H_Watchcap_cbr", "", 200, { "", "", -1 } },
			{ "H_Watchcap_camo", "", 200, { "", "", -1 } },
			{ "H_Watchcap_blk", "", 200, { "", "", -1 } },
			{ "H_Watchcap_khk", "", 200, { "", "", -1 } },
			{ "H_CrewHelmetHeli_B", "", 200, { "", "", -1 } },
			{ "H_PilotHelmetHeli_B", "", 200, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 200, { "", "", -1 } },
			{ "H_Cap_oli_hs", "", 200, { "", "", -1 } },
			{ "H_Cap_marshal", "", 200, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 200, { "", "", -1 } },
			{ "H_Cap_red", "", 200, { "", "", -1 } },
            { "H_Hat_Headphones", "", 200, { "", "", -1 } },
			{ "H_Cap_headphones", "", 200, { "", "", -1 } },
            { "H_Cap_pmc_headphones", "", 200, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } },
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
            { "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_NB_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Shemag_tan_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_NB_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Glasses_Shemag_GRE_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Shemag_tan_Cig6", "", 200, { "", "", -1 } },	
			{ "EWK_Cig4", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig4", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_NB", "", 200, { "", "", -1 } },		
			{ "EWK_Shemag_LULZ", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_GRE", "", 200, { "", "", -1 } },	
			{ "EWK_Shemag_tan", "", 200, { "", "", -1 } },
            { "Mask_M40", "Masque a Gaz", 250, {"", "", -1} }           
		};

		vests[] = {
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } },
			{ "V_BandollierB_blk", "", 250, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } },
			{ "TRYK_B_Kitbag_Base", "", 500, { "", "", -1 } }
		};
	};	

    //Shop Entreprise ION
    class ion {
		title = "Vestiaire ION";
		license = "ion";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
            { "U_Competitor", "Tenue ION", 1000, {"", "", -1} },
            { "U_Coveralls_B", "Tenue Ouvrier ION", 1000, {"", "", -1} },
			{ "ALE_Worker", "Tenue Ouvrier ION 2", 1000, {"", "", -1} },
            { "U_CivilianSuit_A", "Tenue Patron Noir", 2000, {"", "", -1} },
            { "U_CivilianSuit_C", "Tenue Patron Bleu", 2000, {"", "", -1} },
			{ "U_Office_A", "Tenue Patron été", 2000, {"", "", -1} }
		};

		headgear[] = {
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
            { "H_Cap_blk_ION", "Casquette ION", 500, {"", "", -1} }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } },
            { "V_BandollierB_blk", "Sac Noir ION", 200, {"", "", -1} },
            { "V_Chestrig_blk", "Sac Noir ION", 500, {"", "", -1} }
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } },
            { "TRYK_B_Carryall_blk", "Sac Noir ION", 2500, {"", "", -1} }
		};
	};
	
    //SHOP ENTREPRISE ALTISFLY
    class altisfly {
		title = "Vestiaire AltisFly";
		license = "altisfly";
		side = "civ";
		uniforms[] = {
			{ "NONE", "Supprime uniforme", 0, { "", "", -1 } },
			{ "U_Office_B", "", 1500, { "", "", -1 } },
            { "U_CivilianPilot_A", "", 1500, { "", "", -1 } },
            { "U_B_PilotCoveralls", "", 1500, { "", "", -1 } },
            { "U_I_pilotCoveralls", "", 1500, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 250, { "", "", -1 } },
            { "H_Cap_pmc_headphones", "", 250, { "", "", -1 } },
            { "H_CrewHelmetHeli_B", "", 250, { "", "", -1 } },
            { "H_CrewHelmetHeli_O", "", 250, { "", "", -1 } },
            { "H_PilotHelmetFighter_B", "", 250, { "", "", -1 } },
            { "H_PilotHelmetFighter_O", "", 250, { "", "", -1 } },
            { "H_Cap_marshal", "", 250, { "", "", -1 } },
            { "H_Hat_Headphones", "", 250, { "", "", -1 } },
            { "H_Cap_headphones", "", 250, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprime lunette", 0, { "", "", -1 } },
            { "G_Aviator", "", 50, { "", "", -1 } },
            { "EWK_Cigar1", "", 200, { "", "", -1 } },
			{ "EWK_Cigar2", "", 200, { "", "", -1 } },
			{ "EWK_Cig6", "", 200, { "", "", -1 } },
			{ "EWK_Glasses_Cig6", "", 200, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprime gilet", 0, { "", "", -1 } }	
		};

		backpacks[] = {
			{ "NONE", "Supprime sac", 0, { "", "", -1 } },
			{ "TRYK_B_Kitbag_blk", "", 5000, { "", "", -1 } },
            { "B_Parachute", "", 5000, { "", "", -1 } },
            { "B_Carryall_cbr", "", 5000, { "", "", -1 } },
            { "B_Carryall_oli", "", 5000, { "", "", -1 } }            
		};
	};	

    //Shop Femme
    /*class girl {
		title = "Vestiaire Féminin";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
            { "O_FEM_CSAT", "Tenue Femme CSAT(T-Shirt)", 1000, {"", "", -1} },
            { "O_FEM_CSAT_Long", "Tenue Femme CSAT(Manche longue)", 1000, {"", "", -1} },
            { "O_FEM_CSAT_Rolled", "Tenue Femme CSAT(Manche courte)", 1000, {"", "", -1} },
            { "I_FEM_AAF", "Tenue Femme AAF(T-Shirt)", 1000, {"", "", -1} },
            { "I_FEM_AAF_long", "Tenue Femme AAF(Manche longue)", 1000, {"", "", -1} },
            { "B_FEM_AAF_Rolled", "Tenue Femme AAF(Manche courte)", 1000, {"", "", -1} },
            { "B_FEM_FIA", "Tenue Femme CIVIL (T-Shirt)", 1000, {"", "", -1} },
            { "B_FEM_NATO", "Tenue Femme NATO (complète)", 1000, {"", "", -1} },
            { "B_FEM_NATO_long", "Tenue Femme NATO (T-Shirt)", 1000, {"", "", -1} },
            { "B_FEM_NATO_Collar", "Tenue Femme NATO (Manche longue)", 1000, {"", "", -1} },
            { "B_FEM_NATO_Rolled", "Tenue Femme NATO (Manche courte)", 1000, {"", "", -1} }			
		};

		headgear[] = {
			{ "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } }
		};
	};*/

    class kart {
        title = "STR_Shops_C_Kart";
        license = "";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprimer uniforme", 0, { "", "", -1 } },
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
            { "NONE", "Supprimer couvre-chef", 0, { "", "", -1 } },
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
            { "NONE", "Supprimer lunette", 0, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimer gilet", 0, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimer sac", 0, { "", "", -1 } }
        };
    };

	class mask {
		title = "STR_Shops_C_Mask";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "NONE", "Supprimer uniforme", 0, { "", "", -1 } }
		};

		headgear[] = {
			{ "NONE", "Supprime couvre-chef", 0, { "", "", -1 } },
			{ "H_ALFR_Headset", "", 1200, { "", "", -1 } },
			{ "H_ALFR_PaintballMsk", "", 2000, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_blk", "", 3000, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_oli", "", 3000, { "", "", -1 } },	
			{ "H_ALFR_Metal_Gasmask_RU_grey", "", 3000, { "", "", -1 } },
			{ "H_ALFR_Metal_Gasmask_RU_khk", "", 3000, { "", "", -1 } },
			{ "H_ALFR_Metal_Gasmask_RU_fuckyou", "", 3000, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 3500, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_blk", "", 4000, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_oli", "", 4000, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_sand", "", 4000, { "", "", -1 } },
			{ "H_ALFR_Metal_Facemask_gry", "", 4000, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_1", "", 5000, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_2", "", 5000, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_3", "", 5000, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_4", "", 5000, { "", "", -1 } },
			{ "H_ALFR_Heist_Mask_5", "", 5000, { "", "", -1 } },	
			{ "H_ALFR_Heist_Mask_6", "", 5000, { "", "", -1 } },	
			{ "H_ALFR_Heist_Mask_7", "", 5000, { "", "", -1 } },	
			{ "H_ALFR_Samurai_Mask", "", 7000, { "", "", -1 } },	
			{ "H_ALFR_Sheep_Mask", "", 7000, { "", "", -1 } },	
			{ "H_ALFR_Dallas_Mask", "", 7000, { "", "", -1 } },
			{ "H_ALFR_DinoMask", "", 9000, { "", "", -1 } },
			{ "H_ALFR_HorseMask", "", 10000, { "", "", -1 } },	
			{ "H_ALFR_HorseMask_2", "", 10500, { "", "", -1 } },	
			{ "H_ALFR_HorseMask_blk", "", 10500, { "", "", -1 } },
			{ "H_ALFR_HorseMask_pnk", "", 10500, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_I", "", 5000, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_II", "", 7500, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_III", "", 10500, { "", "", -1 } },	
			{ "H_ALFR_OVERKILL_IV", "", 20000, { "", "", -1 } },
			{ "kio_skl_msk_grn", "", 800, { "", "", -1 } },
			{ "kio_skl_msk_red", "", 800, { "", "", -1 } },
			{ "kio_skl_msk", "", 800, { "", "", -1 } }
		};

		goggles[] = {
			{ "NONE", "Supprimer lunette", 0, { "", "", -1 } }
		};

		vests[] = {
			{ "NONE", "Supprimer gilet", 0, { "", "", -1 } }
		};

		backpacks[] = {
			{ "NONE", "Supprimer sac", 0, { "", "", -1 } }
		};
    };
};
