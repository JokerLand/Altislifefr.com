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
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "meth": {_var = "license_civ_meth"};
			case "grapes": {_var = "license_civ_grapes"};
			case "moonshine": {_var = "license_civ_moonshine"};
			case "presse": {_var = "license_civ_presse"};
			case "delta": {_var = "license_civ_delta"};
			case "tlt": {_var = "license_tlt"};
			case "he": {_var = "license_he"};
			case "lmc": {_var = "license_lmc"};
			case "bgf": {_var = "license_bgf"};
			case "bmg": {_var = "license_bmg"};
			case "olympia": {_var = "license_olympia"};
			case "rosthein": {_var = "license_rosthein"};
			case "sal": {_var = "license_sal"};
			case "ms": {_var = "license_ms"};
			case "ng": {_var = "license_ng"};
            case "egp": {_var = "license_egp"};
            case "fmg": {_var = "license_fmg"};
            case "sop": {_var = "license_sop"};
			case "Les autres": {_var = "license_moa"};
			case "tor": {_var = "license_tor"};
			case "grf": {_var = "license_grf"};
			case "mw": {_var = "license_mw"};
			case "poc": {_var = "license_poc"};
			case "yk": {_var = "license_yk"};
			case "cro": {_var = "license_cro"};
			case "cn": {_var = "license_cn"};
			case "torres": {_var = "license_ec"};
			case "gr": {_var = "license_gr"};
			case "pe1": {_var = "license_fla"};
			case "sqpr": {_var = "license_reb1"};
            case "uranium": {_var = "license_civ_uranium"};
            case "uranium1": {_var = "license_civ_uranium"};
            case "uranium2": {_var = "license_civ_uranium"};
            case "uranium2b": {_var = "license_civ_uranium"};
            case "uranium3": {_var = "license_civ_uranium"};
            case "uranium4": {_var = "license_civ_uranium"};
            case "airaltis": {_var = "license_air_altis"};
            case "Depanneur": {_var = "license_depannage"};
			default {_var = ""};
		};
	};

	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
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
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_meth": {_var = "meth"};
			case "license_civ_grapes": {_var = "grapes"};
			case "license_civ_moonshine": {_var = "moonshine"};
			case "license_civ_presse": {_var = "presse"};
			case "license_civ_delta": {_var = "delta"};
			case "license_tlt": {_var = "tlt"};
			case "license_he": {_var = "he"};
			case "license_lmc": {_var = "lmc"};
			case "license_bgf": {_var = "bgf"};
			case "license_bmg": {_var = "bmg"};
			case "license_olympia": {_var = "olympia"};
			case "license_rosthein": {_var = "rosthein"};
			case "license_sal": {_var = "sal"};
			case "license_ms": {_var = "ms"};
			case "license_ng": {_var = "ng"};
            case "license_egp": {_var = "egp"};
            case "license_fmg": {_var = "fmg"};
			case "license_moa": {_var = "Les autres"};
			case "license_raid": {_var = "1g"};
			case "license_grf": {_var = "grf"};
			case "license_mw": {_var = "mw"};
			case "license_poc": {_var = "poc"};
			case "license_yk": {_var = "yk"};
			case "license_cro": {_var = "cro"};
			case "license_cn": {_var = "cn"};
			case "license_ec": {_var = "torres"};
			case "license_gr": {_var = "gr"};
			case "license_fla": {_var = "pe1"};
			case "license_reb1": {_var = "sqpr"};
            case "license_civ_uranium": {_var = "uranium"};
            case "license_civ_uranium": {_var = "uranium1"};
            case "license_civ_uranium": {_var = "uranium2"};
            case "license_civ_uranium": {_var = "uranium3"};
            case "license_civ_uranium": {_var = "uranium4"};
            case "license_civ_uranium": {_var = "uranium5"};
            case "license_air_altis": {_var = "airaltis"};
            case "license_depannage": {_var = "Depanneur"};
   			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;
