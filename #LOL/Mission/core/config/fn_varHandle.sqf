/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "debitcard": {"life_inv_debitcard"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "kidney": {"life_inv_kidney"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "storagebig": {"life_inv_storagebig"};
            case "puranium": {"life_inv_puranium"}; // Add This
            case "ipuranium": {"life_inv_ipuranium"}; // Add This
            case "uranium1": {"life_inv_uranium1"}; // Add This
            case "uranium2": {"life_inv_uranium2"}; // Add This
            case "uranium3": {"life_inv_uranium3"}; // Add This
			case "uranium3b": {"life_inv_uranium3b"}; // Add This
            case "uranium4": {"life_inv_uranium4"}; // Add This
			case "uranium4b": {"life_inv_uranium4b"};
            case "uranium": {"life_inv_uranium"}; // Add This
			case "uraniumb": {"life_inv_uraniumb"}; // Add This
			case "moonshine": {"life_inv_moonshine"};
			case "wine": {"life_inv_wine"};
			case "grapes": {"life_inv_grapes"};
			case "ether": {"life_inv_ether"};
			case "ephed": {"life_inv_ephed"};
			case "butane": {"life_inv_butane"};
			case "phosph": {"life_inv_phosph"};
			case "meth55": {"life_inv_meth55"};
			case "meth60": {"life_inv_meth60"};
			case "meth75": {"life_inv_meth75"};
			case "meth85": {"life_inv_meth85"};
			case "meth97": {"life_inv_meth97"};
			case "beer": {"life_inv_beer"};
			case "whiskey": {"life_inv_whiskey"};
			case "malt": {"life_inv_malt"};
			case "houblon": {"life_inv_houblon"};
			case "artefact": {"life_inv_artefact"};
			case "tabac": {"life_inv_tabac"};
			case "cigarettes": {"life_inv_cigarettes"};
			case "cigar": {"life_inv_cigar"};
			case "explo_i": {"life_inv_explo_i"};
			case "adre": {"life_inv_adre"};
			case "tracker": {"life_inv_tracker"};
			case "huntingKnife": {"life_inv_huntingKnife"};
			case "rabbitMeat": {"life_inv_rabbitMeat"};
			case "roadCone": {"life_inv_roadCone"};
			case "triangleSignal": {"life_inv_triangleSignal"};
			case "roadBarrier": {"life_inv_roadBarrier"};
			case "wheat": {"life_inv_wheat"};
			case "cuff": {"life_inv_cuff"};
			case "flour": {"life_inv_flour"};
			case "olive": {"life_inv_olive"};
			case "oliveoil": {"life_inv_oliveoil"};
			case "burger": {"life_inv_burger"};
            case "cola": {"life_inv_cola"};
            case "frite": {"life_inv_frite"};
            case "biere": {"life_inv_biere"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_debitcard": {"debitcard"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_puranium": {"puranium"}; // Add This
            case "life_inv_ipuranium": {"ipuranium"}; // Add This
            case "life_inv_uranium1": {"uranium1"}; // Add This
            case "life_inv_uranium2": {"uranium2"}; // Add This
            case "life_inv_uranium3": {"uranium3"}; // Add This
            case "life_inv_uranium4": {"uranium4"}; // Add This
            case "life_inv_uranium": {"uranium"}; // Add This 
			case "life_inv_uranium3b": {"uranium3b"}; // Add This 
			case "life_inv_uranium4b": {"uranium4b"}; // Add This 
			case "life_inv_uraniumb": {"uraniumb"};
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_wine": {"wine"};
			case "life_inv_grapes": {"grapes"};
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_ether": {"ether"};
			case "life_inv_phosph": {"phosph"};
			case "life_inv_butane": {"butane"};
			case "life_inv_ephed": {"ephed"};
			case "life_inv_meth55": {"meth55"};
			case "life_inv_meth60": {"meth60"};
			case "life_inv_meth75": {"meth75"};
			case "life_inv_meth85": {"meth85"};
			case "life_inv_meth97": {"meth97"};
			case "life_inv_beer": {"beer"};
			case "life_inv_whiskey": {"whiskey"};
			case "life_inv_houblon": {"houblon"};
			case "life_inv_malt": {"malt"};
			case "life_inv_artefact": {"artefact"};
			case "life_inv_cigar": {"cigar"};
			case "life_inv_cigarettes": {"cigarettes"};
			case "life_inv_tabac": {"tabac"};
			case "life_inv_explo_i": {"explo_i"};
			case "life_inv_adre": {"adre"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_huntingKnife": {"huntingKnife"};
			case "life_inv_rabbitMeat": {"rabbitMeat"};
			case "life_inv_roadCone": {"roadCone"};
			case "life_inv_triangleSignal": {"triangleSignal"};
			case "life_inv_roadBarrier": {"roadBarrier"};
			case "life_inv_flour": {"flour"};
			case "life_inv_wheat": {"wheat"};
			case "life_inv_cuff": {"cuff"};
			case "life_inv_olive": {"olive"};
			case "life_inv_oliveoil": {"oliveoil"};
			case "life_inv_burger": {"burger"};
            case "life_inv_cola": {"cola"};
            case "life_inv_frite": {"frite"};
            case "life_inv_biere": {"biere"};
		};
	};
};
