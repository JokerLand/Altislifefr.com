/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "bike": {_var = "license_civ_bike"}; //Permis moto
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "aratv": {_var = "license_civ_aratv"};
			case "diamond": {_var = "license_civ_diamond"};
			case "olive": {_var = "license_civ_olive"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "uranium": {_var = "license_civ_uranium"};
			case "uranium1": {_var = "license_civ_uranium"};
			case "uranium2": {_var = "license_civ_uranium"};
			case "uranium2b": {_var = "license_civ_uranium"};
			case "uranium3": {_var = "license_civ_uranium"};
			case "uranium3b": {_var = "license_civ_uranium"};
			case "uranium4": {_var = "license_civ_uranium"};
			case "uranium4b": {_var = "license_civ_uranium"};			
			case "uraniumb": {_var = "license_civ_uranium"};
			case "gis": {_var = "license_civ_gis"};
			case "grapes": {_var = "license_civ_grapes"};
			case "moonshine": {_var = "license_civ_moonshine"};
			case "meth55": {_var = "license_civ_meth55"};
			case "meth60": {_var = "license_civ_meth55"};
			case "meth75": {_var = "license_civ_meth55"};
			case "meth85": {_var = "license_civ_meth55"};
			case "meth97": {_var = "license_civ_meth55"};
			case "whiskey": {_var = "license_civ_whiskey"};
			case "hunting": {_var = "license_civ_hunting"};
			case "beer": {_var = "license_civ_beer"};
			case "cigar": {_var = "license_civ_cigar"};
			case "cigarettes": {_var = "license_civ_cigarettes"};
			case "bl": {_var = "license_civ_bledjanoe"};
			case "rsdep": {_var = "license_civ_rsdep"};
			case "brinks": {_var = "license_civ_brinks"};
			case "cona": {_var = "license_civ_conatus"};
			case "crim": {_var = "license_civ_crim"};
			case "flour": {_var = "license_civ_flour"};
			case "scarface": {_var = "license_civ_scarface"};
			case "pn": {_var = "license_civ_pn"};
			case "transevo": {_var = "license_civ_transevo"};
			case "ac": {_var = "license_civ_ac"};
			case "acog": {_var = "license_civ_acog"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_bike": {_var = "bike"}; // Permis moto
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_aratv": {_var = "aratv"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_grapes": {_var = "grapes"};
			case "license_civ_gis": {_var = "gis"};
			case "license_civ_moonshine": {_var = "moonshine"};
			case "license_civ_whiskey": {_var = "whiskey"};
			case "license_civ_meth55": {_var = "meth55"};
			case "license_civ_beer": {_var = "beer"};
			case "license_civ_cigar": {_var = "cigar"};
			case "license_civ_hunting": {_var = "hunting"};
			case "license_civ_cigarettes": {_var = "cigarettes"};
			case "license_civ_bledjanoe": {_var = "bl"};
			case "license_civ_rsdep": {_var = "rsdep"};
			case "license_civ_brinks": {_var = "brinks"};
			case "license_civ_conatus": {_var = "cona"};
			case "license_civ_crim": {_var = "crim"};
			case "license_civ_flour": {_var = "flour"};
			case "license_civ_olive": {_var = "olive"};
			case "license_civ_scarface": {_var = "scarface"};
			case "license_civ_pn": {_var = "pn"};
			case "license_civ_transevo": {_var = "transevo"};
			case "license_civ_ac": {_var = "ac"};
			case "license_civ_acog": {_var = "acog"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;