class WeaponShops {
    //Armurerie Civil
    class gun {
        name = "Armurerie";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "Vous n'avez pas le permis de port d'arme";
        items[] = {
			// Arme de poing
			{ "hgun_Rook40_F", "", 8000 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "hgun_Pistol_heavy_01_F", "", 8000 },
            { "11Rnd_45ACP_Mag", "", 100 },	
			{ "hgun_ACPC2_F", "", 8000 },
            { "9Rnd_45ACP_Mag", "", 100 },
			{ "CUP_hgun_Duty" , "", 8000 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "CUP_hgun_Colt1911", "", 8000 },
            { "CUP_7Rnd_45ACP_1911", "", 100 },
			{ "CUP_hgun_TaurusTracker455", "", 8500 },
			{ "CUP_6Rnd_45ACP_M", "", 100 },		
			{ "CUP_hgun_M9", "", 9000 },
            { "CUP_15Rnd_9x19_M9", "", 100 },	
			{ "hgun_PDW2000_F", "", 15000 },
			{ "30Rnd_9x21_Mag", "", 100 },
			{ "C1987_MP7", "", 18000 },
			{ "C1987_20Rnd_46x30_mp7", "", 100 },
			{ "C1987_40Rnd_46x30_mp7", "", 250 },
			{ "arifle_SDAR_F" , "", 30000 },
			{ "20Rnd_556x45_UW_mag", "Chargeur SDAR sous-marin", 500 },		
			//	Viseur	
			{ "optic_MRD", "", 1000 },
			{ "optic_Yorris", "", 1000 },
			{ "C1987_zeiss_AIM", "", 1000 }
        };
    };
    //Shop Gangster
    class gangster {
        name = "Armurerie Ganster";
        side = "civ";
        license = "gangster";
        level = -1;
        msg = "Vous n'avez pas la license gangster";
        items[] = {
			{ "Rangefinder", "", 800 }, 
			// Arme de poing
			{ "hgun_Rook40_F", "", 8000 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "CUP_hgun_Makarov", "", 8000 },
            { "CUP_8Rnd_9x18_Makarov_M", "", 100 },
			{ "hgun_Pistol_heavy_01_F", "", 8000 },
            { "11Rnd_45ACP_Mag", "", 100 },	
			{ "hgun_ACPC2_F", "", 8000 },
            { "9Rnd_45ACP_Mag", "", 100 },	
			{ "CUP_hgun_Colt1911", "", 8000 },
            { "CUP_7Rnd_45ACP_1911", "", 100 },				
			{ "CUP_hgun_M9", "", 9000 },
            { "CUP_15Rnd_9x19_M9", "", 100 },
			{ "CUP_hgun_Compact", "", 9000 },
            { "CUP_10Rnd_9x19_Compact", "", 100 },
			{ "CUP_hgun_Phantom", "", 9000 },
            { "CUP_18Rnd_9x19_Phantom", "", 100 },
			{ "CUP_hgun_PB6P9", "", 9000 },
            { "CUP_8Rnd_9x18_Makarov_M", "", 100 },			
			{ "CUP_hgun_Glock17", "", 10000 },
            { "CUP_17Rnd_9x19_glock17", "", 100 },		
			{ "CUP_hgun_SA61", "", 12500 },
			{ "CUP_20Rnd_B_765x17_Ball_M", "", 100 },			
			{ "CUP_hgun_MicroUzi", "", 15000 },
			{ "CUP_30Rnd_9x19_UZI", "", 100 },
			//	Viseur pour arme de poing				
			{ "optic_MRD", "", 1000 },
			{ "optic_Yorris", "", 1000 },
			//	Arme à 2 mains
			{ "CUP_smg_bizon", "", 20000 },
			{ "CUP_64Rnd_9x19_Bizon_M", "", 100 },			
			{ "arifle_SDAR_F" , "", 25000 },
			{ "20Rnd_556x45_UW_mag", "", 100 },
			{ "CUP_smg_bizon", "", 20000 },
			{ "30Rnd_45ACP_Mag_SMG_01", "", 100 },
			{ "CUP_arifle_AK74", "", 40000 },
			{ "CUP_30Rnd_545x39_AK_M", "", 100 },
			//	VISEUR Arme à 2 mains		
			{ "CUP_optic_Kobra", "Kobra (AK74 et Bizon uniquement)", 1000 },
			{ "optic_ACO_grn", "", 1000 },			
			{ "optic_Aco", "", 1000 },
			{ "FHQ_optic_AC11704", "", 1000 },
			{ "FHQ_optic_AC11704_tan", "", 1000 },
			{ "FHQ_optic_AC12136", "", 1000 },
			{ "FHQ_optic_AC12136_tan", "", 1000 },
			{ "optic_Hamr", "", 1000 },
			{ "CUP_optic_MRad", "", 1000 },
			{ "CUP_optic_ZDDot", "", 1000 },
			{ "CUP_optic_TrijiconRx01_black", "", 1000 },	
			{ "CUP_optic_CompM4", "", 2500 },
			{ "optic_Arco", "", 2500 },
			{ "CUP_optic_HoloBlack", "", 2500 },
			{ "optic_Holosight", "", 2500 },	
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 2500 },	
			{ "CUP_optic_CompM2_Black", "", 2500 },
			{ "CUP_optic_ZDDot", "", 2500 },			
			{ "optic_MRCO", "", 2500 },			
			{ "CUP_optic_SUSAT", "", 2500 },
			{ "CUP_optic_ACOG", "", 2500 },	
			{ "CUP_optic_RCO", "", 2500 },
			{ "CUP_optic_PSO_1", "PSO 1 (AK74 et Bizon Uniquement)", 2500 },
			// Autres ...
            { "acc_flashlight", "", 500 },
            { "SmokeShellRed", "Fumigene rouge", 150 }			
        };
    };
    //Shop Rebelle
    class rebel {
        name = "Armurerie Rebelle";
        side = "civ";
        license = "rebel";
        level = -1;
        msg = "Vous n'avez pas la licence rebelle";
        items[] = {
			{ "Rangefinder", "", 1000 },
			// Arme de poing
            { "CUP_hgun_Makarov", "", 8000 },
            { "CUP_8Rnd_9x18_Makarov_M", "", 100 },
			{ "CUP_hgun_Glock17", "", 10000 },
            { "CUP_17Rnd_9x19_glock17", "", 100 },
			{ "CUP_hgun_SA61", "", 12500 },
			{ "CUP_20Rnd_B_765x17_Ball_M", "", 100 },						
			{ "CUP_hgun_MicroUzi", "", 15000 },
			{ "CUP_30Rnd_9x19_UZI", "", 100 },	
		    // Viseur arme de poing
			{ "optic_MRD", "", 1000 },
			// Arme à 2 mains
			{ "CUP_smg_bizon", "", 20000 },
			{ "CUP_64Rnd_9x19_Bizon_M", "", 100 },
			{ "CUP_arifle_Sa58P", "", 30000 },
			{ "CUP_arifle_Sa58V", "", 30000 },
			{ "CUP_arifle_Sa58P_des", "", 35000 },
			{ "CUP_arifle_Sa58V_camo", "", 35000 },	
			{ "CUP_30Rnd_Sa58_M", "", 100 },	
			{ "CUP_arifle_AKS74U", "", 40000 },
			{ "CUP_arifle_AKS74", "", 40000 },			
			{ "CUP_arifle_AK74", "", 40000 },			
			{ "CUP_arifle_AK74M", "", 40000 },
			{ "CUP_arifle_AK107", "", 50000 },			
			{ "CUP_30Rnd_545x39_AK_M", "", 100 },				
			{ "CUP_arifle_AK47", "", 50000 },
			{ "CUP_arifle_AKS", "", 50000 },
			{ "CUP_arifle_AKM", "", 50000 },
			{ "CUP_30Rnd_762x39_AK47_M", "", 100 },
			{ "CUP_srifle_LeeEnfield_rail", "", 50000 },
			{ "CUP_10x_303_M", "", 100 },
//			{ "CUP_arifle_M4A3_desert", "", 55000 },
//			{ "CUP_30Rnd_556x45_Stanag", "", 100 },
			{ "CUP_arifle_RPK74", "", 60000 },
			{ "CUP_arifle_RPK74_45", "", 60000 },	
			{ "CUP_arifle_RPK74M", "", 60000 },
			{ "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "", 100 },				
			{ "CUP_arifle_Sa58RIS1", "", 65000 },
			{ "CUP_arifle_Sa58RIS2", "", 65000 },
			{ "CUP_arifle_Sa58RIS1_des", "", 67500 },
			{ "CUP_arifle_Sa58RIS2_camo", "", 65700 },	
			{ "CUP_30Rnd_Sa58_M", "", 100 },
			{ "CUP_arifle_AKS_Gold" , "", 70000 },	
			{ "CUP_30Rnd_762x39_AK47_M", "", 100 },			
			{ "CUP_srifle_M24_wdl", "", 72500 },
			{ "CUP_srifle_M24_des", "", 72500 },
			{ "CUP_5Rnd_762x51_M24", "", 100 },
			{ "CUP_Mxx_camo_half", "", 500 },
			{ "CUP_Mxx_camo", "", 500 },
			{ "CUP_srifle_SVD", "", 75000 },
			{ "CUP_srifle_SVD_des", "", 77500 },
			{ "CUP_10Rnd_762x54_SVD_M", "", 100 },				
			{ "CUP_SVD_camo_g", "", 500 },
			{ "CUP_SVD_camo_d", "", 500 },
			{ "CUP_srifle_M14_DMR", "", 80000 },
			{ "CUP_20Rnd_762x51_DMR", "", 100 },
			{ "CUP_lmg_UK59", "", 80000 },
			{ "CUP_50Rnd_UK59_762x54R_Tracer", "", 100 },
			{ "CUP_lmg_PKM", "", 85000 },
			{ "CUP_lmg_Pecheneg", "", 87500 },
			{ "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "", 200 },
			{ "CUP_optic_PechenegScope", "Viseur PKP Pecheneg", 500 },
			{ "CUP_srifle_AWM_wdl", "", 90000 },
			{ "CUP_srifle_AWM_des", "", 90000 },
			{ "CUP_5Rnd_86x70_L115A1", "", 100 },	
			{ "CUP_srifle_ksvk", "", 110000 },
			{ "CUP_5Rnd_127x108_KSVK_M", "", 100 },	
			// Viseur arme à 2 mains
			{ "CUP_optic_Kobra", "", 500 },
			{ "CUP_optic_PSO_1", "", 1000 },
			{ "CUP_optic_PSO_3", "", 1000 },
			{ "optic_ACO_grn", "", 500 },			
			{ "optic_Aco", "", 500 },	
			{ "optic_Hamr", "", 500 },
			{ "CUP_optic_TrijiconRx01_black", "", 500 },
			{ "CUP_optic_TrijiconRx01_desert", "", 500 },				
			{ "CUP_optic_MRad", "", 500 },
			{ "CUP_optic_ZDDot", "", 500 },
			{ "optic_Arco", "", 1000 },
			{ "CUP_optic_ElcanM145", "", 1000 },
			{ "CUP_optic_CompM4", "", 1000 },
			{ "CUP_optic_HoloBlack", "", 1000 },
			{ "CUP_optic_HoloWdl", "", 1000 },
			{ "CUP_optic_HoloDesert", "", 1000 },			
			{ "optic_Holosight", "", 1000 },	
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 1000 },
			{ "CUP_optic_LeupoldMk4_10x40_LRT_Woodland", "", 1000 },	
			{ "CUP_optic_LeupoldMk4_10x40_LRT_Desert", "", 1000 },
			{ "CUP_optic_LeupoldM3LR", "", 1000 },
			{ "CUP_optic_LeupoldMk4_MRT_tan", "", 1000 },
			{ "CUP_optic_Leupold_VX3", "", 1000 },
			{ "CUP_optic_CompM2_Black", "", 1000 },
			{ "CUP_optic_CompM2_Desert", "", 1000 },
			{ "CUP_optic_CompM2_Woodland", "", 1000 },
			{ "CUP_optic_CompM2_Woodland2", "", 1000 },
			{ "CUP_optic_ELCAN_SpecterDR", "", 1000 },
			{ "CUP_optic_SB_11_4x20_PM", "", 1000 },
			{ "optic_MRCO", "", 1000 },
			{ "CUP_optic_SUSAT", "", 1000 },
			{ "CUP_optic_ACOG", "", 1000 },			
			{ "CUP_optic_RCO", "", 1000 },
			{ "CUP_optic_RCO_desert", "", 1000 },
			{ "optic_DMS", "", 1500 },
			{ "optic_SOS", "", 1500 },
			{ "optic_AMS", "", 2000 },
			{ "optic_AMS_khk", "", 2000 },
			{ "optic_AMS_snd", "", 2000 },
			{ "CUP_optic_SB_3_12x50_PMII", "", 2500 },			
			{ "optic_KHS_old", "", 2500 },
			{ "optic_KHS_tan", "", 3000 },
			{ "optic_KHS_hex", "", 3000 },
			{ "optic_KHS_blk", "", 3000 },
			{ "optic_LRPS", "", 3500 },
			{ "CUP_optic_LeupoldMk4", "", 3500 },
			// Autres ...
			{ "CUP_acc_ANPEQ_2_camo", "", 100 },
			{ "CUP_acc_ANPEQ_2_desert", "", 100 },
			{ "CUP_acc_ANPEQ_2_grey", "", 100 },
			{ "CUP_acc_Flashlight_wdl", "", 500 },
			{ "CUP_acc_Flashlight_desert", "", 500 },
			{ "CUP_acc_Flashlight", "", 500 },
            { "SmokeShellRed", "Fumigene rouge", 150 }
        };
    };
    //Shop Chef Rebelle
    class chefrebelle {
        name = "Armurerie Chef Rebelle";
        side = "civ";
        license = "chefrebelle";
        level = -1;
        msg = "Vous n'avez pas la licence Chef Rebelle";
        items[] = {
        	{ "CUP_srifle_VSSVintorez", "", 50000 },
			{ "CUP_20Rnd_9x39_SP5_VSS_M", "", 100 },
        	{ "CUP_srifle_M107_Base", "", 100000 },
			{ "CUP_10Rnd_127x99_M107", "", 250 },			
			{ "CUP_launch_RPG7V", "", 130000 },
			{ "CUP_TBG7V_M", "RPG7 Roquette Anti-Personnel", 15000 },
			{ "CUP_PG7VR_M", "RPG7 Roquette Anti-Matériel", 15000 }
        };
    };
    // Gang Hideout Armuerie
    class gang {
        name = "Réserve de la planque";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
			{ "Binocular", "", 15 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 50 },
			{ "NVGoggles", "", 50 },
			{ "FirstAidKit", "", 15 },
			{ "Chemlight_red", "", 5 },
			{ "Chemlight_yellow", "", 5 },
			{ "Chemlight_green", "", 5 },
			{ "Chemlight_blue", "", 5 },
            { "V_Rangemaster_belt", "", 90 }
        };
    };
    //Quincaillerie
    class genstore {
        name = "Quincaillerie";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 15 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 50 },
			{ "NVGoggles", "", 100 },
			{ "FirstAidKit", "", 15 },
			{ "Chemlight_red", "", 5 },
			{ "Chemlight_yellow", "", 5 },
			{ "Chemlight_green", "", 5 },
			{ "Chemlight_blue", "", 5 },
			{ "tf_anprc148jem", "Radio", 0 }
        };
    };
    //Quincaillerie Armee
    class armeestore {
        name = "Quincaillerie Armee";
        side = "armer";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 15 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 50 },
			{ "CUP_NVG_PVS7", "", 100 },
			{ "pmc_earpiece", "JVN (Officier)", 100 },
			{ "Rangefinder", "", 15 },	
			{ "FirstAidKit", "", 15 },
            { "O_UavTerminal", "Terminal", 15 },
			{ "tf_anprc152", "Radio", 0 }
        };
    };
    //Quincaillerie Police
    class copstore {
        name = "Quincaillerie Police";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 15 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 50 },
			{ "FirstAidKit", "", 15 },
			{ "pmc_earpiece", "", 100 },
			{ "Rangefinder", "", 15 },  
			{ "tf_anprc152", "Radio", 0 }
        };
    };
    //Armurerie policier
    class cop_policier {
        name = "Armurerie Policier";
        side = "cop";
        license = "";
        level = 1;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 }
        };
    };
    //Armurerie brigadier
    class cop_brigadier {
        name = "Armurerie Brigadier";
        side = "cop";
        license = "";
        level = 2;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
			{ "", "↓ Partie Brigadier-Chef ↓", 0 },	
            { "CUP_arifle_G36A", "G36A (Brigadier-Chef)", 1400 },
            { "CUP_arifle_G36C", "G36C (Brigadier-Chef)", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "L85A2 (Brigadier-Chef)", 1700 },
			{ "CUP_arifle_Mk16_CQC", "MK16 CQC (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "MK16 CQC FG (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_STD", "MK16 STD (Brigadier-Chef)", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "MK16 STD FG (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_Mk16_SV", "MK16 SV (Brigadier-Chef)", 2000 },
			{ "CUP_arifle_XM8_Railed", "XM8 (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "XM8 Compact (Brigadier-Chef)", 1800 },
			{ "CUP_srifle_Mk12SPR", "MK12SPR (Brigadier-Chef)", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 }			
        };
    };
    //Armurerie adjudant
    class cop_adjudant {
        name = "Armurerie Adjudant";
        side = "cop";
        license = "";
        level = 3;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_ElcanM145", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },	
			{ "CUP_optic_LeupoldM3LR", "", 100 },
			{ "CUP_optic_Leupold_VX3", "", 100 },
			{ "optic_KHS_old", "", 100 },
            { "optic_DMS", "", 100 },			
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
            { "CUP_arifle_G36A", "", 1400 },
            { "CUP_arifle_G36C", "", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "", 1700 },
			{ "CUP_arifle_Mk16_CQC", "", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "", 1750 },
			{ "CUP_arifle_Mk16_STD", "", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "", 1800 },
			{ "CUP_arifle_Mk16_SV", "", 2000 },
			{ "CUP_arifle_XM8_Railed", "", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "", 1800 },
			{ "CUP_srifle_Mk12SPR", "", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 },
            //Adj
            { "CUP_arifle_CZ805_B", "", 2500 },
            { "CUP_20Rnd_762x51_CZ805B", "", 15 },
            { "CUP_arifle_FNFAL_railed", "", 2500 },
            { "CUP_20Rnd_762x51_FNFAL_M", "", 15 },	
            { "CUP_srifle_M14", "", 2600 },
            { "CUP_20Rnd_762x51_DMR", "", 15 },				
            { "CUP_arifle_Mk17_STD", "", 2750 },
            { "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            //Adj-Chef
            { "", "↓ Partie Adjudant-Chef ↓", 0 },			
            { "CUP_arifle_Mk17_STD_FG", "MK17 STD FG (Adjudant-Chef)", 2800 },
			{ "CUP_arifle_Mk17_CQC", "MK17 CQC (Adjudant-Chef)", 2800 },
            { "CUP_arifle_Mk20", "MK20 (Adjudant-Chef)", 2800 },	
			{ "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            { "CUP_arifle_xm8_SAW", "XM8 SAW (Adjudant-Chef)", 3000 },
            { "CUP_100Rnd_556x45_BetaCMag", "", 15 },				
            { "CUP_lmg_M249_E2", "M249 (Adj-Chef/PA et OP uniquement)", 3500 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },
            { "CUP_srifle_CZ750", "CZ750 (Adjudant-Chef)", 3000 },
            { "CUP_10Rnd_762x51_CZ750", "", 15 },
			{ "optic_AMS", "AMS (Adjudant-Chef)", 100 },	
			{ "optic_LRPS", "LRPS (Adjudant-Chef)", 100 },
            { "SmokeShellGreen", "Grenade Lacrymogène (Adjudant-Chef)", 100 }
        };
    };
    //Armurerie major
    class cop_major {
        name = "Armurerie Major";
        side = "cop";
        license = "";
        level = 4;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_ElcanM145", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },
			{ "CUP_optic_LeupoldMk4", "", 100 },	
			{ "CUP_optic_LeupoldM3LR", "", 100 },
			{ "CUP_optic_Leupold_VX3", "", 100 },
			{ "optic_KHS_old", "", 100 },
			{ "optic_KHS_blk", "", 100 },
            { "optic_DMS", "", 100 },
			{ "optic_AMS", "", 100 },
			{ "optic_LRPS", "", 100 },
			{ "CUP_optic_LeupoldMk4", "", 25 },	
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
            { "CUP_arifle_G36A", "G36A (Brigadier-Chef)", 1400 },
            { "CUP_arifle_G36C", "G36C (Brigadier-Chef)", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "L85A2 (Brigadier-Chef)", 1700 },
			{ "CUP_arifle_Mk16_CQC", "MK16 CQC (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "MK16 CQC FG (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_STD", "MK16 STD (Brigadier-Chef)", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "MK16 STD FG (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_Mk16_SV", "MK16 SV (Brigadier-Chef)", 2000 },
			{ "CUP_arifle_XM8_Railed", "XM8 (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "XM8 Compact (Brigadier-Chef)", 1800 },
			{ "CUP_srifle_Mk12SPR", "MK12SPR (Brigadier-Chef)", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 },
            //Adj
            { "CUP_arifle_CZ805_B", "", 2500 },
            { "CUP_20Rnd_762x51_CZ805B", "", 15 },
            { "CUP_arifle_FNFAL_railed", "", 2500 },
            { "CUP_20Rnd_762x51_FNFAL_M", "", 15 },	
            { "CUP_srifle_M14", "", 2600 },
            { "CUP_20Rnd_762x51_DMR", "", 15 },				
            { "CUP_arifle_Mk17_STD", "", 2750 },
            { "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            //Adj-Chef
            { "CUP_arifle_Mk17_STD_FG", "MK17 STD FG (Adjudant-Chef)", 2800 },
			{ "CUP_arifle_Mk17_CQC", "MK17 CQC (Adjudant-Chef)", 2800 },
            { "CUP_arifle_Mk20", "MK20 (Adjudant-Chef)", 2800 },	
			{ "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            { "CUP_arifle_xm8_SAW", "XM8 SAW (Adjudant-Chef)", 3000 },
            { "CUP_100Rnd_556x45_BetaCMag", "", 15 },				
            { "CUP_lmg_M249_E2", "M249 (Adj-Chef/PA et OP uniquement)", 3500 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },
            { "CUP_srifle_CZ750", "CZ750 (Adjudant-Chef)", 3000 },
            { "CUP_10Rnd_762x51_CZ750", "", 15 },
			{ "optic_AMS", "AMS (Adjudant-Chef)", 100 },	
			{ "optic_LRPS", "LRPS (Adjudant-Chef)", 100 },
            { "SmokeShellGreen", "Grenade Lacrymogène (Adjudant-Chef)", 100 },
            //Mjr
            { "B_UavTerminal", "", 250 },
            { "srifle_EBR_F", "", 100 } ,
            { "20Rnd_762x51_Mag", "", 15 },
			{ "CUP_srifle_CZ550_rail", "", 150 },
            { "CUP_5x_22_LR_17_HMR_M", "", 15 },
            { "CUP_lmg_L110A1", "", 200 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },	
			{ "HandGrenade_Stone", "Flashbang", 150 }
        };
    };
    //Armurerie lieutenant
    class cop_lieutenant {
        name = "Armurerie Lieutenant";
        side = "cop";
        license = "";
        level = 5;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_ElcanM145", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },
			{ "CUP_optic_LeupoldMk4", "", 100 },	
			{ "CUP_optic_LeupoldM3LR", "", 100 },
			{ "CUP_optic_Leupold_VX3", "", 100 },
			{ "optic_KHS_old", "", 100 },
			{ "optic_KHS_blk", "", 100 },
            { "optic_DMS", "", 100 },
			{ "optic_AMS", "", 100 },
			{ "optic_LRPS", "", 100 },
			{ "CUP_optic_SB_3_12x50_PMII", "", 100 },
			{ "CUP_optic_LeupoldMk4", "", 25 },		
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
            { "CUP_arifle_G36A", "G36A (Brigadier-Chef)", 1400 },
            { "CUP_arifle_G36C", "G36C (Brigadier-Chef)", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "L85A2 (Brigadier-Chef)", 1700 },
			{ "CUP_arifle_Mk16_CQC", "MK16 CQC (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "MK16 CQC FG (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_STD", "MK16 STD (Brigadier-Chef)", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "MK16 STD FG (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_Mk16_SV", "MK16 SV (Brigadier-Chef)", 2000 },
			{ "CUP_arifle_XM8_Railed", "XM8 (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "XM8 Compact (Brigadier-Chef)", 1800 },
			{ "CUP_srifle_Mk12SPR", "MK12SPR (Brigadier-Chef)", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 },
            //Adj
            { "CUP_arifle_CZ805_B", "", 2500 },
            { "CUP_20Rnd_762x51_CZ805B", "", 15 },
            { "CUP_arifle_FNFAL_railed", "", 2500 },
            { "CUP_20Rnd_762x51_FNFAL_M", "", 15 },	
            { "CUP_srifle_M14", "", 2600 },
            { "CUP_20Rnd_762x51_DMR", "", 15 },				
            { "CUP_arifle_Mk17_STD", "", 2750 },
            { "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            //Adj-Chef
            { "CUP_arifle_Mk17_STD_FG", "MK17 STD FG (Adjudant-Chef)", 2800 },
			{ "CUP_arifle_Mk17_CQC", "MK17 CQC (Adjudant-Chef)", 2800 },
            { "CUP_arifle_Mk20", "MK20 (Adjudant-Chef)", 2800 },	
			{ "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            { "CUP_arifle_xm8_SAW", "XM8 SAW (Adjudant-Chef)", 3000 },
            { "CUP_100Rnd_556x45_BetaCMag", "", 15 },				
            { "CUP_lmg_M249_E2", "M249 (Adj-Chef/PA et OP uniquement)", 3500 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },
            { "CUP_srifle_CZ750", "CZ750 (Adjudant-Chef)", 3000 },
            { "CUP_10Rnd_762x51_CZ750", "", 15 },
			{ "optic_AMS", "AMS (Adjudant-Chef)", 100 },	
			{ "optic_LRPS", "LRPS (Adjudant-Chef)", 100 },
            { "SmokeShellGreen", "Grenade Lacrymogène (Adjudant-Chef)", 100 },
            //Mjr
            { "B_UavTerminal", "", 250 },
            { "srifle_EBR_F", "", 100 },
            { "20Rnd_762x51_Mag", "", 15 },
			{ "CUP_srifle_CZ550_rail", "", 150 },
            { "CUP_5x_22_LR_17_HMR_M", "", 15 },
            { "CUP_lmg_L110A1", "", 200 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },	
			{ "HandGrenade_Stone", "Flashbang", 150 },
            //Lnt
            { "LMG_Mk200_F", "", 500 },
            { "200Rnd_65x39_cased_Box_Tracer", "", 19 },
            { "CUP_lmg_M240", "", 500 },
            { "CUP_lmg_M60E4", "", 500 },
            { "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "", 15 },
            { "LMG_Zafir_F", "", 600 },
            { "150Rnd_762x54_Box_Tracer", "", 20 },				
            { "srifle_LRR_F", "", 600 },
            { "7Rnd_408_Mag", "", 20 }
        };
    };
    //Armurerie capitaine
    class cop_capitaine {
        name = "Armurerie Capitaine";
        side = "cop";
        license = "";
        level = 6;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_ElcanM145", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },
			{ "CUP_optic_LeupoldMk4", "", 100 },	
			{ "CUP_optic_LeupoldM3LR", "", 100 },
			{ "CUP_optic_Leupold_VX3", "", 100 },
			{ "optic_KHS_old", "", 100 },
			{ "optic_KHS_blk", "", 100 },
            { "optic_DMS", "", 100 },
			{ "optic_AMS", "", 100 },
			{ "optic_LRPS", "", 100 },			
			{ "CUP_optic_SB_3_12x50_PMII", "", 100 },
			{ "CUP_optic_LeupoldMk4", "", 25 },		
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
            { "CUP_arifle_G36A", "G36A (Brigadier-Chef)", 1400 },
            { "CUP_arifle_G36C", "G36C (Brigadier-Chef)", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "L85A2 (Brigadier-Chef)", 1700 },
			{ "CUP_arifle_Mk16_CQC", "MK16 CQC (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "MK16 CQC FG (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_STD", "MK16 STD (Brigadier-Chef)", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "MK16 STD FG (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_Mk16_SV", "MK16 SV (Brigadier-Chef)", 2000 },
			{ "CUP_arifle_XM8_Railed", "XM8 (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "XM8 Compact (Brigadier-Chef)", 1800 },
			{ "CUP_srifle_Mk12SPR", "MK12SPR (Brigadier-Chef)", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 },
            //Adj
            { "CUP_arifle_CZ805_B", "", 2500 },
            { "CUP_20Rnd_762x51_CZ805B", "", 15 },
            { "CUP_arifle_FNFAL_railed", "", 2500 },
            { "CUP_20Rnd_762x51_FNFAL_M", "", 15 },	
            { "CUP_srifle_M14", "", 2600 },
            { "CUP_20Rnd_762x51_DMR", "", 15 },				
            { "CUP_arifle_Mk17_STD", "", 2750 },
            { "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            //Adj-Chef
            { "CUP_arifle_Mk17_STD_FG", "MK17 STD FG (Adjudant-Chef)", 2800 },
			{ "CUP_arifle_Mk17_CQC", "MK17 CQC (Adjudant-Chef)", 2800 },
            { "CUP_arifle_Mk20", "MK20 (Adjudant-Chef)", 2800 },	
			{ "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            { "CUP_arifle_xm8_SAW", "XM8 SAW (Adjudant-Chef)", 3000 },
            { "CUP_100Rnd_556x45_BetaCMag", "", 15 },				
            { "CUP_lmg_M249_E2", "M249 (Adj-Chef/PA et OP uniquement)", 3500 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },
            { "CUP_srifle_CZ750", "CZ750 (Adjudant-Chef)", 3000 },
            { "CUP_10Rnd_762x51_CZ750", "", 15 },
			{ "optic_AMS", "AMS (Adjudant-Chef)", 100 },	
			{ "optic_LRPS", "LRPS (Adjudant-Chef)", 100 },
            { "SmokeShellGreen", "Grenade Lacrymogène (Adjudant-Chef)", 100 },
            //Mjr
            { "B_UavTerminal", "", 250 },
            { "srifle_EBR_F", "", 100 } ,
            { "20Rnd_762x51_Mag", "", 15 },
			{ "CUP_srifle_CZ550_rail", "", 150 },
            { "CUP_5x_22_LR_17_HMR_M", "", 15 },
            { "CUP_lmg_L110A1", "", 200 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },	
			{ "HandGrenade_Stone", "Flashbang", 150 },
            //Lnt
            { "LMG_Mk200_F", "", 500 },
            { "200Rnd_65x39_cased_Box_Tracer", "", 19 },
            { "CUP_lmg_M240", "", 500 },
            { "CUP_lmg_M60E4", "", 500 },
            { "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "", 15 },
            { "LMG_Zafir_F", "", 600 },
            { "150Rnd_762x54_Box_Tracer", "", 20 },				
            { "srifle_LRR_F", "", 600 },
            { "7Rnd_408_Mag", "", 20 },
            //Capitaine
            { "CUP_srifle_AS50", "", 500 },
            { "CUP_5Rnd_127x99_as50_M", "", 15 }
        };
    };
    //Armurerie commandant
    class cop_commandant {
        name = "Armurerie Commandant";
        side = "cop";
        license = "";
        level = 7;
        msg = "";
        items[] = {
            //Accesories
            { "optic_Holosight", "", 25 },
			{ "CUP_optic_HoloBlack", "", 25 },
			{ "CUP_optic_TrijiconRx01_black", "", 25 },			
            { "optic_ACO_grn_smg", "", 25 },
            { "optic_Aco_smg", "", 25 },
            { "optic_ACO_grn", "", 25 },
            { "optic_Aco", "", 25 },
			{ "CUP_optic_MRad", "", 25 },
			{ "FHQ_optic_AC11704", "", 25 },
			{ "FHQ_optic_AC12136", "", 25 },
			{ "FHQ_optic_HWS_G33", "", 25 },		
            { "optic_MRCO", "", 25 },
			{ "CUP_optic_SUSAT", "", 25 },
			{ "CUP_optic_ACOG", "", 25 },
			{ "CUP_optic_ZDDot", "", 25 },
			{ "CUP_optic_CompM4", "", 25 },
			{ "CUP_optic_CompM2_Black", "", 25 },
			{ "CUP_optic_ElcanM145", "", 25 },
			{ "CUP_optic_RCO", "", 25 },
			{ "optic_Hamr", "", 25 },
            { "optic_Arco", "", 25 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 25 },
			{ "CUP_optic_LeupoldMk4", "", 100 },	
			{ "CUP_optic_LeupoldM3LR", "", 100 },
			{ "CUP_optic_Leupold_VX3", "", 100 },
			{ "optic_KHS_old", "", 100 },
			{ "optic_KHS_blk", "", 100 },
            { "optic_DMS", "", 100 },
			{ "optic_AMS", "", 100 },
			{ "optic_LRPS", "", 100 },
			{ "CUP_optic_SB_3_12x50_PMII", "", 100 },
			{ "CUP_optic_LeupoldMk4", "", 25 },	
			{ "optic_NVS", "Viseur nocturne (NVS)", 100 },
			{ "acc_flashlight", "", 10 },
			{ "CUP_acc_ANPEQ_2_grey", "", 25 },
            { "bipod_01_F_blk", "", 50 },
            { "SmokeShell", "", 30 },
            //Policier
            { "hgun_P07_snds_F", "Taser", 100 },
            { "16Rnd_9x21_Mag", "", 5 },
            { "hgun_Sam_flashball_F", "", 50 },
            { "ALFR_1Rnd_Flashball", "", 5 },
            { "SMG_02_F", "", 300 },
            { "30Rnd_9x21_Mag", "", 15 },
            { "CUP_smg_MP5A5", "", 400 },
            { "CUP_30Rnd_9x19_MP5", "", 15 },
            { "CUP_smg_EVO", "", 400 },
            { "CUP_30Rnd_9x19_EVO", "", 15 },			
            { "CUP_sgun_M1014", "", 500 },
            { "CUP_8Rnd_B_Beneli_74Slug", "", 15 },
            { "CUP_arifle_M16A2", "", 750 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },			
            { "ALFR_Shield_F", "", 100 },
            //Brigadier
            { "arifle_sdar_F", "", 1000 },
            { "20Rnd_556x45_UW_mag", "", 15 },
            { "CUP_arifle_M16A4_Base", "", 1250 },
            { "CUP_arifle_M4A1_black", "", 1250 },
            { "CUP_arifle_CZ805_A1", "", 1300 },
			{ "CUP_arifle_CZ805_A2", "", 1300 },
            { "CUP_30Rnd_556x45_Stanag", "", 15 },	
            //Brigadier-Chef
            { "CUP_arifle_G36A", "G36A (Brigadier-Chef)", 1400 },
            { "CUP_arifle_G36C", "G36C (Brigadier-Chef)", 1600 },
			{ "CUP_30Rnd_556x45_G36", "", 15 },
			{ "CUP_arifle_L85A2", "L85A2 (Brigadier-Chef)", 1700 },
			{ "CUP_arifle_Mk16_CQC", "MK16 CQC (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_CQC_FG", "MK16 CQC FG (Brigadier-Chef)", 1750 },
			{ "CUP_arifle_Mk16_STD", "MK16 STD (Brigadier-Chef)", 1800 },
            { "CUP_arifle_Mk16_STD_FG", "MK16 STD FG (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_Mk16_SV", "MK16 SV (Brigadier-Chef)", 2000 },
			{ "CUP_arifle_XM8_Railed", "XM8 (Brigadier-Chef)", 1800 },
			{ "CUP_arifle_XM8_Compact_Rail", "XM8 Compact (Brigadier-Chef)", 1800 },
			{ "CUP_srifle_Mk12SPR", "MK12SPR (Brigadier-Chef)", 2100 },				
			{ "CUP_20Rnd_556x45_Stanag", "", 15 },
			{ "CUP_arifle_MG36", "MG36 (PA et OP uniquement)", 3000 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 15 },
            //Adj
            { "CUP_arifle_CZ805_B", "", 2500 },
            { "CUP_20Rnd_762x51_CZ805B", "", 15 },
            { "CUP_arifle_FNFAL_railed", "", 2500 },
            { "CUP_20Rnd_762x51_FNFAL_M", "", 15 },	
            { "CUP_srifle_M14", "", 2600 },
            { "CUP_20Rnd_762x51_DMR", "", 15 },				
            { "CUP_arifle_Mk17_STD", "", 2750 },
            { "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            //Adj-Chef
            { "CUP_arifle_Mk17_STD_FG", "MK17 STD FG (Adjudant-Chef)", 2800 },
			{ "CUP_arifle_Mk17_CQC", "MK17 CQC (Adjudant-Chef)", 2800 },
            { "CUP_arifle_Mk20", "MK20 (Adjudant-Chef)", 2800 },	
			{ "CUP_20Rnd_762x51_B_SCAR", "", 15 },
            { "CUP_arifle_xm8_SAW", "XM8 SAW (Adjudant-Chef)", 3000 },
            { "CUP_100Rnd_556x45_BetaCMag", "", 15 },				
            { "CUP_lmg_M249_E2", "M249 (Adj-Chef/PA et OP uniquement)", 3500 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },
            { "CUP_srifle_CZ750", "CZ750 (Adjudant-Chef)", 3000 },
            { "CUP_10Rnd_762x51_CZ750", "", 15 },
			{ "optic_AMS", "AMS (Adjudant-Chef)", 100 },	
			{ "optic_LRPS", "LRPS (Adjudant-Chef)", 100 },
            { "SmokeShellGreen", "Grenade Lacrymogène (Adjudant-Chef)", 100 },
            //Mjr
            { "B_UavTerminal", "", 250 },
            { "srifle_EBR_F", "", 100 } ,
            { "20Rnd_762x51_Mag", "", 15 },
			{ "CUP_srifle_CZ550_rail", "", 150 },
            { "CUP_5x_22_LR_17_HMR_M", "", 15 },
            { "CUP_lmg_L110A1", "", 200 },
            { "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 15 },	
			{ "HandGrenade_Stone", "Flashbang", 150 },
            //Lnt
            { "LMG_Mk200_F", "", 500 },
            { "200Rnd_65x39_cased_Box_Tracer", "", 19 },
            { "CUP_lmg_M240", "", 500 },
            { "CUP_lmg_M60E4", "", 500 },
            { "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "", 15 },
            { "LMG_Zafir_F", "", 600 },
            { "150Rnd_762x54_Box_Tracer", "", 20 },				
            { "srifle_LRR_F", "", 600 },
            { "7Rnd_408_Mag", "", 20 },
            //Capitaine
            { "CUP_srifle_AS50", "", 500 },
            { "CUP_5Rnd_127x99_as50_M", "", 15 }
        };
    };
    //Armurerie armee 1
    class armer {
        name = "Armurerie armee";
        side = "armer";
        license = "";
        level = 1;
        items[] = {
			{ "Rangefinder", "", 10 },
			//  Arme de poing
            { "hgun_Pistol_heavy_02_F", "", 10 },
			{ "6Rnd_45ACP_Cylinder", "", 10 },
			{ "CUP_hgun_M9", "", 10 },
            { "CUP_15Rnd_9x19_M9", "", 10 },
			//  Viseur pour Arme de poing
			{ "optic_MRD", "", 10 },
			{ "optic_Yorris", "", 10 },
			//  Arme à 2 mains
			{ "CUP_arifle_G36A_camo", "", 10 },
			{ "CUP_arifle_G36C_camo", "", 10 },
			{ "CUP_30Rnd_556x45_G36", "", 10 },
			{ "CUP_arifle_M4A1_camo", "", 10 },
			{ "CUP_arifle_M4A1_desert", "", 10 },
			{ "CUP_arifle_L86A2", "", 10 },
			{ "CUP_30Rnd_556x45_Stanag", "", 10 },
			{ "CUP_srifle_M40A3", "", 10 },
			{ "CUP_5Rnd_762x51_M24", "", 10 },
			{ "CUP_Mxx_camo", "", 10 },
			{ "CUP_Mxx_camo_half", "", 10 },
			{ "CUP_lmg_minimipara", "", 10 },
			{ "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 10 },
			{ "CUP_srifle_M110", "", 10 },
			{ "CUP_20Rnd_762x51_B_M110", "", 10 },
			{ "CUP_arifle_MG36_camo", "", 10 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 10 },
			{ "CUP_srifle_G22_des", "", 10 },
			{ "CUP_5Rnd_762x67_G22", "", 10 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 10 },
			{ "srifle_DMR_06_olive_F", "", 10 },
			{ "srifle_DMR_06_camo_F", "", 10 },
			{ "20Rnd_762x51_Mag", "", 10 },	
			{ "LMG_Mk200_F", "Mk200 (sur autorisation uniquement)", 10 },
			{ "200Rnd_65x39_cased_Box_Tracer", "", 10 },
			// Viseur arme à 2 mains
            { "optic_Holosight", "", 10 },
            { "optic_ACO_grn_smg", "", 10 },
            { "optic_Aco_smg", "", 10 },
            { "optic_ACO_grn", "", 10 },
            { "optic_Aco", "", 10 },
			{ "FHQ_optic_AC11704", "", 10 },
			{ "FHQ_optic_AC11704_tan", "", 10 },
			{ "FHQ_optic_AC12136", "", 10 },
			{ "FHQ_optic_AC12136_tan", "", 10 },
			{ "optic_MRCO", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_Arco", "", 10 },
            { "optic_LRPS", "", 10 },
            { "optic_DMS", "", 10 },
            { "optic_SOS", "", 10 },
			// Autres ...
			{ "bipod_03_F_oli", "", 10 },
			{ "bipod_01_F_mtp", "", 10 },
			{ "acc_pointer_IR", "", 10 },
			{ "acc_flashlight", "", 10 },
			{ "SmokeShellBlue", "", 10 }	
        };
    };
    //Armurerie armee 2
    class armee {
        name = "Armurerie armee";
        side = "armer";
        license = "";
        level = 2;
        items[] = {
			{ "Rangefinder", "", 10 },
			//  Arme de poing
            { "hgun_Pistol_heavy_02_F", "", 10 },
			{ "6Rnd_45ACP_Cylinder", "", 10 },
			{ "CUP_hgun_M9", "", 10 },
            { "CUP_15Rnd_9x19_M9", "", 10 },
			//  Viseur pour Arme de poing
			{ "optic_MRD", "", 10 },
			{ "optic_Yorris", "", 10 },
			//  Arme à 2 mains
			{ "CUP_arifle_G36A_camo", "", 10 },
			{ "CUP_arifle_G36C_camo", "", 10 },
			{ "CUP_30Rnd_556x45_G36", "", 10 },
			{ "CUP_arifle_M4A1_camo", "", 10 },
			{ "CUP_arifle_M4A1_desert", "", 10 },
			{ "CUP_arifle_L86A2", "", 10 },
			{ "CUP_30Rnd_556x45_Stanag", "", 10 },
			{ "CUP_srifle_M40A3", "", 10 },
			{ "CUP_5Rnd_762x51_M24", "", 10 },
			{ "CUP_Mxx_camo", "", 10 },
			{ "CUP_Mxx_camo_half", "", 10 },
			{ "CUP_lmg_minimipara", "", 10 },
			{ "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "", 10 },
			{ "CUP_srifle_M110", "", 10 },
			{ "CUP_20Rnd_762x51_B_M110", "", 10 },
			{ "CUP_arifle_MG36_camo", "", 10 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 10 },
			{ "CUP_srifle_G22_des", "", 10 },
			{ "CUP_5Rnd_762x67_G22", "", 10 },
			{ "CUP_100Rnd_556x45_BetaCMag", "", 10 },
			{ "srifle_DMR_06_olive_F", "", 10 },
			{ "srifle_DMR_06_camo_F", "", 10 },
			{ "20Rnd_762x51_Mag", "", 10 },	
			{ "LMG_Mk200_F", "", 10 },
			{ "200Rnd_65x39_cased_Box_Tracer", "", 10 },
			{ "srifle_GM6_F", "", 10 },
			{ "5Rnd_127x108_Mag", "", 10 },	
			{ "srifle_GM6_camo_F", "", 10 },
			{ "5Rnd_127x108_Mag", "", 10 },	
			{ "srifle_LRR_camo_F", "", 10 },
			{ "7Rnd_408_Mag", "", 10 },	
			{ "CUP_lmg_M60E4", "", 10 },	
			{ "CUP_lmg_L7A2", "", 10 },
			{ "CUP_lmg_Mk48_des", "", 10 },
			{ "CUP_lmg_Mk48_wdl", "", 10 },
			{ "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "", 10 },
			// Viseur arme à 2 mains
            { "optic_Holosight", "", 10 },
            { "optic_ACO_grn_smg", "", 10 },
            { "optic_Aco_smg", "", 10 },
            { "optic_ACO_grn", "", 10 },
            { "optic_Aco", "", 10 },
			{ "FHQ_optic_AC11704", "", 10 },
			{ "FHQ_optic_AC11704_tan", "", 10 },
			{ "FHQ_optic_AC12136", "", 10 },
			{ "FHQ_optic_AC12136_tan", "", 10 },			
			{ "optic_MRCO", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_Arco", "", 10 },
            { "optic_LRPS", "", 10 },
            { "optic_DMS", "", 10 },
            { "optic_SOS", "", 10 },
			// Autres ...
			{ "bipod_03_F_oli", "", 10 },
			{ "bipod_01_F_mtp", "", 10 },
			{ "acc_pointer_IR", "", 10 },
			{ "acc_flashlight", "", 10 },
			{ "SmokeShellBlue", "", 10 }
        };
    };
    //Shop Streamer
    class girl {
        name = "Armes";
        side = "armer";
        license = "girl";
        level = -1;
        msg = "";
        items[] = {
            { "Trixie_AS50", "", 1000 },
            { "Trixie_10x127_Mag", "", 100 }
        };
    };
	//Shop Donateur
    class donator {
        name = "Donator Shop";
        side = "civ";
        license = "";
        level = 3;
        items[] = {
			// Arme de poing
			{ "hgun_Rook40_F", "", 8000 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "hgun_Pistol_heavy_01_F", "", 8000 },
            { "11Rnd_45ACP_Mag", "", 100 },	
			{ "hgun_ACPC2_F", "", 8000 },
            { "9Rnd_45ACP_Mag", "", 100 },
			{ "CUP_hgun_Duty" , "", 8000 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "CUP_hgun_Colt1911", "", 8000 },
            { "CUP_7Rnd_45ACP_1911", "", 100 },
			{ "CUP_hgun_TaurusTracker455", "", 8500 },
			{ "CUP_hgun_TaurusTracker455_gold", "", 8500 },
			{ "CUP_6Rnd_45ACP_M", "", 100 },		
			{ "CUP_hgun_M9", "", 9000 },
            { "CUP_15Rnd_9x19_M9", "", 100 },	
			{ "hgun_PDW2000_F", "", 15000 },
			{ "30Rnd_9x21_Mag", "", 100 },
			{ "C1987_MP7", "", 18000 },
			{ "C1987_MP7_folded", "", 18000 },
			{ "C1987_MP7_folded2", "", 18000 },
			{ "C1987_MP7_ucp", "", 18000 },
			{ "C1987_MP7_dmarpat", "", 18000 },
			{ "C1987_MP7_marpat", "", 18000 },
			{ "C1987_MP7_nwu", "", 18000 },
			{ "C1987_MP7_sand", "", 18000 },
			{ "C1987_MP7_urb", "", 18000 },
			{ "C1987_MP7_wcam", "", 18000 },
			{ "C1987_20Rnd_46x30_mp7", "", 100 },
			{ "C1987_40Rnd_46x30_mp7", "", 250 },
			{ "arifle_SDAR_F" , "", 30000 },
			{ "20Rnd_556x45_UW_mag", "Chargeur SDAR sous-marin", 500 },		
			//	Viseur pour arme de poing	
			{ "optic_MRD", "", 500 },
			{ "optic_Yorris", "", 500 },
			{ "C1987_zeiss_AIM", "", 500 },
			{ "C1987_zeiss_AIM_ucp", "", 500 },
			{ "C1987_zeiss_AIM_dmarpat", "", 500 },
			{ "C1987_zeiss_AIM_marpat", "", 500 },
			{ "C1987_zeiss_AIM_nwu", "", 500 },
			{ "C1987_zeiss_AIM_sand", "", 500 },
			{ "C1987_zeiss_AIM_urb", "", 500 },
			{ "C1987_zeiss_AIM_wcam", "", 500 }
        };
    };
    //Shop des médecins
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "U_Rangemaster", "", 5 },
            { "ItemCompass", "", 10 },
			{ "Binocular", "", 15 },
			{ "ItemMap", "", 10 },
			{ "ItemGPS", "", 10 },
			{ "ToolKit", "", 50 },
			{ "Medikit", "", 50 },
            { "pmc_earpiece", "", 100 },
            { "H_PilotHelmetHeli_B", "", 80 },
			{ "ALFR_Police_Backpack", "", 100 },
            { "tf_anprc152", "Radio", 0 }
        };
    };
};
