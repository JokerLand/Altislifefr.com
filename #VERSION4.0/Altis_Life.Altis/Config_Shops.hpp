class WeaponShops {
    //Armory Shops
    class hunter {
        name = "La Cabane du Chasseur";
        side = "civ";
        license = "";
        level = -1;
        msg = "";
        items[] = {
            { "Trixie_CZ550", "", 50000 },
            { "Trixie_CZ550_Mag", "", 50 }
        };
    };
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level = -1;
        msg = "";
        items[] = {
            { "hgun_Rook40_F", "", 10000 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "hgun_Pistol_heavy_02_F", "", 12000 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "hgun_ACPC2_F", "", 15000 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "hgun_PDW2000_F", "", 20000 },
            { "30Rnd_9x21_Mag", "", 75 },
            { "SMG_01_F", "", 28000 },
            { "30Rnd_45ACP_Mag_SMG_01_tracer_green", "", 60 },
            { "SIG_P226", "", 13000 },
            { "C1987_MP7", "", 60000 },
            { "C1987_20Rnd_46x30_mp7", "", 100 },
            { "C1987_40Rnd_46x30_mp7", "", 200 },
            { "optic_ACO_grn_smg", "", 2500 },
            { "V_Rangemaster_belt", "", 4900 }
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
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level = -1;
        msg = "";
        items[] = {
        	{ "arifle_sdar_F", "Taser Rifle", 20000 },
			{ "hgun_P07_snds_F", "Stun Pistol", 2000 },
			{ "hgun_P07_F", "", 7500 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "Binocular", "", 150 },
			{ "ItemGPS", "", 100 },
			{ "ToolKit", "", 250 },
			{ "muzzle_snds_L", "", 650 },
			{ "FirstAidKit", "", 150 },
			{ "Medikit", "", 1000 },
			{ "NVGoggles", "", 2000 },
			{ "16Rnd_9x21_Mag", "", 50 },
			{ "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 125 }
        };
    };
    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level = 2;
        msg = "You must be a Patrol Officer Rank!";
        items[] = {
        	{ "arifle_MX_F", "", 35000 },
			{ "SMG_02_ACO_F", "", 30000 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "MineDetector", "", 1000 },
			{ "acc_flashlight", "", 750 },
			{ "optic_Holosight", "", 1200 },
			{ "optic_Arco", "", 2500 },
			{ "muzzle_snds_H", "", 2750 },
			{ "30Rnd_65x39_caseless_mag", "", 130 },
			{ "30Rnd_9x21_Mag", "", 250 }
        };
    };
    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level = 3;
        msg = "You must be a Sergeant Rank!";
        items[] = {
            { "SMG_02_ACO_F", "", 15000 },
			{ "hgun_ACPC2_F", "", 17500 },
			{ "HandGrenade_Stone", "Flashbang", 1700 },
			{ "arifle_MXC_F", "", 30000 },
			{ "optic_Arco", "", 2500 },
			{ "muzzle_snds_H", "", 2750 },
			{ "30Rnd_65x39_caseless_mag", "", 100 },
			{ "30Rnd_9x21_Mag", "", 60 },
			{ "9Rnd_45ACP_Mag", "", 200 }
        };
    };
    //Donateur Shops
    class donator
        name = "Donator Shop";
        side = "donator";
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
            { "ItemWatch", "", 50 },
            { "ItemRadio", "", 500 },
            { "ItemCompass", "", 50 },
            { "Binocular", "", 150 },
            { "ItemMap", "", 50 },
            { "ItemGPS", "", 150 },
            { "ToolKit", "", 250 },
            { "FirstAidKit", "", 150 },
            { "Medikit", "", 2000 },
            { "NVGoggles", "", 2500 },
            { "B_Carryall_khk", "", 5000 }
        };
    };
};
