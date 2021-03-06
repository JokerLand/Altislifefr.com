/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
    case "life_inv_barriere": {"Barrière"};
	case "life_inv_cone": {"Cône"};
    case "life_inv_glissiere": {"Glissière"};
    case "life_inv_barstop": {"Barstop"};
    case "life_inv_lightd": {"lightd"};
	case "life_inv_passeport": {localize "STR_AltisLifeFr_passeport"};
	case "life_inv_johnpasseport": {"localize "STR_AltisLifeFr_johnpasseport""};
	case "life_inv_michealpasseport": {"localize "STR_AltisLifeFr_michealpasseport""};
	case "life_inv_tompasseport": {"localize "STR_AltisLifeFr_tompasseport""};
	case "life_inv_marcelpasseport": {"localize "STR_AltisLifeFr_marcelpasseport""};
	case "life_inv_marcpasseport": {"localize "STR_AltisLifeFr_marcpasseport""};
	case "life_inv_nathanpasseport": {"localize "STR_AltisLifeFr_nathanpasseport""};
	case "life_inv_francispasseport": {"localize "STR_AltisLifeFr_francispasseport""};
	case "life_inv_deweypasseport": {"localize "STR_AltisLifeFr_deweypasseport""};
	case "life_inv_halpasseport": {"localize "STR_AltisLifeFr_halpasseport""};	
	case "life_inv_craigpasseport": {"localize "STR_AltisLifeFr_craigpasseport""};
	case "life_inv_ericpasseport": {"localize "STR_AltisLifeFr_ericpasseport""};	
	case "life_inv_joshuapasseport": {"localize "STR_AltisLifeFr_joshuapasseport""};
	case "life_inv_dougpasseport": {"localize "STR_AltisLifeFr_dougpasseport""};
	case "life_inv_richardpasseport": {"localize "STR_AltisLifeFr_richardpasseport""};
	case "life_inv_anthonypasseport": {"localize "STR_AltisLifeFr_anthonypasseport""};		
	case "life_inv_leonpasseport": {"localize "STR_AltisLifeFr_leonpasseport""};
	case "life_inv_tracypasseport": {"localize "STR_AltisLifeFr_tracypasseport""};
	case "life_inv_nikkipasseport": {"localize "STR_AltisLifeFr_nikkipasseport""};	
	case "life_inv_monicapasseport": {"localize "STR_AltisLifeFr_monicapasseport""};	
	case "life_inv_mariepasseport": {"localize "STR_AltisLifeFr_mariepasseport""};	
	case "life_inv_mirandapasseport": {"localize "STR_AltisLifeFr_mirandapasseport""};	
	case "life_inv_christinapasseport": {"localize "STR_AltisLifeFr_christinapasseport""};
	case "life_inv_ericapasseport": {"localize "STR_AltisLifeFr_ericapasseport""};	
	case "life_inv_jingmeipasseport": {"localize "STR_AltisLifeFr_jingmeipasseport""};


	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_cair": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
    //License AltisLifeFr
	case "license_civ_gangster": {(localize "STR_License_Gangster")};
    case "license_civ_chefrebelle": {(localize "STR_License_ChefRebelle")};
    case "license_civ_depannage": {(localize "STR_License_Depanneur")};
    case "license_civ_girl": {(localize "STR_License_Girl")};
    case "license_civ_ion": {(localize "STR_License_Ion")};
	case "license_civ_aan": {(localize "STR_License_Aan")};
    case "license_civ_altisfly": {(localize "STR_License_Altisfly")};

};
