/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_vals","_delayInt"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 6)) exitWith {};
if ((vehicle player) != player) exitWith { hint "Cette action ne peut pas être effectué depuis un vehicle." };
if (side player == west) exitWith {hint "Vous ne pouvez pas effectuer cette action en policier."};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {[["oilu"],"oilp",1200,"Processing Oil"];};
	case "diamond": {[["diamond"],"diamondc",1350,"Processing Diamond"]};
	case "heroin": {[["heroinu"],"heroinp",2100,"Processing Heroin"]};
	case "copper": {[["copperore"],"copper_r",750,"Processing Copper"]};
	case "iron": {[["ironore"],"iron_r",1120,"Processing Iron"]};
	case "sand": {[["sand"],"glass",650,"Processing Sand"]};
	case "salt": {[["salt"],"salt_r",450,"Processing Salt"]};
	case "cocaine": {[["cocaine"],"cocainep",1500,"Processing Cocaine"]};
	case "marijuana": {[["cannabis"],"marijuana",500,"Processing Marijuana"]};
	case "cement": {[["rock"],"cement",350,"Mixing Cement"]};
	case "meth": {[["methu"],"methp",4000,"Cuisson Meth"]};
	case "grapes": {[["grapes"],"vodka",250,"Processing Grapes into Vin"]};
	case "moonshine": {[["grapes"],"moonshine",450,"Processing Grapes into Moonshine"]};
	case "methu" : {[["ephedrine","phosphore"],"methu",500,"Preparation"]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {hint "Vous n'avez pas les ingrédients nécessaires"};

//Setup vars.
_oldItem = [];
_vals = [];
{_oldItem = _oldItem + [_x];} foreach (_itemInfo select 0);
if(count _oldItem == 0) exitWith {hint "Vous n'avez pas les ingrédients nécessaires"};
{_vals = _vals + [missionNamespace getVariable ([_x,0] call life_fnc_varHandle)];} foreach _oldItem;
_oldVal = _vals select 0;
{if (_x < _oldVal) then {_oldVal = _x};} foreach _vals;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_type == "methu") then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if(_oldVal == 0) exitWith {};
_cost = _cost * _oldVal;

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
life_action_inUse = true;
if((!_hasLicense)&&(life_cash < _cost)) exitWith {
	hint format["Vous avez besoin de %1€ pour faire le traitement sans la license!",[_cost] call life_fnc_numberText];
	5 cutText ["","PLAIN"]; life_is_processing = false;
};
_delayInt = _oldVal * 0.03;
while{true} do {
	sleep _delayInt;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
};


if(player distance _vendor > 3) exitWith {hint "Vous devez rester proche du vendeur."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if((!_hasLicense)&&(life_cash < _cost)) exitWith {hint format["Vous avez besoin de $%1 pour traiter sans licence!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!(alive player)) exitWith {hint "Vous devez être en vie pour traiter."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
//Removes the old items
{
	if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
		5 cutText ["","PLAIN"]; life_is_processing = false;
	};
} foreach _oldItem;

//Adds the new item
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
	5 cutText ["","PLAIN"];
	{[true,_x,_oldVal] call life_fnc_handleInv;} foreach _oldItem;
	life_is_processing = false;
};

5 cutText ["","PLAIN"];
if (_hasLicense) then {
	titleText[format["Vous avez transformé vos ingrédients en %1",_itemName],"PLAIN"];
} else {
	titleText[format["Vous avez transformé vos ingrédients en %1 pour $%2",_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
};

life_is_processing = false;
life_action_inUse = false;