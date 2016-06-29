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
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500 }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_TRG20_F", "", 25000, 2500 },
            { "arifle_Katiba_F", "", 30000, 5000 },
            { "srifle_DMR_01_F", "", 50000, -1 },
            { "arifle_SDAR_F", "", 20000, 7500 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 7500 },
            { "acc_flashlight", "", 1000 }
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
            { "hgun_PDW2000_F", "", 9500, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Quincaillerie";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Quincaillerie Station Service";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Quincaillerie Police";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
		    { "Binocular", "", 15, -1 },
			{ "ItemGPS", "", 10, -1 },
			{ "ToolKit", "", 50, -1 },
			{ "FirstAidKit", "", 15, -1 },
			{ "pmc_earpiece", "", 100, -1 },
			{ "Rangefinder", "", 15, -1 },  
			{ "tf_anprc152", "Radio", 0 }
        };
    };

    //Armurerie policier
    class cop_policier {
        name = "Armurerie Policier";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 1, "Vous devez être au grade de Policier pour accéder à l'Armurerie Policier" };
        items[] = { 
            { "SmokeShell", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 }      
        };
        accs[] = {
            { "acc_flashlight", "", 10 },
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 }
        };
    };
	
	//Armurerie brigadier
    class cop_brigadier {
        name = "Armurerie Brigadier";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 2, "Vous devez être au grade de Brigadier pour accéder à l'Armurerie Brigadier" };
        items[] = { 
            { "SmokeShell", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },            
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },              
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },  
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 }
            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },            
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 }           
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 }
        };
    };
	
	//Armurerie brigadier-chef
    class cop_brigadierchef {
        name = "Armurerie Brigadier-Chef";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 3, "Vous devez être au grade de Brigadier-Chef pour accéder à l'Armurerie Brigadier-Chef" };
        items[] = { 
            { "SmokeShell", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },           
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 }                        
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "optic_SOS", "", 10 }         
        };
    };	

	//Armurerie Adjudant
    class cop_adjudant {
        name = "Armurerie Adjudant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 4, "Vous devez être au grade d'Adjudant pour accéder à l'Armurerie Adjudant" };
        items[] = { 
            { "SmokeShell", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_M14_Rail", "", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 }                    
        };
    };

	//Armurerie Adjudant-Chef
    class cop_adjudantchef {
        name = "Armurerie Adjudant-Chef";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 5, "Vous devez être au grade d'Adjudant-Chef pour accéder à l'Armurerie Adjudant-Chef" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 10, 10 },
            { "SmokeShell", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 },
            { "hlc_lmg_minimi", "MinimiPara | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_M14_Rail", "", 10, -1 },
            { "R3F_M4S90", "", 10, -1 },
            { "R3F_HK417L", "", 10, -1 },
            { "hlc_rifle_saiga12k", "", 10, -1 },            
            { "hlc_rifle_M21", "", 10, -1 },
            { "hlc_rifle_awmagnum_BL", "", 10, -1 }                        
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
            { "R3F_7Rnd_M4S90", "", 10 },                                    
            { "hlc_10rnd_12g_slug_S12", "", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "", 10 },                                                
            { "hlc_5rnd_300WM_mk248_AWM", "", 10 }
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }                  
        };
    };

	//Armurerie Major
    class cop_major {
        name = "Armurerie Major";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 6, "Vous devez être au grade de Major pour accéder à l'Armurerie Major" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 10, 10 },
            { "SmokeShellGreen", "", 10, 10 },
            { "HandGrenade_Stone", "Flashbang", 10, 10 },
            { "B_UavTerminal", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 },
            { "hlc_lmg_minimi", "MinimiPara | PA & OP Uniquement", 10, -1 },
            { "R3F_M4S90", "", 10, -1 },
            { "R3F_HK417L", "", 10, -1 },
            { "hlc_rifle_saiga12k", "", 10, -1 },
            { "hlc_rifle_M21", "", 10, -1 },
            { "hlc_rifle_awmagnum_BL", "", 10, -1 },             
            { "srifle_EBR_F", "", 10, -1 },           
            { "hlc_rifle_M14_Rail", "", 10, -1 },            
            { "hlc_lmg_M60E4", "", 10, -1 },
            { "R3F_FRF2", "", 10, -1 }          
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
            { "R3F_7Rnd_M4S90", "", 10 },
            { "hlc_10rnd_12g_slug_S12", "", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "", 10 },            
            { "20Rnd_762x51_Mag", "", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "", 10 },
            { "R3F_10Rnd_762x51_FRF2", "", 10 }            
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }                  
        };
    };

	//Armurerie lieutenant
    class cop_lieutenant {
        name = "Armurerie Lieutenant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 7, "Vous devez être au grade de Lieutenant pour accéder à l'Armurerie Lieutenant" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 10, 10 },
            { "SmokeShellGreen", "", 10, 10 },
            { "HandGrenade_Stone", "Flashbang", 10, 10 },
            { "B_UavTerminal", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 },
            { "hlc_lmg_minimi", "MinimiPara | PA & OP Uniquement", 10, -1 },
            { "R3F_M4S90", "", 10, -1 },
            { "R3F_HK417L", "", 10, -1 },
            { "hlc_rifle_saiga12k", "", 10, -1 },
            { "hlc_rifle_M21", "", 10, -1 },
            { "hlc_rifle_awmagnum_BL", "", 10, -1 },             
            { "srifle_EBR_F", "", 10, -1 },           
            { "hlc_rifle_M14_Rail", "", 10, -1 },            
            { "hlc_lmg_M60E4", "", 10, -1 },
            { "R3F_FRF2", "", 10, -1 },
            { "srifle_LRR_F", "", 10, -1 },
            { "hlc_lmg_m60", "", 10, -1 }, 
            { "LMG_Mk200_F", "", 10, -1 },
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
            { "R3F_7Rnd_M4S90", "", 10 },
            { "hlc_10rnd_12g_slug_S12", "", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "", 10 },                                    
            { "20Rnd_762x51_Mag", "", 10 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "", 10 },
            { "R3F_10Rnd_762x51_FRF2", "", 10 },
            { "7Rnd_408_Mag", "", 10 },           
            { "200Rnd_65x39_cased_Box_Tracer", "", 10 }                                    
        };
        accs[] = {};
    };

	//Armurerie Capitaine
    class cop_capitaine {
        name = "Armurerie Capitaine";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 8, "Vous devez être au grade de Capitaine pour accéder à l'Armurerie Capitaine" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 10, 10 },
            { "SmokeShellGreen", "", 10, 10 },
            { "HandGrenade_Stone", "Flashbang", 10, 10 },
            { "B_UavTerminal", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 },
            { "hlc_lmg_minimi", "MinimiPara | PA & OP Uniquement", 10, -1 },
            { "R3F_M4S90", "", 10, -1 },
            { "R3F_HK417L", "", 10, -1 },
            { "hlc_rifle_saiga12k", "", 10, -1 },
            { "hlc_rifle_M21", "", 10, -1 },
            { "hlc_rifle_awmagnum_BL", "", 10, -1 },             
            { "srifle_EBR_F", "", 10, -1 },           
            { "hlc_rifle_M14_Rail", "", 10, -1 },            
            { "hlc_lmg_M60E4", "", 10, -1 },
            { "R3F_FRF2", "", 10, -1 },
            { "srifle_LRR_F", "", 10, -1 },
            { "hlc_lmg_m60", "", 10, -1 }, 
            { "LMG_Mk200_F", "", 10, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 10, -1 },
            { "R3F_M107", "", 10, -1 },
            { "R3F_Minimi_762", "", 10, -1 }          
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
            { "R3F_7Rnd_M4S90", "", 10 },
            { "hlc_10rnd_12g_slug_S12", "", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "", 10 },                                    
            { "20Rnd_762x51_Mag", "", 10 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "", 10 },
            { "R3F_10Rnd_762x51_FRF2", "", 10 },
            { "7Rnd_408_Mag", "", 10 },           
            { "200Rnd_65x39_cased_Box_Tracer", "", 10 },
            { "R3F_7Rnd_127x99_PGM", "", 10 },
            { "R3F_10Rnd_127x99_M107", "", 10 },
            { "R3F_100Rnd_762x51_MINIMI", "", 10 }           
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }                  
        };
    };

	//Armurerie Commandant
    class cop_commandant {
        name = "Armurerie Commandant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 9, "Vous devez être au grade de Commandant pour accéder à l'Armurerie Commandant" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 10, 10 },
            { "SmokeShellGreen", "", 10, 10 },
            { "HandGrenade_Stone", "Flashbang", 10, 10 },
            { "B_UavTerminal", "", 10, 10 },
            { "ALFR_Shield_F", "", 10, 10 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 10, 10 },
            { "arifle_SDAR_F", "", 10, 10 },            
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_smg_mp5k_PDW", "", 10, -1 },
            { "hlc_rifle_M4", "", 10, -1 },
            { "R3F_Famas_F1", "", 10, -1 },
            { "R3F_MP5A5", "", 10, -1 },
            { "hlc_rifle_vendimus", "", 10, -1 },
            { "R3F_HK416M_HG", "", 10, -1 },
            { "arifle_MX_Black_F", "", 10, -1 },
            { "hlc_rifle_Colt727", "", 10, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 10, -1 },
            { "hlc_rifle_m14sopmod", "", 10, -1 },
            { "R3F_HK417M_HG", "", 10, -1 },
            { "hlc_rifle_FAL5000Rail", "", 10, -1 },
            { "arifle_MXM_Black_F", "", 10, -1 },
            { "hlc_lmg_minimi", "MinimiPara | PA & OP Uniquement", 10, -1 },
            { "R3F_M4S90", "", 10, -1 },
            { "R3F_HK417L", "", 10, -1 },
            { "hlc_rifle_saiga12k", "", 10, -1 },
            { "hlc_rifle_M21", "", 10, -1 },
            { "hlc_rifle_awmagnum_BL", "", 10, -1 },             
            { "srifle_EBR_F", "", 10, -1 },           
            { "hlc_rifle_M14_Rail", "", 10, -1 },            
            { "hlc_lmg_M60E4", "", 10, -1 },
            { "R3F_FRF2", "", 10, -1 },
            { "srifle_LRR_F", "", 10, -1 },
            { "hlc_lmg_m60", "", 10, -1 }, 
            { "LMG_Mk200_F", "", 10, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 10, -1 },
            { "R3F_M107", "", 10, -1 },
            { "R3F_Minimi_762", "", 10, -1 }          
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "", 10 },
            { "DDOPP_3Rnd_X3", "", 10 },
            { "30Rnd_9x21_Mag", "", 10 },  
            { "R3F_30Rnd_9x19_MP5", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "", 10 },
            { "30Rnd_556x45_Stanag", "", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "", 10 },           
            { "29rnd_300BLK_STANAG_T", "", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "", 10 },
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "hlc_200rnd_556x45_M_SAW", "", 10 },
            { "hlc_20Rnd_762x51_B_M14", "", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "", 10 },                        
            { "R3F_7Rnd_M4S90", "", 10 },
            { "hlc_10rnd_12g_slug_S12", "", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "", 10 },                                    
            { "20Rnd_762x51_Mag", "", 10 },
            { "hlc_100Rnd_762x51_M_M60E4", "", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "", 10 },
            { "R3F_10Rnd_762x51_FRF2", "", 10 },
            { "7Rnd_408_Mag", "", 10 },           
            { "200Rnd_65x39_cased_Box_Tracer", "", 10 },
            { "R3F_7Rnd_127x99_PGM", "", 10 },
            { "R3F_10Rnd_127x99_M107", "", 10 },
            { "R3F_100Rnd_762x51_MINIMI", "", 10 }           
        };
        accs[] = {
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_acc_LLM01L", "", 10 },
            { "FHQ_acc_ANPEQ15_black", "", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 },
            { "optic_NVS", "Viseur Nocturne (NVS)", 10 },                     
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
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 1200, 980 }
        };
        mags[] = {};
        accs[] = {};
    };
};
