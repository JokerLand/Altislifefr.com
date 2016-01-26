#define VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON) class NAME { \
		variable = VARNAME; \
		weight = WEIGHT; \
		displayName = DISPLAYNAME; \
		buyPrice = BUYPRICE; \
		sellPrice = SELLPRICE; \
		illegal = ILLEGAL; \
		edible = EDIBLE; \
		icon = ICON; \
	};

#define LICENSEMACRO(NAME,DISPLAYNAME,VARNAME,PRICE,ILLEGAL,SIDE) class NAME { \
		variable = VARNAME; \
		displayName = DISPLAYNAME; \
		price = PRICE; \
		illegal = ILLEGAL; \
		side = SIDE; \
	};

#define true 1
#define false 0
#include "Config_Clothing.hpp"
#include "Config_Shops.hpp"


/*
	Master settings for various features and functionality
*/
class Life_Settings {
	/* Persistent Settings */
	save_civ_weapons = true; //Allow civilians to save weapons on them?
	save_virtualItems = true; //Save Virtual items (all sides)?

	/* Revive system settings */
	revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
	revive_fee = 1500; //Revive fee that players have to pay and medics / EMS are rewarded

	/* House related settings */
	house_limit = 2; //Maximum amount of houses a player can own.

	/* Gang related settings */
	gang_price = 75000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
	gang_upgradeBase = 10000; //The base cost for upgrading slots in a gang
	gang_upgradeMultiplier = 2.5; //Not sure if in use?

	/* Player-related systems */
	enable_fatigue = true; //Set to false to disable the ARMA 3 false system.
	total_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
	total_maxWeightT = 24;  //Static variable for the maximum weight allowed without having a backpack
	paycheck_period = 10; //Scaled in minutes

	/* Impound Variables */
	impound_car = 250; //Price for impounding cars
	impound_boat = 300; //Price for impounding boats
	impound_air = 350; //Price for impounding helicopters / planes

	/* Car-shop Settings */
	vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F" };

	/* Job-related stuff */
	delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

	crimes[] = {
		{"STR_Crime_1","350","1"},
		{"STR_Crime_2","1500","2"},
		{"STR_Crime_3","2500","3"},
		{"STR_Crime_4","3500","4"},
		{"STR_Crime_5","10000","5"},
		{"STR_Crime_6","5000","6"},
		{"STR_Crime_7","10000","7"}
	};

	sellArray[] = {
		{"arifle_sdar_F", 0},
		{"hgun_P07_snds_F", 0},
		{"hgun_P07_F", 0},
		{"ItemGPS", 0},
		{"ToolKit", 0},
		{"FirstAidKit", 0},
		{"Medikit", 0},
		{"NVGoggles", 0},
		{"16Rnd_9x21_Mag", 0},
		{"20Rnd_556x45_UW_mag", 0},
		{"ItemMap", 0},
		{"ItemCompass", 0},
		{"Chemlight_blue", 0},
		{"Chemlight_yellow", 0},
		{"Chemlight_green", 0},
		{"Chemlight_red", 0},
		{"hgun_Rook40_F", 0},
		{"arifle_Katiba_F", 0},
		{"30Rnd_556x45_Stanag", 0},
		{"20Rnd_762x51_Mag", 0},
		{"30Rnd_65x39_caseless_green", 0},
		{"DemoCharge_Remote_Mag", 0},
		{"SLAMDirectionalMine_Wire_Mag", 0},
		{"optic_ACO_grn", 0},
		{"acc_flashlight", 0},
		{"srifle_EBR_F", 0},
		{"arifle_TRG21_F", 0},
		{"optic_MRCO", 0},
		{"optic_Aco", 0},
		{"arifle_MX_F", 0},
		{"arifle_MXC_F", 0},
		{"arifle_MXM_F", 0},
		{"MineDetector", 0},
		{"optic_Holosight", 0},
		{"acc_pointer_IR", 0},
		{"arifle_TRG20_F", 0},
		{"SMG_01_F", 0},
		{"arifle_Mk20C_F", 0},
		{"30Rnd_45ACP_Mag_SMG_01", 0},
		{"30Rnd_9x21_Mag", 0}
	};

	allowedSavedVirtualItems[] = { "pickaxe", "fuelEmpty", "fuelFull", "spikeStrip", "lockpick", "defuseKit", "storageSmall", "storageBig", "redgull", "coffee", "waterBottle", "apple", "peach", "tbacon", "donuts", "rabbitGrilled", "salemaGrilled", "ornateGrilled", "mackerelGrilled", "tunaGrilled", "mulletGrilled", "catsharkGrilled", "turtleSoup", "henGrilled", "roosterGrilled", "sheepGrilled", "goatGrilled", "barriere", "cone", "glissiere", "barstop", "lightd" };
};

//Virtual Items
class VirtualItems {

    //VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON)
	//Item ALtisLifeFr
    VITEMMACRO(barriere, "STR_AltisLifeFr_barriere", "barriere", 2, 0, 0, false, -1, "icons\ico_barriere.paa")
    VITEMMACRO(cone, "STR_AltisLifeFr_Cone", "cone", 2, 0, 0, false, -1, "icons\ico_cone.paa")
    VITEMMACRO(glissiere, "STR_AltisLifeFr_glissiere", "glissiere", 2, 0, 0, false, -1, "icons\ico_barriere.paa")
    VITEMMACRO(barstop, "STR_AltisLifeFr_barstop", "barstop", 2, 0, 0, false, -1, "icons\ico_barriere")
    VITEMMACRO(lightd, "STR_AltisLifeFr_lightd", "lightd", 2, 0, 0, false, -1, "icons\ico_cone.paa")    
    
    //Misc
	VITEMMACRO(pickaxe, "STR_Item_Pickaxe", "pickaxe", 2, 55, 27, false, -1, "icons\ico_pickaxe.paa")
	VITEMMACRO(fuelEmpty, "STR_Item_FuelE", "fuelEmpty", 2, -1, -1, false, -1, "icons\ico_fuelempty.paa")
	VITEMMACRO(fuelFull, "STR_Item_FuelF", "fuelFull", 5, 20, 10, false, -1, "icons\ico_fuel.paa")
	VITEMMACRO(spikeStrip, "STR_Item_SpikeStrip", "spikeStrip", 15, 0, 0, false, -1, "icons\ico_spikestrip.paa")
	VITEMMACRO(lockpick, "STR_Item_Lockpick", "lockpick", 1, 500, 75, false, -1, "icons\ico_lockpick.paa")
	VITEMMACRO(goldbar, "STR_Item_GoldBar", "goldBar", 12, -1, 5000, false, -1, "icons\ico_goldbar.paa")
	VITEMMACRO(blastingcharge, "STR_Item_BCharge", "blastingCharge", 15, 3000, -1, true, -1, "icons\ico_blastingCharge.paa")
	VITEMMACRO(boltcutter, "STR_Item_BCutter", "boltCutter", 5, 1000, -1, true, -1, "icons\ico_boltcutters.paa")
	VITEMMACRO(defusekit, "STR_Item_DefuseKit", "defuseKit", 2, 100, -1, false, -1, "icons\ico_defuseKit.paa")
	VITEMMACRO(storagesmall, "STR_Item_StorageBS", "storageSmall", 5, 75000, -1, false, -1, "icons\ico_storageSmall.paa")
	VITEMMACRO(storagebig, "STR_Item_StorageBL", "storageBig", 10, 150000, -1, false, -1, "icons\ico_storageBig.paa")

	//Mined Items
	VITEMMACRO(oil_unprocessed, "STR_Item_OilU", "oilUnprocessed", 7, -1, -1, false, -1, "icons\ico_oil_unprocessed.paa")
	VITEMMACRO(oil_processed, "STR_Item_OilP", "oilProcessed", 6, -1, 298, false, -1, "icons\ico_oil_processed.paa")
	VITEMMACRO(copper_unrefined, "STR_Item_CopperOre", "copperUnrefined", 4, -1, -1, false, -1, "icons\ico_copper_ore.paa")
	VITEMMACRO(copper_refined, "STR_Item_CopperIngot", "copperRefined", 3, -1, 114, false, -1, "icons\ico_copper.paa")
	VITEMMACRO(iron_unrefined, "STR_Item_IronOre", "ironUnrefined", 5, -1, -1, false, -1, "icons\ico_iron_ore.paa")
	VITEMMACRO(iron_refined, "STR_Item_IronIngot", "ironRefined", 3, -1, 190, false, -1, "icons\ico_iron.paa")
	VITEMMACRO(salt_unrefined, "STR_Item_Salt", "saltUnrefined", 3, -1, -1, false, -1, "icons\ico_unprocessed.paa")
	VITEMMACRO(salt_refined, "STR_Item_SaltR", "saltRefined", 1, -1, 115, false, -1, "icons\ico_salt.paa")
	VITEMMACRO(sand, "STR_Item_Sand", "sand", 3, -1, -1, false, -1, "icons\ico_sand.paa")
	VITEMMACRO(glass, "STR_Item_Glass", "glass", 1, -1, 118, false, -1, "icons\ico_glass.paa")
	VITEMMACRO(diamond_uncut, "STR_Item_DiamondU", "diamondUncut", 4, -1, 30, false, -1, "icons\ico_diamond_unprocessed.paa")
	VITEMMACRO(diamond_cut, "STR_Item_DiamondC", "diamondCut", 3, -1, 180, false, -1, "icons\ico_diamond.paa")
	VITEMMACRO(rock, "STR_Item_Rock", "rock", 6, -1, -1, false, -1, "icons\ico_rock.paa")
	VITEMMACRO(cement, "STR_Item_CementBag", "cement", 5, -1, 210, false, -1, "icons\ico_cement.paa")

	//Drugs
	VITEMMACRO(heroin_unprocessed, "STR_Item_HeroinU", "heroinUnprocessed", 6, -1, -1, true, -1, "icons\ico_heroin.paa")
	VITEMMACRO(heroin_processed, "STR_Item_HeroinP", "heroinProcessed", 4, -1, 340, true, -1, "icons\ico_crack.paa")
	VITEMMACRO(cannabis, "STR_Item_Cannabis", "cannabis", 4, -1, -1, true, -1, "icons\ico_cannabis.paa")
	VITEMMACRO(marijuana, "STR_Item_Marijuana", "marijuana", 3, -1, 230, true, -1, "icons\ico_marijuana.paa")
	VITEMMACRO(cocaine_unprocessed, "STR_Item_CocaineU", "cocaineUnprocessed", 6, -1, 60, true, -1, "icons\ico_coke.paa")
	VITEMMACRO(cocaine_processed, "STR_Item_CocaineP", "cocaineProcessed", 4, -1, 450, true, -1, "icons\ico_cocaine.paa")

	//Drink
	VITEMMACRO(redgull, "STR_Item_RedGull", "redgull", 1, 10, 2, false, 100, "icons\ico_redgull.paa")
	VITEMMACRO(coffee, "STR_Item_Coffee", "coffee", 1, 2, 1, false, 100, "icons\ico_coffee.paa")
	VITEMMACRO(waterBottle, "STR_Item_WaterBottle", "waterBottle", 1, 10, 1, false, 100, "icons\ico_waterBottle.paa")

	//Food
	VITEMMACRO(apple, "STR_Item_Apple", "apple", 1, 5, 5, false, 10, "icons\ico_apple.paa")
	VITEMMACRO(peach, "STR_Item_Peach", "peach", 1, 10, 5, false, 10, "icons\ico_peach.paa")
	VITEMMACRO(tbacon, "STR_Item_TBacon", "tbacon", 1, 10, 2, false, 40, "icons\ico_tbacon.paa")
	VITEMMACRO(donuts, "STR_Item_Donuts", "donuts", 1, 2, 1, false, 30, "icons\ico_donut.paa")
	VITEMMACRO(rabbit_raw, "STR_Item_Rabbit", "rabbitRaw", 2, -1, 65, false, -1, "icons\food.paa")
	VITEMMACRO(rabbit_grilled, "STR_Item_RabbitGrilled", "rabbitGrilled", 1, 150, 115, false, 20, "icons\ico_cookedMeat.paa")
	VITEMMACRO(salema_raw, "STR_Item_SalemaMeat", "salemaRaw", 2, -1, 45, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(salema_grilled, "STR_Item_SalemaGrilled", "salemaGrilled", 1, 75, 55, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(ornate_raw, "STR_Item_OrnateMeat", "ornateRaw", 2, -1, 40, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(ornate_grilled, "STR_Item_OrnateGrilled", "ornateGrilled", 1, 175, 150, false, 25, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mackerel_raw, "STR_Item_MackerelMeat", "mackerelRaw", 4, -1, 75, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(mackerel_grilled, "STR_Item_MackerelGrilled", "mackerelGrilled", 2, 250, 200, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(tuna_raw, "STR_Item_TunaMeat", "tunaRaw", 6, -1, 150, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(tuna_grilled, "STR_Item_TunaGrilled", "tunaGrilled", 3, 1250, 250, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mullet_raw, "STR_Item_MulletMeat", "mulletRaw", 4, -1, 80, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(mullet_fried, "STR_Item_MulletFried", "mulletFried", 2, 600, 250, false, 80, "icons\ico_cookedMeat.paa")
	VITEMMACRO(catshark_raw, "STR_Item_CatSharkMeat", "catsharkRaw", 6, -1, 200, false, -1, "icons\ico_fish.paa")
	VITEMMACRO(catshark_fried, "STR_Item_CatSharkFried", "catsharkFried", 3, 750, 250, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(turtle_raw, "STR_Item_Turtle", "turtleRaw", 6, -1, 1500, true, -1, "icons\ico_turtle.paa")
	VITEMMACRO(turtle_soup, "STR_Item_TurtleSoup", "turtleSoup", 2, 500, 250, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(hen_raw, "STR_Item_HenRaw", "henRaw", 1, -1, 35, false, -1, "icons\food.paa")
	VITEMMACRO(hen_fried, "STR_Item_HenFried", "henFried", 1, 115, 85, false, 65, "icons\ico_cookedMeat.paa")
	VITEMMACRO(rooster_raw, "STR_Item_RoosterRaw", "roosterRaw", 1, -1, 35, false, -1, "icons\food.paa")
	VITEMMACRO(rooster_grilled, "STR_Item_RoosterGrilled", "roosterGrilled", 115, 85, false, 45, "icons\ico_cookedMeat.paa")
	VITEMMACRO(sheep_raw, "STR_Item_SheepRaw", "sheepRaw", 2, -1, 50, false, -1, "icons\food.paa")
	VITEMMACRO(sheep_grilled, "STR_Item_SheepGrilled", "sheepGrilled", 2, 155, 115, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(goat_raw, "STR_Item_GoatRaw", "goatRaw", 2, -1, 75, false, -1, "icons\food.paa")
	VITEMMACRO(goat_grilled, "STR_Item_GoatGrilled", "goatGrilled", 2, 175, 135, false, 100, "icons\ico_cookedMeat.paa")
};


/*
	Licenses

	Params:
	CLASS ENTRY,DisplayName,VariableName,price,illegal,side indicator
*/
class Licenses {

	/** Permis **/
	LICENSEMACRO(driver,"STR_License_Driver","driver",1000,false,"civ")
	LICENSEMACRO(boat,"STR_License_Boat","boat",1500,false,"civ")
	LICENSEMACRO(pilot,"STR_License_Pilot","pilot",18500,false,"civ")
	LICENSEMACRO(gun,"STR_License_Firearm","gun",20000,false,"civ")
	LICENSEMACRO(dive,"STR_License_Diving","dive",1500,false,"civ")
	LICENSEMACRO(trucking,"STR_License_trucking","trucking",10000,false,"civ")
	LICENSEMACRO(home,"STR_License_Home","home",50000,false,"civ")


	/** Police **/
	LICENSEMACRO(cg,"STR_License_CG","cg",1000,false,"cop")
    LICENSEMACRO(cAir,"STR_License_Pilot","cAir",8000,false,"cop")

	/** EMS **/
	LICENSEMACRO(mAir,"STR_License_Pilot","mAir",2500,false,"med")

	/** Traitement **/
	LICENSEMACRO(oil,"STR_License_Oil","oil",8000,false,"civ")
	LICENSEMACRO(sand,"STR_License_Sand","sand",7800,false,"civ")
	LICENSEMACRO(iron,"STR_License_Iron","iron",7000,false,"civ")
	LICENSEMACRO(copper,"STR_License_Copper","copper",5500,false,"civ")
	LICENSEMACRO(cement,"STR_License_Cement","cement",6500,false,"civ")
	LICENSEMACRO(diamond,"STR_License_Diamond","diamond",11000,false,"civ")
	LICENSEMACRO(salt,"STR_License_Salt","salt",7500,false,"civ")

	/** Ilegal **/
	LICENSEMACRO(rebel,"STR_License_Rebel","rebel",999999,true,"civ")
	LICENSEMACRO(heroin,"STR_License_Heroin","heroin",50000,true,"civ")
	LICENSEMACRO(marijuana,"STR_License_Marijuana","marijuana",40000,true,"civ")
	LICENSEMACRO(medmarijuana,"STR_License_Medmarijuana","medmarijuana",20000,false,"civ")
	LICENSEMACRO(cocaine,"STR_License_Cocaine","cocaine",55000,true,"civ")
	LICENSEMACRO(gangster,"STR_License_Gangster","gangster",135000,true,"civ")
    LICENSEMACRO(chefrebelle,"STR_License_ChefRebelle","chefrebelle",-1,false,"civ")

    /** Depanneur **/
	LICENSEMACRO(depanneur,"STR_License_Depanneur","depanneur",-1,false,"civ")

};

class VirtualShops {
	class market {
		name = "STR_Shops_Market";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "storagesmall", "storagebig" };
	};

	class rebel {
		name = "STR_Shops_Rebel";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge" };
	};

	class gang {
		name = "STR_Shops_Gang";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge" };
	};

	class wongs {
		name = "STR_Shops_Wongs";
		items[] = { "turtle_soup", "turtle_raw" };
	};

	class coffee {
		name = "STR_Shops_Coffee";
		items[] = { "coffee", "donuts" };
	};

	class drugdealer {
		name = "STR_Shops_DrugDealer";
		items[] = { "cocaine_processed", "heroin_processed", "marijuana" };
	};

	class oil {
		name = "STR_Shops_Oil";
		items[] = { "oil_processed", "pickaxe", "fuelFull" };
	};

	class fishmarket {
		name = "STR_Shops_FishMarket";
		items[] = { "salema_raw", "salema_grilled", "ornate_raw", "ornate_grilled", "mackerel_raw", "mackerel_grilled", "tuna_raw", "tuna_grilled", "mullet_raw", "mullet_fried", "catshark_raw", "catshark_fried" };
	};

	class glass {
		name = "STR_Shops_Glass";
		items[] = { "glass" };
	};

	class iron  {
		name = "STR_Shops_Minerals";
		items[] = { "iron_refined", "copper_refined" };
	};

	class diamond {
		name = "STR_Shops_Diamond";
		items[] = { "diamond_uncut", "diamond_cut" };
	};

	class salt {
		name = "STR_Shops_Salt";
		items[] = { "salt_refined" };
	};

	class cop {
		name = "STR_Shops_Cop";
		items[] = { "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit_grilled", "apple", "redgull", "fuelFull", "defusekit", "barriere", "cone", "glissiere", "barstop", "lightd" };
	};

	class cement {
		name = "STR_Shops_Cement";
		items[] = { "cement" };
	};

	class gold {
		name = "STR_Shops_Gold";
		items[] = { "goldbar" };
	};
};

#include "Config_Vehicles.hpp"
#include "Config_Houses.hpp"
