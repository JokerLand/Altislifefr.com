/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1200,(localize "STR_Process_Oil"),4];};
	case "diamond": {["diamond","diamondc",1350,(localize "STR_Process_Diamond"),7];};
	case "heroin": {["heroinu","heroinp",1750,(localize "STR_Process_Heroin"),6];};
	case "copper": {["copperore","copper_r",750,(localize "STR_Process_Copper"),4];};
	case "iron": {["ironore","iron_r",1120,(localize "STR_Process_Iron"),5];};
	case "sand": {["sand","glass",650,(localize "STR_Process_Sand"),4];};
	case "salt": {["salt","salt_r",450,(localize "STR_Process_Salt"),5];};
	case "cocaine": {["cocaine","cocainep",1500,(localize "STR_Process_Cocaine"),6];};
	case "marijuana": {["cannabis","marijuana",500,(localize "STR_Process_Marijuana"),4];};
	case "cement": {["rock","cement",350,(localize "STR_Process_Cement"),6];};
	case "uranium1": {["uranium1","uranium2",5000,"Nettoyage de l'Uranium",6]}; // Add this
    case "uranium4": {["uranium4","uranium",15000,"Sécher l'Uranium (Civ)",6]}; // Add this
	case "uranium4b": {["uranium4b","uraniumb",15000,"Sécher l'Uranium (Mil)",6]};
	case "grapes": {["grapes","wine",250,"Fabriquer du Vin",3]};
	case "moonshine": {["grapes","moonshine",450,"Fabriquer de la Moonshine",3]};
	case "beer": {["houblon","beer",800,"Brasser de la Bière",4]};
	case "whiskey": {["malt","whiskey",1200,"Fabriquer du Whisky",5]};
	case "cigar": {["tabac","cigar",1200,"Fabriquer des Cigares",6]};
	case "cigarettes": {["tabac","cigarettes",1200,"Fabriquer des Cigarettes",4]};
	case "flour": {["wheat","flour",1200,"Moudre le blé",3]};
	case "olive": {["olive","oliveoil",1200,"Extraire l'huile d'olive",3]};
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_sleepTime = (_itemInfo select 4) / 10;

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};
if(!_hasLicense) exitWith {hint "Vous n'avez pas la license requise"};
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep _sleepTime;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	
_ui = "osefStatusBar" call BIS_fnc_rscLayer;
_ui cutRsc["osefStatusBar","PLAIN"];