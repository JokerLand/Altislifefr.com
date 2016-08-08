/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*/
class VirtualShops {
    //Virtual Shops
    class passeport {
        name = "STR_Shops_PrefecturePasseport";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "passeport" };
    };	
	
	class faussaire_homme {
		name = "STR_Shops_PasseportMasculin";
		side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
		items[] = { "johnpasseport", "michealpasseport", "michealpasseport", "tompasseport", "marcelpasseport", "marcpasseport", "nathanpasseport", "francispasseport", "deweypasseport", "halpasseport", "craigpasseport", "ericpasseport", "joshuapasseport", "dougpasseport", "richardpasseport", "anthonypasseport", "leonpasseport" };
	};

	class faussaire_femme {
		name = "STR_Shops_PasseportFeminin";
		side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
		items[] = { "tracypasseport", "nikkipasseport", "monicapasseport", "monicapasseport", "mariepasseport", "mirandapasseport", "christinapasseport", "ericapasseport", "jingmeipasseport" };
	};	
	
    class market {
        name = "STR_Shops_Market";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "cacao", "redgull", "tbacon", "pickaxe", "toolkit", "fuelFull", "banane", "storagesmall", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw" };
    };
    
    class bar {
        name = "STR_Shops_Bar";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "redgull", "beer", "whiskey", "rhum", "vodka" };
    };

    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "tbacon", "cone", "conel", "cordon", "lightd", "redgull", "fuelFull", "toolkit", "defibrillator" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "blastingcharge" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "appredgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "blastingcharge" };
    };

    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "turtle_soup", "turtle_raw" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts", "redgull", "toolkit", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cocaine_processed", "heroin_processed", "marijuana", "joint" };
    };
    
    class methv {
        name = "STR_MAR_Meth_Trader";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "meth" };
    };
    
    class produitchimique {
        name = "STR_Shops_Produitchimique";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "phosphore_rouge", "iode" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "oil_processed", "pickaxe", "fuelFull" };
    };
    
   class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
    };

    class glass {
        name = "STR_Shops_Glass";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "glass" };
    };

    class corailv {
        name = "STR_Shops_Corailv";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "corail" };
    };
    
    class alguev {
        name = "STR_Shops_Alguev";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "alguep" };
    };
    
    class maisv {
        name = "STR_Shops_Maisv";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "maisp" };
    };
    
    class emeraudev {
        name = "STR_Shops_Emeraudev";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "emeraudep" };
    };
    
    class saphirv {
        name = "STR_Shops_Saphirv";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "saphirp" };
    };
    
    class pierrevolcaniquev {
        name = "STR_Shops_Pierrevolcaniquev";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "pierrevolcaniquep" };
    };
    
    class souffrev {
        name = "STR_Shops_Souffrev";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "souffrep" };
    };
    
    class boisv {
        name = "STR_Shops_Boisv";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "boisp" };
    };
    
    class sugarcane {
        name = "STR_Shops_SugarCane";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "sugarcaneprocessed" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "goldbar" };
    };

    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "donuts", "coffee", "telecommande", "crowbar", "banane", "redgull", "toolkit", "fuelFull", "defusekit" }; //, "spikeStrip", "ladder", "barrier", "barrierl", "panneau", "panneauattention", "cone", "conel", "cordon", "glissiere", "barstop", "lightd",
    };
        
    class depan {
        name = "STR_Shops_Depan";
        side = "civ";
        license = "depan";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "tbacon", "redgull", "lockpick", "cone", "conel", "barriere", "barrierel", "cordon", "lightd", "panneauattention", "fuelFull" };
    };
    
    class ion {
        name = "STR_Shops_Ion";
        side = "civ";
        license = "ion";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "light", "pickaxe", "fuelFull", "storagesmall", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw" };
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
    //Virtual Items

    //Misc
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 1200;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_pickaxe.paa";
    };

    class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 900;
        sellPrice = 450;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defibrillator.paa";
    };

    class toolkit {
        variable = "toolkit";
        displayName = "STR_Item_Toolkit";
        weight = 4;
        buyPrice = 350;
        sellPrice = 100;
        illegal = false;
        edible = -1;
        icon = "\a3\weapons_f\items\data\UI\gear_toolkit_ca.paa";
    };

    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = 10;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuelEmpty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 5;
        buyPrice = 100;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 10;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 2500;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 12;
        buyPrice = -1;
        sellPrice = 95000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_goldBar.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 15;
        buyPrice = 35000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 999999;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "icons\ico_boltCutter.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 2500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 75000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 150000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

    //Mined Items
    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 4;
        buyPrice = -1;
        sellPrice = 2900;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilProcessed.paa";
    };

    class sand {
        variable = "sand";
        displayName = "STR_Item_Sand";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_sand.paa";
    };

    class glass {
        variable = "glass";
        displayName = "STR_Item_Glass";
        weight = 4;
        buyPrice = -1;
        sellPrice = 1500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_glass.paa";
    };

    //ALFR FARM
    class sugarcaneunprocessed {
        variable = "sugarcaneunprocessed";
        displayName = "STR_Item_SugarcaneUnprocessed";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };
    
    class sugarcaneprocessed {
        variable = "sugarcaneprocessed";
        displayName = "STR_Item_SugarcaneProcessed";
        weight = 2;
        buyPrice = -1;
        sellPrice = 2000;
        illegal = false;
        edible = -1;
        icon = "";
    };
    
    //Drugs
    class iode {
        variable = "iode";
        displayName = "STR_Item_Iode";
        weight = 2;
        buyPrice = 600;
        sellPrice = 300;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };
    
    class ephedrine {
        variable = "ephedrine";
        displayName = "STR_Item_Ephedrine";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };
    
    class phosphore_rouge {
        variable = "phosphore_rouge";
        displayName = "STR_Item_Phosphore_Rouge";
        weight = 2;
        buyPrice = 600;
        sellPrice = 300;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };
    
    class meth {
        variable = "meth";
        displayName = "STR_Item_Meth";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1200;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 0;
        illegal = false;
        edible = 50;
        icon = "icons\ico_redgull.paa";
    };
    
    class beer {
        variable = "beer";
        displayName = "STR_Item_beer";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 0;
        illegal = false;
        edible = 50;
        icon = "icons\ico_redgull.paa";
    };
    
    class whiskey {
        variable = "whiskey";
        displayName = "STR_Item_whiskey";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 0;
        illegal = false;
        edible = 50;
        icon = "icons\ico_redgull.paa";
    };
    
    class rhum {
        variable = "rhum";
        displayName = "STR_Item_rhum";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 0;
        illegal = false;
        edible = 50;
        icon = "icons\ico_redgull.paa";
    };
    class vodka  {
        variable = "vodka";
        displayName = "STR_Item_vodka";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 0;
        illegal = false;
        edible = 50;
        icon = "icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 10;
        sellPrice = 0;
        illegal = false;
        edible = 60;
        icon = "icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 10;
        sellPrice = 0;
        illegal = false;
        edible = 100;
        icon = "icons\ico_waterBottle.paa";
    };

    //Food
    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 75;
        sellPrice = 0;
        illegal = false;
        edible = 40;
        icon = "icons\ico_tbacon.paa";
    };

    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 100;
        sellPrice = 50;
        illegal = false;
        edible = 50;
        icon = "icons\ico_donuts.paa";
    };
    
    class banane {
        variable = "banane";
        displayName = "STR_Item_Banane";
        weight = 1;
        buyPrice = 110;
        sellPrice = 70;
        illegal = false;
        edible = 25;
        icon = "icons\ico_banane.paa";
    };
    
    class cacao {
        variable = "cacao";
        displayName = "STR_Item_Cacao";
        weight = 1;
        buyPrice = 110;
        sellPrice = 55;
        illegal = false;
        edible = 20;
        icon = "icons\ico_cacao.paa";
    };
    
    class noixcoco {
        variable = "noixcoco";
        displayName = "STR_Item_Noixcoco";
        weight = 1;
        buyPrice = 110;
        sellPrice = 55;
        illegal = false;
        edible = 20;
        icon = "icons\ico_cacao.paa";
    };
    
    class corail {
        variable = "corail";
        displayName = "STR_Item_Corail";
        weight = 6;
        buyPrice = -1;
        sellPrice = 1500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_corail.paa";
    };
    
    class algueu {
        variable = "algueu";
        displayName = "STR_Item_Algueu";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = 10;
        icon = "icons\ico_algue.paa";
    };
    
    class alguep {
        variable = "alguep";
        displayName = "STR_Item_Alguep";
        weight = 2;
        buyPrice = -1;
        sellPrice = 350;
        illegal = true;
        edible = 10;
        icon = "icons\ico_algue.paa";
    };
    
    class maisu {
        variable = "maisu";
        displayName = "STR_Item_Maisu";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class maisp {
        variable = "maisp";
        displayName = "STR_Item_Maisp";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = 15;
        icon = "icons\ico_meat.paa";
    };
    
    class emeraudeu {
        variable = "emeraudeu";
        displayName = "STR_Item_Emeraudeu";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class emeraudep {
        variable = "emeraudep";
        displayName = "STR_Item_Emeraudep";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class saphiru {
        variable = "saphiru";
        displayName = "STR_Item_Saphiru";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class saphirp {
        variable = "saphirp";
        displayName = "STR_Item_Saphirp";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class pierrevolcaniqueu {
        variable = "pierrevolcaniqueu";
        displayName = "STR_Item_Pierrevolcaniqueu";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class pierrevolcaniquep {
        variable = "pierrevolcaniquep";
        displayName = "STR_Item_Pierrevolcaniquep";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class souffreu {
        variable = "souffreu";
        displayName = "STR_Item_Souffreu";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class souffrep {
        variable = "souffrep";
        displayName = "STR_Item_Souffrep";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = true;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class boisu {
        variable = "boisu";
        displayName = "STR_Item_Boisu";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    class boisp {
        variable = "boisp";
        displayName = "STR_Item_Boisp";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };
    
    
    //
    class rabbit_raw {
        variable = "rabbitRaw";
        displayName = "STR_Item_RabbitRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 75;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = 75;
        sellPrice = 75;
        illegal = false;
        edible = 50;
        icon = "icons\ico_cookedMeat.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 1;
        buyPrice = 55;
        sellPrice = 45;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedMeat.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 40;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 1;
        buyPrice = 50;
        sellPrice = 40;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedMeat.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 175;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = 200;
        sellPrice = 175;
        illegal = false;
        edible = 50;
        icon = "icons\ico_cookedMeat.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 700;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 3;
        buyPrice = 900;
        sellPrice = 700;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 250;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = 300;
        sellPrice = 250;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 300;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 3;
        buyPrice = 350;
        sellPrice = 300;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class turtle_soup {
        variable = "turtleSoup";
        displayName = "STR_Item_TurtleSoup";
        weight = 2;
        buyPrice = 2500;
        sellPrice = 0;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 100;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 2;
        buyPrice = 220;
        sellPrice = 110;
        illegal = false;
        edible = 55;
        icon = "icons\ico_cookedMeat.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 2;
        buyPrice = 800;
        sellPrice = 400;
        illegal = false;
        edible = 60;
        icon = "icons\ico_cookedMeat.paa";
    };

    class sheep_raw {
        variable = "sheepRaw";
        displayName = "STR_Item_SheepRaw";
        weight = 5;
        buyPrice = -1;
        sellPrice = 265;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class sheep {
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 5;
        buyPrice = 1060;
        sellPrice = 530;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class goat_raw {
        variable = "goatRaw";
        displayName = "STR_Item_GoatRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 300;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class goat {
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 6;
        buyPrice = 1200;
        sellPrice = 600;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };
    
    // AltisLifeFR Item
    class telecommande {
        variable = "telecommande";
        displayName = "STR_Item_telecommande";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_telecommande.paa";
    };
    
    class barrier {
        variable = "barrier";
        displayName = "STR_Item_barrier";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_barriere.paa";
    };
    
    class barrierl {
        variable = "barrierl";
        displayName = "STR_Item_barrierl";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_barriere.paa";
    };
    
    class ladder {
        variable = "ladder";
        displayName = "STR_Item_ladder";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_barriere.paa";
    };
    
    class cordon {
        variable = "cordon";
        displayName = "STR_Item_cordon";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cordon.paa";
    };

    class cone {
        variable = "cone";
        displayName = "STR_Item_cone";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cone.paa";
    };
    
    class conel {
        variable = "conel";
        displayName = "STR_Item_conel";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cone.paa";
    };
    
    class panneau {
        variable = "panneau";
        displayName = "STR_Item_panneauhaltepolice";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_panneau.paa";
    };
    
    class panneauattention {
        variable = "panneauattention";
        displayName = "STR_Item_panneaudanger";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_panneauattention.paa";
    };
    
    class glissiere {
        variable = "glissiere";
        displayName = "STR_Item_glissiere";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_barriere.paa";
    };

    class barstop {
        variable = "barstop";
        displayName = "STR_Item_barstop";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_barriere.paa";
    };

    class lightd {
        variable = "lightd";
        displayName = "STR_Item_lightd";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_lightd.paa";
    };
    
    class light {
        variable = "light";
        displayName = "STR_Item_light";
        weight = 5;
        buyPrice = 100;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_light.paa";
    };

    class serflex {
        variable = "serflex";
        displayName = "STR_Item_serflex";
        weight = 2;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_serflex.paa";
    };
	
    class crowbar {
        variable = "crowbar";
        displayName = "STR_Item_crowbar";
        weight = 1;
        buyPrice = 0;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_crowbar.paa";
    };
	
	// Passeport

    class passeport {
        variable = "passeport";
        displayName = "STR_AltisLifeFr_passeport";
        weight = 3;
        buyPrice = 500;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "textures\Passeport.paa";
    };
	
    class johnpasseport {
        variable = "johnpasseport";
        displayName = "STR_AltisLifeFr_johnpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class michealpasseport {
        variable = "michealpasseport";
        displayName = "STR_AltisLifeFr_michealpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class tompasseport {
        variable = "tompasseport";
        displayName = "STR_AltisLifeFr_tompasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };
	
    class marcelpasseport {
        variable = "marcelpasseport";
        displayName = "STR_AltisLifeFr_marcelpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };
	
    class marcpasseport {
        variable = "marcpasseport";
        displayName = "STR_AltisLifeFr_marcpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class nathanpasseport {
        variable = "nathanpasseport";
        displayName = "STR_AltisLifeFr_nathanpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class francispasseport {
        variable = "francispasseport";
        displayName = "STR_AltisLifeFr_francispasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class deweypasseport {
        variable = "deweypasseport";
        displayName = "STR_AltisLifeFr_deweypasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class halpasseport {
        variable = "halpasseport";
        displayName = "STR_AltisLifeFr_halpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class craigpasseport {
        variable = "craigpasseport";
        displayName = "STR_AltisLifeFr_craigpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class ericpasseport {
        variable = "ericpasseport";
        displayName = "STR_AltisLifeFr_ericpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class joshuapasseport {
        variable = "joshuapasseport";
        displayName = "STR_AltisLifeFr_joshuapasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class dougpasseport {
        variable = "dougpasseport";
        displayName = "STR_AltisLifeFr_dougpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class richardpasseport {
        variable = "richardpasseport";
        displayName = "STR_AltisLifeFr_richardpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class anthonypasseport {
        variable = "anthonypasseport";
        displayName = "STR_AltisLifeFr_anthonypasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class leonpasseport {
        variable = "leonpasseport";
        displayName = "STR_AltisLifeFr_leonpasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class tracypasseport {
        variable = "tracypasseport";
        displayName = "STR_AltisLifeFr_tracypasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class nikkipasseport {
        variable = "nikkipasseport";
        displayName = "STR_AltisLifeFr_nikkipasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };	

    class monicapasseport {
        variable = "monicapasseport";
        displayName = "STR_AltisLifeFr_monicapasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class mariepasseport {
        variable = "mariepasseport";
        displayName = "STR_AltisLifeFr_mariepasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class mirandapasseport {
        variable = "mirandapasseport";
        displayName = "STR_AltisLifeFr_mirandapasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class christinapasseport {
        variable = "christinapasseport";
        displayName = "STR_AltisLifeFr_christinapasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class ericapasseport {
        variable = "ericapasseport";
        displayName = "STR_AltisLifeFr_ericapasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };

    class jingmeipasseport {
        variable = "jingmeipasseport";
        displayName = "STR_AltisLifeFr_jingmeipasseport";
        weight = 3;
        buyPrice = 25000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "textures\Passeport.paa";
    };
};
