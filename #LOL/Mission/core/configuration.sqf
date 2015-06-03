#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_acceptedRules = 0;
life_removeWanted = false;
life_isdowned = false;
life_gathering = false;
life_requestedMedic = false;
life_deadMen = false;
brinks_inMission = false;
brinks_moneyStart = 0;
life_drivePoints = 0;
player setVariable["medic_state",0,TRUE];
life_fuelPrice = 6;
life_soundFaded = false;
actualProofs = [];
life_companyID = [];

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,7500); //Fee for players to pay when revived.

//House Limit
//__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,5000000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).


/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,15000);
__CONST__(life_impound_boat,5000);
__CONST__(life_impound_air,17500);
life_istazed = false;
life_my_gang = ObjNull;
bank_robber = [];

switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 5000; //Paycheck Amount
		handgunInfos = [];
		switchTimer = 0;
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 2500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 7000;
		life_paycheck = 5000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["I_MRAP_03_hmg_F","B_G_Offroad_01_armed_F","O_MRAP_02_hmg_F","FLAY_HangGlider","FLAY_HangGliderBlack","O_MRAP_02_F","O_Truck_03_device_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_ammo_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_debitcard",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_zipties",
	"life_inv_storagebig",
	"life_inv_puranium",
	"life_inv_ipuranium",
	"life_inv_uranium1",
	"life_inv_huntingKnife",
	"life_inv_rabbitMeat",
	"life_inv_uranium2",
	"life_inv_uranium3",
	"life_inv_uranium3b",
	"life_inv_uranium4b",
	"life_inv_uranium4",
	"life_inv_uranium",
	"life_inv_uraniumb",
	"life_inv_moonshine",
	"life_inv_wine",	
	"life_inv_grapes",
	"life_inv_butane",
	"life_inv_ephed",
	"life_inv_phosph",
	"life_inv_meth55",
	"life_inv_meth60",
	"life_inv_meth75",
	"life_inv_meth85",
	"life_inv_meth97",
	"life_inv_beer",
	"life_inv_whiskey",
	"life_inv_speedbomb",
	"life_inv_malt",
	"life_inv_houblon",
	"life_inv_ether",
	"life_inv_cigar",
	"life_inv_tabac",
	"life_inv_cigarettes",
	"life_inv_explo_i",
	"life_inv_adre",
	"life_inv_tracker",
	"life_inv_artefact",
	"life_inv_roadCone",
	"life_inv_triangleSignal",
	"life_inv_roadBarrier",
	"life_inv_wheat",
	"life_inv_flour",
	"life_inv_cuff",
	"life_inv_kidney",
	"life_inv_olive",
	"life_inv_oliveoil"
];

life_containers_classnames = [
	"Land_dp_smallFactory_F",
	"B_Slingload_01_Ammo_F"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_uranium","civ"],
	["license_civ_grapes","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_beer","civ"],
	["license_civ_whiskey","civ"],
	["license_civ_cigar","civ"],
	["license_civ_cigarettes","civ"],
	["license_civ_hunting","civ"],
	["license_civ_meth55","civ"],
	["license_civ_rsdep","civ"],
	["license_civ_brinks","civ"],
	["license_civ_flour","civ"],
	["license_civ_presse","civ"],
	["license_civ_bike","civ"],
	["license_civ_olive","civ"],
	["license_civ_delta","civ"],
	["license_tlt","civ"],
	["license_he","civ"],
	["license_lmc","civ"],
	["license_bgf","civ"],
	["license_bmg","civ"],
	["license_olympia","civ"],
	["license_rosthein","civ"],
	["license_fh","civ"],
	["license_sal","civ"],
	["license_ms","civ"],
	["license_ng","civ"],
	["license_fonda","civ"],
    ["license_egp","civ"],
    ["license_fmg","civ"],
    ["license_sop","civ"],
	["license_top","civ"],
	["license_moa","civ"],
	["license_raid","civ"],
	["license_grf","civ"],
	["license_mw","civ"],
	["license_poc","civ"],
	["license_yk","civ"],
	["license_cro","civ"],
	["license_cn","civ"],
	["license_ec","civ"],
	["license_gr","civ"],
	["license_armer","civ"],
	["license_fla","civ"],
	["license_reb1","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
life_dTruck_points = ["Kavala_Fret","Athira_Fret","Sofia_Fret","Pyrgos_Fret"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["moonshine",650],["ephedrine",4000],["methu",400],["methp",4000],["ipuranium",10000],["uranium2",3000],["uranium3",3000],["uranium4",3000],["uranium",3000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",600],
	["ornate",250],
	["mackerel",400],
	["tuna",1000],
	["mullet",500],
	["catshark",900],
	["debitcard",0],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["kidney",50000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",0],
	["cement",1950],
	["uranium",60000],
	["uraniumb",75000],
	["goldbar",95000],
	["moonshine",800],
	["wine",255],
	["grapes",70],
	["meth55",40000],
	["meth60",42000],
	["meth75",45000],
	["meth85",48000],
	["rabbitMeat",2000],
	["meth97",52000],
	["ephed",5000],
	["ether",5000],
	["butane",5000],
	["phosph",5000],
	["beer",1600],
	["speedbomb",500000],
	["whiskey",1900],
	["cigar",3300],
	["cigarettes",4000],
	["explo_i",4000],
	["flour",2000],
	["artefact",850],
	["oliveoil",1750]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["rabbit",75],
	["salema",600],
	["ornate",250],
	["mackerel",400],
	["tuna",1000],
	["mullet",500],
	["catshark",900],
	["water",10],
	["debitcard",3000],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",500],
	["fuelF",850],
	["kidney",75000],
	["spikeStrip",300],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["puranium",6000],
	["ipuranium",12000],
	["moonshine",1250],
	["speedbomb",700000],
	["wine",300],
	["grapes",75],
	["adre",35000],
	["huntingKnife",10000],
	["tracker",50000],
	["triangleSignal",30],
	["roadCone",100],
	["cuff",200],
	["roadBarrier",100],
	["artefact",4500],
	["oliveoil",2000],
	["whiskey",75],
	["beer",20]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices = if(playerSide == west) then {
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",200000],
	["B_Heli_Light_01_F",10000],
	["O_Heli_Light_02_unarmed_F",75000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",200000],
    ["ALFR_Armee_Hummingbird",10000],
	["B_Heli_Transport_03_unarmed_F",50000]
]} else {
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",200000],
	["B_Heli_Light_01_F",10000],
	["O_Heli_Light_02_unarmed_F",75000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",200000],
    ["ALFR_Armee_Hummingbird",10000],
	["B_Heli_Transport_03_unarmed_F",350000]
]
};
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);