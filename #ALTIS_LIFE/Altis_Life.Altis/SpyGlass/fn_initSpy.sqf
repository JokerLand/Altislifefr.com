#define GVAR_UINS uiNamespace getVariable
#define CONST(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define steamid getPlayerUID player
/*
	File: fn_initSpy.sqf

	Description:
	Does some things that I made over-complicated / un-needed but blah.
	Will eventually include server-side checks but it's blah at this point.

	Will also become a standalone system which is why it's setup like this.
*/
private["_binConfigPatches","_cfgPatches","_endM","_Admins"];
if(isServer && !hasInterface) exitWith {}; //Server doesn't need to know.

CONST(W_O_O_K_I_E_ANTI_ANTI_HAX,"false");
CONST(W_O_O_K_I_E_FUD_ANTI_ANTI_HAX,"false");
CONST(E_X_T_A_S_Y_ANTI_ANTI_HAX,"false");
CONST(E_X_T_A_S_Y_Pro_RE,"false");
CONST(E_X_T_A_S_Y_Car_RE,"false");
CONST(DO_NUKE,"false");
CONST(JxMxE_spunkveh,"false");
CONST(JxMxE_spunkveh2,"false");
CONST(JxMxE_spunkair,"false");
CONST(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE,"false");
CONST(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE_OLD,"false");
CONST(JJJJ_MMMM___EEEEEEE_SPAWN_VEH,"false");
CONST(JJJJ_MMMM___EEEEEEE_SPAWN_WEAPON,"false");


_Admins = ["76561198134471438","76561198047615445","76561198085115832","76561197998164895","76561198134996321","76561197993844196","76561198043328264","76561198127376072"]; 			//Add your admin UID here
if(getplayeruid player in _Admins) exitWith {}; //Desactive spyglass pour les admins

/*
	Compile our list of allowed addon patches, by default this DOES NOT ALLOW ANY ADDONS.

	If you want to white-list addons such as JSRS or Blastcore you need to start a test instance (Host locally and not the mission) and first fill the SPY_cfg_patchList array, once you executed it (Filled it)
	Run the following code and it will copy the list of addons / patches not in the list to your clipboard (Ctrl + V) and then add it to the array.

	_cfgPatches = [];
	_binConfigPatches = configFile >> "CfgPatches";
	for "_i" from 0 to count (_binConfigPatches)-1 do {
		_patchEntry = _binConfigPatches select _i;
		if(isClass _patchEntry) then {
			if(!((configName _patchEntry) in SPY_cfg_patchList)) then {
				_cfgPatches set[count _cfgPatches,(configName _patchEntry)];
			};
		};
	};

	copyToClipboard str(_cfgPatches);

	i.e
	["cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","JSRS_Environment","WarFXPE","cba_common","cba_events","cba_hashes","cba_network","cba_strings","cba_ui","cba_vectors","JSRS2_120mm_Cannon","JSRS2_127","JSRS2_155mm_AMOS",
	"JSRS2_230mm_Titan","JSRS2_30mm_Cannon","JSRS2_35mm_Autocannon","JSRS2_4Five45","JSRS2_ACPC","JSRS2_Autocannon","JSRS2_Bullethits","JSRS2_DAGR","JSRS2_DAR","JSRS2_EBR","JSRS2_Explosions","JSRS2_Explosives","JSRS2_Filters","JSRS2_FS2000",
	"JSRS2_Gatling","JSRS2_GMG20","JSRS2_GMG40","JSRS2_Khaybar","JSRS2_LMGRCWS","JSRS2_M134","JSRS2_M200","JSRS2_M320R","JSRS2_M6","JSRS2_Minigun","JSRS2_MX","JSRS2_NLAW","JSRS2_P07","JSRS2_PDW","JSRS2_Rahim","JSRS2_Rook40","JSRS2_RPG32",
	"JSRS2_Scorpian","JSRS2_SDAR","JSRS2_Skalpel_ATGM","JSRS2_Skyfire","JSRS2_Sonic_Cracks","JSRS2_Titan","JSRS2_TRG20","JSRS2_Vector","JSRS2_Veh_Titan","JSRS2_Zafir","JSRS2_Zubr45","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic","cba_help",
	"cba_ui_helper","cba_versioning","JSRS2_Movement","JSRS2_Silencers","cba_main","cba_main_a3","JSRS2_2S9_Sorcher","JSRS2_AFV4_Gorgon","JSRS2_AH99_Blackfoot","JSRS2_AH9_Pawnee","JSRS2_AMV7_Marshal","JSRS2_BTRK_Kamysh","JSRS2_CH49_Mohawk","JSRS2_Distance",
	"JSRS2_FighterPlane3","JSRS2_FV720_Mora","JSRS2_Hunter","JSRS2_Ifrit","JSRS2_IFV6a_Cheetah","JSRS2_IFV6c_Panther","JSRS2_M2A1_Slammer","JSRS2_M4_Scorcher","JSRS2_M5_Sandstorm","JSRS2_MBT52_Kuma","JSRS2_Mi48_Kajman","JSRS2_MSE3_Marid","JSRS2_Offroad",
	"JSRS2_Po30_Orca","JSRS2_Strider","JSRS2_SUV","JSRS2_T100_Varsuk","JSRS2_Truck1","JSRS2_Truck2","JSRS2_UAV_1","JSRS2_UH80_GhostHawk","JSRS2_Van","JSRS2_WY55_Hellcat","JSRS2_ZSU39_Tigris","cba_xeh_a3"]
*/

_patchList =
["life_server","CAData","A3_BaseConfig_F","A3_Dubbing_Radio_F","A3_Functions_F","A3_Functions_F_EPA","A3_Functions_F_EPC","A3_Data_F","A3_Data_F_ParticleEffects","A3_Editor_F","A3_Functions_F_Curator",
"A3_Language_F","A3_Language_F_Beta","A3_Language_F_Curator","A3_Language_F_EPA","A3_Language_F_EPB","A3_Language_F_EPC","A3_Language_F_Gamma","A3_LanguageMissions_F","A3_LanguageMissions_F_Beta",
"A3_LanguageMissions_F_Gamma","A3_Misc_F","A3_Misc_F_Helpers","A3_Modules_F","A3_Modules_F_DynO","A3_Modules_F_Effects","A3_Modules_F_Events","A3_Modules_F_GroupModifiers","A3_Modules_F_HC",
"A3_Modules_F_Intel","A3_Modules_F_LiveFeed","A3_Modules_F_Marta","A3_Modules_F_Misc","A3_Modules_F_Multiplayer","A3_Modules_F_ObjectModifiers","A3_Modules_F_Sites","A3_Modules_F_Skirmish",
"A3_Modules_F_StrategicMap","A3_Modules_F_Supports","A3_Modules_F_UAV","A3_Modules_F_Beta","A3_Modules_F_Beta_FiringDrills","A3_Modules_F_EPB","A3_Modules_F_EPB_Misc","A3_Music_F","A3_Music_F_EPA",
"A3_Music_F_EPB","A3_Music_F_EPC","A3_Roads_F","A3_Rocks_F","A3_Sounds_F","A3_Sounds_F_EPB","A3_Sounds_F_EPC","A3_Structures_F","A3_Structures_F_Bridges","A3_Structures_F_Civ","A3_Structures_F_Civ_Accessories",
"A3_Structures_F_Civ_Ancient","A3_Structures_F_Civ_BellTowers","A3_Structures_F_Civ_Calvaries","A3_Structures_F_Civ_Camping","A3_Structures_F_Civ_Chapels","A3_Structures_F_Civ_Constructions","A3_Structures_F_Civ_Dead",
"A3_Structures_F_Civ_Garbage","A3_Structures_F_Civ_InfoBoards","A3_Structures_F_Civ_Lamps","A3_Structures_F_Civ_Market","A3_Structures_F_Civ_Offices","A3_Structures_F_Civ_Pavements","A3_Structures_F_Civ_PlayGround",
"A3_Structures_F_Civ_SportsGrounds","A3_Structures_F_Civ_Statues","A3_Structures_F_Dominants","A3_Structures_F_Dominants_Amphitheater","A3_Structures_F_Dominants_Castle","A3_Structures_F_Dominants_Church",
"A3_Structures_F_Dominants_Hospital","A3_Structures_F_Dominants_Lighthouse","A3_Structures_F_Dominants_WIP","A3_Structures_F_Furniture","A3_Structures_F_Households","A3_Structures_F_Households_Addons",
"A3_Structures_F_Households_House_Big01","A3_Structures_F_Households_House_Big02","A3_Structures_F_Households_House_Shop01","A3_Structures_F_Households_House_Shop02","A3_Structures_F_Households_House_Small01",
"A3_Structures_F_Households_House_Small02","A3_Structures_F_Households_House_Small03","A3_Structures_F_Households_Slum","A3_Structures_F_Households_Stone_Big","A3_Structures_F_Households_Stone_Shed",
"A3_Structures_F_Households_Stone_Small","A3_Structures_F_Households_WIP","A3_Structures_F_Ind","A3_Structures_F_Ind_AirPort","A3_Structures_F_Ind_Cargo","A3_Structures_F_Ind_CarService",
"A3_Structures_F_Ind_ConcreteMixingPlant","A3_Structures_F_Ind_Crane","A3_Structures_F_Ind_DieselPowerPlant","A3_Structures_F_Ind_Factory","A3_Structures_F_Ind_FuelStation","A3_Structures_F_Ind_FuelStation_Small",
"A3_Structures_F_Ind_Pipes","A3_Structures_F_Ind_PowerLines","A3_Structures_F_Ind_ReservoirTank","A3_Structures_F_Ind_Shed","A3_Structures_F_Ind_SolarPowerPlant","A3_Structures_F_Ind_Tank",
"A3_Structures_F_Ind_Transmitter_Tower","A3_Structures_F_Ind_WavePowerPlant","A3_Structures_F_Ind_Windmill","A3_Structures_F_Ind_WindPowerPlant","A3_Structures_F_Items","A3_Structures_F_Items_Documents",
"A3_Structures_F_Items_Electronics","A3_Structures_F_Items_Cans","A3_Structures_F_Items_Gadgets","A3_Structures_F_Items_Luggage","A3_Structures_F_Items_Stationery","A3_Structures_F_Items_Tools",
"A3_Structures_F_Items_Valuables","A3_Structures_F_Items_Vessels","A3_Structures_F_Mil","A3_Structures_F_Mil_BagBunker","A3_Structures_F_Mil_BagFence","A3_Structures_F_Mil_Barracks","A3_Structures_F_Mil_Bunker",
"A3_Structures_F_Mil_Cargo","A3_Structures_F_Mil_Flags","A3_Structures_F_Mil_Fortification","A3_Structures_F_Mil_Helipads","A3_Structures_F_Mil_Offices","A3_Structures_F_Mil_Radar","A3_Structures_F_Mil_Shelters",
"A3_Structures_F_Mil_TentHangar","A3_Structures_F_Naval","A3_Structures_F_Naval_Buoys","A3_Structures_F_Naval_Piers","A3_Structures_F_Naval_RowBoats","A3_Structures_F_Research","A3_Structures_F_System",
"A3_Structures_F_Training","A3_Structures_F_Training_InvisibleTarget","A3_Structures_F_Walls","A3_Structures_F_EPA_Civ_Camping","A3_Structures_F_EPA_Civ_Constructions","A3_Structures_F_EPA_Items_Electronics",
"A3_Structures_F_EPA_Items_Food","A3_Structures_F_EPA_Items_Medical","A3_Structures_F_EPA_Items_Tools","A3_Structures_F_EPA_Items_Vessels","A3_Structures_F_EPA_Walls","A3_Structures_F_EPB_Civ_Accessories",
"A3_Structures_F_EPB_Civ_Camping","A3_Structures_F_EPB_Civ_Dead","A3_Structures_F_EPB_Civ_Garbage","A3_Structures_F_EPB_Civ_Graffiti","A3_Structures_F_EPB_Civ_PlayGround","A3_Structures_F_EPB_Furniture",
"A3_Structures_F_EPB_Items_Documents","A3_Structures_F_EPB_Items_Luggage","A3_Structures_F_EPB_Items_Military","A3_Structures_F_EPB_Items_Vessels","A3_Structures_F_EPB_Naval_Fishing","A3_Structures_F_EPC_Civ_Accessories",
"A3_Structures_F_EPC_Civ_Camping","A3_Structures_F_EPC_Civ_Garbage","A3_Structures_F_EPC_Civ_InfoBoards","A3_Structures_F_EPC_Civ_Kiosks","A3_Structures_F_EPC_Civ_PlayGround",
"A3_Structures_F_EPC_Civ_Tourism","A3_Structures_F_EPC_Dominants_GhostHotel","A3_Structures_F_EPC_Dominants_Stadium","A3_Structures_F_EPC_Furniture","A3_Structures_F_EPC_Items_Documents",
"A3_Structures_F_EPC_Items_Electronics","A3_Structures_F_EPC_Walls","A3_UIFonts_F","A3_Animals_F","A3_Animals_F_AnimConfig","A3_Animals_F_Fishes","A3_Animals_F_Kestrel","A3_Animals_F_Rabbit",
"A3_Animals_F_Seagull","A3_Animals_F_Snakes","A3_Animals_F_Turtle","A3_Animals_F_Chicken","A3_Animals_F_Dog","A3_Animals_F_Goat","A3_Animals_F_Sheep","A3_Anims_F","A3_Anims_F_Config_Sdr",
"A3_Anims_F_EPA","A3_Anims_F_EPC","A3_Map_Data","A3_Map_Stratis","A3_Map_Stratis_Scenes","A3_Plants_F_Bush","A3_Signs_F","A3_Signs_F_AD","A3_UI_F","A3_UI_F_Curator","A3_Weapons_F",
"A3_Weapons_F_NATO","A3_Weapons_F_CSAT","A3_Weapons_F_AAF","A3_weapons_F_FIA","A3_Weapons_F_ItemHolders","A3_Weapons_F_Headgear","A3_Weapons_F_Uniforms","A3_Weapons_F_Vests","A3_Weapons_F_Ammoboxes",
"A3_Weapons_F_DummyWeapons","A3_Weapons_F_Explosives","A3_Weapons_F_Items","A3_Weapons_F_Launchers_NLAW","A3_Weapons_F_Launchers_LAW","A3_Weapons_F_EBR","A3_Weapons_F_LongRangeRifles_GM6",
"A3_Weapons_F_LongRangeRifles_M320","A3_Weapons_F_Machineguns_M200","A3_Weapons_F_Pistols_P07","A3_Weapons_F_Pistols_Rook40","A3_Weapons_F_Rifles_Khaybar","A3_Weapons_F_Rifles_MX","A3_Weapons_F_Rifles_SDAR",
"A3_Weapons_F_Rifles_TRG20","A3_Weapons_F_beta","A3_Weapons_F_Beta_Ammoboxes","A3_Weapons_F_Launchers_Titan","A3_Weapons_F_beta_EBR","A3_Weapons_F_Machineguns_Zafir","A3_Weapons_F_Pistols_ACPC2","A3_Weapons_F_beta_Rifles_Khaybar",
"A3_Weapons_F_Rifles_Mk20","A3_Weapons_F_beta_Rifles_MX","A3_Weapons_F_beta_Rifles_TRG20","A3_Weapons_F_Rifles_Vector","a3_weapons_f_rifles_SMG_02","A3_Weapons_F_EPA_LongRangeRifles_DMR_01","A3_Weapons_F_EPA_EBR",
"A3_Weapons_F_EPA_LongRangeRifles_GM6","A3_Weapons_F_Pistols_Pistol_heavy_01","A3_Weapons_F_Pistols_Pistol_heavy_02","A3_Weapons_F_EPA_Rifles_MX","A3_Weapons_F_EPB_LongRangeRifles_GM3","A3_Weapons_F_EPB_LongRangeRifles_M320",
"A3_Weapons_F_EPB_Rifles_MX_Black","A3_Weapons_F_gamma","A3_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_Pistols_PDW2000","A3_Characters_F","A3_Characters_F_BLUFOR","A3_Characters_F_Civil","A3_Characters_F_Heads",
"A3_Characters_F_OPFOR","A3_Characters_F_Proxies","A3_Characters_F_Beta","A3_Characters_F_INDEP","A3_Characters_F_EPB_Heads","A3_Characters_F_Gamma","A3_Data_F_Curator","A3_Data_F_Curator_Eagle","A3_Data_F_Curator_Intel",
"A3_Data_F_Curator_Misc","A3_Data_F_Curator_Respawn","A3_UAV_F_Characters_F_Gamma","A3_UAV_F_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_gamma_Items","A3_Map_Altis","A3_Map_Altis_Scenes","A3_Missions_F","A3_Missions_F_Beta",
"A3_Missions_F_Gamma","A3_Modules_F_Curator","A3_Modules_F_Curator_Animals","A3_Modules_F_Curator_CAS","A3_Modules_F_Curator_Curator","A3_Modules_F_Curator_Effects","A3_Modules_F_Curator_Environment","A3_Modules_F_Curator_Flares",
"A3_Modules_F_Curator_Intel","A3_Modules_F_Curator_Lightning","A3_Modules_F_Curator_Mines","A3_Modules_F_Curator_Misc","A3_Modules_F_Curator_Multiplayer","A3_Modules_F_Curator_Objectives","A3_Modules_F_Curator_Ordnance",
"A3_Modules_F_Curator_Respawn","A3_Modules_F_Curator_Smokeshells","A3_Static_F","A3_Static_F_Mortar_01","A3_Static_F_Beta_Mortar_01","A3_Static_F_Gamma","A3_Static_F_Gamma_AA","A3_Static_F_Gamma_AT","A3_Static_F_Gamma_Mortar_01",
"A3_Weapons_F_Acc","A3_Weapons_F_Beta_Acc","A3_Weapons_F_EPA","A3_Weapons_F_EPA_Acc","A3_Weapons_F_EPA_Ammoboxes","A3_Weapons_F_EPB","A3_Weapons_F_EPB_Acc","A3_Weapons_F_EPB_Ammoboxes","A3_Weapons_F_EPC","A3_Weapons_F_gamma_Acc",
"A3_Air_F","A3_Air_F_Heli_Light_01","A3_Air_F_Heli_Light_02","A3_Air_F_Beta","A3_Air_F_Beta_Heli_Attack_01","A3_Air_F_Beta_Heli_Attack_02","A3_Air_F_Beta_Heli_Transport_01","A3_Air_F_Beta_Heli_Transport_02","A3_Air_F_Beta_Parachute_01",
"A3_Air_F_Beta_Parachute_02","A3_Air_F_EPB_Heli_Light_03","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPC_Plane_CAS_02","A3_Air_F_Gamma_Plane_Fighter_03","A3_Armor_F","A3_armor_f_beta","A3_Armor_F_Panther","A3_armor_f_beta_APC_Tracked_02",
"A3_Armor_F_EPB_APC_tracked_03","A3_Armor_F_EPB_MBT_03","A3_Armor_F_Slammer","A3_Armor_F_T100K","A3_Boat_F","A3_Boat_F_Boat_Armed_01","A3_Boat_F_Boat_Transport_01","A3_Boat_F_Beta_Boat_Armed_01","A3_Boat_F_Beta_Boat_Transport_01",
"A3_Boat_F_SDV_01","A3_Boat_F_EPC_Submarine_01_F","A3_Boat_F_Civilian_Boat","A3_Boat_F_Trawler","A3_Boat_F_Gamma_Boat_Transport_01","A3_Characters_F_Common","A3_Characters_F_EPA","A3_Characters_F_EPB","A3_Characters_F_EPC",
"A3_Data_F_Curator_Characters","A3_Data_F_Curator_Virtual","A3_Air_F_Gamma_UAV_01","A3_Air_F_Gamma_UAV_02","A3_Missions_F_EPA","A3_Missions_F_EPB","A3_Missions_F_EPC","A3_Modules_F_Curator_Chemlights","A3_Soft_F","A3_Soft_F_MRAP_01",
"A3_Soft_F_MRAP_02","A3_Soft_F_Offroad_01","A3_Soft_F_Quadbike","A3_Soft_F_MRAP_03","A3_Soft_F_Beta_Quadbike","A3_Soft_F_HEMTT","A3_Soft_F_TruckHeavy","A3_Soft_F_EPC_Truck_03","A3_Soft_F_Car","A3_Soft_F_Gamma_Offroad",
"A3_Soft_F_Gamma_Quadbike","A3_Soft_F_SUV","A3_Soft_F_Gamma_HEMTT","A3_Soft_F_Gamma_TruckHeavy","A3_Soft_F_Truck","A3_Structures_F_Wrecks","A3_Structures_F_EPA_Mil_Scrapyard","A3_Air_F_EPC_Plane_Fighter_03",
"A3_Armor_F_AMV","A3_Armor_F_Marid","A3_Armor_F_EPC_MBT_01","A3_Armor_F_APC_Wheeled_03","A3_CargoPoses_F","A3_Soft_F_Crusher_UGV","A3_Missions_F_Curator","A3_Data_F_Kart_ParticleEffects","A3_Language_F_Kart",
"A3_LanguageMissions_F_Kart","A3_Structures_F_Kart_Civ_SportsGrounds","A3_Structures_F_Kart_Mil_Flags","A3_Anims_F_Kart","A3_Structures_F_Kart_Signs_Companies","A3_UI_F_Kart",
"A3_Weapons_F_Kart_Pistols_Pistol_Signal_F","A3_Data_F_Kart","A3_Missions_F_Kart","A3_Modules_F_Kart","A3_Modules_F_Kart_TimeTrials","A3_Weapons_F_Kart","A3_Characters_F_Kart","A3_Soft_F_Kart_Kart_01",
"A3_Structures_F_Civ_Graffiti","A3_Structures_F_Civ_Kiosks","A3_Structures_F_Civ_Tourism","A3_Structures_F_Items_Medical","A3_Structures_F_Items_Military","A3_Structures_F_Naval_Fishing","A3_Structures_F_Signs_Companies","A3_Structures_F_Mil_Scrapyard",
"A3_Soft_F_Bootcamp_Truck","A3_Soft_F_Bootcamp_Quadbike","A3_Soft_F_Bootcamp_Offroad_01","A3_Weapons_F_Bootcamp","A3_Modules_F_Bootcamp_Misc","A3_Modules_F_Bootcamp","A3_Characters_F_Bootcamp_Common","A3_Weapons_F_Bootcamp_Ammoboxes","A3_UI_F_Bootcamp",
"A3_Characters_F_Bootcamp","A3_Weapons_F_Bootcamp_LongRangeRifles_M320","A3_Weapons_F_Bootcamp_LongRangeRifles_GM6","A3_Structures_F_Bootcamp_Items_Food","A3_Structures_F_Bootcamp_Items_Electronics","A3_Structures_F_Bootcamp_Civ_SportsGrounds",
"A3_Structures_F_Bootcamp_Civ_Camping","A3_Language_F_Bootcamp","A3_Functions_F_Bootcamp","A3_Structures_F_Bootcamp_VR_Helpers","A3_Structures_F_Bootcamp_VR_CoverObjects","A3_Structures_F_Bootcamp_VR_Blocks","A3_Structures_F_Bootcamp_Training",
"A3_Structures_F_Bootcamp_System","A3_Structures_F_Bootcamp_Items_Sport","A3_Structures_F_Bootcamp_Ind_Cargo","A3_Sounds_F_Bootcamp","A3_Data_F_Bootcamp","A3_Map_VR_Scenes","A3_Missions_F_Bootcamp","A3_Music_F_Bootcamp","Map_VR","A3Data",
"A3_Data_F_Hook","A3_Air_F_RTD","A3_Functions_F_Heli","A3_Language_F_Heli","A3_Modules_F_Heli","A3_Modules_F_Heli_SpawnAi",
"A3_Music_F_Heli","A3_Structures_F_Heli_Civ_Accessories","A3_Structures_F_Heli_Civ_Constructions","A3_Structures_F_Heli_Civ_Garbage",
"A3_Structures_F_Heli_Civ_Market","A3_Structures_F_Heli_Furniture","A3_Structures_F_Heli_Ind_AirPort","A3_Structures_F_Heli_Ind_Cargo",
"A3_Structures_F_Heli_Ind_Machines","A3_Structures_F_Heli_Items_Airport","A3_Structures_F_Heli_Items_Luggage","A3_Structures_F_Heli_Items_Sport",
"A3_Structures_F_Heli_Items_Tools","A3_Structures_F_Heli_VR_Helpers","A3_Structures_F_Heli_Items_Electronics","A3_Structures_F_Heli_Items_Food",
"A3_Anims_F_Heli","A3_Supplies_F_Heli","A3_Supplies_F_Heli_Bladders","A3_Supplies_F_Heli_CargoNets","A3_Supplies_F_Heli_Fuel","A3_Supplies_F_Heli_Slingload",
"A3_Air_F_RTD","A3_Boat_F_Heli_Boat_Armed_01","A3_Boat_F_Heli_SDV_01","A3_Data_F_Heli","A3_Missions_F_Heli","A3_Soft_F_Heli_Car",
"A3_Soft_F_Heli_MRAP_01","A3_Air_F_Heli_Heli_Transport_04","A3_Soft_F_Heli_MRAP_02","A3_Soft_F_Heli_MRAP_03","A3_Soft_F_Heli_Quadbike","A3_Soft_F_Heli_SUV",
"A3_Soft_F_Heli_Truck","A3_UI_F_Heli","A3_Air_F_Heli","A3_Air_F_Heli_Heli_Attack_01","A3_Air_F_Heli_Heli_Attack_02","A3_Air_F_Heli_Heli_Light_01","A3_Air_F_Heli_Heli_Light_02","A3_Air_F_Heli_Heli_Light_03",
"A3_Air_F_Heli_Heli_Transport_01","A3_Air_F_Heli_Heli_Transport_02","A3_Air_F_Heli_Heli_Transport_03","A3_Air_F_Heli_Heli_Transport_04",
"A3_CargoPoses_F_Heli","A3_Soft_F_Heli_Crusher_UGV","A3_Plants","A3_Data_F_Mark","A3_Functions_F_Mark","A3_Functions_F_MP_Mark","A3_Language_F_Mark" ,"A3_Modules_F_Mark","A3_Modules_F_Mark_FiringDrills"  ,"A3_Modules_F_MP_Mark"  ,"A3_Modules_F_Mark_Objectives" ,"A3_Music_F_Mark"  ,"A3_Structures_F_Mark_Items_Military" ,"A3_Structures_F_Mark_Items_Sport"  ,"A3_Structures_F_Mark_Mil_Flags"  ,"A3_Structures_F_Mark_Training" ,"A3_Structures_F_Mark_VR_Helpers"
 ,"A3_Structures_F_Mark_VR_Shapes" ,"A3_Structures_F_Mark_VR_Targets" ,"A3_Anims_F_Mark_Deployment"  ,"A3_UI_F_Mark" ,"A3_UI_F_MP_Mark" ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_01" ,"A3_Weapons_F_Mark_EBR"
 ,"A3_Weapons_F_Mark_LongRangeRifles_GM6" ,"A3_Weapons_F_Mark_LongRangeRifles_GM6_camo" ,"A3_Weapons_F_Mark_LongRangeRifles_M320" ,"A3_Weapons_F_Mark_LongRangeRifles_M320_camo"  ,"A3_Weapons_F_Mark_Machineguns_M200" ,"A3_Weapons_F_Mark_Machineguns_Zafir" ,"A3_Weapons_F_Mark_Rifles_Khaybar" ,"A3_Weapons_F_Mark_Rifles_Mk20" ,"A3_Weapons_F_Mark_Rifles_MX" ,"A3_Weapons_F_Mark_Rifles_SDAR"
 ,"A3_Weapons_F_Mark_Rifles_TRG20","A3_Characters_F_Mark" ,"A3_Static_F_Mark_Designator_01" ,"A3_Static_F_Mark_Designator_02" ,"A3_Supplies_F_Mark" ,"A3_Weapons_F_Mark_Acc" ,"COREVLiteCharacters" ,"A3_Missions_F_Mark" ,"A3_Missions_F_MP_Mark" ,"A3_Weapons_F_Mark" ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_02" ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_03" ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_04"
 ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_05" ,"A3_Weapons_F_Mark_LongRangeRifles_DMR_06" ,"A3_Weapons_F_Mark_Machineguns_MMG_01"  ,"A3_Weapons_F_Mark_Machineguns_MMG_02" ,"A3_Language_F_MP_Mark","A3_LanguageMissions_F_MP_Mark",
 "BMW_M5","A3L_Charger","A3L_Dumptruck","A3L_Punto","A3L_VolksWagenGolfGTi","ALFR_GeK_Scania_420","asdg_jointrails",
"c1987_mp7","c1987_mp7_c","Cha_PKP","cl3_sounds","cl3_vehiclefunctions","cl3_wheeled","cl3_dbs_volante",
"cl3_r8_spyder","cl3_e60_m5","cl3_z4_2008","cl3_veyron","cl3_dodge_charger_2012","cl3_458","cl3_civic_vti",
"cl3_lamborghini_gt1","cl3_murcielago","cl3_reventon","cl3_range_rover","cl3_e63_amg","cl3_carrera_gt",
"cl3_dumper_truck","cl3_insignia","cl3_golf_mk2","cl3_golf_learner","cl3_polo_gti","DAR_Firebird_F",
"DAR_Challenger_F","DAR_Charger_F","DAR_Explorer_F","DAR_Fusion_F","dar_ilpdn","DAR_Impala_F","DAR_MF1_A","DAR_Tahoe_A",
"DAR_Tahoe_F","DAR_Impala_A","DAR_Taurus_F","DDOPP_taserPack","DG_ARMORY","FHQ_Accessories","FHQ_M4","GNT_C185",
"HAFM_UK_WHEELED","HK430_M4benelli","hlcweapons_core","hlcweapons_aks","IVORY_T6A","Jonzie_Viper","M110_Arma3",
"PG_Services_PMC_Ammoboxes","PG_Services_PMC_Bags","PG_Services_PMC_CLIENT","PG_Services_PMC_UNITS","PG_Services_PMC_Goggles",
"PG_Services_PMC_Gear","PG_SERVICES_PMC_UNDERWEAR","PG_SERVICES_PMC_UNIFORMS","PG_Services_PMC_UNITS","rds_A2_Civilians",
"SAL_77TRANSAM_A","SAL_Audi_A","SAL_IROC_A","gign_shield","CASounds","SpeedRadar","CAWheeled3","CAWheeled2_MMT","cl3_sounds_env",
"WarFXPE","cba_common","cba_events","cba_hashes","cba_keybinding","cba_network","cba_strings","cba_ui","cba_vectors",
"JSRS2_120mm_Cannon","JSRS2_127","JSRS2_155mm_AMOS","JSRS2_230mm_Titan","JSRS2_30mm_Cannon","JSRS2_35mm_Autocannon",
"JSRS2_4Five45","JSRS2_ACPC","JSRS2_Autocannon","JSRS2_Bullethits","JSRS2_DAGR","JSRS2_DAR","JSRS2_EBR",
"JSRS2_Explosions","JSRS2_Explosives","JSRS2_Filters","JSRS2_FS2000","JSRS2_Gatling","JSRS2_GMG20","JSRS2_GMG40",
"JSRS2_Khaybar","JSRS2_LMGRCWS","JSRS2_M134","JSRS2_M200","JSRS2_M320R","JSRS2_M6","JSRS2_Minigun","JSRS2_MX",
"JSRS2_NLAW","JSRS2_P07","JSRS2_PDW","JSRS2_Rahim","JSRS2_Rook40","JSRS2_RPG32","JSRS2_Scorpian","JSRS2_SDAR",
"JSRS2_Skalpel_ATGM","JSRS2_Skyfire","JSRS2_Sonic_Cracks","JSRS2_Titan","JSRS2_TRG20","JSRS2_Vector",
"JSRS2_Veh_Titan","JSRS2_Zafir","JSRS2_Zubr45","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic",
"cba_help","cba_ui_helper","cba_versioning","JSRS2_Movement","JSRS2_Silencers","cba_main","cba_main_a3",
"JSRS2_2S9_Sorcher","JSRS2_AFV4_Gorgon","JSRS2_AH99_Blackfoot","JSRS2_AH9_Pawnee","JSRS2_AMV7_Marshal",
"JSRS2_BTRK_Kamysh","JSRS2_CH49_Mohawk","JSRS2_Distance","JSRS2_FighterPlane3","JSRS2_FV720_Mora","JSRS2_Hunter",
"JSRS2_Ifrit","JSRS2_IFV6a_Cheetah","JSRS2_IFV6c_Panther","JSRS2_M2A1_Slammer","JSRS2_M4_Scorcher","JSRS2_M5_Sandstorm",
"JSRS2_MBT52_Kuma","JSRS2_Mi48_Kajman","JSRS2_MSE3_Marid","JSRS2_Offroad","JSRS2_Po30_Orca","JSRS2_Strider","JSRS2_SUV",
"JSRS2_T100_Varsuk","JSRS2_Truck1","JSRS2_Truck2","JSRS2_UAV_1","JSRS2_UH80_GhostHawk","JSRS2_Van","JSRS2_WY55_Hellcat",
"JSRS2_ZSU39_Tigris","cba_xeh_a3","cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","DG_ACCESSORIES","Jonzie_A3L_Car_Base","FHQ_M4_M4A1","cl3_anims_arrest",
"FLAY_HangGlider_Core","FLAY_HangGlider","FLAY_Paraglider","FLAY_HangGlider_Thermals","FLAY_Variometer","FLAY_HangGlider_Weapons","FLAY_Wingsuit","FLAY_Variometer_Sounds",
"FLAY_Variometer_UI","FLAY_Thermals_Module","ALFR_Units","Item_ALFR","ALFR_armee_Bags","ALFR_Police_Bags","ALFR_armee_tenu","ALFR_armee_Uniform_body","example_vest_config",
"ALFR_armee_gilet","cl3_transit","ivory_b206","insignia_police","insignia_police_st_base","murcielago_police","ALFR_GeK_Volvo_FH16_2012","cl3_suv","cl3_q7","cl3_taurus",
"cl3_transit","CL3_bus_cl","Shemaghs","Extra_Objects","cl3_q7_clpd","range_rover_police","ALFR_GeK_Panamera","ALFR_GeK_Panamera_Police",
"ale_config","r3f_acc","R3F_AIMPOINT","R3F_AIMPOINT_DES","R3F_EOTECH","R3F_EOTECH_DES","R3F_J4","J4","R3F_J4_DES","R3F_FELIN","R3F_FELIN_DES","R3F_FELIN_FRF2","R3F_J8","J8","R3F_J8_DES","R3F_J8_MILDOT","J8_MILDOT","R3F_J8_MILDOT_DES",
"R3F_J10","J10","R3F_J10_DES","R3F_J10_MILDOT","J10_MILDOT","R3F_J10_MILDOT_DES","R3F_ZEISS","ZEISS_MILDOT","R3F_ZEISS_DES","R3F_NF","NF_MILDOT","R3F_NF_DES","R3F_NF42","NF42_MILDOT","R3F_NF42_DES","R3F_OB50","OB50","R3F_PIRAT","R3F_PIRAT_DES",
"R3F_POINTEUR_SURB","R3F_POINTEUR_SURB_DES","R3F_LAMPE_SURB","R3F_LAMPE_SURB_DES","R3F_SIT_COMDE","R3F_AccBox","r3f_armes",


 "r3f_armes_c","R3F_securite_Ball","R3F_CARTOUCHES","R3F_9x19_Ball","R3F_556x45_Ball","R3F_762x51_Ball","R3F_762x51_Ball2","R3F_762x51_Minimi_Ball","R3F_556x45_Minimi_Ball","R3F_127x99_Ball","R3F_127x99_PEI",
"R3F_127x99_Ball2","R3F_127x99_PEI2","R3F_AT4CS_AT","R3F_ERYX_Missile","R3F_STINGER_Missile","R3F_APAV40_grenade","R3F_AC58_grenade","R3F_securite_mag","R3F_7Rnd_M4S90","R3F_15Rnd_9x19_PAMAS","R3F_30Rnd_9x19_MP5",
"R3F_25Rnd_556x45_FAMAS","R3F_25Rnd_556x45_TRACER_FAMAS","R3F_30Rnd_556x45_FAMAS","R3F_30Rnd_556x45_TRACER_FAMAS","R3F_30Rnd_556x45_HK416","R3F_30Rnd_556x45_TRACER_HK416","R3F_10Rnd_762x51_FRF2","R3F_200Rnd_556x45_MINIMI",
"R3F_100Rnd_762x51_MINIMI","R3F_20Rnd_762x51_HK417","R3F_20Rnd_762x51_TRACER_HK417","R3F_7Rnd_127x99_PGM","R3F_7Rnd_127x99_PEI_PGM","R3F_10Rnd_127x99_M107","R3F_10Rnd_127x99_PEI_M107","R3F_AT4CS_Mag","R3F_ERYX_Mag",
"R3F_STINGER_mag","R3F_APAV40_Mag","R3F_AC58_Mag","R3F_famas_grenade_fired","R3F_JIM_LR","R3F_JIM_LR_DES","R3F_APAV40","R3F_AC58",
 "R3F_WeaponStock","R3F_WeaponBox","R3F_M2","R3F_SILENCIEUX_FRF2_DES","R3F_SILENCIEUX_FRF2","R3F_SILENCIEUX_HK417_DES","R3F_SILENCIEUX_HK417","R3F_SILENCIEUX_HK416_DES","R3F_SILENCIEUX_HK416","R3F_SILENCIEUX_FAMAS_DES","R3F_SILENCIEUX_FAMAS","R3F_STINGER","R3F_ERYX","R3F_AT4CS",
 "R3F_PAMAS","R3F_M4S90","R3F_MP5SD","R3F_HK416M_HG_DES","R3F_HK416M_DES","R3F_HK416M_HG","R3F_HK416M","R3F_HK417L_DES","R3F_HK417M_HG_DES",
 "R3F_HK417M_DES","R3F_HK417S_HG_DES","R3F_HK417L","R3F_HK417M_HG","R3F_HK417S_HG","R3F_HK417M","R3F_Minimi_762_HG","R3F_Minimi_762","R3F_Minimi_HG","R3F_Minimi","R3F_M107_DES","R3F_M107","R3F_PGM_Hecate_II_POLY","R3F_PGM_Hecate_II_DES","R3F_PGM_Hecate_II","R3F_FRF2_DES","R3F_FRF2","R3F_Famas_felin_DES","R3F_Famas_felin","R3F_Famas_G2_M203_DES","R3F_Famas_G2_HG_DES","R3F_Famas_G2_DES","R3F_Famas_G2_M203","R3F_Famas_G2_HG","R3F_Famas_G2","R3F_Famas_surb_M203_DES","R3F_Famas_surb_HG_DES","R3F_Famas_surb_DES","R3F_Famas_surb_M203","R3F_Famas_surb_HG","R3F_Famas_surb","R3F_Famas_F1_M203_DES","R3F_Famas_F1_HG_DES","R3F_Famas_F1_DES","R3F_Famas_F1_M203","R3F_Famas_F1_HG","R3F_Famas_F1",
 "R3F_MIS_APSOEOD_DA","R3F_MIS_APSOAF_DA","R3F_MIS_APSOEOD","R3F_MIS_APSOAF","R3F_Appuisoutien","R3F_MIS_TE_DA","R3F_MIS_URR_DA","R3F_MIS_TE","R3F_MIS_URR","R3F_UniteReco","R3F_MIS_INF_DA_V","R3F_MIS_INF_DA_B","R3F_MIS_INF_DA_J","R3F_MIS_INF_V","R3F_MIS_INF_B","R3F_MIS_INF_J",
 "R3F_Infanterie","R3F_MIS_Group","R3F_casqueFS_tan","R3F_casqueFS_olive","R3F_casquette_off_DA","R3F_chapeaubrousse_TAN","R3F_casquette_TAN","R3F_casque_spectra_EOD_DA","R3F_casque_spectra_DA_vert","R3F_casque_spectra_DA_bleu","R3F_casque_spectra_DA_jaune","R3F_casque_spectra_DA","R3F_casquette_off","R3F_Bonnet","R3F_beret_commando","R3F_beret_para","R3F_beret","R3F_chapeaubrousse_CE","R3F_casquette","R3F_casque_pilote","R3F_casque_spectra_EOD","R3F_casque_spectra_vert","R3F_casque_spectra_bleu","R3F_casque_spectra_jaune","R3F_casque_spectra","R3F_veste_off","R3F_veste_APSO_EOD_TAN","R3F_veste_APSO_TAN","R3F_veste_noire","R3F_vestetactique_noire","R3F_veste_ce300","R3F_veste_ce600","R3F_frfdeux_J8_DES","R3F_frfdeux_J8","R3F_PGM_J10_DES","R3F_PGM_J10","R3F_MP5SD_AIM","R3F_Minimi_762_EOT","R3F_Minimi_J4","R3F_HK417L_NF_DES","R3F_HK417L_NF","R3F_HK417S_HG_AIM_DES","R3F_HK417S_HG_AIM","R3F_HK416M_J4_DES","R3F_HK416M_J4","R3F_FAMAS_G2_J4_DES","R3F_FAMAS_G2_J4","R3F_FAMAS_F1_EOT_DES","R3F_FAMAS_F1_EOT","R3F_Famas_F1_AIM_DES","R3F_FAMAS_F1_AIM","R3F_uniform_apso_DA","R3F_uniform_f1_medic_DA","R3F_uniform_f1_DA","R3F_uniform_off_DA","R3F_uniform_urr_medic_DA","R3F_uniform_urr_DA","R3F_uniform_Ghillie_DA","R3F_uniform_apso","R3F_uniform_f1_medic",
"R3F_uniform_f1","R3F_uniform_off","R3F_uniform_urr_medic","R3F_uniform_urr","R3F_uniform_Ghillie","R3F_uniform_diver","R3F_uniform_piheli",
 "R3F_sousvet","R3F_UniformBox","R3F_sac_lourd_casque_noir","R3F_sac_lourd_explo_noir","R3F_sac_lourd_noir","R3F_sac_lourd_AT_TAN","R3F_sac_lourd_APSO_casque_TAN","R3F_sac_lourd_APSO_TAN_FLG","R3F_sac_lourd_APSO_TAN","R3F_sac_lourd_TAN","R3F_sac_lourd_AT_CE","R3F_sac_lourd_APSO_casque_CE","R3F_sac_lourd_APSO_CE_FLG","R3F_sac_lourd_APSO_CE","R3F_sac_lourd_CE","R3F_sac_moyen_medic_TAN","R3F_sac_moyen_medic_noir","R3F_sac_moyen_medic_CE","R3F_sac_moyen_casque_TAN_DA_V","R3F_sac_moyen_casque_TAN_DA_B","R3F_sac_moyen_casque_TAN_DA_J","R3F_sac_moyen_AT_TAN_DA","R3F_sac_moyen_TAN_DA_FLG","R3F_sac_moyen_TAN_DA","R3F_sac_moyen_casque_TAN_V","R3F_sac_moyen_casque_TAN_B","R3F_sac_moyen_casque_TAN_J",
"R3F_Uniformes","R3F_MIS","R3F_MEN_INF_J","R3F_MEN_INF_B","R3F_MEN_INF_V","R3F_MEN_APSO","R3F_MEN_URR","R3F_MEN_INF_DA_J","R3F_MEN_INF_DA_B","R3F_MEN_INF_DA_V","R3F_MEN_APSO_DA","R3F_MEN_URR_DA","R3F_lunettes_ESS",
"R3F_lunettes_X800","R3F_cagoule_olive","R3F_cagoule_tan","R3F_cagoule_noire","R3F_cagoule_punisher","R3F_soldat_base","R3F_soldat2_base","R3F_Underwear","R3F_FANTASSIN_300_J","R3F_FANTASSIN_600_J","R3F_FANTASSIN_OFFICIER_J",
"R3F_FANTASSIN_SOUSOFF_J","R3F_FANTASSIN_TP_J","R3F_FANTASSIN_MG_J","R3F_FANTASSIN_MEDIC_J","R3F_FANTASSIN_AT_J","R3F_FANTASSIN_300_B","R3F_FANTASSIN_600_B","R3F_FANTASSIN_OFFICIER_B","R3F_FANTASSIN_SOUSOFF_B","R3F_FANTASSIN_TP_B",
"R3F_FANTASSIN_MG_B","R3F_FANTASSIN_MEDIC_B","R3F_FANTASSIN_AT_B","R3F_FANTASSIN_300_V","R3F_FANTASSIN_600_V","R3F_FANTASSIN_OFFICIER_V","R3F_FANTASSIN_SOUSOFF_V","R3F_FANTASSIN_TP_V","R3F_FANTASSIN_MG_V","R3F_FANTASSIN_MEDIC_V",
"R3F_FANTASSIN_AT_V","R3F_APSO","R3F_APSO_OFFICIER","R3F_APSO_SOUSOFF","R3F_APSO_MEDIC","R3F_APSO_EOD","R3F_APSO_PILOT_VEHI","R3F_APSO_PILOT_HELI","R3F_URR","R3F_URR_OFFICIER","R3F_URR_SOUSOFF","R3F_URR_TE","R3F_URR_OBS",
"R3F_URR_MEDIC","R3F_URR_PLONGEUR_EXP","R3F_URR_PLONGEUR","R3F_FANTASSIN_300_DA_J","R3F_FANTASSIN_600_DA_J","R3F_FANTASSIN_OFFICIER_DA_J","R3F_FANTASSIN_SOUSOFF_DA_J","R3F_FANTASSIN_TP_DA_J","R3F_FANTASSIN_MG_DA_J",
"R3F_FANTASSIN_MEDIC_DA_J","R3F_FANTASSIN_AT_DA_J","R3F_FANTASSIN_300_DA_B","R3F_FANTASSIN_600_DA_B","R3F_FANTASSIN_OFFICIER_DA_B","R3F_FANTASSIN_SOUSOFF_DA_B","R3F_FANTASSIN_TP_DA_B","R3F_FANTASSIN_MG_DA_B","R3F_FANTASSIN_MEDIC_DA_B",
"R3F_FANTASSIN_AT_DA_B","R3F_FANTASSIN_300_DA_V","R3F_FANTASSIN_600_DA_V","R3F_FANTASSIN_OFFICIER_DA_V","R3F_FANTASSIN_SOUSOFF_DA_V","R3F_FANTASSIN_TP_DA_V","R3F_FANTASSIN_MG_DA_V","R3F_FANTASSIN_MEDIC_DA_V","R3F_FANTASSIN_AT_DA_V",
"R3F_APSO_DA","R3F_APSO_OFFICIER_DA","R3F_APSO_SOUSOFF_DA","R3F_APSO_MEDIC_DA","R3F_APSO_EOD_DA","R3F_APSO_PILOT_VEHI_DA","R3F_APSO_PILOT_HELI_DA","R3F_URR_DA","R3F_URR_OFFICIER_DA","R3F_URR_SOUSOFF_DA","R3F_URR_TE_DA","R3F_URR_OBS_DA",
"R3F_URR_MEDIC_DA","R3F_URR_PLONGEUR_EXP_DA","R3F_URR_PLONGEUR_DA","R3F_CDG_J","R3F_MEDIC_J","R3F_EQUIP_J","R3F_CDE300_J","R3F_EQUIP1_300_J","R3F_EQUIP2_300_J","R3F_CDE600_J","R3F_EQUIP1_600_J","R3F_EQUIP2_600_J","R3F_CDG_B",
"R3F_MEDIC_B","R3F_EQUIP_B","R3F_CDE300_B","R3F_EQUIP1_300_B","R3F_EQUIP2_300_B","R3F_CDE600_B","R3F_EQUIP1_600_B","R3F_EQUIP2_600_B","R3F_CDG_V","R3F_MEDIC_V","R3F_EQUIP_V","R3F_CDE300_V","R3F_EQUIP1_300_V","R3F_EQUIP2_300_V",
"R3F_CDE600_V","R3F_EQUIP1_600_V","R3F_EQUIP2_600_V","R3F_CDG_URR","R3F_MEDIC_URR","R3F_EQUIP_URR","R3F_CDG_TE","R3F_EQUIP_TE","R3F_CDG_APSO_AF","R3F_MEDIC_APSO_AF",
"R3F_sac_moyen_AT_TAN","R3F_sac_moyen_TAN_FLG","R3F_sac_moyen_TAN","R3F_sac_moyen_casque_CE_V","R3F_sac_moyen_casque_CE_B","R3F_sac_moyen_casque_CE_J","R3F_sac_moyen_CE","R3F_sac_petit_TE_noir","R3F_sac_petit_explo_noir","R3F_sac_petit_noir","R3F_EQUIP2_600_APSO_EOD_DA","R3F_EQUIP1_600_APSO_EOD_DA","R3F_CDE600_APSO_EOD_DA","R3F_EQUIP2_300_APSO_EOD_DA","R3F_EQUIP1_300_APSO_EOD_DA","R3F_CDE300_APSO_EOD_DA","R3F_EQUIP_APSO_EOD_DA","R3F_MEDIC_APSO_EOD_DA","R3F_CDG_APSO_EOD_DA","R3F_EQUIP2_600_APSO_AF_DA","R3F_EQUIP1_600_APSO_AF_DA","R3F_CDE600_APSO_AF_DA",
"R3F_EQUIP2_300_APSO_AF_DA","R3F_EQUIP1_300_APSO_AF_DA","R3F_CDE300_APSO_AF_DA","R3F_EQUIP_APSO_AF_DA","R3F_MEDIC_APSO_AF_DA","R3F_CDG_APSO_AF_DA","R3F_EQUIP_TE_DA","R3F_CDG_TE_DA","R3F_EQUIP_URR_DA","R3F_MEDIC_URR_DA","R3F_CDG_URR_DA","R3F_EQUIP2_600_DA_V","R3F_EQUIP1_600_DA_V","R3F_CDE600_DA_V","R3F_EQUIP2_300_DA_V","R3F_EQUIP1_300_DA_V","R3F_CDE300_DA_V","R3F_EQUIP_DA_V","R3F_MEDIC_DA_V","R3F_CDG_DA_V","R3F_EQUIP2_600_DA_B","R3F_EQUIP1_600_DA_B","R3F_CDE600_DA_B","R3F_EQUIP2_300_DA_B","R3F_EQUIP1_300_DA_B","R3F_CDE300_DA_B","R3F_EQUIP_DA_B","R3F_MEDIC_DA_B","R3F_CDG_DA_B","R3F_EQUIP2_600_DA_J","R3F_EQUIP1_600_DA_J","R3F_CDE600_DA_J","R3F_EQUIP2_300_DA_J","R3F_EQUIP1_300_DA_J","R3F_CDE300_DA_J","R3F_EQUIP_DA_J","R3F_MEDIC_DA_J","R3F_CDG_DA_J","R3F_EQUIP2_600_APSO_EOD","R3F_EQUIP1_600_APSO_EOD","R3F_CDE600_APSO_EOD","R3F_EQUIP2_300_APSO_EOD","R3F_EQUIP1_300_APSO_EOD","R3F_CDE300_APSO_EOD","R3F_EQUIP_APSO_EOD","R3F_MEDIC_APSO_EOD","R3F_CDG_APSO_EOD","R3F_EQUIP2_600_APSO_AF","R3F_EQUIP1_600_APSO_AF","R3F_CDE600_APSO_AF","R3F_EQUIP2_300_APSO_AF","R3F_EQUIP1_300_APSO_AF","R3F_CDE300_APSO_AF","R3F_EQUIP_APSO_AF","R3F_Retex","R3F_VEH","R3F_PANDUR","R3F_MERLIN","R3F_FENNEC","R3F_FENNEC_hmg","R3F_FENNEC_gmg","R3F_ALCA_CAS","R3F_ALCA_AA",
 "dfyre_a_core","dfyre_c_core","dfyre_e_bullethits","dfyre_e_environment","dfyre_e_explosions","dfyre_e_movement","dfyre_e_sonic_cracks","dfyre_p_airsounds","dfyre_p_boatsounds","dfyre_p_environmensounds","dfyre_p_shells",
"dfyre_p_tanksounds","dfyre_p_vehiclesounds","dfyre_p_vehicleweaponsounds","dfyre_p_weaponsounds","dfyre_s_core","dfyre_v_a_a-143 buzzard","dfyre_v_a_a-164_wipeout","dfyre_v_a_ah9_pawnee","dfyre_v_a_ah99_blackfoot",
"dfyre_v_a_ar-2_darter","dfyre_v_a_ch49_mohawk","dfyre_v_a_ch-67_huron","dfyre_v_a_mi48_kajman","dfyre_v_a_mi-290_taru","dfyre_v_a_mq4a_greyhawk","dfyre_v_a_po30_orca","dfyre_v_a_to-199_neophron","dfyre_v_a_uh80_ghosthawk",
"dfyre_v_a_wy-55_hellcat","dfyre_v_b_boat_armed_1","dfyre_v_t_2s9_sorcher","dfyre_v_t_afv-4_gorgon","dfyre_v_t_amv-7_marshal","dfyre_v_t_btr-k_kamysh","dfyre_v_t_fv-720_mora","dfyre_v_t_ifv-6a_cheetah","dfyre_v_t_ifv-6c_panther",
"dfyre_v_t_m2a1_slammer","dfyre_v_t_m4_scorcher","dfyre_v_t_m5_sandstorm","dfyre_v_t_mse-3_marid","dfyre_v_t_t100_varsuk","dfyre_v_t_zsu-39_tigris","dfyre_v_w_hatchback","dfyre_v_w_hemtt","dfyre_v_w_hunter","dfyre_v_w_ifrit",
"dfyre_v_w_offroad","dfyre_v_w_quadbike","dfyre_v_w_strider","dfyre_v_w_suv","dfyre_v_w_tempest_transport","dfyre_v_w_van","dfyre_v_w_zamak_transport","dfyre_w_h_230mm titan missile","dfyre_w_h_air_weapons","dfyre_w_h_autocannon 35 mm",
"dfyre_w_h_cannon 120 mm","dfyre_w_h_ctws cannon 30 mm","dfyre_w_h_dagr","dfyre_w_h_dar","dfyre_w_h_gatling 6.5 mm","dfyre_w_h_gatling cannon 20 mm","dfyre_w_h_gatling cannon 30mm","dfyre_w_h_howitzer 155 mm","dfyre_w_h_m134",
"dfyre_w_h_m200 lmg 6.5 mm","dfyre_w_h_mk32 gmg 20 mm","dfyre_w_h_rcws gmg 40 mm","dfyre_w_h_rcws hmg 12.7 mm","dfyre_w_h_skalpel atgm","dfyre_w_h_skyfire","dfyre_w_h_titan missile","dfyre_w_s_4-five45","dfyre_w_s_acp-c2 .45",
"dfyre_w_s_assault rifle 6.5x39 mm","dfyre_w_s_gm6 lynx 12.7 mm","dfyre_w_s_katiba 6.5 mm","dfyre_w_s_m320 lrr .408","dfyre_w_s_mk18 abr 7.62 mm","dfyre_w_s_mk20 5.56 mm","dfyre_w_s_mk200 6.5 mm","dfyre_w_s_p07 9 mm",
"dfyre_w_s_pcml","dfyre_w_s_pdw2000 9 mm","dfyre_w_s_rahim 7.62 mm","dfyre_w_s_rook-40 9 mm","dfyre_w_s_rpg-42 alamut","dfyre_w_s_sting 9 mm","dfyre_w_s_titan mprl launcher","dfyre_w_s_trg-21 5.56 mm","dfyre_w_s_ugl_grenadelauncher",
"dfyre_w_s_underwater gun","dfyre_w_s_vermin smg .45 acp","dfyre_w_s_zafir 7.62 mm","dfyre_w_s_zubr .45",
 "JSRS_Environment","DragonFyre_Bullethits","DragonFyre_Explosions","DragonFyre_Sonic_Cracks","DragonFyre_230mm_Titan","DragonFyre_Air_Weapons","DragonFyre_35mm_Autocannon","DragonFyre_120mm_Cannon","DragonFyre_Autocannon","DragonFyre_DAGR","DragonFyre_DAR","DragonFyre_Minigun","DragonFyre_30mm_Cannon","DragonFyre_Gau8","DragonFyre_155mm_AMOS","DragonFyre_M134" ,"DragonFyre_LMGRCWS","DragonFyre_GMG20","DragonFyre_GMG40","DragonFyre_127","DragonFyre_Skalpel_ATGM","DragonFyre_Skyfire","DragonFyre_Veh_Titan","DragonFyre_4Five45","DragonFyre_ACPC","DragonFyre_MX","DragonFyre_M6","DragonFyre_Khaybar","DragonFyre_M320R","DragonFyre_EBR","DragonFyre_FS2000","DragonFyre_M200","DragonFyre_P07","DragonFyre_NLAW","DragonFyre_PDW","DragonFyre_Rahim","DragonFyre_Rook40","DragonFyre_RPG32","DragonFyre_Scorpian","DragonFyre_Titan","DragonFyre_TRG20","DragonFyre_UGL","DragonFyre_SDAR","DragonFyre_Vector","DragonFyre_Zafir","DragonFyre_Zubr45","DragonFyre_Movement","DragonFyre_Distance","DragonFyre_FighterPlane3","DragonFyre_CAS_Plane1","DragonFyre_AH99_Blackfoot","DragonFyre_AH9_Pawnee","DragonFyre_UAV_1","DragonFyre_CH67_Huron","DragonFyre_CH49_Mohawk","DragonFyre_Mi290_Taru","DragonFyre_Mi48_Kajman","DragonFyre_UAV_2","DragonFyre_Po30_Orca","DragonFyre_CAS_Plane2","DragonFyre_UH80_GhostHawk","DragonFyre_WY55_Hellcat","DragonFyre_Boat_Armed_1","DragonFyre_2S9_Sorcher","DragonFyre_AFV4_Gorgon","DragonFyre_AMV7_Marshal","DragonFyre_BTRK_Kamysh","DragonFyre_FV720_Mora","DragonFyre_IFV6a_Cheetah","DragonFyre_IFV6c_Panther","DragonFyre_M2A1_Slammer","DragonFyre_M4_Scorcher","DragonFyre_M5_Sandstorm","DragonFyre_MBT52_Kuma","DragonFyre_MSE3_Marid","DragonFyre_T100_Varsuk","DragonFyre_ZSU39_Tigris","DragonFyre_Hatchback","DragonFyre_truck1","DragonFyre_Hunter","DragonFyre_Ifrit","DragonFyre_Offroad","DragonFyre_Quadbike","DragonFyre_Strider","DragonFyre_SUV","DragonFyre_truck2","DragonFyre_Van","DragonFyre_Truck3","rds_a2port_cman","rds_rus_civ","RDS_Civilian_Base","RDS_Citizen","RDS_Citizen1","RDS_Citizen2","RDS_Citizen3","RDS_Citizen4","RDS_Worker","RDS_Worker1","RDS_Worker2","RDS_Worker3","RDS_Worker4","RDS_Profiteer","RDS_Profiteer1","RDS_Profiteer2","RDS_Profiteer3","RDS_Profiteer4","RDS_Woodlander","RDS_Woodlander1","RDS_Woodlander2","RDS_Woodlander3","RDS_Woodlander4","RDS_Functionary","RDS_Functionary1","RDS_Functionary2","RDS_Villager","RDS_Villager1","RDS_Villager2","RDS_Villager3","RDS_Villager4","RDS_Priest","RDS_Policeman","RDS_Doctor_base","RDS_Doctor","RDS_SchoolTeacher","RDS_Assistant","rds_uniform_citizen1","rds_uniform_citizen2","rds_uniform_citizen3","rds_uniform_citizen4","rds_uniform_Worker1","rds_uniform_Worker2","rds_uniform_Worker3","rds_uniform_Worker4","rds_uniform_Profiteer1","rds_uniform_Profiteer2","rds_uniform_Profiteer3","rds_uniform_Profiteer4","rds_uniform_Woodlander1","rds_uniform_Woodlander2","rds_uniform_Woodlander3","rds_uniform_Woodlander4","rds_uniform_Villager1","rds_uniform_Villager2","rds_uniform_Villager3","rds_uniform_Villager4","rds_uniform_Functionary1","rds_uniform_Functionary2","rds_uniform_Policeman","rds_uniform_priest","rds_uniform_doctor","rds_uniform_schoolteacher","rds_uniform_assistant","rds_police_cap","rds_worker_cap1","rds_worker_cap2","rds_worker_cap3","rds_worker_cap4","rds_Villager_cap1","rds_Villager_cap2","rds_Profiteer_cap3","rds_Profiteer_cap4","rds_Woodlander_cap1","rds_Woodlander_cap2","rds_Woodlander_cap3","rds_Woodlander_cap4","ALE_H_Calot","ALE_H_GrosPD","ALE_H_NewEra_Black","ALE_H_NewEra_Superman","ALE_H_NewEra_Rouge","ALE_H_NewEra_Monster","ALE_H_Cowboy_Brown","ALE_H_Cowboy_Black","ALE_H_NewEra_Lakers","ALE_H_Cowboy_White","ALE_H_NewEra_Redsox",
 "ALFR_FR_tenukenny","ALFR_FR_nitrado","ALFR_FR_armani_black","ALFR_FR_armani_blue","ALFR_FR_armani_white","ALFR_Civ_Bags_Nitrado","ALFR_FR_tenukenny_Base","ALFR_FR_nitrado_Base","ALFR_FR_armani_black_Base","ALFR_FR_armani_blue_Base","ALFR_FR_armani_white_Base","CL3MOD_CustomFlare","cl3_anims","LHM_Glasses_Config","cl3_mod_client","cl3_functions","cl3mod_ChopperEffect","CL3_cargoposes","cl3_anims_fishingrod","cl3_anims_gathering","cl3_anims_HandsUp","cl3_anims_misc_laydown","cl3_anims_naturescall","cl3_anims_punch","cl3_anims_repair","cl3_anims_tools","cl3_mbikes","cl3_bikes","CL3_Animals_F","cl3_connectioniamge","dbo_crosser","cl3_tronbike","cl3_xr_1000","CL3_tweaks","cl3_arielatom","cl3_arielatom_race","DNA_MapTextures","LHM_Glasses_Config","GeK_Bank","GeK_Coffre","ARP_Objects2",
"CfgVehicles","House","House_F","DestructionEffects","Ruins_F","GeK_Bank","Ruin","HitPoints","Hitzone_1_hitpoint",
"Dust","Dust2","Walls","DamageAround","Hitzone_2_hitpoint","Damage","AnimationSources","Door_1_source",
"Door_2_source","UserActions","OpenDoors","CloseDoors","OpenDoors2","CloseDoors2",
"Strategic","ALFR_Strategic_Base",
"CfgMovesBasic","ManActions","UAZ_Driver","UAZ_Gunner01","UAZ_Gunner02","UAZ_Cargo01","UAZ_Cargo02","SPG_Car_Gunner",
"CfgMovesMaleSdr","States","Stryker_Dead","Crew","KIA_UAZ_Driver","UAZ_Cargo01_V1","UAZ_Cargo01_V2",
"UAZ_Cargo01_V3","KIA_UAZ_Cargo02","DefaultEventhandlers","HAFM_UAZ","CfgPatches","CfgVehicleClasses",
"HAFM_UAZ_OPF","WeaponFireGun","WeaponCloudsGun","WeaponFireMGun","WeaponCloudsMGun","RCWSOptics",
"cfgWeapons","Default","MGunCore","MGun","LauncherCore","RocketPods","MissileLauncher","missiles_titan",
"DSHKM","manual","close","medium","far","SPG9","CfgMagazines","100Rnd_127x107_DSHKM","PG9_AT",
"OG9_HE","CfgAmmo","BulletBase","BulletCore","RocketCore","RocketBase","MissileBase","M_Titan_AT",
"M_Titan_AP","B_127x107_Ball","R_PG9_AT","R_OG9_HE","CfgVehicles","Car","Car_F","Turrets",
"MainTurret","LandVehicle","NewTurret","AnimationSources","NewTurret","HitPoints","HitLFWheel","HitLF2Wheel",
"HitRFWheel","HitRF2Wheel","HitGlass1","HitGlass2","HitGlass3","HitGlass4","HitGlass5","HitGlass6",
"UAZ_Base","SpeechVariants","Default","complexGearbox","Wheels","LF","LR","RF","RR","HitLFWheel",
"HitLBWheel","HitRFWheel","HitRBWheel","Damage","Sounds","Idle_ext","Engine","Engine1_ext",
"Engine2_ext","Engine3_ext","Engine4_ext","Engine5_ext","Engine6_ext","IdleThrust","EngineThrust",
"Engine1_Thrust_ext","Engine2_Thrust_ext","Engine3_Thrust_ext","Engine4_Thrust_ext","Engine5_Thrust_ext",
"Engine6_Thrust_ext","Idle_int","Engine_int","Engine1_int","Engine2_int","Engine3_int","Engine4_int",
"Engine5_int","Engine6_int","IdleThrust_int","EngineThrust_int","Engine1_Thrust_int","Engine2_Thrust_int"
,"Engine3_Thrust_int","Engine4_Thrust_int","Engine5_Thrust_int","Engine6_Thrust_int","TiresRockOut",
"TiresSandOut","TiresGrassOut","TiresMudOut","TiresGravelOut","TiresAsphaltOut","NoiseOut","TiresRockIn"
,"TiresSandIn","TiresGrassIn","TiresMudIn","TiresGravelIn","TiresAsphaltIn","NoiseIn","breaking_ext_road"
,"acceleration_ext_road","turn_left_ext_road","turn_right_ext_road","breaking_ext_dirt","acceleration_ext_dirt",
"turn_left_ext_dirt","turn_right_ext_dirt","breaking_int_road","acceleration_int_road","turn_left_int_road",
"turn_right_int_road","turn_right_int_road","acceleration_int_dirt","turn_left_int_dirt","turn_right_int_dirt",
"Library","Reflectors","Left","Attenuation","Right","Right2","Left2","Exhausts","Exhaust1","UAZ_MG",
"AnimationSources","ReloadAnim","ReloadMagazine","Revolving","UAZ_AGS30","AnimationSources","belt_rotation"
,"Turrets","MainTurret","GunFire","Damage","UAZ_Unarmed","HitPoints","HitGlass1","HitGlass2","HitGlass3",
"HitGlass4","UAZ_SPG9","ReloadAnim",
"Glass_##glassID##_hitpoint","BrokenGlass1","BrokenGlass2","BrokenGlass3","BrokenGlass4","BrokenGlass5",
"BrokenGlass6","BrokenGlass7","BrokenGlass1S","BrokenGlass2S","BrokenGlass3S","BrokenGlass4S",
"BrokenGlass5S","BrokenGlass6S","BrokenGlass7S",
"Trixie_Ghillie","Trixie_Recon","NATO_Box_Base","Trixie_Ghillie_Equipbox","TransportItems","_xx_Trixie_Ghillie_Uniform_01",
"_xx_Trixie_Ghillie_Uniform_02","_xx_Trixie_Ghillie_Uniform_03","B_Sniper_F","Trixie_Ghillie_01","Trixie_Ghillie_02",
"Trixie_Ghillie_03","ItemCore","ItemInfo","UniformItem","U_B_GhillieSuit","Trixie_Ghillie_Uniform_01","Trixie_Ghillie_Uniform_02",
"Trixie_Ghillie_Uniform_03",
"GeK_TLC100_Police","GeK_TLC100","wirk_cayenne","COREVLiteCharactersTKA",
"U_CombatUniLong_B","U_CDGCombatUni_A","U_CDGCombatUni_B","U_CDGCombatUni_C","U_TKSoldierUni_A", "U_TKSoldierUni_B","U_TKOfficerUni_A","U_TKOfficerUni_B","U_TKSpecialUni_A","U_TKSpecialUni_B", "U_CDFSoldierUni_A","U_CDFOfficerUni_A","U_TKLocalUni_A","U_TKLocalUni_B","U_TKLocalUni_C", "U_TKLocalUni_D","U_TKLocalUni_E","U_TKLocalUni_F","U_DressTKLocalUni_A_A","U_DressTKLocalUni_A_B", "U_DressTKLocalUni_A_C","U_DressTKLocalUni_A_D","U_DressTKLocalUni_A_E","U_DressTKLocalUni_B_A", "U_DressTKLocalUni_B_B","U_DressTKLocalUni_B_C","U_DressTKLocalUni_B_D","U_DressTKLocalUni_B_E", "U_DressTKLocalUni_C_A","U_DressTKLocalUni_C_B","U_DressTKLocalUni_C_C","U_DressTKLocalUni_C_D", "U_DressTKLocalUni_C_E","U_DressTKLocalUni_D_A","U_DressTKLocalUni_D_B","U_DressTKLocalUni_D_C", "U_DressTKLocalUni_D_D","U_DressTKLocalUni_D_E","U_DressTKLocalUni_E_A","U_DressTKLocalUni_E_B", "U_DressTKLocalUni_E_C","U_DressTKLocalUni_E_D","U_DressTKLocalUni_E_E","V_TacVest_TK", "H_Hat_Taqiyah_A","H_Hat_Taqiyah_B","H_Hat_Taqiyah_C","H_Hat_Taqiyah_D","H_Hat_Taqiyah_E", "H_Hat_Pakol","H_Hat_Kufiya","H_Hat_Kufiya_G","H_Hat_Kufiya_R","H_Hat_Pagri","H_Hat_Pagri_B", "H_Hat_Pagri_C","H_Hat_Turban_A","H_Hat_Turban_B","H_Hat_Turban_C","H_Hat_Turban_D","H_Hat_Turban_E", "H_Hat_Face_Cover","H_Hat_Face_Cover_Black","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Green", "H_Hat_Face_Wrap","H_Hat_Face_Wrap_Desert","H_Hat_Face_Wrap_Olive","H_Hat_Face_Wrap_Red", "H_Hat_Face_Wrap_Black","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_White","H_Hat_Face_Balaclava_T", "U_TKLocalCombat_A","U_TKLocalCombat_B","U_TKLocalCombat_C","U_TKLocalCombat_D","U_TKLocalCombat_E", "U_TKLocalTactic_A","U_TKLocalTactic_B","U_TKLocalTactic_C","U_TKLocalTactic_D","U_TKLocalTactic_E", "U_TKLocalUniLong_A","U_TKLocalUniLong_B","U_TKLocalUniLong_C","U_TKLocalUniLong_D", "U_TKLocalUniLong_E","U_TerrorCombat_Black","U_TerrorCombat_A","U_CDGCombatUni_D","U_TerrorCombat_B", "H_Hat_Face_Wrap_Dark","H_Hat_Kufiya_B","H_Hat_Kufiya_F","H_Hat_Kufiya_D","H_Hat_Kufiya_C", "H_Hat_Face_Wrap_Sand","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_DPM",
"Trixie_Recon","Trixie_Sniper_equipbox","Trixie_LSMARK4_Net","Trixie_LSMARK4","Trixie_LSMARK4_Delta", "Trixie_LSMARK4_Delta_Camo","trixie_sb31250","trixie_sb31250_net","Trixie_ANPVS10", "Trixie_ANPVS10_Green","trixie_anpasl","trixie_anpasm","Trixie_ANPVS4","Trixie_Cyclone", "Trixie_Cyclone_Camo","Trixie_Cyclone_Net","trixie_m110","trixie_m110_ng","trixie_m110_ng_black", "trixie_m40a3","trixie_m40a3_ng","trixie_m40a3_clean","trixie_cz750","trixie_cz750_black", "trixie_cz750_ghillie","trixie_awm338","trixie_awm338_black","trixie_awm338_ghillie","trixie_m14dmr", "trixie_m14dmr_ng","trixie_m14dmr_clean","Trixie_M14DMR_Clean_Black","Trixie_M14DMR_NG_Black", "Trixie_M14DMR_NG_Short","Trixie_M14DMR_NG_Black_Short","Trixie_M14DMR_Clean_Pink","trixie_m14", "trixie_m14_black","trixie_m14_green","trixie_m107","trixie_m107_green","trixie_m107_black", "Trixie_AS50","Trixie_M24","Trixie_M24_Clean","Trixie_M24_Black", "Trixie_M24_Black_Clean", "Trixie_MK12","Trixie_MK12_Camo","Trixie_LM308MWS","Trixie_Rangefinder","Trixie_Rangefinder_Tripod", "Trixie_Soflam","Trixie_Soflam_Tripod","Trixie_soflam_tripod_anpvs4","Trixie_M24_Ghillie", "Trixie_ANPVS10_Net","Trixie_ANPVS10_Green_Net","Trixie_ANPASM_Net","Trixie_ANPASL_Net", "Trixie_ANPVS4_Net","Trixie_M68CCO","Trixie_M68CCO_Net","Zasleh2","Trixie_Ranger3", "Trixie_Ranger3_Camo","Trixie_Ranger3_Net","Disable_XEH_Logging"
,"DAR_MTVR","A3_Bush","A3_Stones","A3_Trees","Project_WetPaint_Mask","Project_WetPaint_Uniform","Project_WetPaint_Weapons","Project_WetPaint_Module","101_editor","HEJ_3D","IVORY_ERJ135","wirk_gtr","ALFR_GeK_Pagani_Zonda","wirk_p90","wirk_acwr","ALFR_GeK_MF1","ALFR_GEK_MF1_Police","wirk_ferrari_california",
"sam_weapons","sam_weapons_cfg","hgun_SA_makarov_pm_F","hgun_SA_nambu_type14_F","arifle_sa80_Sam_F","alfr_sam_stg58","alfr_sam_g36c","alfr_sam_mr96","alfr_sam_browning_hp","sam_melee","sam_melee_cfg","alfr_sam_tec9","alfr_sam_galilar","alfr_sam_deagle","alfr_sam_scarh","alfr_heist_masks","alfr_sam_auga3","alfr_sam_9a91","alfr_heist_masks_2","alfr_config","alfr_payday2_overkill_mask","alfr_dino_mask","alfr_horse_mask","alfr_vests","alfr_sounds","A3L_Nightclub","A3_Bush","A3_Plants","A3_Stones","A3_Trees","alfr_shield","alfr_sam_870cms","GeK_Civilian_H1","alfr_sam_hk45","alfr_objects","alfr_sam_flashball",
"GeK_Renault_Trafic_Police","GeK_Renault_Trafic","GeK_Mercedes_ML63","GeK_Mercedes_ML63_Rebelle",
"Blastcore_VEP","WarFXPE","Blastcore_SmokeCS","Blastcore_Sun","ALFR_GeK_Panamera_Police_ST","GeK_S60","GeK_S60_Police_ST","GeK_S60_Police","wirk_ktm"




];

uiNamespace setVariable["RscDisplayRemoteMissions",displayNull]; //For Spy-Glass..
uiNamespace setVariable["RscDisplayMultiplayer",displayNull];

_binConfigPatches = configFile >> "CfgPatches";
for "_i" from 0 to count (_binConfigPatches)-1 do {
	_patchEntry = _binConfigPatches select _i;
	if(isClass _patchEntry) then {
		if(!((configName _patchEntry) in _patchList)) exitWith {
			[[profileName,steamid,(configName _patchEntry)],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,format["Unknown Addon Patch: %1",(configName _patchEntry)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			failMission "SpyGlass";
		};
	};
};

//Check for copy-pasters of Dev-Con styled execution.
//Because I am nice, add these to the following below to allow CBA; "CBA_CREDITS_CONT_C","CBA_CREDITS_M_P
private["_children","_allowedChildren"];
_children = [configFile >> "RscDisplayMPInterrupt" >> "controls",0] call BIS_fnc_returnChildren;
_allowedChildren = [
"Title","MissionTitle","PlayersName","ButtonCancel","ButtonSAVE","ButtonSkip","ButtonRespawn","ButtonOptions",
"ButtonVideo","ButtonAudio","ButtonControls","ButtonGame","ButtonTutorialHints","ButtonAbort","DebugConsole","Feedback","MessageBox",		"ButtonVideo","ButtonAudio","ButtonControls","ButtonGame","ButtonTutorialHints","ButtonAbort","DebugConsole",
"Version","TraffLight","Feedback","MessageBox","CBA_CREDITS_CONT_C","CBA_CREDITS_M_P"
];

{
	if(!((configName _x) in _allowedChildren)) exitWith {
		[[profileName,steamid,"Modified_MPInterrupt"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
		[[profileName,"Devcon like executor detected"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
		sleep 0.5;
		failMission "SpyGlass";
	};
} foreach _children;

/*
	Display Validator
	Loops through and makes sure none of the displays were modified..

	TODO: Run check every x minutes and validate all displays.
*/
{
	_onLoad = getText(configFile >> (_x select 0) >> "onLoad");
	_onUnload = getText(configFile >> (_x select 0) >> "onUnload");
	if(_onLoad != (_x select 1) OR _onUnload != (_x select 2)) exitWith {
		[[profileName,steamid,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
		[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
		sleep 0.5;
		vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
		sleep 3;
		preProcessFile "SpyGlass\endoftheline.sqf";
		sleep 2.5;
		failMission "SpyGlass";
	};
}
foreach [
	["RscDisplayMainMap","[""onLoad"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayGetReady","[""onLoad"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayInventory","[""onLoad"",_this,""RscDisplayInventory"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInventory"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayLoadMission","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayInterrupt","[""onLoad"",_this,""RscDisplayInterrupt"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInterrupt"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayOptionsVideo","[""onLoad"",_this,""RscDisplayOptionsVideo"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsVideo"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayOptions","[""onLoad"",_this,""RscDisplayOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayAVTerminal","[""onLoad"",_this,""RscDisplayAVTerminal"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayAVTerminal"",'IGUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayConfigureAction","[""onLoad"",_this,""RscDisplayConfigureAction"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayConfigureAction"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayConfigureControllers","[""onLoad"",_this,""RscDisplayConfigureControllers"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayConfigureControllers"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayControlSchemes","[""onLoad"",_this,""RscDisplayControlSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayControlSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayCustomizeController","[""onLoad"",_this,""RscDisplayCustomizeController"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayCustomizeController"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayDebriefing","[""onLoad"",_this,""RscDisplayDebriefing"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayDebriefing"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayDiary","[""onLoad"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDiary"",'MpMarkDisplays'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayGameOptions","[""onLoad"",_this,""RscDisplayGameOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayGameOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayJoystickSchemes","[""onLoad"",_this,""RscDisplayJoystickSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayJoystickSchemes"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayLoading","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayMicSensitivityOptions","[""onLoad"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayOptionsAudio","[""onLoad"",_this,""RscDisplayOptionsAudio"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsAudio"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayOptionsLayout","[""onLoad"",_this,""RscDisplayOptionsLayout"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayOptionsLayout"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayStart","[2] call compile preprocessfilelinenumbers gettext (configfile >> 'CfgFunctions' >> 'init'); ['onLoad',_this,'RscDisplayLoading','Loading'] call (uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"],
	["RscDisplayInsertMarker","[""onLoad"",_this,""RscDisplayInsertMarker"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')","[""onUnload"",_this,""RscDisplayInsertMarker"",'GUI'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')"]
];

[] execVM "SpyGlass\fn_cmdMenuCheck.sqf";
[] execVM "SpyGlass\fn_variableCheck.sqf";
[] execVM "SpyGlass\fn_menuCheck.sqf";
