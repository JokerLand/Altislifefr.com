class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: ARRAY (This is for limiting items to certain things)
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
            { "B_Quadbike_01_F", { "", "", -1 } },
			{ "GeK_107", { "", "", -1 } },
			{ "Jonzie_Mini_Cooper", { "", "", -1 } }, //144km
			{ "cl3_polo_gti_black", { "", "", -1 } },
			{ "cl3_civic_vti_black", { "", "", -1 } },
			{ "GeK_Clio", { "", "", -1 } },
			{ "Jonzie_Ceed", { "", "", -1 } }, //170km - Style Clio
            { "GeK_DS3", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
			{ "C_Offroad_01_F", { "", "", -1 } },
			{ "I_G_Offroad_01_F", { "", "", -1 } },
            { "GeK_C30", { "", "", -1 } },
			{ "Jonzie_Datsun_510", { "", "", -1 } }, //130km
			{ "Jonzie_30CSL", { "", "", -1 } }, // 207km
			{ "Jonzie_Datsun_Z432", { "", "", -1 } }, //210km
			{ "zorak_bmw_120i", { "", "", -1 } },
			{ "Jonzie_Corolla", { "", "", -1 } }, //180km
			// { "Sn0cky_DS4_noir", { "", "", -1 } },
			{ "cl3_taurus_black", { "", "", -1 } },
			{ "Jonzie_Escalade", { "", "", -1 } }, //231km
			{ "Jonzie_XB", { "", "", -1 } }, //194km - Style FordMustang
			{ "Jonzie_Galant", { "", "", -1 } }, //222km
			{ "Jonzie_Mini_Cooper_R_spec", { "", "", -1 } }, //225km
			{ "cl3_e60_m5_black", { "", "", -1 } },
			{ "GeK_Supra", { "", "", -1 } },
			{ "cl3_e63_amg_black", { "", "", -1 } },
			{ "cl3_dodge_charger_s_black", { "", "", -1 } },
			{ "GeK_ElCamino", { "", "", -1 } },
			{ "GeK_TLC100", { "", "", -1 } },
			// { "Sn0cky_CT200h_noir", { "", "", -1 } },
			{ "cl3_q7_black", { "", "", -1 } },
			{ "GeK_A45", { "", "", -1 } },
			{ "wirk_cayenne", { "", "", -1 } },
			{ "Jonzie_Quattroporte", { "", "", -1 } }, // 286km
			{ "zorak_mazda_rx8", { "", "", -1 } },
			{ "GeK_S60", { "", "", -1 } },
			{ "GeK_CTSV", { "", "", -1 } },
			{ "Gek_audi_a4_avant", { "", "", -1 } },
			{ "Jonzie_STI", { "", "", -1 } }, //260km
			{ "zorak_audi_a6", { "", "", -1 } },
			{ "zorak_jeep_cherokee", { "", "", -1 } },
			{ "GeK_Yukon", { "", "", -1 } },
			{ "GeK_Civilian_H1", { "", "", -1 } },
			{ "GeK_Mercedes_ML63", { "", "", -1 } }
        };
    };
	
	class luxe_car {
        side = "civ";
        vehicles[] = {
			{ "cl3_xr_1000_black", { "", "", -1 } },
            { "Mrshounka_ducati_p", { "", "", -1 } },
			{ "GeK_Cadillac_Fleetwood_Brougham_85", { "", "", -1 } },  
			{ "SAL_IROCCiv", { "", "", -1 } },
			{ "GeK_911_1972", { "", "", -1 } },
			// { "Sn0cky_RS3", { "", "", -1 } },
			{ "AudiA8_Limo", { "", "", -1 } },
			{ "GeK_IS", { "", "", -1 } },
			{ "cl3_z4_2008_black", { "", "", -1 } },
			// { "Sn0cky_Crossfire_noir", { "", "", -1 } },
			// { "Sn0cky_CL65_noir", { "", "", -1 } },
			{ "GeK_C63_AMG", { "", "", -1 } },
			{ "zorak_audi_rs6", { "", "", -1 } },
			// { "Sn0cky_S65_noir", { "", "", -1 } },
          	{ "cl3_arielatom_black", { "", "", -1 } },
			{ "wirk_ktm", { "", "", -1 } },
			{ "GeK_Camaro", { "", "", -1 } },
			{ "cl3_arielatom_race_black", { "", "", -1 } },
			{ "cl3_dbs_volante_black", { "", "", -1 } }, 
			{ "cl3_carrera_gt_black", { "", "", -1 } },
			{ "GeK_GTR", { "", "", -1 } }, 
            { "cl3_r8_spyder_black", { "", "", -1 } },
            { "cl3_458_black", { "", "", -1 } },	
			{ "ALFR_GeK_Panamera", { "", "", -1 } },		
			{ "cl3_murcielago_black", { "", "", -1 } },
			{ "Jonzie_Viper", { "", "", -1 } },
			{ "wirk_ferrari_california", { "", "", -1 } },
			{ "GeK_Gallardo", { "", "", -1 } },
			{ "cl3_reventon_black", { "", "", -1 } },
			{ "cl3_veyron_wht_blu", { "", "", -1 } },
			{ "ALFR_GeK_MF1", { "", "", -1 } },
			{ "ALFR_GeK_Pagani_Zonda", { "", "", -1 } }
        };
    };	

    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", { "", "", -1 } },
            { "C_Kart_01_Fuel_F", { "", "", -1 } },
            { "C_Kart_01_Red_F", { "", "", -1 } },
            { "C_Kart_01_Vrana_F", { "", "", -1 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "GeK_Renault_Trafic", { "", "", -1 } },
            { "C_Van_01_transport_F", { "", "", -1 } },
            { "cl3_transit_black", { "", "", -1 } },
            { "cg_rv_camper", { "", "", -1 } },
			{ "CL3_bus_cl_black", { "", "", -1 } },
            { "shounka_a3_spr_civ", { "", "", -1 } },
            { "C_Van_01_box_F", { "", "", -1 } },
			{ "I_Truck_02_transport_F", { "", "", -1 } },
			{ "I_Truck_02_covered_F", { "", "", -1 } },
            { "B_Truck_01_transport_F", { "", "", -1 } },
			{ "Jonzie_Tanker_Truck", { "", "", -1 } },
			{ "B_Truck_01_box_F", { "", "", -1 } },
			{ "Jonzie_Box_Truck", { "", "", -1 } },
			{ "ALFR_GeK_Scania_420", { "", "", -1 } },
			{ "GeK_Renault_Magnum", { "", "", -1 } },
			{ "ALFR_GeK_Volvo_FH16_2012", { "", "", -1 } },
            { "GeK_Iveco_Stralis", { "", "", -1 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "", "", -1 } },
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "", "", -1 } }
        };
    };

     class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", { "", "", -1 } },
            { "C_Boat_Civil_01_F", { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
			{ "UAZ_Unarmed", { "", "", -1 } },
			{ "B_G_Offroad_01_F", { "", "", -1 } },
			{ "GeK_Avalanche", { "", "", -1 } },
			{ "GeK_G65", { "", "", -1 } },
			{ "GeK_Mercedes_ML63_Rebelle", { "", "", -1 } },
			{ "O_MRAP_02_F", { "", "", -1 } },
			{ "B_Heli_Light_01_F", { "", "", -1 } },
			{ "B_G_Offroad_01_armed_F", { "", "", -1 } },
			{ "O_Truck_03_transport_F", { "", "", -1 } },
			{ "O_Truck_03_device_F", { "", "", -1 } },
			{ "O_Truck_03_covered_F", { "", "", -1 } },
			{ "O_Truck_03_ammo_F", { "", "", -1 } },
			{ "O_Heli_Transport_04_ammo_F", { "", "", -1 } },
			{ "O_Heli_Transport_04_bench_F", { "", "", -1 } },
			{ "O_Heli_Transport_04_covered_F", { "", "", -1 } }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "C_Offroad_01_F", { "", "", -1 } },
            { "GeK_Renault_Trafic_Ambulance", { "", "", -1 } },//
            { "C_SUV_01_F", { "life_mediclevel", "SCALAR", 2 } },
			{ "Jonzie_Ambulance", { "life_mediclevel", "SCALAR", 2 } },//
			{ "GeK_TLC100_Medic", { "life_mediclevel", "SCALAR", 3 } },
			{ "zorak_master_ambulance", { "life_mediclevel", "SCALAR", 4 } },//
			{ "GeK_S60_Medic", { "life_mediclevel", "SCALAR", 4 } },
            { "B_Truck_01_medical_F", { "life_mediclevel", "SCALAR", 5 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "", "", -1 } },
			{ "GR_Bell412_1", { "life_mediclevel", "SCALAR", 2 } },
            { "EC635_SAR", { "life_mediclevel", "SCALAR", 5 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
			{ "GeK_107_Police", { "", "", -1 } }, 
            { "GeK_Renault_Trafic_Police", { "", "", -1 } },
			{ "shounka_a3_gendsprinter", { "", "", -1 } },
			{ "GeK_S60_Police", { "life_coplevel", "SCALAR", 2 } },
			{ "gek_audi_a4_avant_police", { "life_coplevel", "SCALAR", 2 } },
			{ "GeK_TLC100_Police", { "life_coplevel", "SCALAR", 2 } },
			{ "GeK_ML63_Police", { "life_coplevel", "SCALAR", 3 } },
			{ "zorak_mazda_rx8_police", { "life_coplevel", "SCALAR", 3 } },
			{ "GeK_Impreza_Police", { "life_coplevel", "SCALAR", 3 } },
			{ "Mrshounka_ducati_police_p", { "life_coplevel", "SCALAR", 4 } },
			{ "CL3_bus_cl_black", { "life_coplevel", "SCALAR", 4 } },
			{ "GeK_C63_Police", { "life_coplevel", "SCALAR", 4 } },
			{ "ALFR_GeK_Panamera_Police", { "life_coplevel", "SCALAR", 4 } },
			{ "I_MRAP_03_F", { "life_coplevel", "SCALAR", 4 } },
			{ "ALFR_GeK_MF1_Police", { "life_coplevel", "SCALAR", 5 } },
			{ "GeK_S60_Police_ST", { "life_coplevel", "SCALAR", 5 } },
			{ "ALFR_GeK_Panamera_Police_ST", { "life_coplevel", "SCALAR", 5 } },
			{ "GeK_TLC100", { "life_coplevel", "SCALAR", 5 } },
			{ "zorak_audi_rs6_police", { "life_coplevel", "SCALAR", 6 } },
			{ "cg_h2_sert", { "life_coplevel", "SCALAR", 7 } },
            { "zorak_audi_a6_police", { "life_coplevel", "SCALAR", 8 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "life_coplevel", "SCALAR", 2 } },
			{ "EC635_Unarmed", { "life_coplevel", "SCALAR", 6 } },
			{ "B_Heli_Transport_03_unarmed_F", { "life_coplevel", "SCALAR", 6 } },
			{ "B_Heli_Transport_01_F", { "life_coplevel", "SCALAR", 8 } }
        };
    };
    

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", { "", "", -1 } },
			{ "B_SDV_01_F", { "life_coplevel", "SCALAR", 4 } },
            { "B_Boat_Armed_01_minigun_F", { "life_coplevel", "SCALAR", 7 } }
        };
    };
	
// AltisLifeFR Entreprise et autres	
    
	class veh_depan {
        side = "civ";
        vehicles[] = {
            { "C_Offroad_01_repair_F", { "", "", -1 } },
			{ "Jonzie_Forklift", { "", "", -1 } },
			{ "GeK_Volvo_FH16_2012_Depannage", { "", "", -1 } },
            { "GR_UH1H_3", { "", "", -1 } },            
            { "GR_Bell412_2", { "", "", -1 } },
            { "EC635_ADAC", { "", "", -1 } }            
        };
    };
	
	class veh_ion {
        side = "civ";
        vehicles[] = {
			{ "cl3_suv_black", { "", "", -1 } },
            { "GeK_Yukon", { "", "", -1 } },
			{ "GeK_Renault_Trafic", { "", "", -1 } },
			{ "cl3_transit_black", { "", "", -1 } },
			{ "C_Van_01_box_F", { "", "", -1 } },
			{ "ALFR_GeK_Scania_420", { "", "", -1 } },
			{ "GeK_Renault_Magnum", { "", "", -1 } },
			{ "ALFR_GeK_Volvo_FH16_2012", { "", "", -1 } },
			{ "C_Heli_Light_01_civil_F", { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", { "", "", -1 } },
            { "I_Heli_Transport_02_F", { "", "", -1 } }
        };
    };
	
    class veh_altisfly {
		side = "civ";
		vehicles[] = {
			{ "cl3_suv_black", { "", "", -1 } },
			{ "GeK_Yukon", { "", "", -1 } },
			{ "C_Van_01_fuel_F", { "", "", -1 } },
			{ "sab_BI_An2", { "", "", -1 } },
			{ "Sab_sea_An2", { "", "", -1 } },
			{ "GNT_C185F", { "", "", -1 } },
			{ "GNT_C185", { "", "", -1 } },
			{ "IVORY_T6A_1", { "", "", -1 } },
			{ "GR_Bell412_2", { "", "", -1 } },
			{ "GR_UH1H_3", { "", "", -1 } },
			{ "GR_UH1N_1", { "", "", -1 } },
			{ "GR_UH1N_2", { "", "", -1 } },
			{ "IVORY_ERJ135_1", { "", "", -1 } }
		};
	};	
	
	class veh_aan {
        side = "civ";
        vehicles[] = {
			{ "Gek_audi_a4_avant", { "", "", -1 } },
            { "GeK_Yukon", { "", "", -1 } },
			{ "cl3_transit_black", { "", "", -1 } },
            { "C_Heli_Light_01_civil_F", { "", "", -1 } }
        };
    };		
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.3]
    *       Medic [Purchase, Sell]: [0.5, 0.3]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.05
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: ARRAY (license required)
    *         Ex: { "driver", "" , "" , "" } //civilian, west, independent, east
    *         licenses[] = { {"CIV"}, {"COP"}, {"MEDIC"}, {"EAST"} };
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};  
    };
	
    class GNT_C185 {
        vItemSpace = 5;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 54000;
        textures[] = {};
    };
    
    class GNT_C185F {
        vItemSpace = 5;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 54000;
        textures[] = {};
    };
    
    class Jonzie_Mini_Cooper {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3000;
        textures[] = {};
    };
	
    class GeK_107 {
        vItemSpace = 25;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3150;
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
			{ "Vert", "civ", {
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
	
    class cl3_polo_gti_black {
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3450;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 36;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3900;
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
			{ "Vert", "civ", {
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
	
    class Jonzie_Ceed {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 4275;
        textures[] = {};
    };
		
    class GeK_DS3 {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 4300;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 5700;
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
			{ "Médical", "med", {
                "ALFR_TexSnd\med_suv.jpg"
            } }
		};
    };
    
    class GeK_107_Police {
		vItemSpace = 25;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};	

	class GeK_Renault_Trafic_Police {   
		vItemSpace = 75;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
		textures[] = {
			{ "Police", "cop", {
                "ALFR_TexSnd\Gek_renault_trafic_police.paa"
            } }
		};
	};
    
    class GeK_Renault_Trafic {   
		vItemSpace = 75;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 10400;
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
			{ "Vert", "civ", {
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

    class shounka_a3_gendsprinter {
		vItemSpace = 90;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
		textures[] = {};
	};
	
    class C_Offroad_01_F {
        vItemSpace = 60;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 5700;
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
			{ "Médical", "med", {
	                "ALFR_TexSnd\med_offroad.jpg"
            } }
        };
    };
    
    class GeK_Renault_Trafic_Ambulance {
		vItemSpace = 70;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
	
	class Jonzie_Ambulance {
		vItemSpace = 80;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
    
    class zorak_master_ambulance {
		vItemSpace = 80;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
	
    class I_G_Offroad_01_F {
        vItemSpace = 62;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 6000;
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
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 6750;
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
			{ "Vert", "civ", {
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

    class Jonzie_Datsun_510 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 8250;
		textures[] = {};
	};

    class Jonzie_30CSL {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 12000;
		textures[] = {};
	};

    class Jonzie_Datsun_Z432 {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 13800;
		textures[] = {};
	};	
	
    class zorak_bmw_120i {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15750;
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
			{ "Vert", "civ", {
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

    class Jonzie_Corolla {
        vItemSpace = 60;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15750;
		textures[] = {};
	};	
	
    class cl3_taurus_black {
        vItemSpace = 64;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 18750;
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
			{ "Vert", "civ", {
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
    
    class Jonzie_Escalade {
        vItemSpace = 65;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 19000;
		textures[] = {};
	};	
    
    class Jonzie_XB {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 20500;
		textures[] = {};
	};	
    
    class Jonzie_Galant {
        vItemSpace = 75;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 21500;
		textures[] = {}; 
	};	
    
    class Jonzie_Mini_Cooper_R_spec {
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 22000;
		textures[] = {};
	};	
    
    class cl3_e60_m5_black {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 23000;
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
			{ "Vert", "civ", {
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
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 23000;
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
			{ "Vert", "civ", {
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
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 24000;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 29500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 35;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 32000;
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
			{ "Vert", "civ", {
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
    
    class GeK_TLC100 {  
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 52000;
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
			{ "Vert", "civ", {
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
    
    class GeK_TLC100_Police {    
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 5000;
		textures[] = {

			{ "Police", "cop", {
                "ALFR_TexSnd\TLCPolice.paa"
            } },
			{ "Armee", "armer", {
                "alfr_Arm\data\ALFR_range_armee.jpg"
            } }

		};
	};	
    
    class GeK_TLC100_Medic {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 5000;
		textures[] = {};
	};
    
    class GeK_Yukon {
		vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 49500;
		textures[] = {};
	};
    
    class cl3_q7_black {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 30000;
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
			{ "Vert", "civ", {
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
    //
    class GeK_A45 {
        vItemSpace = 35;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 35000;
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
			{ "Vert", "civ", {
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
    
    class wirk_cayenne {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 35000;
		textures[] = {}; 
	};	
    
    class Jonzie_Quattroporte {
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 48000;
		textures[] = {};
	};	
    
    class zorak_mazda_rx8 {  
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 23000;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 42500;
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
			{ "Vert", "civ", {
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
    
    class GeK_S60_Police { 
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 5000;
		textures[] = {};
	};
    
    class gek_audi_a4_avant_police {
		vItemSpace = 55;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};

    class GeK_ML63_Police {
		vItemSpace = 65;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
    

    class zorak_mazda_rx8_police {
        vItemSpace = 35;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
    };
	
    class GeK_Impreza_Police {
		vItemSpace = 40;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};

    class Mrshounka_ducati_police_p {
		vItemSpace = 5;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
	
	class GeK_C63_Police {
		vItemSpace = 45;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};		

	class ALFR_GeK_Panamera_Police {
		vItemSpace = 40;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};

	class I_MRAP_03_F {
        vItemSpace = 60;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 5000;
        textures[] = {
			{ "Police", "cop", {
                "ALFR_TexSnd\strider_police_altis.jpg"
			} }
		};
    };

	class ALFR_GeK_MF1_Police {
		vItemSpace = 20;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
		textures[] = {};        
	};
    
    class ALFR_GeK_Panamera_Police_ST {
		vItemSpace = 40;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};

    class zorak_audi_rs6_police {
        vItemSpace = 50;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
    };

	class cg_h2_sert {
		vItemSpace = 60;
        licenses[] = { {""}, {""}, {""}, {""} };
		price = 5000;
        textures[] = {};
	};
    
    class GeK_S60_Medic {
        vItemSpace = 40;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 1500;
		textures[] = {};
	};
    
    class GeK_S60_Police_ST {
        vItemSpace = 40;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 5000;
		textures[] = {};
	};
    
    class GeK_CTSV {
        vItemSpace = 35;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
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
			{ "Vert", "civ", {
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
        vItemSpace = 35;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 37000;
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
			{ "Vert", "civ", {
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
    
    class zorak_audi_a6_police {
        vItemSpace = 35;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 5000;
        textures[] = {};
    };
    
    class GeK_Civilian_H1 {
		vItemSpace = 75;
		licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 52000;
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
			{ "Vert", "civ", {
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
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 37000;
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
			{ "Vert", "civ", {
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
    
    class Jonzie_STI {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 23000;
		textures[] = {};  
	};
    
    class GeK_Mercedes_ML63 {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
		textures[] = {};
	};
    
    class Mrshounka_ducati_p {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
		textures[] = {};
	};
    
    class GeK_Cadillac_Fleetwood_Brougham_85 {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
    
    class GeK_911_1972 {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
    class AudiA8_Limo {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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

    
    class cl3_r8_spyder_black {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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

    
    class GeK_Gallardo {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
    
    class cl3_veyron_wht_blu {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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
    
    class ALFR_GeK_Pagani_Zonda {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 66500;
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
			{ "Vert", "civ", {
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


    class I_Truck_02_medical_F {
        vItemSpace = 150;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 25000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 45000;
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 45;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 5000;
        textures[] = { };
    };

    class B_Heli_Transport_01_F {
        vItemSpace = 200;
        licenses[] = { {""}, {"cAir"}, {""}, {""} };
        price = 660000;
        textures[] = {
			{ "Police", "cop", {
                "alfr_police\hawk\hawkav1.jpg",
				"alfr_police\hawk\hawkar1.jpg"
            } }

		};
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 750000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 75000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 5000;
        textures[] = { };
    };
    
    class zorak_jeep_cherokee {
        vItemSpace = 45;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 54000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 900;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 100000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 850;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 114000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 1000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 40;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 24000;
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

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 106000;
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

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 22000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 5000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 500;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 45000;
        textures[] = { };
    };
    
    class  Jonzie_Box_Truck: Default {
		vItemSpace = 580;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 55000;
	};
    
    class  ALFR_GeK_Scania_420 {
		vItemSpace = 550;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 48000;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 62000;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 76000;
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
			{ "Vert", "civ", {
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
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		chopShop = 86000;
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
			{ "Vert", "civ", {
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
    
    class B_Truck_01_transport_F {
        vItemSpace = 400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 39000;
        textures[] = { };
    };
    
    class Jonzie_Tanker_Truck: Default {
		vItemSpace = 450;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 42000;
	};

    class O_MRAP_02_F {
        vItemSpace = 60;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 129000;
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


    class C_Kart_01_Blu_F {
        vItemSpace = 5;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 27000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F  : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 40000;
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

    class B_Quadbike_01_F {
        vItemSpace = 25;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2500;
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

    class I_Truck_02_covered_F {
        vItemSpace = 350;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 32500;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 25000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 1000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 124000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 9500;
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

    

    class C_Van_01_transport_F {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 12000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };
    
    class cl3_transit_black : Default {
		vItemSpace = 80;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 12000;
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
			{ "Vert", "civ", {
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
    
    class cg_rv_camper : Default {
		vItemSpace = 80;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 13000;
	};
    
    class CL3_bus_cl_black : Default {
		vItemSpace = 60;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 16000;
		textures[] = {
            { "Police", "cop", {
                "ALFR_TexSnd\bus_exterior_cop.jpg"
            } },
			{ "Donator", "civ", {
                "ALFR_TexSnd\bus_exterior_donator.jpg"
            } }
		};
	};
    
    class shounka_a3_spr_civ : Default {
		vItemSpace = 90;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
		price = 16000;
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
			{ "Vert", "civ", {
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
        vItemSpace = 150;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 18500;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 10;
        textures[] = {
        	{ "Armee", "armer", {
                "alfr_Arm\data\ALFR_hunter_base_armee.jpg",
				"alfr_Arm\data\ALFR_hunter_back_armee.jpg"
            } }
        };
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 115000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 5;
        licenses[] = { {"pilot"}, {"cAir"}, {"mAir"}, {""} };
        price = 96000;
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
    
    class GR_Bell412_1 {
		vItemSpace = 5;
        licenses[] = { {""}, {""}, {"mAir"}, {""} };
		price = 5000;
        textures[] = {};
	};

    class EC635_SAR {
		vItemSpace = 5;
        licenses[] = { {""}, {""}, {"mAir"}, {""} };
		price = 5000;
        textures[] = {};
	};
    
    class EC635_Unarmed {
		vItemSpace = 5;
        licenses[] = { {""}, {"cAir"}, {""}, {""} };
		price = 50000;
        textures[] = {};
	};
    
    class B_Heli_Transport_03_unarmed_F {
		vItemSpace = 90;
        licenses[] = { {"pilot"}, {"cAir"}, {"mAir"}, {""} };
		price = 50000;
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

    class C_Heli_Light_01_civil_F : B_Heli_Light_01_F {
        vItemSpace = 10;
        price = 90000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 60;
        licenses[] = { {"pilot" }, {""}, {"mAir"}, {""} };
        price = 156000;
        textures[] = {
            { "Black", "cop", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } },
            { "Médical", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

    class B_SDV_01_F {
        vItemSpace = 50;
        licenses[] = { {"boat"}, {"cg"}, {""}, {""} };
        price = 5000;
        textures[] = {};
    };

    class C_Van_01_fuel_F {
        vItemSpace = 20;
        vFuelSpace = 19500;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 27500;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            } },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            } }
        };
    };

    class I_Truck_02_fuel_F {
        vItemSpace = 40;
        vFuelSpace = 42000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 68000;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            } }
        };
    };

    class B_Truck_01_fuel_F {
        vItemSpace = 50;
        vFuelSpace = 50000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 85000;
        textures[] = {};
    };
};
