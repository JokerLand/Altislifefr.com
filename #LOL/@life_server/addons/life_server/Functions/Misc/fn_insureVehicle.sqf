/*
	File: fn_insureVehicle.sqf
	Author: richie3366
	
	Description:
	Insures the vehicle
*/
private["_vehicle","_type","_time","_price","_vInfo","_price","_display","_control"];
_vehicle = (_this select 0);
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {hint "Mauvais Type de Véhicule";};
if((player distance _vehicle) > 6) exitWith {hint "Vous êtes trop loin du véhicule";};
_owners = _vehicle getVariable "vehicle_info_owners";
if(isNil {_owners}) exitWith {hint "Erreur";};
_canInsure = _vehicle getVariable "canInsure";
_isInsured = _vehicle getVariable "isInsured";
_pid = getPlayerUID player;
_pids = [];
{
	_id = _x select 0;
	_pids set [count _pids,_id];
} foreach _owners;
if(_pid IN _pids) then {
if(_isInsured) exitWith {
	hint "Votre véhicule est déjà assuré.";
};

if(!_canInsure) exitWith {
	hint "Votre véhicule est loué.";
};

_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
_price = ([(typeOf _vehicle),life_garage_prices] call fnc_index);
	
if(_price == -1) then {
	_price = 1000/3;
} else {
	_price = round(((life_garage_sell select _price) select 1) / 1.2);
};
createDialog "life_insure_confirm";
disableSerialization;
waitUntil {!isnull (findDisplay 3310)};
_display = findDisplay 3310;
_control = _display displayCtrl 3311;
	
life_insure_veh = _vehicle;
life_insure_val = _price;
	
_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>Vous souhaitez assurer le véhicule %2 contre l'explosion en payant %1 €, vous confirmez ?<br /><br />Attention, l'assurance n'est valide que jusqu'à la disparition du véhicule (restart/rangement garage/mise en fourrière).",_price,_type];
} else {hint "Ce véhicule ne vous appartient pas, vous ne pouvez pas l'assurer !";};