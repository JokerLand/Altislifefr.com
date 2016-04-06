/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Armurerie";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 8000, -1 },
			{ "hgun_Pistol_heavy_01_F", "", 8000, -1 },
			{ "hgun_ACPC2_F", "", 8000, -1 },
			{ "CUP_hgun_Duty", "", 8000, -1 },
			{ "CUP_hgun_Colt1911", "", 8000, -1 },
			{ "CUP_hgun_TaurusTracker455", "", 8500, -1 },
			{ "CUP_hgun_M9", "", 9000, -1 },
			{ "hgun_PDW2000_F", "", 15000, -1 },	
			{ "C1987_MP7", "", 18000, -1 },
			{ "arifle_SDAR_F", "", 30000, -1 },		
			{ "optic_MRD", "", 1000, -1 },	
			{ "optic_Yorris", "", 1000, -1 },
			{ "C1987_zeiss_AIM", "", 1000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 100 },
            { "11Rnd_45ACP_Mag", "", 100 },
            { "9Rnd_45ACP_Mag", "", 100 },
            { "16Rnd_9x21_Mag", "", 100 },
			{ "CUP_7Rnd_45ACP_1911", "", 100 },
			{ "CUP_6Rnd_45ACP_M", "", 100 },
			{ "CUP_15Rnd_9x19_M9", "", 100 },
			{ "30Rnd_9x21_Mag", "", 100 },
			{ "C1987_20Rnd_46x30_mp7", "", 100 },
			{ "C1987_40Rnd_46x30_mp7", "", 100 },
			{ "20Rnd_556x45_UW_mag", "Chargeur SDAR sous-marin", 100 }
        };
    };
	
// Shop Gangster	
    class ganster {
        name = "Armuerie Gangster";
        side = "civ";
        license = "gangster";
        level[] = { "", "", -1, "" };
        items[] = {
			{ "Rangefinder", "", 800, 400 },
			// Arme de poing
            { "hgun_Rook40_F", "", 8000, -1 },
			{ "CUP_hgun_Makarov", "", 8000, -1 },
            { "hgun_Pistol_heavy_01_F", "", 8000, -1 },
            { "hgun_ACPC2_F", "", 8000, -1 },
			{ "CUP_hgun_Colt1911", "", 8000, -1 },
            { "CUP_hgun_M9", "", 9000, -1 },
            { "CUP_hgun_Compact", "", 9000, -1 },
            { "CUP_hgun_Phantom", "", 9000, -1 },
            { "CUP_hgun_PB6P9", "", 9000, -1 },
            { "CUP_hgun_Glock17", "", 10000, -1 },
			{ "CUP_hgun_SA61", "", 10000, -1 },
			{ "CUP_hgun_MicroUzi", "", 15000, -1 },
			{ "optic_MRD", "", 1000, -1 },
			{ "optic_Yorris", "", 1000, -1 },
			// Armes à 2 mains
			{ "CUP_smg_bizon", "", 20000, -1 },
			{ "arifle_SDAR_F", "", 25000, -1 },
			{ "CUP_arifle_AK74", "", 25000, -1 },
			// VISEUR Arme à 2 mains
			{ "CUP_optic_Kobra", "Kobra (AK74 et Bizon uniquement)", 1000, -1 },
			{ "optic_ACO_grn", "", 1000, -1 },
			{ "optic_Aco", "", 1000, -1 },
			{ "FHQ_optic_AC11704", "", 1000, -1 },
			{ "FHQ_optic_AC11704_tan", "", 1000, -1 },
			{ "FHQ_optic_AC12136", "", 1000, -1 },
			{ "FHQ_optic_AC12136_tan", "", 1000, -1 },
			{ "optic_Hamr", "", 1000, -1 },
			{ "CUP_optic_MRad", "", 1000, -1 },
			{ "CUP_optic_ZDDot", "", 1000, -1 },
			{ "CUP_optic_TrijiconRx01_black", "", 1000, -1 },
			{ "CUP_optic_CompM4", "", 2500, -1 },
			{ "optic_Arco", "", 2500, -1 },
			{ "CUP_optic_HoloBlack", "", 2500, -1 },
			{ "optic_Holosight", "", 2500, -1 },
			{ "CUP_optic_LeupoldMk4_CQ_T", "", 2500, -1 },
			{ "CUP_optic_CompM2_Black", "", 2500, -1 },	
			{ "CUP_optic_ZDDot", "", 2500, -1 },
			{ "optic_MRCO", "", 2500, -1 },	
			{ "CUP_optic_SUSAT", "", 2500, -1 },
			{ "CUP_optic_ACOG", "", 2500, -1 },	
			{ "CUP_optic_RCO", "", 2500, -1 },
			{ "CUP_optic_PSO_1", "", 2500, -1 },
			// Autres
			{ "acc_flashlight", "", 500, -1 },
			{ "SmokeShellRed", "Fumigene rouge", 150, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 100 },
			{ "CUP_8Rnd_9x18_Makarov_M", "", 100 },
            { "11Rnd_45ACP_Mag", "", 100 },
			{ "9Rnd_45ACP_Mag", "", 100 },
			{ "CUP_7Rnd_45ACP_1911", "", 100 },
            { "CUP_10Rnd_9x19_Compact", "", 100 },
			{ "CUP_18Rnd_9x19_Phantom", "", 100 },
            { "CUP_8Rnd_9x18_Makarov_M", "", 100 },
			{ "CUP_17Rnd_9x19_glock17", "", 100 },
			{ "CUP_20Rnd_B_765x17_Ball_M", "", 100 },
			{ "CUP_30Rnd_9x19_UZI", "", 100 },
			{ "CUP_64Rnd_9x19_Bizon_M", "", 100 },
			{ "20Rnd_556x45_UW_mag", "", 100 },
			{ "CUP_30Rnd_545x39_AK_M", "", 100 }
        };
    };	

    class rebel {
        name = "Armurerie Rebelle";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
			{ "Rangefinder", "", 800, 400 },
			// Armes de poing
            { "CUP_hgun_Makarov", "", 8000, -1 },
            { "CUP_hgun_Glock17", "", 10000, -1 },
            { "CUP_hgun_SA61", "", 12500, -1 },
            { "CUP_hgun_MicroUzi", "", 15000, -1 },
            { "optic_MRD", "", 1000, -1 },
            { "CUP_smg_bizon", "", 20000, -1 },
            { "CUP_arifle_Sa58P", "", 30000, -1 },
            { "CUP_arifle_Sa58V", "", 30000, -1 },
			{ "CUP_arifle_Sa58P_des", "", 35000, -1 },
			{ "CUP_arifle_Sa58V_camo", "", 35000, -1 },
			{ "CUP_arifle_AKS74U", "", 40000, -1 },
			{ "CUP_arifle_AKS74", "", 40000, -1 },
			{ "CUP_arifle_AK74", "", 40000, -1 },
			{ "CUP_arifle_AK74M", "", 40000, -1 },
			{ "CUP_arifle_AK107", "", 50000, -1 },
			{ "CUP_arifle_AK47", "", 50000, -1 },
			{ "CUP_arifle_AKS", "", 50000, -1 },
			{ "CUP_arifle_AKM", "", 50000, -1 },
			{ "CUP_arifle_AKM", "", 50000, -1 },
			{ "CUP_srifle_LeeEnfield_rail", "", 50000, -1 },
			{ "CUP_arifle_M4A3_desert", "", 55000, -1 },
			{ "CUP_arifle_RPK74", "", 60000, -1 },
			{ "CUP_arifle_RPK74_45", "", 60000, -1 },
			{ "CUP_arifle_RPK74M", "", 60000, -1 },
			{ "CUP_arifle_Sa58RIS1", "", 65000, -1 },
			{ "CUP_arifle_Sa58RIS2", "", 65000, -1 },
			{ "CUP_arifle_Sa58RIS1_des", "", 65700, -1 },
			{ "CUP_arifle_Sa58RIS2_camo", "", 65700, -1 },
			{ "CUP_arifle_AKS_Gold", "", 70000, -1 },
			{ "CUP_srifle_M24_wdl", "", 72500, -1 },
			{ "CUP_srifle_M24_des", "", 72500, -1 },
			{ "CUP_Mxx_camo_half", "", 500, -1 },
			{ "CUP_Mxx_camo", "", 500, -1 },
			{ "CUP_srifle_SVD", "", 75000, -1 },
			{ "CUP_srifle_SVD_des", "", 75000, -1 },
        };
        mags[] = {
            { "CUP_8Rnd_9x18_Makarov_M", "", 100 },
			{ "CUP_17Rnd_9x19_glock17", "", 100 },
            { "CUP_20Rnd_B_765x17_Ball_M", "", 100 },
            { "CUP_30Rnd_9x19_UZI", "", 100 },
			{ "CUP_64Rnd_9x19_Bizon_M", "", 100 },
			{ "CUP_30Rnd_Sa58_M", "", 100 },
			{ "CUP_30Rnd_545x39_AK_M", "", 100 },
			{ "CUP_30Rnd_762x39_AK47_M", "", 100 },
			{ "CUP_10x_303_M", "", 100 },
			{ "CUP_30Rnd_556x45_Stanag", "", 100 },
			{ "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "", 100 },
			{ "CUP_30Rnd_Sa58_M", "", 100 },
			{ "CUP_30Rnd_762x39_AK47_M", "", 100 },
			{ "CUP_5Rnd_762x51_M24", "", 100 },
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 },
            { "optic_ACO_grn_smg", "", 950, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "ToolKit", "", 1250, 75 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_sdar_F", "Taser Rifle", 20000, 7500 },
            { "hgun_P07_snds_F", "Stun Pistol", 2000, 650 },
            { "hgun_P07_F", "", 7500, 1500 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ToolKit", "", 250, 75 },
            { "muzzle_snds_L", "", 650, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "Medikit", "", 1000, 450 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 }
        };
    };

    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        items[] = {
            { "arifle_MX_F", "", 35000, 7500 },
            { "SMG_02_ACO_F", "", 30000, -1 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "MineDetector", "", 1000, 500 },
            { "acc_flashlight", "", 750, 100 },
            { "optic_Holosight", "", 1200, 275 },
            { "optic_Arco", "", 2500, -1 },
            { "muzzle_snds_H", "", 2750, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 130 },
            { "30Rnd_9x21_Mag", "", 250 }
        };
    };

    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 17500, -1 },
            { "SMG_02_ACO_F", "", 15000, -1 },
            { "arifle_MXC_F", "", 30000, 5000 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "optic_Arco", "", 2500, -1 },
            { "muzzle_snds_H", "", 2750, -1 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 200 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "30Rnd_65x39_caseless_mag", "", 100, -1 }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45 },
            { "Binocular", "", 150, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "Medikit", "", 500, 450 },
            { "NVGoggles", "", 1200, 980 }
        };
        mags[] = {};
    };
};
