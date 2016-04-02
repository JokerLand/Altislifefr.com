class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: SCALAR (Rental Price)
    *        2: ARRAY (license required)
    *            Ex: { "driver", "trucking", "rebel" }
    *        3: ARRAY (This is for limiting items to certain things)
    *            0: Variable to read from
    *            1: Variable Value Type (SCALAR / BOOL /EQUAL)
    *            2: What to compare to (-1 = Check Disabled)
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", 1000, { "" }, { "", "", -1 } },
            { "cl3_polo_gti_black", 2000, { "driver" }, { "", "", -1 } },
			{ "cl3_civic_vti_black", 2000, { "driver" }, { "", "", -1 } },
			{ "GeK_Clio", 2100, { "driver" }, { "", "", -1 } },
            { "GeK_DS3", 3200, { "driver" }, { "", "", -1 } },
            { "C_SUV_01_F", 3800, { "driver" }, { "", "", -1 } },
			{ "C_Offroad_01_F", 3800, { "driver" }, { "", "", -1 } },
			{ "I_G_Offroad_01_F", 4000, { "driver" }, { "", "", -1 } },
            { "GeK_C30", 5500, { "driver" }, { "", "", -1 } },
			{ "cl3_z4_2008_black", 7000, { "driver" }, { "", "", -1 } },
			{ "SAL_IROCCiv", 9500, { "driver" }, { "", "", -1 } },
			{ "zorak_bmw_120i", 10700, { "driver" }, { "", "", -1 } },
			{ "cl3_taurus_black", 12500, { "driver" }, { "", "", -1 } },
			{ "cl3_xr_1000_black", 14000, { "driver" }, { "", "", -1 } },
			{ "Mrshounka_ducati_p", 17000, { "driver" }, { "", "", -1 } },
			{ "cl3_carrera_gt_black", 20000, { "driver" }, { "", "", -1 } },
			{ "cl3_dbs_volante_black", 20000, { "driver" }, { "", "", -1 } },
			{ "cl3_arielatom_black", 20000, { "driver" }, { "", "", -1 } },
			{ "wirk_ktm", 20800, { "driver" }, { "", "", -1 } },
			{ "cl3_e60_m5_black", 24000, { "driver" }, { "", "", -1 } },
			{ "cl3_458_black", 24000, { "driver" }, { "", "", -1 } },
			{ "cl3_murcielago_black", 24000, { "driver" }, { "", "", -1 } },
			{ "cl3_reventon_black", 24000, { "driver" }, { "", "", -1 } },
			{ "wirk_ferrari_california", 24000, { "driver" }, { "", "", -1 } },
			{ "GeK_Supra", 25000, { "driver" }, { "", "", -1 } },
			{ "GeK_Cadillac_Fleetwood_Brougham_85", 25000, { "driver" }, { "", "", -1 } },
			{ "cl3_e63_amg_black", 25000, { "driver" }, { "", "", -1 } },
			{ "cl3_dodge_charger_s_black", 25000, { "driver" }, { "", "", -1 } },
			{ "GeK_ElCamino", 25000, { "driver" }, { "", "", -1 } },
			{ "cl3_veyron_wht_blu", 27000, { "driver" }, { "", "", -1 } },
			{ "GeK_TLC100", 28000, { "driver" }, { "", "", -1 } },
			{ "cl3_q7_black", 30000, { "driver" }, { "", "", -1 } },
			{ "Jonzie_Viper", 30000, { "driver" }, { "", "", -1 } },
			{ "GeK_A45", 31000, { "driver" }, { "", "", -1 } },
			{ "ALFR_GeK_MF1", 32000, { "driver" }, { "", "", -1 } },
			{ "wirk_cayenne", 32000, { "driver" }, { "", "", -1 } },
			{ "AudiA8_Limo", 32000, { "driver" }, { "", "", -1 } },
			{ "zorak_mazda_rx8", 33000, { "driver" }, { "", "", -1 } },
			{ "ALFR_GeK_Panamera", 34500, { "driver" }, { "", "", -1 } },
			{ "GeK_S60", 34500, { "driver" }, { "", "", -1 } },
			{ "GeK_CTSV", 34500, { "driver" }, { "", "", -1 } },
			{ "Gek_audi_a4_avant", 34500, { "driver" }, { "", "", -1 } },
			{ "GeK_C63_AMG", 35000, { "driver" }, { "", "", -1 } },
			{ "GeK_GTR", 35000, { "driver" }, { "", "", -1 } },
			{ "zorak_audi_a6", 36000, { "driver" }, { "", "", -1 } },
			{ "cl3_arielatom_race_black", 36000, { "driver" }, { "", "", -1 } },
			{ "zorak_audi_rs6", 37500, { "driver" }, { "", "", -1 } },
			{ "zorak_jeep_cherokee", 37500, { "driver" }, { "", "", -1 } },
			{ "GeK_Yukon", 38500, { "driver" }, { "", "", -1 } },
			{ "GeK_Civilian_H1", 40000, { "driver" }, { "", "", -1 } },
			{ "GeK_Camaro", 43000, { "driver" }, { "", "", -1 } },
			{ "ALFR_GeK_Pagani_Zonda", 44000, { "driver" }, { "", "", -1 } },
			{ "GeK_Mercedes_ML63", 45000, { "driver" }, { "", "", -1 } }
        };
    };

    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", 27000 , { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Fuel_F", 27000, { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Red_F", 27000, { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Vrana_F", 27000, { "driver" }, { "", "", -1 } }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "C_Offroad_01_F", 1000, { "" }, { "", "", -1 } },
            { "GeK_Renault_Trafic_Ambulance", 1000, { "" }, { "", "", -1 } },
            { "C_SUV_01_F", 1000, { "" }, { "life_mediclevel", "SCALAR", 2 } },
			{ "GeK_TLC100_Medic", 1000, { "" }, { "life_mediclevel", "SCALAR", 3 } },
			{ "GeK_S60_Medic", 1000, { "" }, { "life_mediclevel", "SCALAR", 4 } },
            { "B_Truck_01_medical_F", 1000, { "" }, { "life_mediclevel", "SCALAR", 5 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", 2000, { "mAir" }, { "", "", -1 } },
			{ "GR_Bell412_1", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 2 } },
			{ "ALE_MedOrca", 4000, { "mAir" }, { "life_mediclevel", "SCALAR", 3 } },
            { "EC635_SAR", 5000, { "mAir" }, { "life_mediclevel", "SCALAR", 5 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "GeK_Renault_Trafic", 10400, { "trucking" }, { "", "", -1 } },
            { "C_Van_01_transport_F", 12000, { "trucking" }, { "", "", -1 } },
            { "cl3_transit_black", 12000, { "trucking" }, { "", "", -1 } },
            { "cg_rv_camper", 13000, { "trucking" }, { "", "", -1 } },
			{ "CL3_bus_cl_black", 30000, { "trucking" }, { "", "", -1 } },
            { "shounka_a3_spr_civ", 16000, { "trucking" }, { "", "", -1 } },
            { "C_Van_01_box_F", 18500, { "trucking" }, { "", "", -1 } },
			{ "I_Truck_02_transport_F", 25000, { "trucking" }, { "", "", -1 } },
			{ "I_Truck_02_covered_F", 32500, { "trucking" }, { "", "", -1 } },
            { "B_Truck_01_transport_F", 39000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_box_F", 45000, { "trucking" }, { "", "", -1 } },
			{ "ALFR_GeK_Scania_420", 48000, { "trucking" }, { "", "", -1 } },
			{ "GeK_Renault_Magnum", 62000, { "trucking" }, { "", "", -1 } },
			{ "ALFR_GeK_Volvo_FH16_2012", 76000, { "trucking" }, { "", "", -1 } },
            { "GeK_Iveco_Stralis", 86000, { "trucking" }, { "", "", -1 } }
        };
    };	

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "zorak_bmw_120i", 7000, { "driver", "rebel" }, { "", "", -1 } },
            { "Mrshounka_ducati_p", 17000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_TLC100", 17500, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_CTSV", 21600, { "driver", "rebel" }, { "", "", -1 } },
			{ "wirk_cayenne", 21700, { "driver", "rebel" }, { "", "", -1 } },
			{ "UAZ_Unarmed", 24000, { "driver", "rebel" }, { "", "", -1 } },
			{ "B_G_Offroad_01_F", 24000, { "driver", "rebel" }, { "", "", -1 } },
			{ "cl3_e60_m5_black", 24000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_Supra", 25000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_A45", 31000, { "driver", "rebel" }, { "", "", -1 } },
			{ "ALFR_GeK_Panamera", 34500, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_C63_AMG", 35000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_GTR", 35000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_Yukon", 38000, { "driver", "rebel" }, { "", "", -1 } },
			{ "zorak_audi_a6", 36000, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_Avalanche", 36600, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_G65", 36800, { "driver", "rebel" }, { "", "", -1 } },
			{ "GeK_Mercedes_ML63_Rebelle", 62000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_MRAP_02_F", 86000, { "pilot", "rebel" }, { "", "", -1 } },
			{ "B_Heli_Light_01_F", 96000, { "driver", "rebel" }, { "", "", -1 } },
			{ "B_G_Offroad_01_armed_F", 106000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_Truck_03_transport_F", 100000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_Truck_03_device_F", 114000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_Truck_03_covered_F", 124000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_Truck_03_ammo_F", 132000, { "driver", "rebel" }, { "", "", -1 } },
			{ "O_Heli_Transport_04_ammo_F", 230000, { "pilot", "rebel" }, { "", "", -1 } },
			{ "O_Heli_Transport_04_bench_F", 280000, { "pilot", "rebel" }, { "", "", -1 } },
			{ "O_Heli_Transport_04_covered_F", 280000, { "pilot", "rebel" }, { "", "", -1 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "C_Offroad_01_F", 1000, { "" }, { "", "", -1 } },
            { "C_SUV_01_F", 1000, { "" }, { "", "", -1 } },
            { "GeK_Renault_Trafic_Police", 1500, { "" }, { "", "", -1 } },
			{ "shounka_a3_gendsprinter", 2000, { "" }, { "", "", -1 } },
			{ "GeK_S60_Police", 3000, { "" }, { "", "", -1 } },
			{ "gek_audi_a4_avant_police", 4000, { "" }, { "life_coplevel", "SCALAR", 2 } },
			{ "GeK_ML63_Police", 6000, { "" }, { "life_coplevel", "SCALAR", 3 } },
			{ "zorak_mazda_rx8_police", 7000, { "" }, { "life_coplevel", "SCALAR", 3 } },
			{ "Mrshounka_ducati_police_p", 7500, { "" }, { "life_coplevel", "SCALAR", 4 } },
			{ "CL3_bus_cl_black", 5000, { "" }, { "life_coplevel", "SCALAR", 4 } },
			{ "ALFR_GeK_Panamera_Police", 8000, { "" }, { "life_coplevel", "SCALAR", 4 } },
			{ "I_MRAP_03_F", 10000, { "" }, { "life_coplevel", "SCALAR", 4 } },
			{ "ALFR_GeK_MF1_Police", 15000, { "" }, { "life_coplevel", "SCALAR", 5 } },
			{ "GeK_S60_Police_ST", 3000, { "" }, { "life_coplevel", "SCALAR", 5 } },
			{ "ALFR_GeK_Panamera_Police_ST", 8000, { "" }, { "life_coplevel", "SCALAR", 5 } },
			{ "GeK_TLC100", 5000, { "" }, { "life_coplevel", "SCALAR", 5 } },
			{ "zorak_audi_rs6_police", 1000, { "" }, { "life_coplevel", "SCALAR", 6 } },
			{ "cg_h2_sert", 1000, { "" }, { "life_coplevel", "SCALAR", 7 } },
            { "zorak_audi_a6_police", 1000, { "" }, { "life_coplevel", "SCALAR", 8 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", 90000, { "pilot" }, { "", "", -1 } },
            { "GNT_C185", 100000, { "pilot" }, { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", 156000, { "pilot" }, { "", "", -1 } },
			{ "I_Heli_Transport_02_F", 300000, { "pilot" }, { "", "", -1 } },
			{ "B_Heli_Transport_03_unarmed_F", 568000, { "pilot" }, { "", "", -1 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", 5000, { "cAir" }, { "", "", -1 } },
            { "B_Heli_Light_01_F", 5000, { "cAir" }, { "life_coplevel", "SCALAR", 2 } },
			{ "EC635_Unarmed", 80000, { "cAir" }, { "life_coplevel", "SCALAR", 4 } },
			{ "B_Heli_Transport_03_unarmed_F", 100000, { "cAir" }, { "life_coplevel", "SCALAR", 4 } },
			{ "B_Heli_Transport_01_F", 175000, { "cAir" }, { "life_coplevel", "SCALAR", 4 } }
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", 1000, { "cg" }, { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", 1000, { "cg" }, { "", "", -1 } },
			{ "B_SDV_01_F", 1000, { "cg" }, { "life_coplevel", "SCALAR", 4 } },
            { "B_Boat_Armed_01_minigun_F", 1000, { "cg" }, { "life_coplevel", "SCALAR", 7 } }
        };
    };

    class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", 5000, { "boat" }, { "", "", -1 } },
            { "C_Boat_Civil_01_F", 20000, { "boat" }, { "", "", -1 } },
            { "B_SDV_01_F", 35000, { "boat" }, { "", "", -1 } }
        };
    };

// AltisLifeFR Entreprise et autres	
	
	class armer_car {
        side = "civ";
        vehicles[] = {
            { "GeK_TLC100_Police", 1000, { "" }, { "", "", -1 } },
			{ "B_Heli_Light_01_F", 1500, { "" }, { "", "", -1 } },
			{ "ALFR_suv_armee", 2000, { "" }, { "life_adaclevel", "SCALAR", 2 } },
			{ "GeK_Panhard", 3000, { "" }, { "life_adaclevel", "SCALAR", 2 } },
			{ "Cha_UH60L_Unarmed_FFV_AUS", 3500, { "" }, { "life_adaclevel", "SCALAR", 2 } },
			{ "B_Heli_Transport_03_unarmed_F", 5000, { "" }, { "life_adaclevel", "SCALAR", 3 } },
			{ "GeK_VAB", 6500, { "" }, { "life_adaclevel", "SCALAR", 5 } },
            { "B_MRAP_01_F", 6500, { "" }, { "life_adaclevel", "SCALAR", 5 } }
        };
    };
    
	class veh_depannage {
        side = "civ";
        vehicles[] = {
            { "C_Offroad_01_repair_F", 5000, { "depanneur" }, { "", "", -1 } },
			{ "GeK_Volvo_FH16_2012_Depannage", 10000, { "depanneur" }, { "", "", -1 } },
            { "EC635_ADAC", 25000, { "depanneur" }, { "", "", -1 } }
        };
    };
	
	class veh_ion {
        side = "civ";
        vehicles[] = {
            { "GeK_Yukon", 7500, { "driver", "ion" }, { "", "", -1 } },
			{ "GeK_Renault_Trafic", 10400, { "trucking", "ion" }, { "", "", -1 } },
			{ "cl3_transit_black", 12000, { "trucking", "ion" }, { "", "", -1 } },
			{ "C_Van_01_box_F", 18500, { "trucking", "ion" }, { "", "", -1 } },
			{ "ALFR_GeK_Scania_420", 48000, { "trucking", "ion" }, { "", "", -1 } },
			{ "GeK_Renault_Magnum", 62000, { "trucking", "ion" }, { "", "", -1 } },
			{ "ALFR_GeK_Volvo_FH16_2012", 76000, { "trucking", "ion" }, { "", "", -1 } },
			{ "C_Heli_Light_01_civil_F", 90000, { "pilot", "ion" }, { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", 156000, { "pilot", "ion" }, { "", "", -1 } },
            { "I_Heli_Transport_02_F", 300000, { "pilot", "ion" }, { "", "", -1 } }
        };
    };
	
	class veh_aan {
        side = "civ";
        vehicles[] = {
            { "GeK_Yukon", 7500, { "driver", "aan" }, { "", "", -1 } },
			{ "cl3_transit_black", 12000, { "trucking", "aan" }, { "", "", -1 } },
            { "C_Heli_Light_01_civil_F", 90000, { "pilot", "aan" }, { "", "", -1 } }
        };
    };	
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    storageFee (Getting vehicles out of garage) format:
    *        INDEX 0: Civilian Price
    *        INDEX 1: Cop Price
    *        INDEX 2: EMS Price
    *        INDEX 3: OPFOR Price (Not implemented in vanilla but still leaving support
    *
    *    garageSell (Selling vehicles from garage) format:
    *        INDEX 0: Civilian Price
    *        INDEX 1: Cop Price
    *        INDEX 2: EMS Price
    *        INDEX 3: OPFOR Price (Not implemented in vanilla but still leaving support
    *
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    	INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    */

    class Default {
        vItemSpace = -1;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = {};
    };
	
	class B_Quadbike_01_F {
        vItemSpace = 25;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 950, 0, 0, 0 };
        insurance = 2500;
        chopShop = 250;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            } },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            } },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            } },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            } },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            } },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            } },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };
	
	class cl3_polo_gti_black {
		vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 2500;
		chopShop = 750;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_civic_vti_black {
		vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 750;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};	
	
    class GeK_Clio {
        vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 785;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_DS3 {
        vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1200;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class C_SUV_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 1425;
        textures[] = {
        	{ "Rouge Fonce", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
			{ "Noir Police", "cop", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
            } },
			{ "Argent", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
            { "Police", "cop", {
                "ALFR_TexSnd\suv_police.paa"
            } },
			{ "Noir", "civ", {
                "ALFR_TexSnd\suv_noir.jpg"
            } },
			{ "Blanc", "civ", {
                "ALFR_TexSnd\suv_blanc.jpg"
            } },
			{ "Taxi", "civ", {
                "ALFR_TexSnd\suv_taxi.jpg"
            } },
			{ "Medical", "med", {
                "ALFR_TexSnd\med_suv.jpg"
            } }
		};
    };

    class C_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 1000, 500, 650, 1000 };
        garageSell[] = { 6500, 2500, 0, 0 };
        insurance = 2500;
        chopShop = 6250;
        textures[] = {
        	{ "Rouge", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
			{ "Jaune", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
			{ "Blanc", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
			{ "Bleu", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
			{ "Rouge Noir", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
			{ "Bleu / Blanc", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Fed", "fed", {
	                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Police", "cop", {
	                "ALFR_TexSnd\offroad_police.jpg"
            } },
            { "Taxi(Jaune)", "civ", {
	                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },			
			{ "Rouge 2", "civ", {
	                "#(argb,8,8,3)color(1,0.1,0.01,0.1)"
            } },
			{ "Vert", "civ", {
	                "#(argb,8,8,3)color(0,1,0,0.1)"
            } },
			{ "Bleu 2", "civ", {
	                "#(argb,8,8,3)color(0.02,0.47,0.62,0.1)"
            } },
			{ "Brun", "civ", {
	                "#(argb,8,8,3)color(1,0.6,0,0.1)"
            } },
			{ "Noir", "civ", {
	                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Medical", "med", {
	                "ALFR_TexSnd\med_offroad.jpg"
            } }
        };
    };

	class I_G_Offroad_01_F : Default {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1500;
		textures[] = {
			{ "RockStar", "civ", {
                "ALFR_TexSnd\offroad_rock.jpg"
            } },
			{ "RedBull", "civ", {
                "ALFR_TexSnd\offroad_bull.jpg"
            } }
		};
	};

    class GeK_C30 {
        vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 2062;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_z4_2008_black {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 2625;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class SAL_IROCCiv {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3500;
		textures[] = {

			{ "Rouge", "civ", {
                "SAL_A4\Data\Body_coRed.paa"
            } },
			{ "Noir", "civ", {
                "SAL_A4\Data\Body_coBlack.paa"
            } },
			{ "Blanc", "civ", {
                "SAL_A4\Data\Body_co.paa"
            } }
		};
	};

    class zorak_bmw_120i {
        vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 4100;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};	
	
    class cl3_taurus_black {
		vItemSpace = 45;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3750;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class cl3_xr_1000_black {
		vItemSpace = 25;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 5250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};
	
	class Mrshounka_ducati_p {
		vItemSpace = 25;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 6375;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};
	
	class cl3_carrera_gt_black {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_dbs_volante_black {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};	
	
	class cl3_arielatom_black {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7500;
		textures[] = {

			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class wirk_ktm {
        vItemsSpace = 20;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 7800;
        textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class cl3_e60_m5_black {
        vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_458_black {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_murcielago_black {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_reventon_black {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class wirk_ferrari_california {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {
			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_Supra {
		vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9375;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_Cadillac_Fleetwood_Brougham_85 {
        vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7875;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_e63_amg_black {
		vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9375;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cl3_dodge_charger_s_black {
		vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9375;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class GeK_ElCamino {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9375;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};	
	
	class  cl3_veyron_wht_blu {
		vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class Gek_TLC100 {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 10500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },		
			{ "Noir", "cop", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class cl3_q7_black {
		vItemSpace = 55;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class Jonzie_Viper {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_A45 {
        vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11600;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class ALFR_GeK_MF1 {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 12000;
	};

	class wirk_cayenne {
		vItemSpace = 55;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 12000;
	};

	class AudiA8_Limo {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 12000;
	};

	class zorak_mazda_rx8 {
        vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 13000;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class ALFR_GeK_Panamera {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class GeK_S60 {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class GeK_CTSV {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class Gek_audi_a4_avant {
		vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_C63_AMG {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 11500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_GTR {
        vItemSpace = 35;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 13125;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};	
	
    class zorak_audi_a6 {
        vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 13500;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class cl3_arielatom_race_black {
        vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class zorak_audi_rs6 {
        vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 14000;
		textures[] = {

            { "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },			
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class zorak_jeep_cherokee {
		vItemSpace = 55;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 14000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },		
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class GeK_Yukon {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 14250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },		
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_Civilian_H1 {
		vItemSpace = 70;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 15000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class GeK_Camaro {
        vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 16125;
    };

    class ALFR_GeK_Pagani_Zonda {
		vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 16500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class GeK_Mercedes_ML63 : Default {
		vItemSpace = 65;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 16875;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class C_Kart_01_Blu_F {
        vItemSpace = 5;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        inusrance = 1650;
        chopShop = 3500;
        textures[] = {};
    };

    class C_Kart_01_Fuel_F {
        vItemSpace = 5;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        inusrance = 1650;
        chopShop = 3500;
        textures[] = {};
    };

    class C_Kart_01_Red_F {
        vItemSpace = 5;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        inusrance = 1650;
        chopShop = 3500;
        textures[] = {};
    };

    class C_Kart_01_Vrana_F {
        vItemSpace = 5;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        inusrance = 1650;
        chopShop = 3500;
        textures[] = {};
    };

	class GeK_Renault_Trafic_Ambulance {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

	class GeK_TLC100_Medic {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

	class GeK_S60_Medic {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

    class B_Truck_01_medical_F {
        vItemSpace = 75;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 1000, 1000, 1000, 1000 };
        insurance = 2500;
        chopShop = 1000;
        textures[] = {};
    };
	
	class GR_Bell412_1 {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

	class ALE_MedOrca {
        vItemSpace = 10;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 1000;
		textures[] = {};

    class EC635_SAR {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};

    class GeK_Renault_Trafic {
		vItemSpace = 65;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3900;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class C_Van_01_transport_F {
        vItemSpace = 80;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        chopShop = 4500;
		garageSell[] = { 1000, 1000, 1000, 1000 };
        textures[] = {
        	{ "Blanc", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Rouge", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class cl3_transit_black {
		vItemSpace = 80;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 4500;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class cg_rv_camper {
		vItemSpace = 80;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 4875;
	};
	
	class CL3_bus_cl_black {
		vItemSpace = 80;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {

			{ "Police", "cop", {
                "ALFR_TexSnd\bus_exterior_cop.jpg"
            } },
			{ "Donateur", "civ", {
                "ALFR_TexSnd\bus_exterior_donator.jpg"
            } }
		};
	};	

    class shounka_a3_spr_civ {
		vItemSpace = 90;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 6000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class C_Van_01_box_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 6937;
        textures[] = {
        	{ "Blanc", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Rouge", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

	class I_Truck_02_transport_F {
        vItemSpace = 200;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 9375;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Noir", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };
	
	class I_Truck_02_covered_F {
        vItemSpace = 350;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 12150;
        textures[] = {
        	{ "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Noir", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class B_Truck_01_transport_F {
        vItemSpace = 400;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 0, 0, 0 };
        chopShop = 14625;
        textures[] = { };
    };

	class B_Truck_01_box_F {

        vItemSpace = 500;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 0, 0, 0 };
        chopShop = 16875;
        textures[] = { };
    };

	class  ALFR_GeK_Scania_420 {
		vItemSpace = 550;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 18000;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class  GeK_Renault_Magnum {
		vItemSpace = 600;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 20625;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

	class  ALFR_GeK_Volvo_FH16_2012 {
		vItemSpace = 700;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 23250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class  GeK_Iveco_Stralis {
		vItemSpace = 750;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 32250;
		textures[] = {

			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Gris sombre", "civ", {
                "#(argb,8,8,3)color(0.1,0.1,0.1,0.7)"
            } },
			{ "Gris", "civ", {
                "#(argb,8,8,3)color(0.5,0.5,0.5,0.1)"
            } },
			{ "Gris clair", "civ", {
                "#(argb,8,8,3)color(0.3,0.3,0.3,0.8)"
            } },
			{ "Blanc", "civ", {
                "#(argb,8,8,3)color(1,1,1,1)"
            } },
			{ "Sable", "civ", {
                "#(argb,8,8,3)color(1.5,1.6,0.9,0.2)"
            } },
			{ "Bordeau", "civ", {
                "#(argb,8,8,3)color(1,0,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.01,0.6,1,0.1)"
            } },
			{ "Bleu Nuit", "civ", {
                "#(argb,8,8,3)color(0,0,0.5,0.1)"
            } },
			{ "Mauve Nuit", "civ", {
                "#(argb,8,8,3)color(0.6,0,1,0.01)"
            } },
			{ "vert", "civ", {
                "#(argb,8,8,3)color(0.5,1,0.5,0.05)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0,0,1)"
            } },
			{ "Jaune", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Orange", "civ", {
                "#(argb,8,8,3)color(1,0.3,0.01,0.6)"
            } }
		};
	};

    class UAZ_Unarmed {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
	};

	class  B_G_Offroad_01_F {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 9000;
		textures[] = {

			{ "Guerilla 1", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_01_co.paa"
            } },
            { "Guerilla 2", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_02_co.paa"
            } },
            { "Guerilla 3", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_03_co.paa"
            } },
            { "Guerilla 4", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_04_co.paa"
            } },
            { "Guerilla 5", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_05_co.paa"
            } },
            { "Guerilla 6", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_06_co.paa"
            } },
            { "Guerilla 7", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_07_co.paa"
            } },
            { "Guerilla 8", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_08_co.paa"
            } },
            { "Guerilla 9", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_09_co.paa"
            } },
            { "Guerilla 10", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_10_co.paa"
            } },
            { "Guerilla 11", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_11_co.paa"
            } },
            { "Guerilla 12", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_12_co.paa"
            } },
			{ "Rebelle Rouge", "reb", {
                "ALFR_TexSnd\offroad_reb_red.jpg"
            } },
			{ "Rebelle Vert", "reb", {
                "ALFR_TexSnd\offroad_reb_green.jpg"
            } }
		};
	};
	
	class GeK_Avalanche {
		vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 13725;
		textures[] = {

			{ "Blanc", "civ", {
				"GeK_Avalanche\data\AVL_Blanc.paa"
            } },
			{ "Bleu", "civ", {
                "GeK_Avalanche\data\AVL_Bleu.paa"
            } },
			{ "Gris", "civ", {
                "GeK_Avalanche\data\AVL_Gris.paa"
            } },
			{ "Gris clair", "civ", {
				"GeK_Avalanche\data\AVL_Gris_Clair.paa"
            } },
			{ "Jaune", "civ", {
                "GeK_Avalanche\data\AVL_Jaune.paa"
            } },
			{ "Noir", "civ", {
                "GeK_Avalanche\data\AVL_Noir.paa"
            } },
			{ "Noir", "reb", {
                "GeK_Avalanche\data\AVL_Noir.paa"
            } },			
			{ "Orange", "civ", {
                "GeK_Avalanche\data\AVL_Orange.paa"
            } },
			{ "Rouge", "civ", {
                "GeK_Avalanche\data\AVL_Rouge.paa"
            } }
		};
	};
	
    class GeK_G65 {
		vItemSpace = 70;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 13800;
	};

	class GeK_Mercedes_ML63_Rebelle {
		vItemSpace = 65;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 23250;
		textures[] = {

			{ "Camo Woodland", "reb", {
                "GeK_Mercedes_ML63_Rebelle\data\woodland_camo.paa"
            } },
			{ "Camo Urbain", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_urban_co.paa"
            } }
		};
	};

	class O_MRAP_02_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 10000 };
        chopShop = 32250;
        textures[] = {

		{ "Reb", "reb", {
                "\A3\Soft_F\MRAP_02\data\mrap_02_ext_01_co.paa",
                "\a3\soft_f\MRAP_02\data\mrap_02_ext_02_co.paa"
            } },
		{ "DarkRed", "reb", {
                "ALFR_TexSnd\ifrit_darkred_01.jpg",
                "ALFR_TexSnd\ifrit_darkred_02.jpg"
            } },
		{ "Vert", "reb", {
                "ALFR_TexSnd\ifrit_green_01.jpg",
                "ALFR_TexSnd\ifrit_green_02.jpg"
            } },
		{ "Bleu", "reb", {
                "ALFR_TexSnd\ifrit_blue_01.jpg",
                "ALFR_TexSnd\ifrit_blue_02.jpg"
            } },
		{ "Noir", "reb", {
                "ALFR_TexSnd\ifrit_black_01.jpg",
                "ALFR_TexSnd\ifrit_black_02.jpg"
            } },
		{ "Spetznaz", "reb", {
                "ALFR_TexSnd\Ifrit_Spetsnaz.paa",
                "ALFR_TexSnd\Ifrit_Spetsnaz_Back.paa"
		} }
	 };
  };

	class B_G_Offroad_01_armed_F {	
		vItemSpace = 30;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 39750;
		textures[] = {
            { "Guerilla 1", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_01_co.paa"
            } },
            { "Guerilla 2", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_02_co.paa"
            } },
            { "Guerilla 3", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_03_co.paa"
            } },
            { "Guerilla 4", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_04_co.paa"
            } },
            { "Guerilla 5", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_05_co.paa"
            } },
            { "Guerilla 6", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_06_co.paa"
            } },
            { "Guerilla 7", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_07_co.paa"
            } },
            { "Guerilla 8", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_08_co.paa"
            } },
            { "Guerilla 9", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_09_co.paa"
            } },
            { "Guerilla 10", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_10_co.paa"
            } },
            { "Guerilla 11", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_11_co.paa"
            } },
            { "Guerilla 12", "reb", {
                "\a3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_12_co.paa"
            } }
        };	
	};

	class O_Truck_03_transport_F {
        vItemSpace = 900;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 37500;
        textures[] = { };
    };

	class O_Truck_03_device_F {
        vItemSpace = 850;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 0, 0, 0 };
        chopShop = 42500;
        textures[] = { };
    };

	class O_Truck_03_covered_F {
		vItemSpace = 1000;
		storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 1000, 0, 0, 0 };
		chopShop = 46500;
		textures[] = {};
	};

	class O_Truck_03_ammo_F {
		vItemSpace = 1100;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 49500;
	};

	class O_Heli_Transport_04_ammo_F {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 105000;
	};

	class  O_Heli_Transport_04_bench_F {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 105000;
	};

	class O_Heli_Transport_04_covered_F {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 105000;
	};

	class GeK_Renault_Trafic_Police {
		vItemSpace = 65;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1500;
		textures[] = {
			{ "Police", "cop", {
                "ALFR_TexSnd\Gek_renault_trafic_police.paa"
            } }
		};
	};

    class shounka_a3_gendsprinter {
		vItemSpace = 90;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 2000;
		textures[] = {};
	};

	class GeK_S60_Police {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};

    class gek_audi_a4_avant_police {
		vItemSpace = 55;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 4000;
	};
	
	class GeK_TLC100_Police : Default {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
		textures[] = {
			{ "Police", "cop", {
                "ALFR_TexSnd\toyota_police.paa"
            } },
			{ "Armee", "armer", {
                "alfr_Arm\data\ALFR_range_armee.jpg"
            } }
		};
	};	

    class GeK_ML63_Police {
		vItemSpace = 65;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 6000;
	};

    class zorak_mazda_rx8_police {
        vItemSpace = 30;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7000;
    };

    class Mrshounka_ducati_police_p {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7500;
	};

	class ALFR_GeK_Panamera_Police {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 8000;
	};

	class I_MRAP_03_F {
        vItemSpace = 60;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        chopShop = 5000;
        textures[] = {
			{ "Police", "cop", {
                "ALFR_TexSnd\strider_police_altis.jpg"
			} }
		};
    };

	class ALFR_GeK_MF1_Police {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 15000;
	};

	class GeK_S60_Police_ST {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};

	class ALFR_GeK_Panamera_Police_ST {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 8000;
	};

    class zorak_audi_rs6_police {
        vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
    };

	class cg_h2_sert {
		vItemSpace = 60;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

    class zorak_audi_a6_police {
        vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
    };

	class C_Heli_Light_01_civil_F {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 90000;
		textures[] = {
        	{ "Police", "cop", {
                "ALFR_Force\data\vehicule\air\alfr_police_heli_co.paa"
            } },
			{ "ION Noir", "ion", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            } },
			{ "Civ Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
			{ "Rebel Digital", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Armer", "armer", {
                "alfr_Arm\data\ALFR_lite_armee.jpg"
            } },
			{ "Monster", "civ", {
                "ALFR_TexSnd\M900_Monster.paa"
            } },
			{ "Rebelle", "reb", {
                "ALFR_TexSnd\Hummingbird_Metallique_Urbain.paa"
            } }
        };
	};

	class GNT_C185 {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 20250;
	};

	class B_Heli_Transport_03_unarmed_F {
		vItemSpace = 90;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 213000;
		textures[] = {

            { "Rouge", "civ", {
                "ALFR_TexSnd\huronunirouge2.paa",
				"ALFR_TexSnd\huronunirouge1.paa"
            } },
            { "Cyan", "civ", {
                "ALFR_TexSnd\huronunicyan2.paa",
				"ALFR_TexSnd\huronunicyan1.paa"
            } },
			{ "Blanc", "civ", {
                "ALFR_TexSnd\huronuniblanc2.paa",
				"ALFR_TexSnd\huronuniblanc1.paa"
            } },
			{ "Bleu", "civ", {
                "ALFR_TexSnd\huronunibleu2.paa",
				"ALFR_TexSnd\huronunibleu1.paa"
            } },
			{ "Armee", "armer", {
                "alfr_Arm\data\ALFR_huronk_front_armee.jpg",
				"alfr_Arm\data\ALFR_huronk_back_armee.jpg"
            } },
			{ "Police", "cop", {
                "alfr_police\huron\huronav1.jpg",
				"alfr_police\huron\huronar1.jpg"
            } }
		};
	};

	class EC635_Unarmed {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
	};

	class B_Heli_Transport_01_F {
		vItemSpace = 20;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 1000;
		textures[] = {
			{ "Police", "cop", {
                "alfr_police\hawk\hawkav1.jpg",
				"alfr_police\hawk\hawkar1.jpg"
            } }
		};
	};

	class B_Boat_Transport_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 1000;
        textures[] = { };
    };

	class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_SDV_01_F {
        vItemSpace = 50;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 1000;
        textures[] = { };
    };

	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 1000;
        textures[] = { };
    };	

	class C_Rubberboat {
        vItemSpace = 40;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 5000;
        textures[] = { };
    };
	
	class C_Boat_Civil_01_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 5000;
        textures[] = { };
    };

	class ALFR_suv_armee {
		vItemSpace = 50;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 2000;
	};

    class GeK_Panhard {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};

	class Cha_UH60L_Unarmed_FFV_AUS {
		vItemSpace = 10;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};

    class GeK_VAB {
		vItemSpace = 70;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 6500;
	};

	class B_MRAP_01_F {
        vItemSpace = 60;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 6500;
        textures[] = {
        	{ "Armée", "armer", {
                "alfr_Arm\data\ALFR_hunter_base_armee.jpg",
				"alfr_Arm\data\ALFR_hunter_back_armee.jpg"
            } }
        };
    };

	class C_Offroad_01_repair_F {
		vItemSpace = 40;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 5000;
	};

	class GeK_Volvo_FH16_2012_Depannage {
		vItemSpace = 25;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 5000;
	};

	class EC635_ADAC {
		vItemSpace = 5;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 7500;
	};	
	
	class B_Heli_Transport_01_F {
        vItemSpace = 200;
        storageFee[] = { 0, 50000, 0, 0 };
        garageSell[] = { 0, 85000, 0, 0 };
        insurance = 16000;
        chopShop = 45000;
        textures[] = {};
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 100000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 21000, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

    class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 21000, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

    class B_G_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 850, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 1200;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 350;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 1200;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 1200;
        textures[] = {};
    };

    class I_G_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

    class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

    class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        storageFee[] = { 2500, 1000, 0, 0 };
        garageSell[] = { 15000, 7500, 0, 0 };
        insurance = 5500;
        chopShop = 15000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
            { "Police", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            } }
        };
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 4500, 3500, 0, 0 };
        insurance = 2500;
        chopShop = 4750;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };
	
	class B_Heli_Light_01_F {
        vItemSpace = 5;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 2000;
        textures[] = {
        	{ "Police", "cop", {
                "ALFR_Force\data\vehicule\air\alfr_police_heli_co.paa"
            } },
			{ "Black", "fed", {
	           "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            } },
			{ "Civ Blue", "civ", {
	           "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	           "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "donate", {
	          "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	          "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	           "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	           "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
			{ "Rebel Digital", "reb", {
	            "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Armer", "armer", {
                "alfr_Arm\data\ALFR_lite_armee.jpg"
            } },
			{ "Monster", "civ", {
                "ALFR_TexSnd\M900_Monster.paa"
            } },
			{ "Rebelle", "reb", {
                "ALFR_TexSnd\Hummingbird_Metallique_Urbain.paa"
            } },
			{ "Medical", "med", {
                "ALFR_TexSnd\Heli_medic.jpg"
            } }
        };
    };
	
	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 10;
        storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 58500;
        textures[] = {
        	{ "Noir", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
			{ "Blanc / Bleu", "civ", {
	            "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
			{ "Monster", "civ", {
				"alfr_texsnd\Orca_Monster.paa"
            } },			
			{ "Digi Vert", "reb", {
	            "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
			{ "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } }
        };
    };

    class I_Heli_Transport_02_F {
        vItemSpace = 375;
        storageFee[] = { 75000, 0, 0, 0 };
        garageSell[] = { 125000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
            { "Ion", "ion", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
            } },
            { "Dahoman", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
            } }
        };
    };
};
