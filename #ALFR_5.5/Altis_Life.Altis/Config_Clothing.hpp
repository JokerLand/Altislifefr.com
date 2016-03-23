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
            { "rds_uniform_priest", "Tenue de prêtre", 200, { "", "", -1 } },
            { "U_OrestesBody", "Surfing On Land", 200, { "", "", -1 } },
            { "U_Marshal", "Tenue Chauffeur de Bus", 200, { "", "", -1 } },
            { "rds_uniform_Functionary2", "Costard cravate bleu", 200, { "", "", -1 } },
            { "rds_uniform_Functionary1", "Costard cravate rouge", 200, { "", "", -1 } },
            { "U_NikosAgedBody", "Costard cravate", 200, { "", "", -1 } },
            { "ALE_CivilObey", "T-Shirt Obey & Short Noir", 200, { "", "", -1 } },
            { "ALE_CivilAveng", "T-Shirt Bleu Avengers", 200, { "", "", -1 } },
            { "ALE_CivilSkull", "T-Shirt Tête de mort", 200, { "", "", -1 } },
            { "ALE_CivilLacoste_B", "Polo Lacoste Blanc", 200, { "", "", -1 } },
            { "ALE_CivilLacoste_Bl", "Polo Lacoste Bleu", 200, { "", "", -1 } },
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
 			{ "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } },
            { "H_Cap_red", "", 200, { "", "", -1 } },
            { "H_Cap_blu", "", 200, { "", "", -1 } },
            { "H_Cap_oli", "", 200, { "", "", -1 } },
            { "H_Cap_grn", "", 200, { "", "", -1 } },
            { "H_Cap_tan", "", 200, { "", "", -1 } },
            { "H_Cap_blk", "", 200, { "", "", -1 } },
            { "H_Cap_blk_CMMG", "", 200, { "", "", -1 } },
            { "H_Cap_surfer", "", 200, { "", "", -1 } },
            { "H_Capbw_tan_pmc", "", 200, { "", "", -1 } },
            { "H_Capbw_pmc", "", 200, { "", "", -1 } },
            { "H_BoonieHat_grn", "", 200, { "", "", -1 } },
            { "H_BoonieHat_tan", "", 200, { "", "", -1 } },
            { "H_BoonieHat_dirty", "", 200, { "", "", -1 } },
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
 			{ "NONE", "Supprimé lunette", 0, { "", "", -1 } },
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
 			{ "NONE", "Supprimé gilet", 0, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 200, { "", "", -1 } },
            { "V_BandollierB_khk", "", 200, { "", "", -1 } },
            { "V_BandollierB_rgr", "", 200, { "", "", -1 } },
            { "V_BandollierB_blk", "", 200, { "", "", -1 } }
		};
        backpacks[] = {
			{ "NONE", "Supprimé sac", 0, { "", "", -1 } },
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
 			{ "NONE", "Supprimé uniforme", 0, { "", "", -1 } },
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
 			{ "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } },
			{ "H_MilCap_blue", "", 20, { "", "", -1 } },
			{ "H_ALFR_Gasmask", "", 20, { "", "", -1 } },
			{ "H_Beret_blk", "", 20, { "life_coplevel", "SCALAR", 2 } },
            { "H_PilotHelmetHeli_B", "", 20, { "life_coplevel", "SCALAR", 2 } },
            { "H_PilotHelmetHeli_O", "", 20, { "life_coplevel", "SCALAR", 3 } },
			{ "H_Beret_C", "", 20, { "life_coplevel", "SCALAR", 3 } },
            { "H_Beret_02", "", 20, { "life_coplevel", "SCALAR", 4 } },
            { "H_Beret_B", "", 20, { "life_coplevel", "SCALAR", 5 } },
            { "H_Beret_Colonel", "", 20, { "life_coplevel", "SCALAR", 6 } }
        };
        goggles[] = {
 			{ "NONE", "Supprimé lunette", 0, { "", "", -1 } },
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
			{ "NONE", "Supprimé gilet", 0, { "", "", -1 } },
			{ "V_TacVest_blk_POLICE", "", 125, { "", "", -1 } },
			{ "V_Police_light", "", 125, { "", "", 1 } },
			{ "V_Police_medium", "", 125, { "", "", 1 } },
            { "V_Police_heavy", "", 125, { "life_coplevel", "SCALAR", 2 } },
            { "V_RebreatherB", "", 125, { "", "", -1 } }
        };
        backpacks[] = {
			{ "NONE", "Supprimé sac", 0, { "", "", -1 } },
			{ "ALFR_Police_Backpack", "", 50, { "", "", -1 } },
			{ "ALFR_Police_Bags", "", 50, { "", "", -1 } },
			{ "B_UAV_01_backpack_F", "", 2500, { "life_coplevel", "SCALAR", 4 } }
        };
    };

    class dive {
        title = "STR_Shops_C_Diving";
        license = "dive";
        side = "civ";
        uniforms[] = {
			{ "NONE", "Supprimé uniforme", 0, { "", "", -1 } },
			{ "U_B_Wetsuit", "", 500, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } }
        };
        goggles[] = {
			{ "NONE", "Supprimé lunette", 0, { "", "", -1 } },
			{ "G_Diving", "", 150, { "", "", -1 } }
        };
        vests[] = {
			{ "NONE", "Supprimé gilet", 0, { "", "", -1 } },
			{ "V_RebreatherB", "", 600, { "", "", -1 } }
        };
        backpacks[] = {
			{ "NONE", "Supprimé sac", 0, { "", "", -1 } }
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        license = "gun";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprimé uniforme", 0, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } }
        };
        goggles[] = {
            { "NONE", "Supprimé lunette", 0, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimé gilet", 0, { "", "", -1 } },
            { "V_Rangemaster_belt", "", 1000, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimé sac", 0, { "", "", -1 } }
        };
    };

    class gang_clothing {
        title = "STR_Shops_C_Gang";
        license = "";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprimé uniforme", 0, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } }
        };
        goggles[] = {
            { "NONE", "Supprimé lunette", 0, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimé gilet", 0, { "", "", -1 } },
            { "V_Rangemaster_belt", "", 1000, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimé sac", 0, { "", "", -1 } }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        license = "";
        side = "med";
        uniforms[] = {
            { "NONE", "Supprimé uniforme", 0, { "", "", -1 } },
            { "U_Rangemaster", "Uniforme Medecin", 50, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } },
            { "H_Cap_blu", "", 10, { "", "", -1 } }
        };
        goggles[] = {
            { "NONE", "Supprimé lunette", 0, { "", "", -1 } },
            { "G_Shades_Blue", "", 10, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimé gilet", 0, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimé sac", 0, { "", "", -1 } },
            { "ALFR_Police_Backpack", "Sac à dos Invisible", 100, { "", "", -1 } }
        };
    };

    class reb {
        title = "STR_Shops_C_Rebel";
        license = "rebel";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprimé uniforme", 0, { "", "", -1 } },
            { "U_IG_Guerilla1_1", "", 5000, {"", "", -1} },
            { "U_I_G_Story_Protagonist_F", "", 7500, { "", "", -1 } },
            { "U_I_G_resistanceLeader_F", "", 11500, { "", "", -1 } },
            { "U_O_SpecopsUniform_ocamo", "", 17500, { "", "", -1 } },
            { "U_O_PilotCoveralls", "", 15610, { "", "", -1 } },
            { "U_IG_leader", "Guerilla Leader", 15340, { "", "", -1 } },
            { "U_O_GhillieSuit", "", 50000, { "", "", -1 } }
        };
        headgear[] = {
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } },
            { "H_ShemagOpen_tan", "", 850, { "", "", -1 } },
            { "H_Shemag_olive", "", 850, { "", "", -1 } },
            { "H_ShemagOpen_khk", "", 800, { "", "", -1 } },
            { "H_HelmetO_ocamo", "", 2500, { "", "", -1 } },
            { "H_MilCap_oucamo", "", 1200, { "", "", -1 } },
            { "H_Bandanna_camo", "", 650, { "", "", -1 } }
        };
        goggles[] = {
            { "NONE", "Supprimé lunette", 0, { "", "", -1 } },
            { "G_Shades_Black", "", 25, { "", "", -1 } },
            { "G_Shades_Blue", "", 20, { "", "", -1 } },
            { "G_Sport_Blackred", "", 20, { "", "", -1 } },
            { "G_Sport_Checkered", "", 20, { "", "", -1 } },
            { "G_Sport_Blackyellow", "", 20, { "", "", -1 } },
            { "G_Sport_BlackWhite", "", 20, { "", "", -1 } },
            { "G_Squares", "", 10, { "", "", -1 } },
            { "G_Lowprofile", "", 30, { "", "", -1 } },
            { "G_Combat", "", 55, { "", "", -1 } },
            // BI
            { "G_Balaclava_blk", "", 150, { "", "", -1 } },
            { "G_Balaclava_combat", "", 150, { "", "", -1 } },
            { "G_Balaclava_lowprofile", "", 150, { "", "", -1 } },
            { "G_Balaclava_oli", "", 150, { "", "", -1 } },
            { "G_Bandanna_aviator", "", 150, { "", "", -1 } },
            { "G_Bandanna_beast", "", 150, { "", "", -1 } },
            { "G_Bandanna_blk", "", 150, { "", "", -1 } },
            { "G_Bandanna_khk", "", 150, { "", "", -1 } },
            { "G_Bandanna_oli", "", 150, { "", "", -1 } },
            { "G_Bandanna_shades", "", 150, { "", "", -1 } },
            { "G_Bandanna_sport", "", 150, { "", "", -1 } },
            { "G_Bandanna_tan", "", 150, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimé gilet", 0, { "", "", -1 } },
            { "V_TacVest_khk", "", 12500, { "", "", -1 } },
            { "V_BandollierB_cbr", "", 4500, { "", "", -1 } },
            { "V_HarnessO_brn", "", 7500, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimé sac", 0, { "", "", -1 } },
            { "B_AssaultPack_khk", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_dgtl", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_rgr", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_sgg", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_blk", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_cbr", "", 2000, { "", "", -1 } },
            { "B_AssaultPack_mcamo", "", 2000, { "", "", -1 } },
            { "B_TacticalPack_oli", "", 2500, { "", "", -1 } },
            { "B_Kitbag_mcamo", "", 3500, { "", "", -1 } },
            { "B_Kitbag_sgg", "", 3500, { "", "", -1 } },
            { "B_Kitbag_cbr", "", 3500, { "", "", -1 } },
            { "B_Bergen_sgg", "", 6500, { "", "", -1 } },
            { "B_Bergen_mcamo", "", 6500, { "", "", -1 } },
            { "B_Bergen_rgr", "", 6500, { "", "", -1 } },
            { "B_Bergen_blk", "", 6500, { "", "", -1 } },
            { "B_FieldPack_blk", "", 5000, { "", "", -1 } },
            { "B_FieldPack_ocamo", "", 5000, { "", "", -1 } },
            { "B_FieldPack_oucamo", "", 5000, { "", "", -1 } },
            { "B_Carryall_ocamo", "", 7500, { "", "", -1 } },
            { "B_Carryall_oucamo", "", 7500, { "", "", -1 } },
            { "B_Carryall_mcamo", "", 7500, { "", "", -1 } },
            { "B_Carryall_oli", "", 7500, { "", "", -1 } },
            { "B_Carryall_khk", "", 7500, { "", "", -1 } },
            { "B_Carryall_cbr", "", 7500, { "", "", -1 } },
            { "B_OutdoorPack_blk", "", 500, { "", "", -1 } }
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        license = "";
        side = "civ";
        uniforms[] = {
            { "NONE", "Supprimé uniforme", 0, { "", "", -1 } },
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
            { "NONE", "Supprimé couvre-chef", 0, { "", "", -1 } },
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
            { "NONE", "Supprimé lunette", 0, { "", "", -1 } }
        };
        vests[] = {
            { "NONE", "Supprimé gilet", 0, { "", "", -1 } }
        };
        backpacks[] = {
            { "NONE", "Supprimé sac", 0, { "", "", -1 } }
        };
    };
};
