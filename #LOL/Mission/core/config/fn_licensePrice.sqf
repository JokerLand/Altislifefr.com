/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "bike": {4000}; //Permis moto
	case "boat": {1000}; //Boating license cost
	case "pilot": {380000}; //Pilot/air license cost
	case "gun": {15000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {30000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {150000}; //Heroin processing license cost
	case "marijuana": {130500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {500000}; //Rebel license cost
	case "truck": {50000}; //Truck license cost
	case "diamond": {55000};
	case "salt": {45000};
	case "cocaine": {190000};
	case "flour": {6000};
	case "iron": {12500};
	case "copper": {9000};
	case "cement": {13500};
	case "mair": {15000};
	case "home": {400000};
	case "uranium": {1700000};
	case "grapes": {12000};
	case "moonshine": {65000};
	case "whiskey": {40000};
	case "beer": {30000};
	case "meth55": {1500000};
	case "cigar": {120000};
	case "cigarettes": {37000};
	case "hunting": {10000};
	case "olive": {7500};
	case "rsdep": {1};
	case "brinks": {1};
	case "presse": {250000};
	case "delta": {500000};
};