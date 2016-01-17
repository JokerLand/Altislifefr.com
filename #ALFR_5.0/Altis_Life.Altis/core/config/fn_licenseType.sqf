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
			case "cair": {_var = "license_cop_cair"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "trucking":{_var = "license_civ_trucking"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "gangster": {_var = "license_civ_gangster"};
            case "lmc": {_var = "license_civ_lmc"};
			case "bmg": {_var = "license_civ_bmg"};
			case "olympia": {_var = "license_civ_olympia"};
		    case "insurg": {_var = "license_civ_raid"};
			case "ms": {_var = "license_civ_ms"};
			case "ng": {_var = "license_civ_ng"};
            case "sop": {_var = "license_civ_sop"};
			case "lesautres": {_var = "license_civ_moa"};
			case "grf": {_var = "license_civ_grf"};
			case "mw": {_var = "license_civ_mw"};
			case "poc": {_var = "license_civ_poc"};
			case "yk": {_var = "license_civ_yk"};
			case "cn": {_var = "license_civ_cn"};
			case "eagle": {_var = "license_civ_ec"};
			case "gr": {_var = "license_civ_gr"};
			case "pe1": {_var = "license_civ_fla"};
			case "sqpr": {_var = "license_civ_reb1"};
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
			case "license_cop_cair": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "trucking"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_gangster": {_var = "gangster"};
            case "license_civ_lmc": {_var = "lmc"};
			case "license_civ_bmg": {_var = "bmg"};
			case "license_civ_olympia": {_var = "olympia"};
			case "license_civ_sop": {_var = "sop"};
			case "license_civ_ms": {_var = "ms"};
			case "license_civ_ng": {_var = "ng"};
			case "license_civ_moa": {_var = "lesautres"};
			case "license_civ_raid": {_var = "insurg"};
			case "license_civ_grf": {_var = "grf"};
			case "license_civ_mw": {_var = "mw"};
			case "license_civ_poc": {_var = "poc"};
			case "license_civ_yk": {_var = "yk"};
			case "license_civ_cn": {_var = "cn"};
			case "license_civ_ec": {_var = "eagle"};
			case "license_civ_gr": {_var = "gr"};
			case "license_civ_fla": {_var = "pe1"};
			case "license_civ_reb1": {_var = "sqpr"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;