class CarShops {
	/*
		Format:
		{ Classname, rental price, license required, { varname, >= value } }

		{ varname, >= value} this is a "level" requirement mainly used by cops and rebels, do not fill this in if you are not utilizing it.
	*/
	class civ_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", 3000, "" }, 
			{ "cl3_civic_vti_black", 10000, "driver" }, 
			{ "C_Offroad_01_F", 15000, "driver" },
			{ "C_SUV_01_F", 22000, "driver" },
			{ "cl3_taurus_black", 12500, "driver" },
			{ "cl3_polo_gti_black", 15000, "driver" },
			{ "GeK_S60", 15000, "driver" },
			{ "GeK_CTSV", 15000, "driver" },
			{ "cl3_q7_black", 40000, "driver" },
			{ "I_G_Offroad_01_F", 55000, "driver" },
			{ "cl3_e63_amg_black", 50000, "driver" },
			{ "SAL_IROCCiv", 9500, "driver" },
			{ "cl3_dodge_charger_s_black", 11000, "driver" },
			{ "cl3_z4_2008_black", 12000, "driver" },
			{ "GeK_TLC100", 15000, "driver" },
			{ "cl3_carrera_gt_black", 15000, "driver" },
			{ "cl3_dbs_volante_black", 15000, "driver" },
			{ "GeK_Mercedes_ML63", 22000, "driver" },
			{ "wirk_cayenne", 27000, "driver" },
			{ "Jonzie_Viper", 27000, "driver" },
			{ "cl3_r8_spyder_black", 270000, "driver" },
			{ "cl3_458_black", 275000, "driver" },
			{ "cl3_murcielago_black", 30000, "driver" },
			{ "cl3_reventon_black", 32000, "driver" },
			{ "wirk_ferrari_california", 40000, "driver" },
			{ "cl3_lamborghini_gt1_black", 50000, "driver" },
			{ "ALFR_GeK_MF1", 50000, "driver" },
			{ "AudiA8_Limo", 30000, "driver" },
			{ "cl3_arielatom_black", 25000, "driver" },
			{ "cl3_veyron_wht_blu", 27000, "driver" },
			{ "CL3_bus_cl_black", 10000, "driver" },
			{ "cl3_xr_1000_black", 25000, "driver" },
			{ "ALFR_GeK_Panamera", 35000, "driver" },
			{ "GeK_Civilian_H1", 20000, "driver" },
			{ "ALFR_GeK_Pagani_Zonda", 80000, "driver" }	
			
		};
	};

	class kart_shop {
		side = "civ";
		vehicles[] = {
			{ "C_Kart_01_Blu_F", 100000 , "driver" },
			{ "C_Kart_01_Fuel_F", 100000, "driver" },
			{ "C_Kart_01_Red_F", 100000, "driver" },
			{ "C_Kart_01_Vrana_F", 100000, "driver" }
		};
	};

	class med_shop {
		side = "med";
		vehicles[] = {
			{ "C_Offroad_01_F", 0, "" },
			{ "GeK_Renault_Trafic_Ambulance", 0, "" },
			{ "C_SUV_01_F", 0, "", { "life_mediclevel", 2 } },
			{ "GeK_TLC100_Medic", 0, "", { "life_mediclevel", 2 } },
			{ "GeK_S60_Medic", 0, "", { "life_mediclevel", 3 } }
			
		};
	};

	class med_air_hs {
		side = "med";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 20000, "mAir" },
			{ "O_Heli_Light_02_unarmed_F", 25000, "mAir", { "life_mediclevel", 2 } },
			{ "EC635_Med", 30000, "mAir", { "life_mediclevel", 3 } }
		};
	};

	class civ_truck {
		side = "civ";
		vehicles[] = {
			{ "C_Van_01_transport_F", 10000, "trucking" },
			{ "C_Van_01_Fuel_F", 5000, "trucking" },
			{ "C_Van_01_box_F", 12500, "trucking" },
			{ "C_Offroad_01_repair_F", 7500, "trucking" },
			{ "I_Truck_02_transport_F", 32500, "trucking" },
			{ "I_Truck_02_covered_F", 60000, "trucking" },
			{ "cg_rv_camper", 13000, "trucking" },
			{ "B_Truck_01_transport_F", 60000, "trucking" },
			{ "A3L_Dumptruck", 90000, "trucking" },
			{ "B_Truck_01_box_F", 105000, "trucking" }
		};
	};
	
	class armer_car {
		side = "adac";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 10, "" },
			{ "GeK_TLC100", 10, "" },
			{ "GeK_TLC100_Police", 10, "" },
			{ "ALFR_suv_armee", 10, "", { "life_adaclevel", 2 } },
			{ "Cha_UH60L_Unarmed_FFV_AUS", 10, "", { "life_adaclevel", 2 } },
			{ "B_Heli_Transport_03_unarmed_F", 10, "", { "life_adaclevel", 3 } },
			{ "B_MRAP_01_F", 10, "", { "life_adaclevel", 5 } }
			
			
		};
	};

	class reb_car {
		side = "civ";
		vehicles[] = {
			{ "B_G_Offroad_01_F", 15000, "rebel" },
			{ "B_G_Van_01_transport_F", 50000, "rebel" },
			{ "cl3_dodge_charger_s_camo", 100000, "rebel" },
			{ "cl3_e63_amg_camo", 150000, "rebel" },
			{ "GeK_Mercedes_ML63_Rebelle", 350000, "rebel" },
			{ "O_Truck_03_device_F", 700000, "rebel" },
			{ "O_Truck_03_transport_F", 700000, "rebel" },
			{ "O_Truck_03_covered_F", 1000000, "rebel" },
			{ "O_Truck_03_ammo_F", 1200000, "rebel" },
			{ "B_Heli_Light_01_F", 225000, "rebel" },
			{ "O_Heli_Light_02_unarmed_F", 350000, "rebel" },
			{ "O_Heli_Transport_04_bench_F", 600000, "rebel" },
			{ "O_Heli_Transport_04_covered_F", 600000, "rebel" },
			{ "O_Heli_Transport_04_ammo_F", 600000, "rebel" }
			
		};
	};

	class cop_car {
		side = "cop";
		vehicles[] = {
			{ "C_Offroad_01_F", 15000, ""},
			{ "C_SUV_01_F", 10000, "" },
			{ "GeK_Renault_Trafic_Police", 15000, ""},
			{ "GeK_S60_Police", 30000, ""},
			{ "ALFR_GeK_Panamera_Police", 20000, "", { "life_coplevel", 2 } },
			{ "GeK_TLC100_Police", 25000, "", { "life_coplevel", 2 } },
			{ "I_MRAP_03_F", 100000, "", { "life_coplevel", 3 } },
			{ "ALFR_GeK_MF1_Police", 150000, "", { "life_coplevel", 3 } },
			{ "GeK_S60_Police_ST", 30000, "", { "life_coplevel", 3 } },
			{ "GeK_TLC100", 35000, "", { "life_coplevel", 3 } },
			{ "ALFR_GeK_Panamera_Police_ST", 30000, "", { "life_coplevel", 3 } },
			{ "CL3_bus_cl_black", 40000, "", { "life_coplevel", 3 } },
			{ "cg_h2_sert", 80000, "", { "life_coplevel", 4 } }
		};
	};

	class civ_air {
		side = "civ";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 153000, "pilot" },
			{ "C_Heli_Light_01_civil_F", 100000, "pilot" },
			{ "GNT_C185", 75000, "pilot" },
			{ "O_Heli_Light_02_unarmed_F", 250000, "pilot" },
			{ "I_Heli_Transport_02_F", 500000, "pilot" },
			{ "B_Heli_Transport_03_unarmed_", 2500000, "pilot" }
			
		};
	};
	
	class donator {
		side = "civ";
		vehicles[] = {
			{ "cl3_xr_1000_black", 7500, "driver", { "life_donator", 1 } },
			{ "GeK_S60", 15000, "driver", { "life_donator", 1 } },
			{ "GeK_CTSV", 15000, "driver", { "life_donator", 1 } },
			{ "cl3_suv_taxi", 50000, "driver", { "life_donator", 1 } },
			{ "GeK_ElCamino", 100000, "driver", { "life_donator", 1 } },
			{ "wirk_ktm", 125000, "driver", { "life_donatorlvl", 1 } },
			{ "cl3_arielatom_black", 125000, "driver", { "life_donator", 1 } },
			{ "GeK_Avalanche", 150000, "driver", { "life_donator", 1 } },
			{ "cl3_suv_black", 200000, "driver", { "life_donator", 1 } },
			{ "GeK_Civilian_H1", 200000, "driver", { "life_donator", 1 } },
			{ "cl3_arielatom_race_black", 250000, "driver", { "life_donator", 1 } },
			{ "ALFR_GeK_Scania_420", 250000, "trucking", { "life_donator", 1 } },
			{ "cl3_veyron_wht_blu", 270000, "driver", { "life_donator", 1 } },
			{ "ALFR_GeK_Volvo_FH16_2012", 300000, "trucking", { "life_donator", 1 } },
			{ "ALFR_GeK_Panamera", 350000, "driver", { "life_donator", 1 } },
			{ "GeK_Renault_Magnum", 400000, "trucking", { "life_donator", 1 } },
			{ "GR_UH1H_1", 400000, "driver", { "life_donator", 1 } },
			{ "ARMSCor_A109_Civ", 500000, "driver", { "life_donator", 1 } },
			{ "CL3_bus_cl_black", 100000, "driver", { "life_donator", 1 } },
			{ "ALFR_GeK_Pagani_Zonda", 2500000, "driver", { "life_donator", 1 } },
			{ "mv22", 4500000, "pilot", { "life_donator", 1 } },
			{ "IVORY_ERJ135_1", 10000000, "pilot", { "life_donator", 1 } }
			
			
		};
	};

	class cop_air {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "C_Heli_Light_01_civil_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "I_Heli_light_03_unarmed_F", 150000, "cAir", { "life_coplevel", 3 } },
			{ "B_Heli_Transport_03_unarmed_F", 150000, "cAir", { "life_coplevel", 4 } },
			{ "EC635_Unarmed", 180000, "cAir", { "life_coplevel", 4 } },
			{ "B_Heli_Transport_01_F", 200000, "cAir", { "life_coplevel", 6 } },
			{ "B_Heli_Transport_03_F", 1000000, "cAir", { "life_coplevel", 7 } }
			
		};
	};

	class cop_airhq {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "C_Heli_Light_01_civil_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "I_Heli_light_03_unarmed_F", 150000, "cAir", { "life_coplevel", 3 } },
			{ "B_Heli_Transport_03_unarmed_F", 150000, "cAir", { "life_coplevel", 4 } },
			{ "EC635_Unarmed", 180000, "cAir", { "life_coplevel", 4 } },
			{ "B_Heli_Transport_01_F", 200000, "cAir", { "life_coplevel", 6 } },
			{ "B_Heli_Transport_03_F", 1000000, "cAir", { "life_coplevel", 7 } }
		};
	};

	class cop_ship {
		side = "cop";
		vehicles[] = {
			{ "B_Boat_Transport_01_F", 3000, "coastguard" },
			{ "C_Boat_Civil_01_police_F", 20000, "coastguard" },
			{ "B_Boat_Armed_01_minigun_F", 75000, "coastguard" },
			{ "B_SDV_01_F", 100000, "coastguard" }
		};
	};

	class civ_ship {
		side = "civ";
		vehicles[] = {
			{ "C_Rubberboat", 5000, "boat" },
			{ "C_Boat_Civil_01_F", 22000, "boat" }
		};
	};
};

/*
	Vehicle Configs (Contains textures and other stuff)

	storageFee (Getting vehicles out of garage) format:
		INDEX 0: Civilian Price
		INDEX 1: Cop Price
		INDEX 3: EMS Price
		INDEX 4: OPFOR Price (Not implemented in vanilla but still leaving support

	Textures config follows { Texture Name, side, {texture(s)path}}
	Texture(s)path follows this format:
		INDEX 0: Texture Layer 0
		INDEX 1: Texture Layer 1
		INDEX 2: Texture Layer 2
		etc etc etc
*/
class CfgVehicles {
	class Default {
		vItemSpace = -1;
		storageFee[] = { 50, 50, 50, 50 };
		garageSell[] = { 0, 0, 0, 0 };
		insurance = 2500;
		chopShop = 1200;
		textures[] = {};
	};
	
	class GNT_C185F : Default {
		vItemSpace = 150;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};
	
	class A3L_VolksWagenGolfGTiblack : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class wirk_gtr : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class wirk_cayenne : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};
	
	class GeK_Mercedes_ML63 : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class GeK_Mercedes_ML63_Rebelle : Default {
		vItemSpace = 65;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Camo", "reb", {
                "GeK_Mercedes_ML63_Rebelle\data\woodland_camo.paa"
            } },
			{ "Camo Urbain", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_urban_co.paa"
            } }
		};
	};
	
	class SAL_IROCCiv : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Rouge", "civ", {
                "DAR_MF1\Data\Body_coRed.paa"
            } },
			{ "Noir", "civ", {
                "DAR_MF1\Data\Body_coBlack.paa"
            } },
			{ "Argent", "civ", {
                "DAR_MF1\Data\Body_coSilver"
            } },
			{ "Orange", "civ", {
                "DAR_MF1\Data\Body_coOrange"
            } },
			{ "Bordeau", "civ", {
                "DAR_MF1\Data\Body_coBurgundy"
            } },
			{ "Blanc", "civ", {
                "SAL_A4\Data\Body_co.paa"
            } }
		};
	};
	
	class SAL_77TRANSAMCiv : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
	};
	
	class cl3_civic_vti_black : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_polo_gti_black : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class GeK_S60 : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class GeK_CTSV : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class GeK_ElCamino : Default {
		vItemSpace = 40;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class GeK_Avalanche : Default {
		vItemSpace = 40;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
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
                "GeK_Avalanche\data\AVL_Gris_Clair.paa)"
            } },
			{ "Jaune", "civ", {
                "GeK_Avalanche\data\AVL_Jaune.paa"
            } },
			{ "Noir", "civ", {
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
	
	class cl3_e63_amg_black : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_range_rover_black : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	
	class cl3_dodge_charger_s_black : Default {
		vItemSpace = 65;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_z4_2008_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_carrera_gt_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_dbs_volante_black : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_r8_spyder_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_458_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_murcielago_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_reventon_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_dodge_charger_s_camo : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Camo", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_co.paa"
            } },
			{ "Camo Urbain", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_urban_co.paa"
            } },
			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } }
			   
		};
		
	};
	
	class cl3_e63_amg_camo : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Camo", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_co.paa"
            } },
			{ "Camo Urbain", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_urban_co.paa"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Police", "cop", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } }
			   
		};
		
	};
	
	class cl3_range_rover_camo : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Camo", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_co.paa"
            } },
			{ "Camo Urbain", "reb", {
                "cl3_vehiclefunctions\skins\skin_camo_urban_co.paa"
            } },
			{ "Noir", "reb", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
			{ "Armee", "adac", {
                "alfr_Arm\data\ALFR_range_armee"
            } }
			   
		};
		
	};
	
	class Jonzie_Viper : Default {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_veyron_blk_wht : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class cl3_lamborghini_gt1_black : Default {
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
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
	
	class A3L_Dumptruck : Default {
		vItemSpace = 400;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Jaude", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Rouge", "civ", {
                "#(argb,8,8,3)color(1,0.1,0.01,0.1)"
            } },
			{ "Vert", "civ", {
                "#(argb,8,8,3)color(0,1,0,0.1)"
            } },
			{ "Bleu", "civ", {
                "#(argb,8,8,3)color(0.02,0.47,0.62,0.1)"
            } },
			{ "Brun", "civ", {
                "#(argb,8,8,3)color(1,0.6,0,0.1)"
            } },
			{ "Noir", "civ", {
                "#(ai,64,64,1)Fresnel(0.3,3)"
            } } 
		};
	};

	
	class IVORY_T6A_1 : Default {
		vItemSpace = 50;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Dona", "civ", {
                "\ivory_t6a\data\texture.dogfight_usa\t6_1_t.paa",
				"\ivory_t6a\data\texture.dogfight_usa\t6_2_t.paa",  
				"\ivory_t6a\data\texture.dogfight_usa\t6_3_t.paa", 
				"\ivory_t6a\data\texture.dogfight_usa\t6_4_t.paa"
            } }
			
		};
		
	};
	
	class I_G_Offroad_01_F : Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "RockStar", "civ", {
                "ALFR_TexSnd\offroad_rock.jpg"
            } },
			{ "RedBull", "civ", {
                "ALFR_TexSnd\offroad_bull.jpg"
            } }
			
		
		};
		
	};
	
	class  B_G_Offroad_01_F: Default {
		vItemSpace = 35;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		chopShop = 3000;
		textures[] = {
			
			{ "Rebelle", "reb", {
                "\a3\soft_f_gamma\Offroad_01\Data\offroad_01_ext_ig01_co.paa"
            } },
			{ "Rebelle Rouge", "reb", {
                "ALFR_TexSnd\offroad_reb_red.jpg"
            } },
			{ "Rebelle Vert", "reb", {
                "ALFR_TexSnd\offroad_reb_green.jpg"
            } }
			
		
		};
		
	};
	

	class I_Truck_02_medical_F : Default {
		vItemSpace = 150;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};

	class O_Truck_03_medical_F : Default {
		vItemSpace = 200;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 10000, 0 };
		chopShop = 7500;
	};

	class B_Truck_01_medical_F : Default {
		vItemSpace = 250;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 25000, 0 };
		chopShop = 12500;
	};

	class C_Rubberboat {
        vItemSpace = 45;
        storageFee[] = { 400, 300, 0, 0 };
		garageSell[] = { 950, 350, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_Heli_Transport_01_F {
		vItemSpace = 200;
		storageFee[] = { 0, 50000, 0, 0 };
		garageSell[] = { 0, 85000, 0, 0 };
		chopShop = 45000;
		textures[] = {};
	};

	class B_MRAP_01_hmg_F : Default {
		vItemSpace = 100;
	};

	class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 21000, 21000, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 0, 16500, 0, 0 };
		garageSell[] = { 0, 21000, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 1000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 0, 450, 0, 0 };
		garageSell[] = { 0, 850, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class O_Truck_03_transport_F {
        vItemSpace = 285;
        storageFee[] = { 1000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class O_Truck_03_device_F {
        vItemSpace = 350;
        storageFee[] = { 95000, 0, 0, 0 };
		garageSell[] = { 185000, 0, 0, 0 };
        chopShop = 125000;
        textures[] = { };
    };

	class Land_CargoBox_V1_F : Default {
        vItemSpace = 5000;
    };

	class Box_IND_Grenades_F : Default {
        vItemSpace = 350;
    };

	class B_supplyCrate_F {
        vItemSpace = 700;
    };


	class B_G_Offroad_01_armed_F : B_G_Offroad_01_F {};

	class I_G_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_F {
        vItemSpace = 85;
        storageFee[] = { 4500, 2500, 0, 0 };
		garageSell[] = { 6800, 3500, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 0, 3500, 0, 0 };
		garageSell[] = { 0, 4950, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_Truck_01_box_F {
        vItemSpace = 450;
        storageFee[] = { 35000, 0, 0, 0 };
		garageSell[] = { 150000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class B_Truck_01_transport_F {
        vItemSpace = 325;
        storageFee[] = { 25650, 0, 0, 0 };
		garageSell[] = { 135000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class O_MRAP_02_F {
        vItemSpace = 60;
        storageFee[] = { 45000, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class I_MRAP_03_F {
        vItemSpace = 58;
        storageFee[] = { 1000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = { };
    };

	class C_Offroad_01_F {
        vItemSpace = 35;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
        chopShop = 2500;
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
            { "Jaune 2", "civ", {
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

	class C_Kart_01_Blu_F {
		vItemSpace = 5;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
		chopShop = 3500;
		textures[] = {};
	};

	class C_Kart_01_Fuel_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Red_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Vrana_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class

	class C_Hatchback_01_sport_F {
        vItemSpace = 35;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 15000, 7500, 0, 0 };
        chopShop = 4500;
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
        storageFee[] = { 0, 0, 0, 0 };
	garageSell[] = { 3000, 0, 0, 0 };
        chopShop = 3000;
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
        vItemSpace = 250;
        storageFee[] = { 14500, 0, 0, 0 };
		garageSell[] = { 62000, 0, 0, 0 };
        chopShop = 20000;
        textures[] = {
        	{ "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class I_Truck_02_transport_F : I_Truck_02_covered_F {
        vItemSpace = 200;
        storageFee[] = { 12000, 0, 0, 0 };
		garageSell[] = { 49800, 3500, 0, 0 };
    };

	class O_Truck_03_covered_F {
		vItemSpace = 300;
		storageFee[] = { 25000, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
		chopShop = 5000;
		textures[] = {};
	};

	class C_Hatchback_01_F {
        vItemSpace = 30;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 4500, 3500, 0, 0 };
        chopShop = 5000;
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

	class C_SUV_01_F {
        vItemSpace = 35;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 15000, 7500, 0, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
			{ "Black", "cop", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
            } },
			{ "Silver", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
            { "Cop", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            } }
	        };
    };

	class C_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 25000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

	class C_Van_01_box_F {
        vItemSpace = 150;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 35000, 0, 0, 0 };
        chopShop = 5000;
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
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 10000, 0, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "Regular", "cop", {
                "\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class B_Heli_Light_01_F {
        vItemSpace = 90;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 57000, 35000, 0, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "Sheriff", "cop", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
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
            { "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 210;
        storageFee[] = { 55000, 0, 22000, 0 };
		garageSell[] = { 72500, 0, 35000, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "Black", "fed", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
			{ "White / Blue", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"   
            } },
			{ "Digi Green", "donate", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
			{ "Desert Digi", "reb", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa" 
            } },
            { "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

	class I_Heli_Transport_02_F {
        vItemSpace = 375;
        storageFee[] = { 75000, 0, 0, 0 };
		garageSell[] = { 125000, 0, 0, 0 };
        chopShop = 5000;
        textures[] = {
        	{ "Ion", "civ", {
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
