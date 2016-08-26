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
            { "30Rnd_9x21_Mag", "Chargeur PDW2000 9mm", 10 }
        };
        accs[] = {};
    };
    
    class turtleshop {
        name = "Vendeur d'équipement de Tortues";
        side = "civ";
        level[] = { "", "", -1, "" };
        items[] = {        
            { "arifle_SDAR_F", "", 75000, -1 }
        };
        mags[] = {
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 25 }  
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
			{ "FirstAidKit", "", 105, -1 },
			{ "pmc_earpiece", "", 2500, -1 },
			{ "Rangefinder", "", 1, -1 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_blue", "", 300, -1 }
        };
    };
            
    //Armurerie Armée lvl 1
    class cop_armee1 {
        name = "Armurerie Armée";
        side = "cop";
        license = "armee";
        level[] = { "life_coplevel", "EQUAL", 1, "Vous devez être dans l'Armée - Grade Trouffion" };
        items[] = {
            { "SmokeShell", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26_b", "", 10, -1 },
            { "DDOPP_X3_b", "", 10, -1 },
            { "SMG_02_F", "", 10, -1 },
            { "arifle_SDAR_F", "", 10, -1 },
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "R3F_Famas_G2_HG", "", 1000, -1 }, 
            { "R3F_Famas_F1_HG_DES", "", 1000, -1 },
            { "LMG_Mk200_F", "MK200 - PA Only", 5000, -1 },
            { "acc_flashlight", "", 10 }, 
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 },
            { "FHQ_optic_AC11704", "", 10 },
            { "FHQ_optic_ACOG", "", 10 },                   
            { "optic_Yorris", "", 10 },                                 
            { "optic_MRD", "", 10 },  
            { "optic_Hamr", "", 10 },
            { "optic_MRCO", "", 10 },
            { "optic_Arco", "", 10 },       
            { "bipod_01_F_blk", "", 10 }        
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas x25", 10 },
            { "R3F_30Rnd_556x45_TRACER_FAMAS", "Chargeur Famas x30", 10 },
            { "200Rnd_65x39_cased_Box", "Chargeur MK200", 10 }
        };
        accs[] = {};
    };
    
    //Armurerie Armée lvl 2
    class cop_armee2 {
        name = "Armurerie Armée";
        side = "cop";
        license = "armee";
        level[] = { "life_coplevel", "EQUAL", 2, "Vous devez être dans l'Armée - Grade Sous Officier" };
        items[] = { 
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26_b", "", 10, -1 },
            { "DDOPP_X3_b", "", 10, -1 },
            { "hgun_Pistol_heavy_01_F", "", 10, -1 },
            { "hgun_ACPC2_F", "", 10, -1 },
            { "SMG_02_F", "", 10, -1 },
            { "arifle_SDAR_F", "", 10, -1 },
            { "R3F_Famas_G2_HG", "", 1000, -1 }, 
            { "R3F_Famas_F1_HG_DES", "", 1000, -1 },
            { "LMG_Mk200_F", "", 20000, -1 },
            { "hlc_m249_pip2", "M249", 200000, -1 },
            { "hlc_lmg_minimi", "Minimi", 20000, -1 },
            { "arifle_SPAR_01_blk_F", "", 20000, -1 },
            { "SMG_02_F", "", 20000, -1 },
            { "hlc_rifle_G36MLIC", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_rifle_FAL5061Rail", "", 20000, -1 },
            { "srifle_DMR_03_F", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "bipod_03_F_blk", "", 10 },
            { "acc_flashlight", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
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
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }       
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Tazer X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },   
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "9Rnd_45ACP_Mag", "Chargeur ACP", 10 },
            { "R3F_7Rnd_M4S10", "Chargeur Benelli M4 S10", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur SPAR-16", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },    
            { "R3F_30Rnd_556x45_FAMAS", "Chargeur Famas", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur G36", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "200Rnd_65x39_cased_Box", "Chargeur MK200", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "10Rnd_65x39_cased_Box", "Chargeur MK10", 10 },
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },
            { "20Rnd_762x51_Mag", "", 10 },
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK 417", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "acc_flashlight", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
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
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }
        };
        accs[] = {};
    };
    
    //Armurerie Armée lvl 3
    class cop_armee3 {
        name = "Armurerie Armée";
        side = "cop";
        license = "armee";
        level[] = { "life_coplevel", "EQUAL", 3, "Vous devez être dans l'Armée - Grade Officiers" };
        items[] = {
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "HandGrenade_Stone", "Flashbang", 10, -1 },
            { "B_UavTerminal", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26_b", "", 10, -1 },
            { "DDOPP_X3_b", "", 10, -1 },
            { "hgun_Pistol_heavy_01_F", "", 10, -1 },
            { "hgun_ACPC2_F", "", 10, -1 },
            { "SMG_02_F", "", 10, -1 },
            { "arifle_SDAR_F", "", 10, -1 },
            { "R3F_Famas_G2_HG", "", 1000, -1 }, 
            { "R3F_Famas_F1_HG_DES", "", 1000, -1 },
            { "LMG_Mk200_F", "", 20000, -1 },
            { "hlc_m249_pip2", "M249", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi", 20000, -1 },
            { "arifle_SPAR_01_blk_F", "", 20000, -1 },
            { "SMG_02_F", "", 20000, -1 },
            { "hlc_rifle_G36MLIC", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_rifle_FAL5061Rail", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_DMR_03_F", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "srifle_EBR_F", "", 20000, -1 },
            { "srifle_LRR_F", "", 20000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 20000, -1 },
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
            { "DDOPP_1Rnd_X26", "Chargeur Tazer X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },   
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "9Rnd_45ACP_Mag", "Chargeur ACP", 10 },
            { "R3F_7Rnd_M4S10", "Chargeur Benelli M4 S10", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur SPAR-16", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },    
            { "R3F_30Rnd_556x45_FAMAS", "Chargeur Famas", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur G36", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "200Rnd_65x39_cased_Box", "Chargeur MK200", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "10Rnd_65x39_cased_Box", "Chargeur MK10", 10 },
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },
            { "20Rnd_762x51_Mag", "", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK 417", 10 },
            { "7Rnd_408_Mag", "Chargeur M320", 10 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 10 },
            { "bipod_03_F_blk", "", 10 },
            { "acc_flashlight", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
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
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }
        };
        accs[] = {};
    };

    //Armurerie policier
    class cop_policier {
        name = "Armurerie Policier";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "EQUAL", 1, "Vous devez être au grade de Policier pour accéder à l'Armurerie Policier" };
        items[] = { 
            { "SmokeShell", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "acc_flashlight", "", 10 },
            { "optic_Holosight", "", 10 },
            { "R3F_AIMPOINT", "", 10 },
            { "FHQ_optic_AIM", "", 10 },
            { "FHQ_optic_MARS", "", 10 },            
            { "C1987_zeiss_AIM", "", 10 }
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },            
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },              
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },  
            { "R3F_MP5A5", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
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
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },            
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },           
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "R3F_MP5A5", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
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
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "R3F_MP5A5", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_M14_Rail", "", 20000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
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
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "R3F_MP5A5", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 20000, -1 },
            { "hlc_rifle_M14_Rail", "", 20000, -1 },
            { "R3F_M4S90", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 20000, -1 },            
            { "hlc_rifle_M21", "", 20000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },
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
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },                                    
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 10 },                                                
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "HandGrenade_Stone", "Flashbang", 10, -1 },
            { "B_UavTerminal", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 20000, -1 },
            { "R3F_M4S90", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 20000, -1 },
            { "hlc_rifle_M21", "", 20000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 20000, -1 },            
            { "hlc_lmg_M60E4", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
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
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur Chargeur FN FAL", 10 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 10 },            
            { "20Rnd_762x51_Mag", "Chargeur MK18", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "HandGrenade_Stone", "Flashbang", 10, -1 },
            { "B_UavTerminal", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 20000, -1 },
            { "R3F_M4S90", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 20000, -1 },
            { "hlc_rifle_M21", "", 20000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 20000, -1 },            
            { "hlc_lmg_M60E4", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 20000, -1 },
            { "hlc_lmg_m60", "", 20000, -1 }, 
            { "LMG_Mk200_F", "", 20000, -1 }, 
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
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 10 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 10 },
            { "hlc_10Rnd_762x51_M_M10E4", "Chargeur M10E4", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "7Rnd_408_Mag", "Chargeur M320", 10 },           
            { "10Rnd_65x39_cased_Box_Tracer", "Chargeur MK10", 10 },
            { "acc_flashlight", "", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 300, -1 },
            { "HandGrenade_Stone", "Flashbang", 10, -1 },
            { "B_UavTerminal", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "arifle_MXM_Black_F", "", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 20000, -1 },
            { "R3F_M4S90", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 20000, -1 },
            { "hlc_rifle_M21", "", 20000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 20000, -1 },            
            { "hlc_lmg_M60E4", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 20000, -1 },
            { "hlc_lmg_m60", "", 20000, -1 }, 
            { "LMG_Mk200_F", "", 20000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 20000, -1 },
            { "R3F_M107", "", 20000, -1 },
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
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur Famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 10 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 10 },
            { "hlc_10Rnd_762x51_M_M10E4", "Chargeur M10E4", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "7Rnd_408_Mag", "Chargeur M320", 10 },           
            { "10Rnd_65x39_cased_Box_Tracer", "Chargeur MK10", 10 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 10 },
            { "R3F_10Rnd_127x99_M107", "Chargeur M107", 10 }
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
            { "SmokeShell", "", 10, -1 },
            { "SmokeShellGreen", "Grenade Lacrymogène", 10, -1 },
            { "HandGrenade_Stone", "Flashbang", 10, -1 },
            { "B_UavTerminal", "", 10, -1 },
            { "ALFR_Shield_F", "", 10, -1 },
            { "DDOPP_X26", "", 10, -1 },
            { "DDOPP_X3", "", 10, -1 },
            { "SMG_02_F", "", 1000, -1 },
            { "arifle_SDAR_F", "", 1000, -1 },            
            { "R3F_MP5A5", "", 1000, -1 },
            { "hlc_smg_mp5k_PDW", "", 1000, -1 },
            { "hlc_rifle_M4", "", 10000, -1 },
            { "R3F_Famas_F1", "", 10000, -1 },
            { "hlc_rifle_vendimus", "", 10000, -1 },
            { "R3F_HK416M_HG", "", 15000, -1 },
            { "arifle_MX_Black_F", "", 15000, -1 },
            { "arifle_MXM_Black_F", "", 15000, -1 },
            { "hlc_rifle_Colt727", "", 15000, -1 },
            { "hlc_m249_pip2", "M249 | PA & OP Uniquement", 15000, -1 },
            { "hlc_rifle_m14sopmod", "", 20000, -1 },
            { "R3F_HK417M_HG", "", 20000, -1 },
            { "hlc_rifle_FAL5000Rail", "", 20000, -1 },
            { "hlc_lmg_minimi", "Minimi | PA & OP Uniquement", 20000, -1 },
            { "R3F_M4S90", "", 20000, -1 },
            { "R3F_HK417L", "", 20000, -1 },
            { "hlc_rifle_saiga12k", "", 20000, -1 },
            { "hlc_rifle_M21", "", 20000, -1 },
            { "hlc_rifle_awmagnum_BL", "", 20000, -1 },             
            { "srifle_EBR_F", "", 20000, -1 },           
            { "hlc_rifle_M14_Rail", "", 20000, -1 },            
            { "hlc_lmg_M60E4", "", 20000, -1 },
            { "R3F_FRF2", "", 20000, -1 },
            { "srifle_LRR_F", "", 20000, -1 },
            { "hlc_lmg_m60", "", 20000, -1 }, 
            { "LMG_Mk200_F", "", 20000, -1 },
            { "R3F_PGM_Hecate_II_POLY", "", 20000, -1 },
            { "R3F_M107", "", 20000, -1 },
            { "R3F_Minimi_762", "", 20000, -1 },
            { "bipod_03_F_blk", "", 10 },
            { "acc_flashlight", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
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
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 },
            { "optic_NVS", "Viseur Nocturne (NVS)", 100 }            
        };
        mags[] = {
            { "DDOPP_1Rnd_X26", "Chargeur Taser X26", 10 },
            { "DDOPP_3Rnd_X3", "Chargeur Taser X3", 10 },
            { "30Rnd_9x21_Mag", "Chargeur Sting", 10 },  
            { "20Rnd_556x45_UW_mag", "Chargeur SDAR", 10 },           
            { "R3F_30Rnd_9x19_MP5", "Chargeur MP5 A5", 10 },
            { "hlc_30Rnd_9x19_B_MP5", "Chargeur HK MP5K", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur M4", 10 },           
            { "R3F_25Rnd_556x45_TRACER_FAMAS", "Chargeur famas", 10 },           
            { "29rnd_300BLK_STANAG_T", "Chargeur AR15", 10 }, 
            { "R3F_30Rnd_556x45_TRACER_HK416", "Chargeur HK416", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MX", 10 },
            { "30Rnd_65x39_caseless_mag", "Chargeur MXM", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur Colt Carabine", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur M249", 10 },
            { "hlc_200rnd_556x45_T_SAW", "Chargeur Minimi", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur M14", 10 },                        
            { "R3F_20Rnd_762x51_HK417", "Chargeur HK417", 10 },                        
            { "hlc_20Rnd_762x51_B_fal", "Chargeur FN FAL", 10 },                        
            { "R3F_7Rnd_M4S90", "Chargeur Benelli M4 S90", 30 },
            { "hlc_10rnd_12g_slug_S12", "Chargeur Slug Saiga 12K", 10 },                                    
            { "hlc_10rnd_12g_buck_S12", "Chargeur Buck Saiga 12K", 10 },                                    
            { "20Rnd_762x51_Mag", "Chargeur MK18", 10 },
            { "hlc_10Rnd_762x51_M_M10E4", "Chargeur M10E4", 10 },
            { "hlc_5rnd_300WM_mk248_AWM", "Chargeur AWM", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "7Rnd_408_Mag", "Chargeur M320", 10 },           
            { "10Rnd_65x39_cased_Box_Tracer", "Chargeur MK10", 10 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 10 },
            { "R3F_10Rnd_127x99_M107", "Chargeur M107", 10 },
            { "R3F_10Rnd_762x51_MINIMI", "Chargeur Minimi 7.62", 10 }
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
            { "Medikit", "", 150, -1 },
            { "pmc_earpiece", "", 2500, -1 },
            { "Chemlight_green", "", 300, -1 }
        };
        mags[] = {};
        accs[] = {};
    };
    
    //Staff
    class staff_weapons {
        name = "Armurerie du Staff";
        side = "civ";
        license = "staff";
        level[] = { "", "", -1, "" };
        items[] = {
            { "", "- ! - ! - NVG Cheated - ! - ! -", 1, -1 },
            { "NVGogglesB_gry_F", "Lunette Nocturne + Thermique", 10, -1 },
            { "NVGogglesB_blk_F", "Lunette Nocturne + Thermique", 10, -1 },
            { "NVGogglesB_grn_F", "Lunette Nocturne + Thermique", 10, -1 },
            { "", "- ! - ! - Armes Légales - ! - ! -", 1, -1 },
            { "hgun_Pistol_01_F", "", 10, -1 },
            { "hgun_ACPC2_F", "", 10, -1 },
            { "hgun_Pistol_heavy_01_F", "", 10, -1 },
            { "SMG_05_F", "",10 10, -1 },
            { "hgun_PDW2000_F", "", 10, -1 },
            { "optic_ACO_grn_smg", "", 10 },
            { "", "- ! - ! - Armes Illégales - ! - ! -", 1, -1 },
            { "Rangefinder", "", 10, -1 },
            { "arifle_AKS_F", "", 10, -1 },                      //AKS 74u
            { "arifle_Mk20_F", "", 10, -1 },                    //Mk20
            { "hlc_rifle_aek971_mtk", "", 10, -1 },             //AEK971
            { "hlc_rifle_SAMR", "", 10, -1 },                   //RRA LAR 15
            { "arifle_SPAR_02_blk_F", "", 10, -1 },             //SPAR 
            { "arifle_ARX_hex_F", "", 10, -1 },                 //TYPE 115
            { "arifle_CTARS_hex_F", "", 10, -1 },               //CAR 95
            { "srifle_DMR_07_hex_F", "", 10, -1 },              //CMR 76
            { "hlc_rifle_stgw57_commando", "", 10, -1 },        //SIG STGW Commando
            { "hlc_rifle_stgw57_RIS", "", 10, -1 },             //SIG.STGW RIS
            { "hlc_rifle_STG58F", "", 10, -1 },                 //SIG.58
            { "arifle_AKM_F", "", 10, -1 },                     //AKM
            { "hlc_rifle_M14_Rail", "", 10, -1 },               //M14 rail
            { "hlc_rifle_m14sopmod", "", 10, -1 },              //M14 sopmod
            { "srifle_DMR_01_F", "", 10, -1 },                  //Rahim
            { "srifle_DMR_03_woodland_F", "", 10, -1 },         //MK-I
            { "srifle_DMR_03_multicam_F", "", 10, -1 },
            { "srifle_DMR_03_khaki_F", "", 10, -1 },
            { "srifle_DMR_03_tan_F", "", 10, -1 },
            { "arifle_SPAR_03_khk_F", "", 10, -1 },
            { "arifle_AK12_F", "", 10, -1 },                    //AK12
            { "hlc_rifle_awMagnum_FDE_ghillie", "", 10, -1 },   //AWM
            { "R3F_FRF2_DES", "", 10, -1 },                     //FRF2
            { "LMG_Zafir_F", "", 10, -1 },                      //Zafir
            { "R3F_PGM_Hecate_II_DES", "", 10, -1 },            //Hecate II
            { "R3F_TAC50", "", 10, -1 },                        //McMillan
            { "", "- ! - ! - EXTRA - ! - ! -", 1, -1 },
            { "R3F_Minimi_762_HG", "", 10, -1 },                //Minimi Para   7.62
            { "hlc_m249_SQuantoon", "", 10, -1 },               //M249   
            { "launch_RPG7_F", "", 10, -1 },
            { "R3F_AT4CS", "", 10, -1 },                        //AT-4
            { "", "- ! - ! - Viseurs (Illégaux) - ! - ! -", 1, -1 },
            { "bipod_03_F_blk", "", 10 },
            { "R3F_LAMPE_SURB", "", 10 },
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
            { "FHQ_optic_ACOG", "", 10 },
            { "R3F_EOTECH", "", 10 },            
            { "optic_SOS", "", 10 },
            { "optic_DMS", "", 10 },                     
            { "optic_KHS_blk", "", 10 },                                 
            { "optic_AMS", "", 10 },         
            { "optic_LRPS", "", 10 }
            
        };
        mags[] = {
            { "CUP_7Rnd_45ACP_1911", "Chargeur M1911", 10 },
            { "10Rnd_9x21_Mag", "Chargeur PM 9mm", 10 },
            { "9Rnd_45ACP_Mag", "Chargeur ACP-C2", 10 },
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "30Rnd_9x21_Mag_SMG_02", "Chargeur Protector 9mm", 10 },
            { "30Rnd_9x21_Mag", "Chargeur PDW2000 9mm", 10 },
            { "9Rnd_45ACP_Mag", "", 10 },
            { "11Rnd_45ACP_Mag", "Chargeur 4-Five", 10 },
            { "CUP_6Rnd_45ACP_M", "", 10 },
            { "CUP_30Rnd_9x19_UZI", "", 10 },
            { "30Rnd_545x39_Mag_F", "Chargeur AKS-74U", 10 },
            { "30Rnd_556x45_Stanag", "Chargeur MK20", 10 },
            { "hlc_30Rnd_545x39_B_AK", "Chargeur AEK971", 10 },
            { "hlc_30rnd_556x45_EPR", "Chargeur RRA LAR-15", 10 },
            { "150Rnd_556x45_Drum_Mag_Tracer_F", "Chargeur SPAR-16S", 10 },
            { "30Rnd_65x39_caseless_green", "Chargeur Type 115", 10 },
            { "10Rnd_50BW_Mag_F", "Chargeur Type 115 - Cal. 50", 10 },
            { "100Rnd_580x42_Mag_Tracer_F", "Chargeur CAR-95", 10 },
            { "20Rnd_650x39_Cased_Mag_F", "Chargeur CMR 76", 10 },
            { "hlc_24Rnd_75x55_B_stgw", "Chargeur SIG STGW.57 Commando ", 10 },
            { "hlc_24Rnd_75x55_B_stgw", "Chargeur SIG STGW.57+RIS", 10 },
            { "hlc_20Rnd_762x51_B_fal", "Chargeur STG.58", 10 },
            { "30Rnd_762x39_Mag_F", "Chargeur AKM", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur Springfield M14", 10 },
            { "hlc_20Rnd_762x51_B_M14", "Chargeur Troy M14", 10 },
            { "10Rnd_762x54_Mag", "Chargeur Rahim", 10 },
            { "20Rnd_762x51_Mag", "Chargeur MK-I", 10 },
            { "20Rnd_762x51_Mag", "Chargeur SPAR-17", 10 },
            { "30Rnd_762x39_Mag_F", "Chargeur AK12", 10 },
            { "hlc_5rnd_300WM_FMJ_AWM", "Chargeur AWM", 10 },
            { "R3F_10Rnd_762x51_FRF2", "Chargeur FRF2", 10 },
            { "150Rnd_762x54_Box_Tracer", "Chargeur Zafir", 10 },
            { "R3F_7Rnd_127x99_PGM", "Chargeur PGM Hecate II", 10 },
            { "R3F_5Rnd_127x99_TAC50", "Chargeur Mc Millan TAC50", 10 },
            { "R3F_100Rnd_762x51_MINIMI", "Chargeur Minimi Para 7.62", 10 },
            { "hlc_200rnd_556x45_B_SAW", "Chargeur M249", 10, -1 },
            { "RPG7_F", "Missile RPG-7", 10, -1 },
            { "R3F_AT4CS_Mag", "Missile At-4", 10, -1 }
        };
        accs[] = {};
    };
};