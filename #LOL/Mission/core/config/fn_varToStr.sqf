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
	case "life_inv_marijuana": {"Pochon de Weed"};
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
	case "life_inv_diamondr": {"Diamant Industriel"};
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
    case "life_inv_puranium": {"Enrichissement Uranium"}; // Add This
    case "life_inv_ipuranium": {"Enrichissement Uran. (Mil)"}; // Add This
    case "life_inv_uranium1": {"Déchets d'Uranium"}; // Add This
    case "life_inv_uranium2": {"Uranium Brut"}; // Add This
    case "life_inv_uranium3": {"Uranium Enrichi (Civil)"}; // Add This
	case "life_inv_uranium3b": {"Uranium Enrichi (Mil)"}; // Add This
    case "life_inv_uranium4": {"Uranium Concentré (Civil)"}; // Add This
	case "life_inv_uranium4b": {"Uranium Concentré (Mil)"}; // Add This
    case "life_inv_uranium": {"Uranium (Civil)"}; // Add This
    case "life_inv_uraniumb": {"Uranium (Mil)"}; // Add This
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_wine": {"Vin"};
	case "life_inv_grapes": {"Grappes de Raisin"};
	case "life_inv_ether": {"Ether"};
	case "life_inv_butane": {"Butane"};
	case "life_inv_ephed": {"Ephedrine"};
	case "life_inv_phosph": {"Phosphore"};
	case "life_inv_meth55": {"Meth 55"};
	case "life_inv_meth60": {"Meth 60"};
	case "life_inv_meth75": {"Meth 75"};
	case "life_inv_debitcard": {"Carte Bleue"};
	case "life_inv_meth85": {"Meth 85"};
	case "life_inv_meth97": {"Meth 97"};
	case "life_inv_whiskey": {"Whisky"};
	case "life_inv_beer": {"Bière"};
	case "life_inv_malt": {"Malt"};
	case "life_inv_speedbomb": {"Bombe de Vitesse"};
	case "life_inv_houblon": {"Houblon"};
	case "life_inv_artefact": {"Artefact"};
	case "life_inv_cigarettes": {"Paquet de Cigarettes"};
	case "life_inv_cigar": {"Boite de Cigares Danois"};
	case "life_inv_tabac": {"Tabac"};
	case "life_inv_explo_i": {"Explosifs"};
	case "life_inv_adre": {"Adrenaline"};
	case "life_inv_tracker": {"Traceur GPS"};
	case "life_inv_huntingKnife": {"Couteau de Chasse"};
	case "life_inv_rabbitMeat": {"Viande de Lapin"};
	case "life_inv_roadCone": {"Cone Routier"};
	case "life_inv_triangleSignal": {"Triangle de signalisation"};
	case "life_inv_barierre": {"Barrière"};
	case "life_inv_wheat": {"Blé"};
	case "life_inv_flour": {"Farine de Blé"};
	case "life_inv_menotte": {"Paire de Menottes"};
	case "life_inv_olive": {"Olive"};
	case "life_inv_oliveoil": {"Huile d'Olive"};
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_bike": {"Permis Moto"};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_presse": {"Journaliste"};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {"Brigade Aéromobile"};
	case "license_cop_swat": {"Groupe d'Intervention (GIGN)"};
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
	case "license_civ_uranium": {"Formation Uranium"};
	case "license_civ_grapes": {"Fabrication du Vin"};
	case "license_civ_moonshine": {"Fabrication de Moonshine"};
	case "license_civ_meth55": {"Fabrication de Meth"};
	case "license_civ_beer": {"Brassage de la Bière"};
	case "license_civ_whiskey": {"Fabrication du Whisky"};
	case "license_civ_cigar": {"Fabrication de Cigares"};
	case "license_civ_cigarettes": {"Fabrication de Cigarettes"};
	case "license_civ_hunting": {"Permis de Chasse"};
	case "license_civ_rsdep": {"Employé R.S. Depannage"};
	case "license_civ_brinks": {"Employé de la Brinks"};
	case "license_civ_flour": {"Autorisation de moudre du blé"};
	case "license_civ_olive": {"Extraction de l'huile d'olive"};
	case "license_civ_delta": {"Permis Deltaplane"};
	case "license_tlt": {"T.L.T"};
	case "license_he": {"A.C"};
	case "license_lmc": {"L.M.C"};
	case "license_bgf": {"BGF"};
	case "license_bmg": {"BMG"};
	case "license_olympia": {"Olympia"};
	case "license_rosthein": {"Rosthein"};
	case "license_fh": {"F.H"};
	case "license_sal": {"Salamander"};
	case "license_ms": {"MS-13"};
	case "license_ng": {"'Neghta"};
	case "license_fonda": {"Admin"};
    case "license_egp": {"E.G.P"};
    case "license_fmg": {"F.M.G"};
    case "license_sop": {"Soprano"};
	case "license_top": {"TORRES"};
	case "license_moa": {"Les Autres"};
	case "license_raid": {"1/G"};
	case "license_grf": {"G.R.F"};
	case "license_mw": {"Moscow"};
	case "license_poc": {"Panda of Cannabis"};
	case "license_yk": {"Yakusa"};
	case "license_cro": {"Cronik"};
	case "license_cn": {"C-N"};
	case "license_ec": {"Eagle Close"};
	case "license_gr": {"Grims Reapers"};
	case "license_armer": {"Militaire"};
	case "license_fla": {"FLA"};
	case "license_reb1": {"SPQR"};
};