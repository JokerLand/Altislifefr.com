class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 6500 },
            { "hgun_Pistol_heavy_02_F", "", 9850 },
            { "hgun_ACPC2_F", "", 11500 },
            { "hgun_PDW2000_F", "", 20000 },
            { "optic_ACO_grn_smg", "", 2500 },
            { "V_Rangemaster_belt", "", 4900 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };
    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level = -1;
        msg = "";
        items[] = {
            { "arifle_TRG20_F", "", 25000 },
            { "arifle_Katiba_F", "", 30000 },
            { "srifle_DMR_01_F", "", 50000 },
            { "arifle_SDAR_F", "", 20000 },
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "acc_flashlight", "", 1000 },
            { "optic_Hamr", "", 7500 },
            { "30Rnd_9x21_Mag", "", 200 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "30Rnd_556x45_Stanag", "", 300 },
            { "10Rnd_762x51_Mag", "", 500 },
            { "30Rnd_65x39_caseless_green", "", 275 }
        };
    };
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 1500 },
            { "hgun_Pistol_heavy_02_F", "", 2500 },
            { "hgun_ACPC2_F", "", 4500 },
            { "hgun_PDW2000_F", "", 9500 },
            { "optic_ACO_grn_smg", "", 950 },
            { "V_Rangemaster_belt", "", 1900 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };
    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "NVGoggles", "", 2000 },
			{ "Chemlight_red", "", 300 },
			{ "Chemlight_yellow", "", 300 },
			{ "Chemlight_green", "", 300 },
			{ "Chemlight_blue", "", 300 }
        };
    };
    //Cop Shops
    //Armurerie Policier
    class cop_recrue {
        name = "Boutique Policier";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_P07_snds_F", "Tazer", 2000 },
            { "16Rnd_9x21_Mag", "", 50 },
            { "SMG_02_F", "", 4600 },
            { "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
            { "wirk_p90_mag", "", 100 },
            { "M4_Benelli", "", 6500 },
            { "8Rnd_B_Beneli_74Slug", "", 80 },
            { "8Rnd_12Gauge_Pellets", "", 80 },
            { "R3F_Famas_G2_HG", "", 12500 },
            { "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "optic_ACO_grn_smg", "", 2000 },
            { "optic_Aco_smg", "", 2000 },
            { "optic_ACO_grn", "", 3200 },
            { "optic_Aco", "", 3200 }
        };
    };
    //Armurerie Brigadier
    class cop_policier {
        name = "Boutique Brigadier";
        side = "cop";
        license = "";
        level = 2;
        msg = "Vous devez etre brigadier!";
        items[] = {
            { "arifle_MX_F", "", 10000 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "hgun_P07_snds_F", "Tazer", 2000 },
            { "16Rnd_9x21_Mag", "", 50 },
            { "hgun_ACPC2_F", "", 4500 },
            { "9Rnd_45ACP_Mag", "", 70 },
            { "SMG_02_F", "", 4600 },
            { "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
            { "wirk_p90_mag", "", 100 },
            { "wirk_acwr", "", 20000 },
            { "wirk_acwr_mag", "", 100 },
            { "M4_Benelli", "", 6500 },
            { "8Rnd_B_Beneli_74Slug", "", 80 },
            { "8Rnd_12Gauge_Pellets", "", 80 },
            { "R3F_Famas_G2_HG", "", 12500 },
            { "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
            { "R3F_HK416M_HG", "", 15000 },
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
            { "HK430", "", 6500 },
            { "HK430_30Rnd_556x45", "", 80 },
            { "FHQ_M4A1_BLK", "", 6000 },
            { "FHQ_M4A1_AFG_BLK", "", 6000 },
            { "FHQ_M4A1_M203_BLK", "", 6000 },
            { "30rnd_556x45_STANAG", "", 20 },
            { "1Rnd_Smoke_Grenade_shell", "", 100 },
            { "1Rnd_SmokeRed_Grenade_shell", "", 100 },
            { "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
            { "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
            { "1Rnd_SmokePurple_Grenade_shell", "", 100 },
            { "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
            { "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
            { "arifle_MX_Black_F", "", 6200 },
            { "30Rnd_65x39_caseless_mag", "", 80 },
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "optic_ACO_grn_smg", "", 2000 },
            { "optic_Aco_smg", "", 2000 },
            { "optic_ACO_grn", "", 3200 },
            { "optic_Aco", "", 3200 },
            { "optic_MRCO", "", 10000 },
            { "optic_Hamr", "", 10000 },
            { "optic_Arco", "", 10000 },
            { "SmokeShell", "", 100 }
        };
    };
    //Armurerie Adjudant
    class cop_brigadier {
        name = "Boutique Adjudant";
        side = "cop";
        license = "";
        level = 3;
        msg = "Vous devez etre Adjudant!";
        items[] = {
            { "arifle_sdar_F", "", 10000 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "hgun_P07_snds_F", "Tazer", 2000 },
            { "16Rnd_9x21_Mag", "", 50 },
            { "hgun_ACPC2_F", "", 4500 },
            { "9Rnd_45ACP_Mag", "", 70 },
            { "SMG_02_F", "", 4600 },
            { "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
            { "wirk_p90_mag", "", 100 },
            { "wirk_acwr", "", 20000 },
            { "wirk_acwr_mag", "", 100 },
            { "M4_Benelli", "", 6500 },
            { "8Rnd_B_Beneli_74Slug", "", 80 },
            { "8Rnd_12Gauge_Pellets", "", 80 },
            { "R3F_Famas_G2_HG", "", 12500 },
            { "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
            { "R3F_HK416M_HG", "", 15000 },
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
            { "R3F_HK417L", "", 20000 },
            { "R3F_20Rnd_762x51_TRACER_HK417", "", 100 },
            { "HK430", "", 6500 },
            { "HK430_30Rnd_556x45", "", 80 },
            { "FHQ_M4A1_BLK", "", 6000 },
            { "FHQ_M4A1_AFG_BLK", "", 6000 },
            { "FHQ_M4A1_M203_BLK", "", 6000 },
            { "30rnd_556x45_STANAG", "", 20 },
            { "1Rnd_Smoke_Grenade_shell", "", 100 },
            { "1Rnd_SmokeRed_Grenade_shell", "", 100 },
            { "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
            { "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
            { "1Rnd_SmokePurple_Grenade_shell", "", 100 },
            { "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
            { "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
            { "M110", "", 12000 },
            { "20Rnd_762x51_Mag", "", 60 },
            { "gign_shield", "", 1500 },
            { "arifle_MX_Black_F", "", 6200 },
            { "arifle_MXC_Black_F", "", 6500 },
            { "arifle_MXM_Black_F", "", 7300 },
            { "30Rnd_65x39_caseless_mag", "", 80 },
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "optic_ACO_grn_smg", "", 2000 },
            { "optic_Aco_smg", "", 2000 },
            { "optic_ACO_grn", "", 3200 },
            { "optic_Aco", "", 3200 },
            { "optic_MRCO", "", 10000 },
            { "optic_LRPS", "", 50000 },
            { "optic_Hamr", "", 10000 },
            { "optic_Arco", "", 10000 },
            { "SmokeShell", "", 100 }
        };
    };
    //Armurerie Major
    class cop_major {
        name = "Boutique Major";
        side = "cop";
        license = "";
        level = 4;
        msg = "Vous devez etre Major!";
        items[] = {
            { "arifle_sdar_F", "", 10000 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "hgun_P07_snds_F", "Tazer", 2000 },
            { "16Rnd_9x21_Mag", "", 50 },
            { "hgun_ACPC2_F", "", 4500 },
            { "9Rnd_45ACP_Mag", "", 70 },
            { "SMG_02_F", "", 4600 },
            { "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
            { "wirk_p90_mag", "", 100 },
            { "wirk_acwr", "", 20000 },
            { "wirk_acwr_mag", "", 100 },
            { "arifle_MX_Black_F", "", 6200 },
            { "arifle_MXC_Black_F", "", 6500 },
            { "arifle_MXM_Black_F", "", 7300 },
            { "30Rnd_65x39_caseless_mag", "", 80 },
            { "R3F_Famas_G2_HG", "", 12500 },
            { "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
            { "R3F_HK416M_HG", "", 15000 },
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
            { "R3F_HK417L", "", 20000 },
            { "R3F_20Rnd_762x51_TRACER_HK417", "", 100 },
            { "HK430", "", 6500 },
            { "HK430_30Rnd_556x45", "", 80 },
            { "FHQ_M4A1_BLK", "", 6000 },
            { "FHQ_M4A1_AFG_BLK", "", 6000 },
            { "FHQ_M4A1_M203_BLK", "", 6000 },
            { "30rnd_556x45_STANAG", "", 20 },
            { "1Rnd_Smoke_Grenade_shell", "", 100 },
            { "1Rnd_SmokeRed_Grenade_shell", "", 100 },
            { "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
            { "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
            { "1Rnd_SmokePurple_Grenade_shell", "", 100 },
            { "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
            { "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
            { "M110", "", 12000 },
            { "20Rnd_762x51_Mag", "", 60 },
            { "gign_shield", "", 1500 },
            { "M4_Benelli", "", 6500 },
            { "8Rnd_B_Beneli_74Slug", "", 80 },
            { "8Rnd_12Gauge_Pellets", "", 80 },
            { "srifle_EBR_F", "", 8200 },
            { "20Rnd_762x51_Mag", "", 90 },
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "optic_ACO_grn_smg", "", 2000 },
            { "optic_Aco_smg", "", 2000 },
            { "optic_ACO_grn", "", 3200 },
            { "optic_Aco", "", 3200 },
            { "optic_MRCO", "", 10000 },
            { "optic_Hamr",  "", 10000 },
            { "optic_Arco", "", 10000 },
            { "optic_DMS", "", 30000 },
            { "optic_LRPS", "", 50000 },
            { "optic_SOS", "", 30000 },
            { "B_UavTerminal", "", 5200 },
            { "acc_pointer_IR", "", 4200 },
            { "SmokeShell", "", 100 }
        };
    };
    //Armurerie Lieutenant
     class cop_lieutenant {
        name = "Boutique Lieutenant";
        side = "cop";
        license = "";
        level = 5;
        msg = "Vous devez etre Lieutenant!";
        items[] = {
			{ "arifle_sdar_F", "", 10000 },
			{ "20Rnd_556x45_UW_mag", "", 125 },
			{ "hgun_P07_snds_F", "Tazer",2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "hgun_ACPC2_F", "", 4500 },
			{ "9Rnd_45ACP_Mag", "", 70 },
			{ "SMG_02_F", "", 4600 },
			{ "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
            { "wirk_p90_mag", "", 100 },
            { "wirk_acwr", "", 20000 },
            { "wirk_acwr_mag", "", 100 },
			{ "arifle_MX_Black_F", "", 6200 },
			{ "arifle_MXC_Black_F", "", 6500 },
			{ "arifle_MXM_Black_F", "", 7300 },
			{ "30Rnd_65x39_caseless_mag", "", 80 },
			{ "R3F_Famas_G2_HG", "", 12500 },
			{ "wirk_p90", "", 10000 },
			{ "wirk_p90_mag", "", 100 },
			{ "wirk_acwr", "", 20000 },
			{ "wirk_acwr_mag", "", 100 },
			{ "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
			{ "R3F_HK416M_HG", "", 15000 },
			{ "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
			{ "R3F_HK417L", "", 20000 },
			{ "R3F_20Rnd_762x51_TRACER_HK417", "", 100 },
			{ "HK430", "", 6500 },
			{ "HK430_30Rnd_556x45", "", 80 },
			{ "FHQ_M4A1_BLK", "", 6000 },
			{ "FHQ_M4A1_AFG_BLK", "", 6000 },
			{ "FHQ_M4A1_M203_BLK", "", 6000 },
			{ "30rnd_556x45_STANAG", "", 20 },
			{ "1Rnd_Smoke_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeRed_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
			{ "1Rnd_SmokePurple_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
			{ "M110", "", 12000 },
			{ "20Rnd_762x51_Mag", "", 60 },
			{ "gign_shield", "", 1500 },
			{ "M4_Benelli", "", 6500 },
			{ "8Rnd_B_Beneli_74Slug", "", 80 },
			{ "8Rnd_12Gauge_Pellets", "", 80 },
			{ "srifle_EBR_F", "", 8200 },
			{ "20Rnd_762x51_Mag", "", 90 },
			{ "LMG_Mk200_F", "", 15000 },
			{ "200Rnd_65x39_cased_Box", "", 500 },
			{ "LMG_Zafir_F", "", 200000 },
			{ "150Rnd_762x54_Box_Tracer", "", 800 },
			{ "acc_flashlight", "", 750 },
			{ "optic_Holosight", "", 1200 },
			{ "optic_ACO_grn_smg", "", 2000 },
			{ "optic_Aco_smg", "", 2000 },
			{ "optic_ACO_grn", "", 3200 },
			{ "optic_Aco", "", 3200 },
			{ "optic_MRCO", "", 10000 },
			{ "optic_Hamr", "", 10000 },
			{ "optic_Arco", "", 10000 },
			{ "optic_DMS", "", 30000 },
			{ "optic_LRPS", "", 50000 },
			{ "optic_SOS", "", 30000 },
			{ "B_UavTerminal", "", 5200 },
			{ "acc_pointer_IR", "", 4200 },
			{ "HandGrenade_Stone","Flashbang",1700 },
			{ "SmokeShell", "", 100 }
        };
    };
    //Armurerie Capitaine
     class cop_capitaine {
        name = "Boutique Capitaine";
        side = "cop";
        license = "";
        level = 6;
        msg = "Vous devez etre Capitaine!";
        items[] = {
			{ "arifle_sdar_F", "", 10000 },
			{ "20Rnd_556x45_UW_mag", "", 125 },
			{ "hgun_P07_snds_F","Tazer",2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "hgun_ACPC2_F", "", 4500 },
			{ "9Rnd_45ACP_Mag", "", 70 },
			{ "SMG_02_F", "", 4600 },
			{ "30Rnd_9x21_Mag", "", 60 },
			{ "wirk_p90", "", 10000 },
			{ "wirk_p90_mag", "", 100 },
			{ "wirk_acwr", "", 20000 },
			{ "wirk_acwr_mag", "", 100 },
			{ "R3F_Famas_G2_HG", "", 12500 },
			{ "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
			{ "R3F_HK416M_HG", "", 15000 },
			{ "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
			{ "R3F_HK417L", "", 20000 },
			{ "R3F_20Rnd_762x51_TRACER_HK417", "", 100 },
			{ "HK430", "", 6500 },
			{ "HK430_30Rnd_556x45", "", 80 },
			{ "FHQ_M4A1_BLK", "", 6000 },
			{ "FHQ_M4A1_AFG_BLK", "", 6000 },
			{ "FHQ_M4A1_M203_BLK", "", 6000 },
			{ "30rnd_556x45_STANAG", "", 20 },
			{ "1Rnd_Smoke_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeRed_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
			{ "1Rnd_SmokePurple_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
			{ "M110", "", 12000 },
			{ "20Rnd_762x51_Mag", "", 60 },
			{ "gign_shield", "", 1500 },
			{ "M4_Benelli", "", 6500 },
			{ "8Rnd_B_Beneli_74Slug", "", 80 },
			{ "8Rnd_12Gauge_Pellets", "", 80 },
			{ "arifle_MX_Black_F", "", 6200 },
			{ "arifle_MXC_Black_F", "", 6500 },
			{ "arifle_MXM_Black_F", "", 7300 },
			{ "30Rnd_65x39_caseless_mag", "", 80 },
			{ "srifle_EBR_F", "", 8200 },
			{ "20Rnd_762x51_Mag", "", 90 },
			{ "LMG_Mk200_F", "", 15000 },
			{ "200Rnd_65x39_cased_Box", "", 500 },
			{ "LMG_Zafir_F", "", 400000 },
			{ "150Rnd_762x54_Box_Tracer", "", 800 },
			{ "R3F_PGM_Hecate_II_POLY", "", 100000 },
			{ "R3F_7Rnd_127x99_PGM", "", 800 },
			{ "srifle_LRR_F", "", 150000 },
			{ "R3F_M107", "", 350000 },
			{ "R3F_10Rnd_127x99_M107", "", 800 },
			{ "7Rnd_408_Mag", "", 800 },
			{ "acc_flashlight", "", 750 },
			{ "optic_Holosight", "", 1200 },
			{ "optic_ACO_grn_smg", "", 2000 },
			{ "optic_Aco_smg", "", 2000 },
			{ "optic_ACO_grn", "", 3200 },
			{ "optic_Aco", "", 3200 },
			{ "optic_MRCO", "", 10000 },
			{ "optic_Hamr", "", 10000 },
			{ "optic_Arco", "", 10000 },
			{ "optic_DMS", "", 30000 },
			{ "optic_LRPS", "", 50000 },
			{ "optic_SOS", "", 30000 },
			{ "optic_tws", "", 40000 },
			{ "B_UavTerminal", "", 5200 },
			{ "acc_pointer_IR", "", 4200 },
			{ "HandGrenade_Stone","Flashbang",1700 },
			{ "SmokeShell", "", 100 }
        };
    };
    //Armurerie Commandant
     class cop_admin {
        name = "Boutique Commandant";
        side = "cop";
        license = "";
        level = 7;
        msg = "Vous devez etre Commandant!";
        items[] = {
			{ "arifle_sdar_F", "", 10000 },
			{ "20Rnd_556x45_UW_mag", "", 125 },
			{ "hgun_P07_snds_F","Tazer",2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "hgun_ACPC2_F", "", 4500 },
			{ "9Rnd_45ACP_Mag", "", 70 },
			{ "SMG_02_F", "", 4600 },
			{ "30Rnd_9x21_Mag", "", 60 },
			{ "arifle_MX_Black_F", "", 6200 },
			{ "arifle_MXC_Black_F", "", 6500 },
			{ "arifle_MXM_Black_F", "", 7300 },
			{ "30Rnd_65x39_caseless_mag", "", 80 },
			{ "wirk_p90", "", 10000 },
			{ "wirk_p90_mag", "", 100 },
			{ "wirk_acwr", "", 20000 },
			{ "wirk_acwr_mag", "", 100 },
			{ "R3F_Famas_G2_HG", "", 12500 },
			{ "R3F_30Rnd_556x45_TRACER_FAMAS", "", 100 },
			{ "R3F_HK416M_HG", "", 15000 },
			{ "R3F_30Rnd_556x45_TRACER_HK416", "", 100 },
			{ "R3F_HK417L", "", 20000 },
			{ "R3F_20Rnd_762x51_TRACER_HK417", "", 100 },
			{ "HK430", "", 6500 },
			{ "HK430_30Rnd_556x45", "", 80 },
			{ "FHQ_M4A1_BLK", "", 6000 },
			{ "FHQ_M4A1_AFG_BLK", "", 6000 },
			{ "FHQ_M4A1_M203_BLK", "", 6000 },
			{ "30rnd_556x45_STANAG", "", 20 },
			{ "1Rnd_Smoke_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeRed_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
			{ "1Rnd_SmokePurple_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
			{ "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
			{ "M110", "", 12000 },
			{ "20Rnd_762x51_Mag", "", 60 },
			{ "gign_shield", "", 1500 },
			{ "M4_Benelli", "", 6500 },
			{ "8Rnd_B_Beneli_74Slug", "", 80 },
			{ "8Rnd_12Gauge_Pellets", "", 80 },
			{ "srifle_EBR_F", "", 8200 },
			{ "20Rnd_762x51_Mag", "", 90 },
			{ "LMG_Mk200_F", "", 15000 },
			{ "200Rnd_65x39_cased_Box", "", 500 },
			{ "LMG_Zafir_F", "", 200000 },
			{ "150Rnd_762x54_Box_Tracer", "", 800 },
			{ "R3F_PGM_Hecate_II_POLY", "", 100000 },
			{ "R3F_7Rnd_127x99_PGM", "", 800 },
			{ "srifle_LRR_F", "", 150000 },
			{ "7Rnd_408_Mag", "", 800 },
			{ "R3F_M107", "", 350000 },
			{ "R3F_10Rnd_127x99_M107", "", 800 },
			{ "acc_flashlight", "", 750 },
			{ "optic_Holosight", "", 1200 },
			{ "optic_ACO_grn_smg", "", 2000 },
			{ "optic_Aco_smg", "", 2000 },
			{ "optic_ACO_grn", "", 3200 },
			{ "optic_Aco", "", 3200 },
			{ "optic_MRCO", "", 10000 },
			{ "optic_Hamr", "", 10000 },
			{ "optic_Arco", "", 10000 },
			{ "optic_LRPS", "", 50000 },
			{ "optic_SOS", "", 30000 },
			{ "optic_tws", "", 40000 },
			{ "B_UavTerminal", "", 5200 },
			{ "acc_pointer_IR", "", 4200 },
			{ "optic_DMS", "", 1200 },
			{ "HandGrenade_Stone","Flashbang",1700 },
			{ "SmokeShell", "", 100 }
        };
    };
    //Donateur Shops
    class donator {
        name = "Donator Shop";
        side = "civ";
        license = "";
        level = 3;
        msg = "Vous devez etre donateur!";
        items[] = {
            { "hgun_Rook40_F", "", 8000 },
            { "hgun_Pistol_heavy_01_F", "", 10000 },
            { "R3F_PAMAS", "", 10000 },
            { "hgun_PDW2000_F", "", 15000 },
            { "SMG_01_F", "", 20000 },
            { "arifle_Mk20C_plain_F", "", 100000 },
            { "SIG_P226", "", 8000 },
            { "C1987_MP7", "", 50000 },
            { "C1987_MP7_ucp", "", 50000 },
            { "C1987_MP7_urb", "", 50000 },
            { "C1987_MP7_dmarpat", "", 50000 },
            { "C1987_MP7_marpat", "", 50000 },
            { "C1987_MP7_wcam", "", 50000 },
            { "C1987_MP7_sand", "", 50000 },
            { "C1987_MP7_nwu", "", 50000 },
            { "C1987_MP7_folded_p", "", 50000 },
            { "C1987_20Rnd_46x30_mp7", "", 100 },
            { "C1987_40Rnd_46x30_mp7", "", 200 },
            { "SG553", "", 150000 },
            { "SG553_CQB", "", 150000 },
            { "SG553_GL", "", 150000 },
            { "LMG_Mk200_F", "", 200000 },
            { "LMG_Zafir_F", "", 350000 },
            { "srifle_LRR_camo_F", "", 400000 },
            { "srifle_GM6_F", "", 400000 },
            { "srifle_GM6_camo_F", "", 400000 },
            { "R3F_FRF2", "", 250000 },
            { "Trixie_M24_Clean", "", 300000 },
            { "Trixie_M40A3_Clean", "", 300000 },
            { "Trixie_CZ750", "", 350000 },
            { "Trixie_AWM338", "", 400000 },
            { "R3F_PGM_Hecate_II", "", 500000 },
            { "Rangefinder", "", 50000 },
            { "optic_LRPS", "", 50000 },
            { "optic_SOS", "", 30000 },
            { "optic_MRCO", "", 10000 },
            { "optic_Arco", "", 10000 },
            { "optic_Hamr", "", 10000 },
            { "optic_ACO_grn_smg", "", 2000 },
            { "optic_MRD", "", 1500 },
            { "acc_pointer_IR", "", 10000 },
            { "NVGoggles", "", 2000 },
            { "ItemRadio", "", 500 },
            { "ToolKit", "", 250 },
            { "itemgps", "", 150 },
            { "FirstAidKit", "", 150 },
            { "30Rnd_56x45_GP90", "", 100 },
            { "30Rnd_56x45_GP90_Armour_Piercing", "", 500 },
            { "1Rnd_Smoke_Grenade_shell", "", 100 },
            { "1Rnd_SmokeRed_Grenade_shell", "", 100 },
            { "1Rnd_SmokeGreen_Grenade_shell", "", 100 },
            { "1Rnd_SmokeYellow_Grenade_shell", "", 100 },
            { "1Rnd_SmokePurple_Grenade_shell", "", 100 },
            { "1Rnd_SmokeBlue_Grenade_shell", "", 100 },
            { "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
            { "1Rnd_SmokeOrange_Grenade_shell", "", 100 },
            { "Cha_Pecheneg", "", 300000 },
            { "Cha_100Rnd_762x54_PK", "", 100 },
            { "Cha_100Rnd_762x54_PK_T", "", 100 },
            { "16Rnd_9x21_Mag", "", 50 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "R3F_15Rnd_9x19_PAMAS", "", 60 },
            { "11Rnd_45ACP_Mag", "", 50 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "", 60 },
            { "30Rnd_556x45_Stanag", "", 70 },
            { "200Rnd_65x39_cased_Box_Tracer", "", 800 },
            { "150Rnd_762x51_Box_Tracer", "", 800 },
            { "7Rnd_408_Mag", "", 800 },
            { "5Rnd_127x108_Mag", "", 800 },
            { "R3F_10Rnd_762x51_FRF2", "", 800 },
            { "Trixie_5x762_Mag", "", 800 },
            { "Trixie_10x762_Mag", "", 800 },
            { "Trixie_5x338_Mag", "", 800 },
            { "R3F_7Rnd_127x99_PGM", "", 800 }
        };
    };
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level = -1;
        items[] = {
            { "ItemGPS", "", 100 },
			{ "Binocular", "", 150 },
			{ "ToolKit", "", 250 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 500 },
			{ "NVGoggles", "", 1200 },
			{ "B_FieldPack_ocamo", "", 3000 }
        };
    };
};
