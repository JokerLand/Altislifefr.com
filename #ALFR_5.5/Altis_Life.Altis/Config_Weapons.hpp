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
        name = "Armurerie Civile";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "CUP_hgun_Colt1911", "", 30000, -1 },
            { "hgun_Pistol_01_F", "", 30000, -1 },
            { "hgun_ACPC2_F", "", 25000, -1 },
            { "hgun_Pistol_heavy_01_F", "", 25000, -1 },
            { "SMG_05_F", "", 60000, -1 },
            { "hgun_PDW2000_F", "", 45000, -1 },
            { "optic_ACO_grn_smg", "", 500 }
        };
        mags[] = {
            { "CUP_7Rnd_45ACP_1911", "Chargeur M1911", 10 },
            { "10Rnd_9x21_Mag", "Chargeur PM 9mm", 10 },
            { "9Rnd_45ACP_Mag", "Chargeur ACP-C2", 10 },
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "30Rnd_9x21_Mag_SMG_02", "Chargeur Protector 9mm", 10 },
            { "30Rnd_9x21_Mag", "Chargeur PDW2000 9mm", 10}
        };
        accs[] = {};
    };

    class rebel {
        name = "Armurerie Rebelle";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Rangefinder", "", 5000, -1 },
            { "hgun_ACPC2_F", "", 25000, -1 },                      //ACP
            { "hgun_Pistol_heavy_01_F", "", 25000, -1 },            //4-Five
            { "CUP_hgun_TaurusTracker455_gold", "", 35000, -1 },    //Taurus gold
            { "CUP_hgun_MicroUzi", "", 55000, -1 },                 //Micro UZI
            { "arifle_AKS_F", "", 90000, -1 },                      //AKS 74u
            { "arifle_Mk20_F", "", 120000, -1 },                    //Mk20
            { "hlc_rifle_aek971_mtk", "", 135000, -1 },             //AEK971
            { "hlc_rifle_SAMR", "", 140000, -1 },                   //RRA LAR 15
            { "arifle_SPAR_02_blk_F", "", 150000, -1 },             //SPAR 
            { "arifle_ARX_hex_F", "", 150000, -1 },                 //TYPE 115
            { "arifle_CTARS_hex_F", "", 150000, -1 },               //CAR 95
            { "srifle_DMR_07_hex_F", "", 160000, -1 },              //CMR 76
            { "hlc_rifle_stgw57_commando", "", 160000, -1 },        //SIG STGW Commando
            { "hlc_rifle_stgw57_RIS", "", 160000, -1 },             //SIG.STGW RIS
            { "hlc_rifle_STG58F", "", 170000, -1 },                 //SIG.58
            { "arifle_AKM_F", "", 175000, -1 },                     //AKM
            { "hlc_rifle_M14_Rail", "", 175000, -1 },               //M14 rail
            { "hlc_rifle_m14sopmod", "", 175000, -1 },              //M14 sopmod
            { "srifle_DMR_01_F", "", 180000, -1 },                  //Rahim
            { "srifle_DMR_03_woodland_F", "", 190000, -1 },         //MK-I
            { "srifle_DMR_03_multicam_F", "", 190000, -1 },
            { "srifle_DMR_03_khaki_F", "", 190000, -1 },
            { "srifle_DMR_03_tan_F", "", 190000, -1 },
            { "arifle_SPAR_03_khk_F", "", 200000, -1 },
            { "arifle_AK12_F", "", 200000, -1 },                    //AK12
            { "hlc_rifle_awMagnum_FDE_ghillie", "", 350000, -1 },   //AWM
            { "R3F_FRF2_DES", "", 350000, -1 },                     //FRF2
            { "LMG_Zafir_F", "", 400000, -1 },                      //Zafir
            { "R3F_PGM_Hecate_II_DES", "", 600000, -1 },            //Hecate II
            { "R3F_TAC50", "", 600000, -1 },                     //McMillan
            { "bipod_03_F_blk", "", 250 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 25 },
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 25 },
            { "CUP_6Rnd_45ACP_M", "", 30 },
            { "CUP_30Rnd_9x19_UZI", "", 55 },
            { "30Rnd_545x39_Mag_F", "Chargeur AKS-74U", 90 },
            { "30Rnd_556x45_Stanag", "Chargeur MK20", 120 },
            { "hlc_30Rnd_545x39_B_AK", "Chargeur AEK971", 135 },
            { "hlc_30rnd_556x45_EPR", "Chargeur RRA LAR-15", 140 },
            { "150Rnd_556x45_Drum_Mag_Tracer_F", "Chargeur SPAR-16S", 150 },
            { "30Rnd_65x39_caseless_green", "Chargeur Type 115", 150 },
            { "100Rnd_580x42_Mag_Tracer_F", "Chargeur CAR-95", 150 },
            { "20Rnd_650x39_Cased_Mag_F", "Chargeur CMR 76", 160 },
            { "hlc_24Rnd_75x55_B_stgw", "Chargeur SIG STGW.57 Commando ", 160 },
            { "hlc_24Rnd_75x55_B_stgw", "Chargeur SIG STGW.57+RIS", 160 },
            { "hlc_20Rnd_762x51_B_fal", "Chargeur STG.58", 170 },
            { "30Rnd_762x39_Mag_F", "Chargeur AKM", 175 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur Springfield M14", 175 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur Troy M14", 175 },
            { "10Rnd_762x54_Mag", "Chargeur Rahim", 180 },
            { "20Rnd_762x51_Mag", "Chargeur MK-I", 190 },
            { "20Rnd_762x51_Mag", "Chargeur SPAR-17", 200 },
            { "30Rnd_762x39_Mag_F", "Chargeur AK12", 200 },
            { "hlc_5rnd_300WM_FMJ_AWM", "Chargeur AWM", 350 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 350 },
            { "150Rnd_762x54_Box_Tracer", "Chargeur Zafir", 400 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 600 },
            { "R3F_5Rnd_127x99_TAC50", "Chargeur Mc Millan TAC50", 600 }
        };
        accs[] = {};
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 10000, -1 },
            { "hgun_Pistol_heavy_02_F", "", 12000, -1 },
            { "hgun_ACPC2_F", "", 15000, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 },
            { "optic_ACO_grn_smg", "", 2500 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {};
    };

    //Basic Shops
    class genstore {
        name = "Quincaillerie";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, -1 },
            { "ItemMap", "", 50, -1 },
            { "ItemCompass", "", 50, -1 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, -1 },
            { "NVGoggles", "", 2000, -1 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, -1 },
            { "Chemlight_green", "", 300, -1 },
            { "Chemlight_blue", "", 300, -1 }
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
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 150, -1 },
            { "ItemMap", "", 50, -1 },
            { "ItemCompass", "", 50, -1 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, -1 },
            { "NVGoggles", "", 2500, -1 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, -1 },
            { "Chemlight_green", "", 300, -1 },
            { "Chemlight_blue", "", 300, -1 }
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
		    { "Binocular", "", 150, -1 },
			{ "ItemGPS", "", 150, -1 },
			{ "ToolKit", "", 250, -1 },
			{ "FirstAidKit", "", 105, -1 },
			{ "pmc_earpiece", "", 2500, -1 },
			{ "Rangefinder", "", 1, -1 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_blue", "", 300, -1 }
        };
    };
    
    //SWAT
    /*class swatweapons {
        name = "Armurerie S.W.A.T";
        side = "cop";
        license = "swat";
        level[] = { "life_coplevel", "EQUAL", 10, "Vous devez être du S.W.A.T pour accéder à cette armurerie" };
        items[] = { 
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "hgun_Pistol_heavy_01_F", "", 1000, -1 },
            { "hgun_ACPC2_F", "", 1000, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "arifle_SPAR_01_blk_F", "", 5000, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "R3F_Famas_G2_HG", "", 7000, -1 },
            { "hlc_rifle_G36MLIC", "", 8000, -1 },
            { "arifle_MXM_Black_F", "", 9000, -1 },
            { "LMG_Mk200_F", "", 15000, -1 },
            { "hlc_rifle_FAL5061Rail", "", 20000, -1 },
            { "srifle_EBR_F", "", 20000, -1 },
            { "srifle_DMR_03_F", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "srifle_LRR_F", "", 350000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 400000, -1 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Tazer X26", 10 },
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "9Rnd_45ACP_Mag", "Chargeur ACP", 10 },
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "30Rnd_556x45_Stanag", "Chargeur SPAR-16", 50 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 50 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 }      
            { "R3F_30Rnd_556x45_FAMAS", "Chargeur Famas", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur G36", 80 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 90 },
            { "200Rnd_65x39_cased_Box", "Chargeur MK200", 150 },
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 200 },
            { "20Rnd_762x51_Mag", "Chargeur MK18 + MK-I", 200 },
            { "20Rnd_762x51_Mag", "Chargeur MK-I", 200 },
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK 417", 200 },
            { "7Rnd_408_Mag", "Chargeur M320", 3500 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 4000 },
            { "bipod_03_F_blk", "", 250 },
            { "acc_flashlight", "", 750 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }
        };
        accs[] = {};
    };*/

    //Armurerie policier
    class cop_policier {
        name = "Armurerie Policier";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 1, "Vous devez être au grade de Policier pour accéder à l'Armurerie Policier" };
        items[] = { 
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 5000, -1 },
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 }
        };
        accs[] = {};
    };
	
	//Armurerie brigadier
    class cop_brigadier {
        name = "Armurerie Brigadier";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 2, "Vous devez être au grade de Brigadier pour accéder à l'Armurerie Brigadier" };
        items[] = { 
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },            
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },              
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 5000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },  
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },            
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 125 }
        };
        accs[] = {};
    };
	
	//Armurerie brigadier-chef
    class cop_brigadierchef {
        name = "Armurerie Brigadier-Chef";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 3, "Vous devez être au grade de Brigadier-Chef pour accéder à l'Armurerie Brigadier-Chef" };
        items[] = { 
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },           
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 250 },
            { "optic_SOS", "", 3000 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 75 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 150 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 125 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 }
        };
        accs[] = {};
    };	

	//Armurerie Adjudant
    class cop_adjudant {
        name = "Armurerie Adjudant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 4, "Vous devez être au grade d'Adjudant pour accéder à l'Armurerie Adjudant" };
        items[] = { 
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_M14_Rail", "", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "acc_flashlight", "", 720 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 2500 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 150 }
        };
        accs[] = {};
    };

	//Armurerie Adjudant-Chef
    class cop_adjudantchef {
        name = "Armurerie Adjudant-Chef";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 5, "Vous devez être au grade d'Adjudant-Chef pour accéder à l'Armurerie Adjudant-Chef" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 2000, -1 },
            { "SmokeShell", "", 100, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 17500, -1 },
            { "hlc_rifle_M14_Rail", "", 15000, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 5000, -1 },            
            { "hlc_rifle_M21", "", 15000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 250 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur Minimi", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 150 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },                                    
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 50 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 50 },                                                
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 200 }
        };
        accs[] = {};
    };

	//Armurerie Major
    class cop_major {
        name = "Armurerie Major";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 6, "Vous devez être au grade de Major pour accéder à l'Armurerie Major" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 2000, -1 },
            { "SmokeShellGreen", "", 100, -1 },
            { "HandGrenade_Stone", "Flashbang", 2000, -1 },
            { "B_UavTerminal", "", 500, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 17500, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 5000, -1 },
            { "hlc_rifle_M21", "", 15000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 15000, -1 },            
            { "hlc_lmg_M60E4", "", 25000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 250 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur Minimi", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur Chargeur FN FAL", 150 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 50 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 50 },            
            { "20Rnd_762x51_Mag", "Chargeur MK18", 200 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 200 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 200 }
        };
        accs[] = {};
    };

	//Armurerie lieutenant
    class cop_lieutenant {
        name = "Armurerie Lieutenant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 7, "Vous devez être au grade de Lieutenant pour accéder à l'Armurerie Lieutenant" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 2000, -1 },
            { "SmokeShellGreen", "", 100, -1 },
            { "HandGrenade_Stone", "Flashbang", 2000, -1 },
            { "B_UavTerminal", "", 500, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 17500, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 5000, -1 },
            { "hlc_rifle_M21", "", 15000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 15000, -1 },            
            { "hlc_lmg_M60E4", "", 25000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 350000, -1 },
            { "hlc_lmg_m60", "", 25000, -1 }, 
            { "LMG_Mk200_F", "", 15000, -1 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 250 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 60 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur Minimi", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 150 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 50 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 50 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 200 },
            { "hlc_100Rnd_762x51_M_M60E4", "Chargeur M60E4", 250 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 200 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 200 },
            { "7Rnd_408_Mag", "Chargeur M320", 3500 },           
            { "200Rnd_65x39_cased_Box_Tracer", "Chargeur MK200", 150 },
            { "acc_flashlight", "", 750 }
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
            { "SmokeShell", "Grenade Lacrymogène", 2000, -1 },
            { "SmokeShellGreen", "", 300, -1 },
            { "HandGrenade_Stone", "Flashbang", 2000, -1 },
            { "B_UavTerminal", "", 500, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 17500, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 5000, -1 },
            { "hlc_rifle_M21", "", 15000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 15000, -1 },            
            { "hlc_lmg_M60E4", "", 25000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 350000, -1 },
            { "hlc_lmg_m60", "", 25000, -1 }, 
            { "LMG_Mk200_F", "", 15000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 350000, -1 },
            { "R3F_M107", "", 350000, -1 },
            { "acc_flashlight", "", 750 }, 
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "bipod_03_F_blk", "", 250 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 70 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur Minimi", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 150 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 50 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 50 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 200 },
            { "hlc_100Rnd_762x51_M_M60E4", "Chargeur M60E4", 250 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 200 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 200 },
            { "7Rnd_408_Mag", "Chargeur M320", 3500 },           
            { "200Rnd_65x39_cased_Box_Tracer", "Chargeur MK200", 150 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 3500 },
            { "R3F_10Rnd_127x99_M107", "Chargeur M107", 3500 }
        };
        accs[] = {};
    };

	//Armurerie Commandant
    class cop_commandant {
        name = "Armurerie Commandant";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 9, "Vous devez être au grade de Commandant pour accéder à l'Armurerie Commandant" };
        items[] = { 
            { "SmokeShell", "Grenade Lacrymogène", 2000, -1 },
            { "SmokeShellGreen", "", 100, -1 },
            { "HandGrenade_Stone", "Flashbang", 2000, -1 },
            { "B_UavTerminal", "", 500, -1 },
            { "ALFR_Shield_F", "", 1000, -1 },
            { "DDOPP_X26", "", 100, -1 },
            { "DDOPP_X3", "", 100, -1 },
            { "SMG_02_F", "", 5000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 6000, -1 },
            { "hlc_smg_mp5k_PDW", "", 6000, -1 },
            { "hlc_rifle_M4", "", 7000, -1 },
            { "R3F_Famas_F1", "", 7000, -1 },
            { "hlc_rifle_vendimus", "", 7000, -1 },
            { "R3F_HK416M_HG", "", 12500, -1 },
            { "arifle_MX_Black_F", "", 9000, -1 },
            { "arifle_MXM_Black_F", "", 8000, -1 },
            { "hlc_rifle_Colt727", "", 7000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 25000, -1 },
            { "hlc_rifle_m14sopmod", "", 15000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 15000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 17500, -1 },
            { "R3F_M4S90", "", 3000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 5000, -1 },
            { "hlc_rifle_M21", "", 15000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 20000, -1 },            
            { "hlc_lmg_M60E4", "", 25000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 350000, -1 },
            { "hlc_lmg_m60", "", 25000, -1 }, 
            { "LMG_Mk200_F", "", 15000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 350000, -1 },
            { "R3F_M107", "", 350000, -1 },
            { "R3F_Minimi_762", "", 75000, -1 },
            { "bipod_03_F_blk", "", 250 },
            { "acc_flashlight", "", 750 },
            { "R3F_LAMPE_SURB", "", 750 },
            { "optic_Holosight", "", 1200 },
            { "R3F_AIMPOINT", "", 1500 },
            { "FHQ_optic_AIM", "", 1500 },
            { "FHQ_optic_MARS", "", 1500 },            
            { "C1987_zeiss_AIM", "", 1500 },
            { "optic_Hamr", "", 2000 },
            { "optic_MRCO", "", 2000 },
            { "optic_Arco", "", 2000 },
            { "FHQ_optic_AC11704", "", 1500 },
            { "FHQ_acc_LLM01L", "", 1500 },
            { "FHQ_acc_ANPEQ15_black", "", 1500 },
            { "FHQ_optic_ACOG", "", 1500 },
            { "R3F_EOTECH", "", 1500 },            
            { "optic_SOS", "", 3000 },
            { "optic_DMS", "", 3500 },                     
            { "optic_KHS_blk", "", 1500 },                                 
            { "optic_AMS", "", 3000 },         
            { "optic_LRPS", "", 4500 },
            { "optic_NVS", "Viseur Nocturne (NVS)", 5000 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 60 },  
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 },           
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 60 },
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 60 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 60 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur famas", 70 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 60 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 70 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 100 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 100 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 70 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur M249", 250 },
            { "hlc_200rnd_556x45_M_SAW", "Chargeur Minimi", 250 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 150 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 200 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 150 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 50 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 50 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 200 },
            { "hlc_100Rnd_762x51_M_M60E4", "Chargeur M60E4", 250 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 200 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 200 },
            { "7Rnd_408_Mag", "Chargeur M320", 3500 },           
            { "200Rnd_65x39_cased_Box_Tracer", "Chargeur MK200", 150 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 3500 },
            { "R3F_10Rnd_127x99_M107", "Chargeur M107", 3500 },
            { "R3F_100Rnd_762x51_MINIMI", "Chargeur Minimi 7.62", 750 }
        };
        accs[] = {};
    };
    
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, -1 },
            { "Binocular", "", 150, -1 },
            { "FirstAidKit", "", 150, -1 },
            { "NVGoggles", "", 1200, -1 },
            { "Chemlight_green", "", 300, -1 }
        };
        mags[] = {};
        accs[] = {};
    };
};